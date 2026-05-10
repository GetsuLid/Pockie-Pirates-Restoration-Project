# Pockie Pirates Protocol Notes

## Endpoint

The original game server URL, **hardcoded inside `onepiece/main.swf`**, is:

```
http://115.236.38.146:8080/
```

Geolocation: China (Hangzhou). The IP no longer responds. The Flash client
loads its config from `onepiece/config.xml` and then opens a connection to
the AMF endpoint, by convention at `/messagebroker/amf` (BlazeDS default).

To redirect the client to a local emulator, the cleanest options are:

1. **Hosts file**: add `127.0.0.1 115.236.38.146` to `/etc/hosts` and run the
   emulator on port 8080.
2. **HTTP proxy**: Charles, Fiddler, or mitmproxy with a redirect rule. Useful
   because you can also record real-time AMF traffic if you ever find a
   Wayback / archive copy of the original server responding.
3. **Patch the SWF**: replace the hardcoded URL string with your server. This
   is tractable with JPEXS – the URL appears in the constant pool of the
   ABC bytecode.

## Wire format

Every request from the client is an HTTP `POST` to the endpoint with
`Content-Type: application/x-amf`. The body is a Flex AMF packet:

```
u16 version (= 0x0003)
u16 header_count
  for each header:
    u16 name_length, name (UTF-8)
    u8  must_understand
    u32 body_length (or 0xFFFFFFFF)
    AMF0 value (0x11 marker = AMF3 escape, then AMF3 stream)
u16 body_count
  for each body:
    u16 target_uri_length, target_uri (UTF-8)        ← e.g. "/1" "/2" – call IDs
    u16 response_uri_length, response_uri (UTF-8)
    u32 body_length
    AMF0 value (0x11 = AMF3 escape, then AMF3 stream)
```

The body's AMF3 value is one of these classes (all standard Flex):

| Class | Used for |
|---|---|
| `flex.messaging.messages.CommandMessage` | handshake, ping, login, subscribe |
| `flex.messaging.messages.RemotingMessage` | RPC call to a `RemoteObject` destination |
| `flex.messaging.messages.AcknowledgeMessage` | server response |
| `flex.messaging.messages.ErrorMessage` | server error response |

`amf3_codec.py` and `amf_packet.py` in `skeleton/` handle the framing. The
packet parser will print every body it receives, so once a real client
connects, the log shows you the destination + operation of each call.

## Discovered class hints

From a string-grep of the decompressed SWFs (20 MB combined ABC bytecode)
the following game-relevant package paths appear:

```
hero.Comp.*           ← hero UI components
hero.Config           ← hero configuration loader
hero.FamousHeroPanel  ← famous-hero panel
hero.HeroPanel        ← main hero panel
Scene.Comp.*          ← scene components
ui.guide              ← in-game guide UI
```

The following remote-call related symbols were seen:

```
callServer            ← likely a wrapper that issues RemotingMessage
callAction            ← per-action call dispatcher
callBuyEui            ← shop "buy" call (Eui = Equipment UI?)
callMakeListData      ← list-data fetch
callSucc              ← success callback
remoteCredentials     ← Flex RemoteObject credentials field
remoteUsername        ← login username field
remotePassword        ← login password field
```

The destination strings (e.g. `gameRO`, `userRO`, `battleRO`) were not found
in the readable portion of the SWF. They are likely:

* in the AS3 string pool of a class we haven't grepped specifically, or
* assembled at runtime from configuration values.

**Action item:** decompile `main.swf` and `GameLoader.swf` with JPEXS,
search for `RemoteObject` and `setRemoteCredentials`. Each `RemoteObject`
declaration has a `destination=` attribute – that is exactly the string we
need.

## Login flow (expected)

Based on the BlazeDS standard handshake:

```
Client → Server: CommandMessage operation=5 (client_ping)
Server → Client: AcknowledgeMessage  (echoes ping)

Client → Server: CommandMessage operation=8 (login, body=base64("user:pass"))
Server → Client: AcknowledgeMessage  (correlationId = ping's messageId)

Client → Server: RemotingMessage destination="userRO" operation="login"
                                  body=[username, password, deviceInfo]
Server → Client: AcknowledgeMessage body={uid, sessionToken, characterList}

Client → Server: RemotingMessage destination="gameRO" operation="getGameData"
Server → Client: AcknowledgeMessage body=<the entire gameData.sg content>
```

The exact message field names will need confirmation from the decompiled
client. The skeleton's `handle_command_message` already implements ops 5/8
in stub form.

## Common BlazeDS gotchas

* The AMF3 spec encodes signed integers as 29-bit "U29S". The codec in
  `amf3_codec.py` handles this – do not roll your own.
* Class aliases (`[RemoteClass(alias="...")]` in AS3) determine the trait
  string in AMF3. Round-tripping requires the server to use the same alias
  the client expects, or use `flex.messaging.io.ObjectProxy` for dynamic
  return values.
* `flex.messaging.io.ArrayCollection` is the standard wrapper for "list of
  things"; the codec already handles encoding and decoding it.
* The first `messageId` from the client must be echoed in `correlationId`
  on responses, otherwise the client treats them as out-of-band events.
