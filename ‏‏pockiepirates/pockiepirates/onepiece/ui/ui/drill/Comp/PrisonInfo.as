package ui.drill.Comp
{
   import ExtendComp.GlowLabel;
   import data.drill.PrisonArmyData;
   import data.hero.HeroData;
   import events.SendDataEvent;
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import lang.UILang;
   import manager.DataManager;
   import mx.binding.*;
   import mx.containers.Canvas;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.events.ResultEvent;
   import mx.styles.*;
   import server.HttpServerManager;
   
   use namespace mx_internal;
   
   public class PrisonInfo extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _106274679myEmbattle5:String;
      
      private var _1055243423theirEmbattle9:String;
      
      private var _106274680myEmbattle4:String;
      
      private var _1055243417theirEmbattle3:String;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _106274683myEmbattle1:String;
      
      private var _106274677myEmbattle7:String;
      
      private var _1415140920armyName:String;
      
      private var _1055243420theirEmbattle6:String;
      
      private var _1055243418theirEmbattle4:String;
      
      private var _106274681myEmbattle3:String;
      
      mx_internal var _watchers:Array = [];
      
      private var _1055243421theirEmbattle7:String;
      
      private var armyOrder:int;
      
      private var _106274675myEmbattle9:String;
      
      private var _106274678myEmbattle6:String;
      
      private var _1055243415theirEmbattle1:String;
      
      public var _PrisonInfo_SWFLoader1:SWFLoader;
      
      public var _PrisonInfo_SWFLoader2:SWFLoader;
      
      public var _PrisonInfo_SWFLoader3:SWFLoader;
      
      public var _PrisonInfo_SWFLoader4:SWFLoader;
      
      public var _PrisonInfo_SWFLoader5:SWFLoader;
      
      public var _PrisonInfo_SWFLoader6:SWFLoader;
      
      public var _PrisonInfo_SWFLoader7:SWFLoader;
      
      public var _PrisonInfo_SWFLoader8:SWFLoader;
      
      public var _PrisonInfo_SWFLoader9:SWFLoader;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _PrisonInfo_SWFLoader10:SWFLoader;
      
      public var _PrisonInfo_SWFLoader11:SWFLoader;
      
      public var _PrisonInfo_SWFLoader12:SWFLoader;
      
      public var _PrisonInfo_SWFLoader13:SWFLoader;
      
      public var _PrisonInfo_GlowLabel1:GlowLabel;
      
      public var _PrisonInfo_GlowLabel2:GlowLabel;
      
      public var _PrisonInfo_SWFLoader16:SWFLoader;
      
      public var _PrisonInfo_SWFLoader17:SWFLoader;
      
      public var _PrisonInfo_SWFLoader18:SWFLoader;
      
      public var _PrisonInfo_SWFLoader14:SWFLoader;
      
      public var _PrisonInfo_SWFLoader15:SWFLoader;
      
      public var _PrisonInfo_GlowLabel3:GlowLabel;
      
      private var _1055243422theirEmbattle8:String;
      
      private var _1055243419theirEmbattle5:String;
      
      private var _106274682myEmbattle2:String;
      
      private var _106274676myEmbattle8:String;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":396,
               "height":297,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Button,
                  "events":{"click":"___PrisonInfo_Button1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":364,
                        "y":9,
                        "styleName":"Button114",
                        "width":21,
                        "height":21
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GlowLabel,
                  "id":"_PrisonInfo_GlowLabel1",
                  "stylesFactory":function():void
                  {
                     this.color = 10876374;
                     this.fontSize = 14;
                     this.fontWeight = "bold";
                     this.horizontalCenter = "0";
                     this.top = "8";
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.bottom = "70";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":372,
                        "height":180,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_PrisonInfo_GlowLabel2",
                           "stylesFactory":function():void
                           {
                              this.color = 2608625;
                              this.textAlign = "center";
                              this.fontWeight = "bold";
                              this.fontSize = 14;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":3,
                                 "width":146
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GlowLabel,
                           "id":"_PrisonInfo_GlowLabel3",
                           "stylesFactory":function():void
                           {
                              this.color = 16711680;
                              this.textAlign = "center";
                              this.fontWeight = "bold";
                              this.fontSize = 14;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":216,
                                 "y":3,
                                 "width":146
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "-3";
                              this.verticalCenter = "13";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "source":"../assets/images/UI/Contend/VS.png",
                                 "width":227,
                                 "height":32
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.left = "10";
                              this.bottom = "4";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":146,
                                 "height":146,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "source":"../assets/images/Icon/BigEmbattle/1.png",
                                          "x":0,
                                          "y":0,
                                          "width":146,
                                          "height":146
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"Border125",
                                          "width":44,
                                          "height":44,
                                          "mouseEnabled":false,
                                          "mouseChildren":false,
                                          "x":3,
                                          "y":1,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":SWFLoader,
                                             "id":"_PrisonInfo_SWFLoader1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":40,
                                                   "height":40,
                                                   "x":44,
                                                   "y":2,
                                                   "scaleX":-1
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"Border125",
                                          "width":44,
                                          "height":44,
                                          "mouseEnabled":false,
                                          "mouseChildren":false,
                                          "x":51,
                                          "y":1,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":SWFLoader,
                                             "id":"_PrisonInfo_SWFLoader2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":40,
                                                   "height":40,
                                                   "x":44,
                                                   "y":2,
                                                   "scaleX":-1
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"Border125",
                                          "width":44,
                                          "height":44,
                                          "mouseEnabled":false,
                                          "mouseChildren":false,
                                          "x":99,
                                          "y":1,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":SWFLoader,
                                             "id":"_PrisonInfo_SWFLoader3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":40,
                                                   "height":40,
                                                   "x":44,
                                                   "y":2,
                                                   "scaleX":-1
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"Border125",
                                          "width":44,
                                          "height":44,
                                          "mouseEnabled":false,
                                          "mouseChildren":false,
                                          "x":3,
                                          "y":51,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":SWFLoader,
                                             "id":"_PrisonInfo_SWFLoader4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":40,
                                                   "height":40,
                                                   "x":44,
                                                   "y":2,
                                                   "scaleX":-1
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"Border125",
                                          "width":44,
                                          "height":44,
                                          "mouseEnabled":false,
                                          "mouseChildren":false,
                                          "x":51,
                                          "y":51,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":SWFLoader,
                                             "id":"_PrisonInfo_SWFLoader5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":40,
                                                   "height":40,
                                                   "x":44,
                                                   "y":2,
                                                   "scaleX":-1
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"Border125",
                                          "width":44,
                                          "height":44,
                                          "mouseEnabled":false,
                                          "mouseChildren":false,
                                          "x":99,
                                          "y":51,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":SWFLoader,
                                             "id":"_PrisonInfo_SWFLoader6",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":40,
                                                   "height":40,
                                                   "x":44,
                                                   "y":2,
                                                   "scaleX":-1
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"Border125",
                                          "width":44,
                                          "height":44,
                                          "mouseEnabled":false,
                                          "mouseChildren":false,
                                          "x":3,
                                          "y":99,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":SWFLoader,
                                             "id":"_PrisonInfo_SWFLoader7",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":40,
                                                   "height":40,
                                                   "x":44,
                                                   "y":2,
                                                   "scaleX":-1
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"Border125",
                                          "width":44,
                                          "height":44,
                                          "mouseEnabled":false,
                                          "mouseChildren":false,
                                          "x":51,
                                          "y":99,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":SWFLoader,
                                             "id":"_PrisonInfo_SWFLoader8",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":40,
                                                   "height":40,
                                                   "x":44,
                                                   "y":2,
                                                   "scaleX":-1
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"Border125",
                                          "width":44,
                                          "height":44,
                                          "mouseEnabled":false,
                                          "mouseChildren":false,
                                          "x":99,
                                          "y":99,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":SWFLoader,
                                             "id":"_PrisonInfo_SWFLoader9",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":40,
                                                   "height":40,
                                                   "x":44,
                                                   "y":2,
                                                   "scaleX":-1
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.right = "10";
                              this.bottom = "4";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":146,
                                 "height":146,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "source":"../assets/images/Icon/BigEmbattle/1.png",
                                          "x":0,
                                          "y":0,
                                          "width":146,
                                          "height":146
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"Border125",
                                          "width":44,
                                          "height":44,
                                          "mouseEnabled":false,
                                          "mouseChildren":false,
                                          "x":3,
                                          "y":1,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":SWFLoader,
                                             "id":"_PrisonInfo_SWFLoader10",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":40,
                                                   "height":40,
                                                   "x":2,
                                                   "y":2
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"Border125",
                                          "width":44,
                                          "height":44,
                                          "mouseEnabled":false,
                                          "mouseChildren":false,
                                          "x":51,
                                          "y":1,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":SWFLoader,
                                             "id":"_PrisonInfo_SWFLoader11",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":40,
                                                   "height":40,
                                                   "x":2,
                                                   "y":2
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"Border125",
                                          "width":44,
                                          "height":44,
                                          "mouseEnabled":false,
                                          "mouseChildren":false,
                                          "x":99,
                                          "y":1,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":SWFLoader,
                                             "id":"_PrisonInfo_SWFLoader12",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":40,
                                                   "height":40,
                                                   "x":2,
                                                   "y":2
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"Border125",
                                          "width":44,
                                          "height":44,
                                          "mouseEnabled":false,
                                          "mouseChildren":false,
                                          "x":3,
                                          "y":51,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":SWFLoader,
                                             "id":"_PrisonInfo_SWFLoader13",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":40,
                                                   "height":40,
                                                   "x":2,
                                                   "y":2
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"Border125",
                                          "width":44,
                                          "height":44,
                                          "mouseEnabled":false,
                                          "mouseChildren":false,
                                          "x":51,
                                          "y":51,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":SWFLoader,
                                             "id":"_PrisonInfo_SWFLoader14",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":40,
                                                   "height":40,
                                                   "x":2,
                                                   "y":2
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"Border125",
                                          "width":44,
                                          "height":44,
                                          "mouseEnabled":false,
                                          "mouseChildren":false,
                                          "x":99,
                                          "y":51,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":SWFLoader,
                                             "id":"_PrisonInfo_SWFLoader15",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":40,
                                                   "height":40,
                                                   "x":2,
                                                   "y":2
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"Border125",
                                          "width":44,
                                          "height":44,
                                          "mouseEnabled":false,
                                          "mouseChildren":false,
                                          "x":3,
                                          "y":99,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":SWFLoader,
                                             "id":"_PrisonInfo_SWFLoader16",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":40,
                                                   "height":40,
                                                   "x":2,
                                                   "y":2
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"Border125",
                                          "width":44,
                                          "height":44,
                                          "mouseEnabled":false,
                                          "mouseChildren":false,
                                          "x":51,
                                          "y":99,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":SWFLoader,
                                             "id":"_PrisonInfo_SWFLoader17",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":40,
                                                   "height":40,
                                                   "x":2,
                                                   "y":2
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"Border125",
                                          "width":44,
                                          "height":44,
                                          "mouseEnabled":false,
                                          "mouseChildren":false,
                                          "x":99,
                                          "y":99,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":SWFLoader,
                                             "id":"_PrisonInfo_SWFLoader18",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":40,
                                                   "height":40,
                                                   "x":2,
                                                   "y":2
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 })]
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "events":{"click":"___PrisonInfo_Button2_click"},
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.bottom = "20";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button205",
                        "width":100,
                        "height":38
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "stylesFactory":function():void
                  {
                     this.bottom = "20";
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "source":"../assets/images/UI/Drill/fight.png",
                        "mouseChildren":false,
                        "mouseEnabled":false
                     };
                  }
               })]
            };
         }
      });
      
      private var _1055243416theirEmbattle2:String;
      
      public function PrisonInfo()
      {
         super();
         mx_internal::_document = this;
         this.width = 396;
         this.height = 297;
         this.styleName = "Border112";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PrisonInfo._watcherSetupUtil = param1;
      }
      
      private function set myEmbattle1(value:String) : void
      {
         var oldValue:Object = this._106274683myEmbattle1;
         if(oldValue !== value)
         {
            this._106274683myEmbattle1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myEmbattle1",oldValue,value));
         }
      }
      
      private function set myEmbattle2(value:String) : void
      {
         var oldValue:Object = this._106274682myEmbattle2;
         if(oldValue !== value)
         {
            this._106274682myEmbattle2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myEmbattle2",oldValue,value));
         }
      }
      
      private function set myEmbattle3(value:String) : void
      {
         var oldValue:Object = this._106274681myEmbattle3;
         if(oldValue !== value)
         {
            this._106274681myEmbattle3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myEmbattle3",oldValue,value));
         }
      }
      
      private function set myEmbattle5(value:String) : void
      {
         var oldValue:Object = this._106274679myEmbattle5;
         if(oldValue !== value)
         {
            this._106274679myEmbattle5 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myEmbattle5",oldValue,value));
         }
      }
      
      private function set myEmbattle6(value:String) : void
      {
         var oldValue:Object = this._106274678myEmbattle6;
         if(oldValue !== value)
         {
            this._106274678myEmbattle6 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myEmbattle6",oldValue,value));
         }
      }
      
      private function set myEmbattle7(value:String) : void
      {
         var oldValue:Object = this._106274677myEmbattle7;
         if(oldValue !== value)
         {
            this._106274677myEmbattle7 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myEmbattle7",oldValue,value));
         }
      }
      
      private function fight() : void
      {
         HttpServerManager.getInstance().callServer("manorService","prisonBattle",resolveFight,[DataManager.Instance.role.roleId,DataManager.Instance.role.roleStatus,armyOrder]);
      }
      
      private function set myEmbattle8(value:String) : void
      {
         var oldValue:Object = this._106274676myEmbattle8;
         if(oldValue !== value)
         {
            this._106274676myEmbattle8 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myEmbattle8",oldValue,value));
         }
      }
      
      private function set myEmbattle9(value:String) : void
      {
         var oldValue:Object = this._106274675myEmbattle9;
         if(oldValue !== value)
         {
            this._106274675myEmbattle9 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myEmbattle9",oldValue,value));
         }
      }
      
      private function set myEmbattle4(value:String) : void
      {
         var oldValue:Object = this._106274680myEmbattle4;
         if(oldValue !== value)
         {
            this._106274680myEmbattle4 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myEmbattle4",oldValue,value));
         }
      }
      
      private function _PrisonInfo_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = armyName;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PrisonInfo_GlowLabel1.text = param1;
         },"_PrisonInfo_GlowLabel1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.MyEmbattle + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PrisonInfo_GlowLabel2.text = param1;
         },"_PrisonInfo_GlowLabel2.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var result:* = "- " + UILang.TheirEmbattle + " -";
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _PrisonInfo_GlowLabel3.text = param1;
         },"_PrisonInfo_GlowLabel3.text");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return myEmbattle7;
         },function(param1:Object):void
         {
            _PrisonInfo_SWFLoader1.source = param1;
         },"_PrisonInfo_SWFLoader1.source");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return myEmbattle4;
         },function(param1:Object):void
         {
            _PrisonInfo_SWFLoader2.source = param1;
         },"_PrisonInfo_SWFLoader2.source");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return myEmbattle1;
         },function(param1:Object):void
         {
            _PrisonInfo_SWFLoader3.source = param1;
         },"_PrisonInfo_SWFLoader3.source");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return myEmbattle8;
         },function(param1:Object):void
         {
            _PrisonInfo_SWFLoader4.source = param1;
         },"_PrisonInfo_SWFLoader4.source");
         result[6] = binding;
         binding = new Binding(this,function():Object
         {
            return myEmbattle5;
         },function(param1:Object):void
         {
            _PrisonInfo_SWFLoader5.source = param1;
         },"_PrisonInfo_SWFLoader5.source");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return myEmbattle2;
         },function(param1:Object):void
         {
            _PrisonInfo_SWFLoader6.source = param1;
         },"_PrisonInfo_SWFLoader6.source");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return myEmbattle9;
         },function(param1:Object):void
         {
            _PrisonInfo_SWFLoader7.source = param1;
         },"_PrisonInfo_SWFLoader7.source");
         result[9] = binding;
         binding = new Binding(this,function():Object
         {
            return myEmbattle6;
         },function(param1:Object):void
         {
            _PrisonInfo_SWFLoader8.source = param1;
         },"_PrisonInfo_SWFLoader8.source");
         result[10] = binding;
         binding = new Binding(this,function():Object
         {
            return myEmbattle3;
         },function(param1:Object):void
         {
            _PrisonInfo_SWFLoader9.source = param1;
         },"_PrisonInfo_SWFLoader9.source");
         result[11] = binding;
         binding = new Binding(this,function():Object
         {
            return theirEmbattle1;
         },function(param1:Object):void
         {
            _PrisonInfo_SWFLoader10.source = param1;
         },"_PrisonInfo_SWFLoader10.source");
         result[12] = binding;
         binding = new Binding(this,function():Object
         {
            return theirEmbattle4;
         },function(param1:Object):void
         {
            _PrisonInfo_SWFLoader11.source = param1;
         },"_PrisonInfo_SWFLoader11.source");
         result[13] = binding;
         binding = new Binding(this,function():Object
         {
            return theirEmbattle7;
         },function(param1:Object):void
         {
            _PrisonInfo_SWFLoader12.source = param1;
         },"_PrisonInfo_SWFLoader12.source");
         result[14] = binding;
         binding = new Binding(this,function():Object
         {
            return theirEmbattle2;
         },function(param1:Object):void
         {
            _PrisonInfo_SWFLoader13.source = param1;
         },"_PrisonInfo_SWFLoader13.source");
         result[15] = binding;
         binding = new Binding(this,function():Object
         {
            return theirEmbattle5;
         },function(param1:Object):void
         {
            _PrisonInfo_SWFLoader14.source = param1;
         },"_PrisonInfo_SWFLoader14.source");
         result[16] = binding;
         binding = new Binding(this,function():Object
         {
            return theirEmbattle8;
         },function(param1:Object):void
         {
            _PrisonInfo_SWFLoader15.source = param1;
         },"_PrisonInfo_SWFLoader15.source");
         result[17] = binding;
         binding = new Binding(this,function():Object
         {
            return theirEmbattle3;
         },function(param1:Object):void
         {
            _PrisonInfo_SWFLoader16.source = param1;
         },"_PrisonInfo_SWFLoader16.source");
         result[18] = binding;
         binding = new Binding(this,function():Object
         {
            return theirEmbattle6;
         },function(param1:Object):void
         {
            _PrisonInfo_SWFLoader17.source = param1;
         },"_PrisonInfo_SWFLoader17.source");
         result[19] = binding;
         binding = new Binding(this,function():Object
         {
            return theirEmbattle9;
         },function(param1:Object):void
         {
            _PrisonInfo_SWFLoader18.source = param1;
         },"_PrisonInfo_SWFLoader18.source");
         result[20] = binding;
         return result;
      }
      
      private function set theirEmbattle1(value:String) : void
      {
         var oldValue:Object = this._1055243415theirEmbattle1;
         if(oldValue !== value)
         {
            this._1055243415theirEmbattle1 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"theirEmbattle1",oldValue,value));
         }
      }
      
      public function ___PrisonInfo_Button1_click(event:MouseEvent) : void
      {
         hide();
      }
      
      private function set theirEmbattle3(value:String) : void
      {
         var oldValue:Object = this._1055243417theirEmbattle3;
         if(oldValue !== value)
         {
            this._1055243417theirEmbattle3 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"theirEmbattle3",oldValue,value));
         }
      }
      
      private function set theirEmbattle4(value:String) : void
      {
         var oldValue:Object = this._1055243418theirEmbattle4;
         if(oldValue !== value)
         {
            this._1055243418theirEmbattle4 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"theirEmbattle4",oldValue,value));
         }
      }
      
      private function set theirEmbattle5(value:String) : void
      {
         var oldValue:Object = this._1055243419theirEmbattle5;
         if(oldValue !== value)
         {
            this._1055243419theirEmbattle5 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"theirEmbattle5",oldValue,value));
         }
      }
      
      private function set theirEmbattle2(value:String) : void
      {
         var oldValue:Object = this._1055243416theirEmbattle2;
         if(oldValue !== value)
         {
            this._1055243416theirEmbattle2 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"theirEmbattle2",oldValue,value));
         }
      }
      
      private function set theirEmbattle6(value:String) : void
      {
         var oldValue:Object = this._1055243420theirEmbattle6;
         if(oldValue !== value)
         {
            this._1055243420theirEmbattle6 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"theirEmbattle6",oldValue,value));
         }
      }
      
      private function set theirEmbattle8(value:String) : void
      {
         var oldValue:Object = this._1055243422theirEmbattle8;
         if(oldValue !== value)
         {
            this._1055243422theirEmbattle8 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"theirEmbattle8",oldValue,value));
         }
      }
      
      private function set theirEmbattle9(value:String) : void
      {
         var oldValue:Object = this._1055243423theirEmbattle9;
         if(oldValue !== value)
         {
            this._1055243423theirEmbattle9 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"theirEmbattle9",oldValue,value));
         }
      }
      
      private function set theirEmbattle7(value:String) : void
      {
         var oldValue:Object = this._1055243421theirEmbattle7;
         if(oldValue !== value)
         {
            this._1055243421theirEmbattle7 = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"theirEmbattle7",oldValue,value));
         }
      }
      
      private function hide() : void
      {
         dispatchEvent(new SendDataEvent("infoClose",""));
      }
      
      public function ___PrisonInfo_Button2_click(event:MouseEvent) : void
      {
         fight();
      }
      
      private function resolveFight(e:ResultEvent) : void
      {
         if(e.result.error_code == -1)
         {
            hide();
            DataManager.Instance.playBattle(e);
            dispatchEvent(new SendDataEvent("refreshPrison",""));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get myEmbattle1() : String
      {
         return this._106274683myEmbattle1;
      }
      
      [Bindable(event="propertyChange")]
      private function get myEmbattle3() : String
      {
         return this._106274681myEmbattle3;
      }
      
      [Bindable(event="propertyChange")]
      private function get myEmbattle5() : String
      {
         return this._106274679myEmbattle5;
      }
      
      [Bindable(event="propertyChange")]
      private function get myEmbattle7() : String
      {
         return this._106274677myEmbattle7;
      }
      
      [Bindable(event="propertyChange")]
      private function get myEmbattle2() : String
      {
         return this._106274682myEmbattle2;
      }
      
      private function theirInit() : void
      {
         theirEmbattle1 = "";
         theirEmbattle2 = "";
         theirEmbattle3 = "";
         theirEmbattle4 = "";
         theirEmbattle5 = "";
         theirEmbattle6 = "";
         theirEmbattle7 = "";
         theirEmbattle8 = "";
         theirEmbattle9 = "";
         myEmbattle1 = "";
         myEmbattle2 = "";
         myEmbattle3 = "";
         myEmbattle4 = "";
         myEmbattle5 = "";
         myEmbattle6 = "";
         myEmbattle7 = "";
         myEmbattle8 = "";
         myEmbattle9 = "";
      }
      
      [Bindable(event="propertyChange")]
      private function get myEmbattle8() : String
      {
         return this._106274676myEmbattle8;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PrisonInfo = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PrisonInfo_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_drill_Comp_PrisonInfoWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },bindings,watchers);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         super.initialize();
      }
      
      [Bindable(event="propertyChange")]
      private function get myEmbattle6() : String
      {
         return this._106274678myEmbattle6;
      }
      
      [Bindable(event="propertyChange")]
      private function get theirEmbattle4() : String
      {
         return this._1055243418theirEmbattle4;
      }
      
      [Bindable(event="propertyChange")]
      private function get theirEmbattle6() : String
      {
         return this._1055243420theirEmbattle6;
      }
      
      [Bindable(event="propertyChange")]
      private function get theirEmbattle9() : String
      {
         return this._1055243423theirEmbattle9;
      }
      
      [Bindable(event="propertyChange")]
      private function get myEmbattle9() : String
      {
         return this._106274675myEmbattle9;
      }
      
      [Bindable(event="propertyChange")]
      private function get theirEmbattle5() : String
      {
         return this._1055243419theirEmbattle5;
      }
      
      [Bindable(event="propertyChange")]
      private function get theirEmbattle2() : String
      {
         return this._1055243416theirEmbattle2;
      }
      
      [Bindable(event="propertyChange")]
      private function get theirEmbattle3() : String
      {
         return this._1055243417theirEmbattle3;
      }
      
      private function set armyName(value:String) : void
      {
         var oldValue:Object = this._1415140920armyName;
         if(oldValue !== value)
         {
            this._1415140920armyName = value;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"armyName",oldValue,value));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get theirEmbattle7() : String
      {
         return this._1055243421theirEmbattle7;
      }
      
      [Bindable(event="propertyChange")]
      private function get theirEmbattle8() : String
      {
         return this._1055243422theirEmbattle8;
      }
      
      [Bindable(event="propertyChange")]
      private function get myEmbattle4() : String
      {
         return this._106274680myEmbattle4;
      }
      
      [Bindable(event="propertyChange")]
      private function get armyName() : String
      {
         return this._1415140920armyName;
      }
      
      [Bindable(event="propertyChange")]
      private function get theirEmbattle1() : String
      {
         return this._1055243415theirEmbattle1;
      }
      
      private function _PrisonInfo_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = armyName;
         _loc1_ = "- " + UILang.MyEmbattle + " -";
         _loc1_ = "- " + UILang.TheirEmbattle + " -";
         _loc1_ = myEmbattle7;
         _loc1_ = myEmbattle4;
         _loc1_ = myEmbattle1;
         _loc1_ = myEmbattle8;
         _loc1_ = myEmbattle5;
         _loc1_ = myEmbattle2;
         _loc1_ = myEmbattle9;
         _loc1_ = myEmbattle6;
         _loc1_ = myEmbattle3;
         _loc1_ = theirEmbattle1;
         _loc1_ = theirEmbattle4;
         _loc1_ = theirEmbattle7;
         _loc1_ = theirEmbattle2;
         _loc1_ = theirEmbattle5;
         _loc1_ = theirEmbattle8;
         _loc1_ = theirEmbattle3;
         _loc1_ = theirEmbattle6;
         _loc1_ = theirEmbattle9;
      }
      
      public function dealEmbattle(army:PrisonArmyData) : void
      {
         var myEmbattle:Object = null;
         var hero:HeroData = null;
         armyOrder = army.order;
         armyName = army.name;
         theirInit();
         for each(myEmbattle in DataManager.Instance.hero.currentEmbattle.heros)
         {
            hero = DataManager.Instance.hero.findHero(myEmbattle[0]);
            if(hero)
            {
               this["myEmbattle" + myEmbattle[1]] = hero.smallHead;
            }
         }
         if(army.pos1)
         {
            theirEmbattle1 = "../assets/images/Head/Small/" + army.pos1 + ".swf";
         }
         if(army.pos2)
         {
            theirEmbattle2 = "../assets/images/Head/Small/" + army.pos2 + ".swf";
         }
         if(army.pos3)
         {
            theirEmbattle3 = "../assets/images/Head/Small/" + army.pos3 + ".swf";
         }
         if(army.pos4)
         {
            theirEmbattle4 = "../assets/images/Head/Small/" + army.pos4 + ".swf";
         }
         if(army.pos5)
         {
            theirEmbattle5 = "../assets/images/Head/Small/" + army.pos5 + ".swf";
         }
         if(army.pos6)
         {
            theirEmbattle6 = "../assets/images/Head/Small/" + army.pos6 + ".swf";
         }
         if(army.pos7)
         {
            theirEmbattle7 = "../assets/images/Head/Small/" + army.pos7 + ".swf";
         }
         if(army.pos8)
         {
            theirEmbattle8 = "../assets/images/Head/Small/" + army.pos8 + ".swf";
         }
         if(army.pos9)
         {
            theirEmbattle9 = "../assets/images/Head/Small/" + army.pos9 + ".swf";
         }
      }
   }
}

