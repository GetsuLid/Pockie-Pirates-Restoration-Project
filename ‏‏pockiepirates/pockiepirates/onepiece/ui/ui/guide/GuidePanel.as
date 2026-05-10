package ui.guide
{
   import ExtendComp.GlowButton;
   import data.hero.HeroData;
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
   import mx.controls.SWFLoader;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class GuidePanel extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1091835951remove3:Canvas;
      
      private var _waiting:String;
      
      mx_internal var _watchers:Array = [];
      
      private var _2033656829swfPlayer:SWFLoader;
      
      private var _1091835950remove2:Canvas;
      
      public var _GuidePanel_GlowButton1:GlowButton;
      
      private var isWaiting:Boolean = false;
      
      private var timer:Timer = new Timer(300,20);
      
      private var guideInfo:XML = <root>
			<guide id='1-1'>
			<rect><x>932</x><y>93</y><width>66</width><height>38</height></rect>
			<guide><direct>1</direct><x>692</x><y>36</y><content>Click to seek the target</content></guide>
			<waiting>1-2</waiting>
			</guide>
			<guide id='1-2'>
			<rect><x>337</x><y>523</y><width>160</width><height>45</height></rect>
			<guide><direct>2</direct><x>500</x><y>468</y><content>Click to complete the task</content></guide>
			<next></next>
			</guide>
			<guide id='2-1'>
			<rect><x>932</x><y>93</y><width>66</width><height>38</height></rect>
			<guide><direct>1</direct><x>692</x><y>36</y><content>Click to seek the target</content></guide>
			<waiting>2-2</waiting>
			</guide>
			<guide id='2-2'>
			<rect><x>275</x><y>335</y><width>190</width><height>135</height></rect>
			<guide><direct>1</direct><x>31</x><y>324</y><content>Click to enter the campaign</content></guide>
			<waiting>2-3</waiting>
			</guide>
			<guide id='2-3'>
			<rect><x>203</x><y>224</y><width>100</width><height>100</height></rect>
			<guide><direct>2</direct><x>306</x><y>199</y><content>Click to select the legion</content></guide>
			<next>2-4</next>
			</guide>
			<guide id='2-4'>
			<rect><x>614</x><y>123</y><width>70</width><height>70</height></rect>
			<guide><direct>1</direct><x>373</x><y>80</y><content>Click to enter the campaign</content></guide>
			<waiting>2-5</waiting>
			</guide>
			<guide id='2-5'>
			<rect><x>102</x><y>167</y><width>800</width><height>300</height></rect>
			<guide><direct>3</direct><x>330</x><y>3</y><content>Auto Battling...</content></guide>
			<next>2-6</next>
			</guide>
			<guide id='2-6'>
			<rect><x>554</x><y>411</y><width>80</width><height>40</height></rect>
			<guide><direct>2</direct><x>641</x><y>355</y><content>Click to quit the campaign</content></guide>
			<waiting>2-7</waiting>
			</guide>
			<guide id='2-7'>
			<rect><x>938</x><y>479</y><width>60</width><height>60</height></rect>
			<guide><direct>1</direct><x>702</x><y>430</y><content>Click to quit the campaign</content></guide>
			<next>2-8</next>
			</guide>
			<guide id='2-8'>
			<rect><x>932</x><y>93</y><width>66</width><height>38</height></rect>
			<guide><direct>1</direct><x>692</x><y>36</y><content>Click to seek the target</content></guide>
			<next></next>
			</guide>		
			<guide id='3-1'>
			<rect><x>932</x><y>93</y><width>66</width><height>38</height></rect>
			<guide><direct>1</direct><x>692</x><y>36</y><content>Click to seek the target</content></guide>
			<next></next>
			</guide>

			
				
			<guide id='6-1'>
			<rect><x>618</x><y>534</y><width>60</width><height>60</height></rect>
			<guide><direct>3</direct><x>488</x><y>379</y><content>Click to select crew </content></guide>
			<next>6-2</next>
			</guide>
			<guide id='6-2'>
			<rect><x>342</x><y>135</y><width>220</width><height>50</height></rect>
			<guide><direct>1</direct><x>103</x><y>84</y><content>Click to select weapon</content></guide>
			<next>6-3</next>
			</guide>
			<guide id='6-3'>
			<rect><x>653</x><y>376</y><width>80</width><height>40</height></rect>
			<guide><direct>1</direct><x>411</x><y>319</y><content>Click to enhance</content></guide>
			<next>6-4</next>
			</guide>
			<guide id='6-4'>
			<rect><x>767</x><y>24</y><width>42</width><height>42</height></rect>
			<guide><direct>4</direct><x>629</x><y>49</y><content>Click to close backpack</content></guide>
			<next></next>
			</guide>
			
			
			
			<guide id='9-1'>
			<rect><x>932</x><y>93</y><width>66</width><height>38</height></rect>
			<guide><direct>1</direct><x>692</x><y>36</y><content>Click to seek the target</content></guide>
			<waiting>9-2</waiting>
			</guide>
			<guide id='9-2'>
			<rect><x>339</x><y>485</y><width>100</width><height>50</height></rect>
			<guide><direct>2</direct><x>434</x><y>432</y><content>Click to open bar recruitment</content></guide>
			<next>9-3</next>
			</guide>
			<guide id='9-3'>
			<rect><x>339</x><y>453</y><width>104</width><height>50</height></rect>
			<guide><direct>1</direct><x>93</x><y>404</y><content>Click to convene crew</content></guide>
			<next>9-4</next>
			</guide>
			<guide id='9-4'>
			<rect><x>250</x><y>262</y><width>600</width><height>150</height></rect>
			<guide><direct>4</direct><x>388</x><y>399</y><content>Click to turn one card to see the crew</content></guide>
			<next></next>
			</guide>				
			<guide id='10-1'>
			<rect><x>775</x><y>534</y><width>60</width><height>60</height></rect>
			<guide><direct>3</direct><x>633</x><y>376</y><content>Click to open Aptitude panel</content></guide>
			<next>10-2</next>
			</guide>
			<guide id='10-2'>
			<rect><x>248</x><y>147</y><width>76</width><height>44</height></rect>
			<guide><direct>4</direct><x>120</x><y>180</y><content>Click to upgrade Aptitude </content></guide>
			<next>10-3</next>
			</guide>
			<guide id='10-3'>
			<rect><x>780</x><y>33</y><width>40</width><height>40</height></rect>
			<guide><direct>4</direct><x>637</x><y>56</y><content>Click to close Aptitude panel</content></guide>
			<next></next>
			</guide>
			
			<guide id='12-1'>
			<rect><x>274</x><y>188</y><width>120</width><height>135</height></rect>
			<guide><direct>1</direct><x>30</x><y>183</y><content>Click to capture new labour</content></guide>
			<waiting>12-2</waiting>
			</guide>
			<guide id='12-2'>
			<rect><x>555</x><y>409</y><width>80</width><height>44</height></rect>
			<guide><direct>1</direct><x>312</x><y>354</y><content>Click to exit the campaign</content></guide>
			<next>12-3</next>
			</guide>
			<guide id='12-3'>
			<rect><x>940</x><y>440</y><width>60</width><height>60</height></rect>
			<guide><direct>1</direct><x>704</x><y>393</y><content>Click to exit the harbour</content></guide>
			<next></next>
			</guide>
			
			<guide id='13-1'>
				<rect><x>517</x><y>534</y><width>60</width><height>60</height></rect>
				<guide><direct>3</direct><x>387</x><y>382</y><content>Click to open crew's panel</content></guide>
				<next>13-2</next>
				</guide>
				<guide id='13-2'>
				<rect><x>331</x><y>29</y><width>75</width><height>40</height></rect>
				<guide><direct>4</direct><x>206</x><y>50</y><content>Select Training page</content></guide>
				<next>13-3</next>
				</guide>
				<guide id='13-3'>
				<rect><x>211</x><y>99</y><width>120</width><height>120</height></rect>
				<guide><direct>2</direct><x>320</x><y>79</y><content>Choose the crew to be trained</content></guide>
				<next></next>
				</guide>
				
			
			<guide id='16-1'>
			<rect><x>282</x><y>201</y><width>100</width><height>40</height></rect>
			<guide><direct>4</direct><x>170</x><y>226</y><content>Click to start fishing</content></guide>
			<next></next>
			</guide>
			<guide id='17-1'>
				<rect><x>68</x><y>343</y><width>100</width><height>60</height></rect>
				<guide><direct>2</direct><x>132</x><y>277</y><content>Click to trade</content></guide>
				<autoHide>true</autoHide>
				<next></next>
				</guide>				
			<guide id='18-1'>
			<rect><x>409</x><y>1</y><width>60</width><height>60</height></rect>
			<guide><direct>4</direct><x>279</x><y>47</y><content>Click to enter arena</content></guide>
			<next>18-2</next>
			</guide>
			<guide id='18-2'>
			<rect><x>616</x><y>334</y><width>350</width><height>250</height></rect>
			<guide><direct>1</direct><x>363</x><y>383</y><content>select Arena</content></guide>
			<autoHide>true</autoHide>
			<next></next>
			</guide>
			<guide id='18-3'>
			<rect><x>400</x><y>301</y><width>70</width><height>40</height></rect>
			<guide><direct>4</direct><x>275</x><y>324</y><content>click to duel</content></guide>
			<next></next>
			</guide>
			
			<guide id='21-1'>
			<rect><x>215</x><y>101</y><width>60</width><height>60</height></rect>
			<guide><direct>2</direct><x>239</x><y>57</y><content>Click to select crew </content></guide>
			<next>21-2</next>
			</guide>
			<guide id='21-2'>
			<rect><x>652</x><y>416</y><width>124</width><height>40</height></rect>
			<guide><direct>1</direct><x>405</x><y>358</y><content>Click to refine attribute</content></guide>
			<next>21-3</next>
			</guide>
			<guide id='21-3'>
			<rect><x>620</x><y>417</y><width>150</width><height>40</height></rect>
			<guide><direct>1</direct><x>375</x><y>361</y><content>Choose to keep or replace attribute</content></guide>
			<next>21-4</next>
			</guide>
			<guide id='21-4'>
			<rect><x>775</x><y>23</y><width>45</width><height>45</height></rect>
			<guide><direct>4</direct><x>668</x><y>48</y><content>Click to close development panel</content></guide>
			<next></next>
			</guide>
			<guide id='22-1'>
			<rect><x>545</x><y>1</y><width>60</width><height>60</height></rect>
			<guide><direct>4</direct><x>415</x><y>41</y><content>Click to open daily task</content></guide>
			<next></next>
			</guide>
			<guide id='23-1'>
			<rect><x>635</x><y>1</y><width>60</width><height>60</height></rect>
			<guide><direct>4</direct><x>503</x><y>46</y><content>Click to open activity panel</content></guide>
			<next>23-2</next>
			</guide>
			<guide id='23-2'>
			<rect><x>241</x><y>76</y><width>520</width><height>100</height></rect>
			<guide><direct>4</direct><x>338</x><y>180</y><content>Check activity info and opening time</content></guide>
			<next>23-3</next>
			</guide>
			<guide id='23-3'>
			<rect><x>717</x><y>35</y><width>45</width><height>45</height></rect>
			<guide><direct>4</direct><x>582</x><y>60</y><content>Click to close activity panel</content></guide>
			<next></next>
			</guide>
			
			<guide id='24-1'>
			<rect><x>680</x><y>1</y><width>60</width><height>60</height></rect>
			<guide><direct>4</direct><x>560</x><y>46</y><content>Click to enter underwater treasure</content></guide>
			<next>24-2</next>
			</guide>
			<guide id='24-2'>
			<rect><x>304</x><y>46</y><width>390</width><height>120</height></rect>
			<guide><direct>1</direct><x>59</x><y>30</y><content>Items to be gained by treasure hunt</content></guide>
			<autoHide>true</autoHide>
			<next>24-3</next>
			</guide>
			<guide id='24-3'>
			<rect><x>17</x><y>372</y><width>260</width><height>200</height></rect>
			<guide><direct>3</direct><x>6</x><y>212</y><content>Click to hunt treasure from corals</content></guide>
			<waiting>24-4</waiting>
			</guide>
			<guide id='24-4'>
			<rect><x>716</x><y>53</y><width>260</width><height>190</height></rect>
			<guide><direct>1</direct><x>470</x><y>75</y><content>Items gained from treasure hunt</content></guide>
			<autoHide>true</autoHide>
			<next>24-5</next>
			</guide>
			<guide id='24-5'>
			<rect><x>931</x><y>0</y><width>60</width><height>60</height></rect>
			<guide><direct>4</direct><x>794</x><y>42</y><content>Click to exit underwater treasure</content></guide>
			<next></next>
			</guide>
			<guide id='25-1'>
			<rect><x>590</x><y>1</y><width>60</width><height>60</height></rect>
			<guide><direct>4</direct><x>458</x><y>43</y><content>Click to enter elite campaign</content></guide>
			<next></next>
			</guide>
			<guide id='26-1'>
			<rect><x>893</x><y>532</y><width>60</width><height>60</height></rect>
			<guide><direct>3</direct><x>763</x><y>377</y><content>Click to view pirate group</content></guide>
			<next>26-2</next>
			</guide>
			<guide id='26-2'>
			<rect><x>151</x><y>63</y><width>700</width><height>400</height></rect>
			<guide><direct>4</direct><x>340</x><y>452</y><content>Click to create or join pirate group</content></guide>
			<autoHide>true</autoHide>
			<next></next>
			</guide>
			<guide id='27-1'>
			<rect><x>161</x><y>102</y><width>40</width><height>40</height></rect>
			<guide><direct>2</direct><x>198</x><y>46</y><content>Click to add Vitality Points</content></guide>
			<next></next>
			</guide>
				
			<guide id='29-1'>
			<rect><x>590</x><y>1</y><width>60</width><height>60</height></rect>
			<guide><direct>4</direct><x>468</x><y>45</y><content>Click to check Elite Battles</content></guide>
			<next>29-2</next>
			</guide>
			<guide id='29-2'>
			<rect><x>210</x><y>87</y><width>180</width><height>90</height></rect>
			<guide><direct>2</direct><x>391</x><y>55</y><content>Click to Chose Elite Battle</content></guide>
			<next>29-3</next>
			</guide>
			<guide id='29-3'>
			<rect><x>566</x><y>396</y><width>70</width><height>40</height></rect>
			<guide><direct>1</direct><x>323</x><y>338</y><content>Click to start Battle</content></guide>
			<next></next>
			</guide>
			
			<guideNoNeed id='31-1'>
			<rect><x>530</x><y>530</y><width>60</width><height>60</height></rect>
			<guide><direct>3</direct><x>400</x><y>377</y><content>Click to open guardian beast panel</content></guide>
			<next>31-2</next>
			</guideNoNeed>
			<guide id='31-2'>
			<rect><x>335</x><y>383</y><width>220</width><height>60</height></rect>
			<guide><direct>1</direct><x>90</x><y>337</y><content>Interact with guardian beast to get growth item</content></guide>
			<next></next>
			</guide>
			<guide id='32-1'>
			<rect><x>918</x><y>454</y><width>82</width><height>82</height></rect>
			<guide><direct>1</direct><x>673</x><y>426</y><content>Click to Grand Line</content></guide>
			<next>32-2</next>
			</guide>
			<guide id='32-2'>
			<rect><x>818</x><y>154</y><width>180</width><height>70</height></rect>
			<guide><direct>1</direct><x>565</x><y>114</y><content>Click to check sail loops</content></guide>
			<next>32-3</next>
			</guide>
			<guide id='32-3'>
			<rect><x>534</x><y>92</y><width>92</width><height>42</height></rect>
			<guide><direct>2</direct><x>627</x><y>35</y><content>Click to auto sailing</content></guide>
			<next>32-4</next>
			</guide>
			<guide id='32-4'>
			<rect><x>918</x><y>446</y><width>80</width><height>80</height></rect>
			<guide><direct>1</direct><x>680</x><y>411</y><content>Click to back Land</content></guide>
			<next></next>
			</guide>
			<guide id='33-1'>
			<rect><x>769</x><y>48</y><width>60</width><height>60</height></rect>
			<guide><direct>4</direct><x>639</x><y>96</y><content>Click to enter Sea God system</content></guide>
			<next>33-2</next>
			</guide>
			<guide id='34-1'>
			<rect><x>775</x><y>525</y><width>80</width><height>75</height></rect>
			<guide><direct>3</direct><x>651</x><y>367</y><content>Click to enter warship system</content></guide>
			<next>34-2</next>
			</guide>
			<guide id='34-2'>
			<rect><x>93</x><y>500</y><width>820</width><height>100</height></rect>
			<guide><direct>3</direct><x>348</x><y>344</y><content>Drag crew to secondary job to activate special attribute</content></guide>
			<autoHide>true</autoHide>
			<next>34-3</next>
			</guide>
			<guide id='34-3'>
			<rect><x>843</x><y>313</y><width>40</width><height>40</height></rect>
			<guide><direct>1</direct><x>597</x><y>256</y><content>Click to open warship enhancement panel</content></guide>
			<next>34-4</next>
			</guide>
			<guide id='34-4'>
			<rect><x>463</x><y>339</y><width>75</width><height>40</height></rect>
			<guide><direct>1</direct><x>221</x><y>283</y><content>Click to enhance part of the warship</content></guide>
			<next></next>
			</guide>
			<guide id='35-1'>
			<rect><x>228</x><y>348</y><width>100</width><height>50</height></rect>
			<guide><direct>2</direct><x>326</x><y>296</y><content>Click to start adventure</content></guide>
			<next></next>
			</guide>
			<guide id='36-1'>
			<rect><x>849</x><y>520</y><width>80</width><height>80</height></rect>
			<guide><direct>3</direct><x>726</x><y>363</y><content>Click to make food</content></guide>
			<next>36-2</next>
			</guide>
			<guide id='36-2'>
			<rect><x>470</x><y>194</y><width>280</width><height>80</height></rect>
			<guide><direct>2</direct><x>742</x><y>156</y><content>Check materials</content></guide>
			<autoHide>true</autoHide>
			<next>36-3</next>
			</guide>
			<guide id='36-3'>
			<rect><x>763</x><y>28</y><width>40</width><height>40</height></rect>
			<guide><direct>4</direct><x>623</x><y>51</y><content>Click to close</content></guide>
			<next>36-4</next>
			</guide>
			<guide id='36-4'>
			<rect><x>818</x><y>223</y><width>180</width><height>70</height></rect>
			<guide><direct>1</direct><x>559</x><y>179</y><content>Click to check cooking loop quest</content></guide>
			<next>36-5</next>
			</guide>
			<guide id='36-5'>
			<rect><x>533</x><y>76</y><width>92</width><height>42</height></rect>
			<guide><direct>4</direct><x>419</x><y>100</y><content>Click to find quest target</content></guide>
			<next></next>
			</guide>
			<guide id='37-1'>
			<rect><x>816</x><y>293</y><width>180</width><height>70</height></rect>
			<guide><direct>1</direct><x>568</x><y>251</y><content>Click to check popular specialty</content></guide>
			<next>37-2</next>
			</guide>
			<guide id='37-2'>
			<rect><x>378</x><y>137</y><width>60</width><height>60</height></rect>
			<guide><direct>1</direct><x>130</x><y>90</y><content>Check popular specialty info</content></guide>
			<autoHide>true</autoHide>
			<next>37-3</next>
			</guide>
			<guide id='37-3'>
			<rect><x>432</x><y>130</y><width>180</width><height>80</height></rect>
			<guide><direct>1</direct><x>174</x><y>92</y><content>Sell at Popular Area to gain high profit</content></guide>
			<next></next>
			</guide>
			<guide id='38-1'>
			<rect><x>724</x><y>48</y><width>60</width><height>60</height></rect>
			<guide><direct>4</direct><x>599</x><y>88</y><content>Click to enter Battle Royal</content></guide>
			<next>38-2</next>
			</guide>
			<guide id='38-2'>
			<rect><x>542</x><y>411</y><width>110</width><height>60</height></rect>
			<guide><direct>1</direct><x>296</x><y>363</y><content>Click to Start</content></guide>
			<next>38-3</next>
			</guide>
			<guide id='38-3'>
			<rect><x>329</x><y>204</y><width>540</width><height>220</height></rect>
			<guide><direct>4</direct><x>439</x><y>414</y><content>Change crew according to the rule</content></guide>
			<next></next>
			</guide>

			
			</root>;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _next:String;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1091835952remove4:Canvas;
      
      mx_internal var _bindings:Array = [];
      
      private var _94750088click:Canvas;
      
      private var _1091835949remove1:Canvas;
      
      private var _currentId:String;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":1000,
               "height":600,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"remove1",
                  "stylesFactory":function():void
                  {
                     this.backgroundAlpha = 0.01;
                     this.backgroundColor = 0;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"width":1000};
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"remove2",
                  "stylesFactory":function():void
                  {
                     this.backgroundAlpha = 0.01;
                     this.backgroundColor = 0;
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"remove3",
                  "stylesFactory":function():void
                  {
                     this.backgroundAlpha = 0.01;
                     this.backgroundColor = 0;
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"remove4",
                  "stylesFactory":function():void
                  {
                     this.backgroundAlpha = 0.01;
                     this.backgroundColor = 0;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"width":1000};
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"click",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Border153",
                        "mouseEnabled":false,
                        "mouseChildren":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":TipTextPanel,
                  "id":"guide",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "mouseEnabled":false,
                        "mouseChildren":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SWFLoader,
                  "id":"swfPlayer"
               }),new UIComponentDescriptor({
                  "type":GlowButton,
                  "id":"_GuidePanel_GlowButton1",
                  "events":{"click":"___GuidePanel_GlowButton1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"Button113",
                        "x":460,
                        "y":500,
                        "visible":false
                     };
                  }
               })]
            };
         }
      });
      
      private var _98712316guide:TipTextPanel;
      
      public function GuidePanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 1000;
         this.height = 600;
         this.mouseEnabled = false;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         GuidePanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get click() : Canvas
      {
         return this._94750088click;
      }
      
      [Bindable(event="propertyChange")]
      public function get guide() : TipTextPanel
      {
         return this._98712316guide;
      }
      
      public function set swfPlayer(param1:SWFLoader) : void
      {
         var _loc2_:Object = this._2033656829swfPlayer;
         if(_loc2_ !== param1)
         {
            this._2033656829swfPlayer = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"swfPlayer",_loc2_,param1));
         }
      }
      
      private function autoHide(e:TimerEvent) : void
      {
         timer.stop();
         timer.removeEventListener(TimerEvent.TIMER,shareBorder);
         timer.removeEventListener(TimerEvent.TIMER_COMPLETE,autoHide);
         hide(_currentId);
      }
      
      [Bindable(event="propertyChange")]
      public function get swfPlayer() : SWFLoader
      {
         return this._2033656829swfPlayer;
      }
      
      private function getGuideInfo(id:String) : Array
      {
         var result:Array = null;
         var guide:XMLList = null;
         var rects:Array = null;
         var guides:Array = null;
         result = new Array();
         guide = guideInfo.guide.(@id == id);
         if(guide.children().length() == 0)
         {
            return null;
         }
         rects = [parseInt(guide.rect.x),parseInt(guide.rect.y),parseInt(guide.rect.width),parseInt(guide.rect.height)];
         result.push(rects);
         guides = [String(guide.guide.direct),parseInt(guide.guide.x),parseInt(guide.guide.y),guide.guide.content];
         result.push(guides);
         result.push(String(guide.next));
         result.push(String(guide.waiting));
         result.push(String(guide.autoHide));
         result.push(String(guide.swf));
         return result;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:GuidePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _GuidePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_ui_guide_GuidePanelWatcherSetupUtil");
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
      
      public function showWaiting(id:String) : Boolean
      {
         if(id == _waiting && isWaiting)
         {
            isWaiting = false;
            show(id);
            return true;
         }
         return false;
      }
      
      private function checkSkip(id:String) : Boolean
      {
         var hero:HeroData = null;
         var result:Boolean = false;
         switch(id)
         {
            case "23-2":
               if(DataManager.Instance.hero.list.length <= 1)
               {
                  result = true;
               }
               break;
            case "23-3":
               if(DataManager.Instance.hero.list.length <= 1)
               {
                  result = true;
               }
               else
               {
                  hero = DataManager.Instance.hero.list.getItemAt(1) as HeroData;
                  if(hero.isTrainning)
                  {
                     result = true;
                  }
               }
               break;
            case "23-4":
               if(DataManager.Instance.hero.list.length <= 1)
               {
                  result = true;
               }
               break;
            case "25-3":
               if(DataManager.Instance.hero.list.length <= 2)
               {
                  result = true;
               }
               break;
            case "25-4":
               if(DataManager.Instance.hero.list.length <= 2)
               {
                  result = true;
               }
               else
               {
                  hero = DataManager.Instance.hero.list.getItemAt(2) as HeroData;
                  if(hero.isTrainning)
                  {
                     result = true;
                  }
               }
               break;
            case "25-5":
               if(DataManager.Instance.hero.list.length <= 2)
               {
                  result = true;
               }
         }
         return result;
      }
      
      public function set click(param1:Canvas) : void
      {
         var _loc2_:Object = this._94750088click;
         if(_loc2_ !== param1)
         {
            this._94750088click = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"click",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get remove1() : Canvas
      {
         return this._1091835949remove1;
      }
      
      [Bindable(event="propertyChange")]
      public function get remove2() : Canvas
      {
         return this._1091835950remove2;
      }
      
      [Bindable(event="propertyChange")]
      public function get remove3() : Canvas
      {
         return this._1091835951remove3;
      }
      
      [Bindable(event="propertyChange")]
      public function get remove4() : Canvas
      {
         return this._1091835952remove4;
      }
      
      private function _GuidePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = UILang.Skip;
      }
      
      private function refreshRemove(rects:Array) : void
      {
         var height:int = 0;
         var x:int = rects.shift();
         var y:int = rects.shift();
         var width:int = rects.shift();
         height = rects.shift();
         remove1.height = y;
         remove2.y = y;
         remove2.width = x;
         remove2.height = height;
         remove3.x = x + width;
         remove3.y = y;
         remove3.width = 1000 - x - width;
         remove3.height = height;
         remove4.y = y + height;
         remove4.height = 600 - y - height;
         click.x = x;
         click.y = y;
         click.width = width;
         click.height = height;
      }
      
      public function hide(id:String) : void
      {
         if(_currentId != id)
         {
            return;
         }
         if(_next)
         {
            show(_next);
         }
         else if(_waiting)
         {
            isWaiting = true;
            if(parent)
            {
               parent.removeChild(this);
            }
         }
         else if(parent)
         {
            parent.removeChild(this);
         }
      }
      
      private function findNext(id:String) : String
      {
         var info:Array = getGuideInfo(id);
         if(info)
         {
            id = info[2];
         }
         return id;
      }
      
      public function set remove2(param1:Canvas) : void
      {
         var _loc2_:Object = this._1091835950remove2;
         if(_loc2_ !== param1)
         {
            this._1091835950remove2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"remove2",_loc2_,param1));
         }
      }
      
      private function refreshGuide(guides:Array) : void
      {
         guide.direct = guides.shift();
         guide.x = guides.shift();
         guide.y = guides.shift();
         guide.content = guides.shift();
         guide.start();
      }
      
      public function ___GuidePanel_GlowButton1_click(event:MouseEvent) : void
      {
         hideAll();
      }
      
      public function set remove3(param1:Canvas) : void
      {
         var _loc2_:Object = this._1091835951remove3;
         if(_loc2_ !== param1)
         {
            this._1091835951remove3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"remove3",_loc2_,param1));
         }
      }
      
      public function set remove4(param1:Canvas) : void
      {
         var _loc2_:Object = this._1091835952remove4;
         if(_loc2_ !== param1)
         {
            this._1091835952remove4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"remove4",_loc2_,param1));
         }
      }
      
      private function onClick(event:MouseEvent) : void
      {
         hide(_currentId);
         removeEventListener(MouseEvent.CLICK,onClick);
         timer.stop();
         timer.removeEventListener(TimerEvent.TIMER,shareBorder);
         timer.removeEventListener(TimerEvent.TIMER_COMPLETE,autoHide);
         mouseEnabled = false;
      }
      
      private function shareBorder(e:TimerEvent) : void
      {
         click.visible = !click.visible;
      }
      
      public function set remove1(param1:Canvas) : void
      {
         var _loc2_:Object = this._1091835949remove1;
         if(_loc2_ !== param1)
         {
            this._1091835949remove1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"remove1",_loc2_,param1));
         }
      }
      
      private function _GuidePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var result:* = UILang.Skip;
            return result == undefined ? null : String(result);
         },function(param1:String):void
         {
            _GuidePanel_GlowButton1.label = param1;
         },"_GuidePanel_GlowButton1.label");
         result[0] = binding;
         return result;
      }
      
      public function set guide(param1:TipTextPanel) : void
      {
         var _loc2_:Object = this._98712316guide;
         if(_loc2_ !== param1)
         {
            this._98712316guide = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"guide",_loc2_,param1));
         }
      }
      
      public function show(id:String) : void
      {
         var swf:String = null;
         while(checkSkip(id))
         {
            id = findNext(id);
         }
         var info:Array = getGuideInfo(id);
         if(info)
         {
            _currentId = id;
            refreshRemove(info.shift());
            refreshGuide(info.shift());
            _next = info.shift();
            _waiting = info.shift();
            click.visible = true;
            if(info.shift())
            {
               timer.addEventListener(TimerEvent.TIMER,shareBorder);
               timer.addEventListener(TimerEvent.TIMER_COMPLETE,autoHide);
               timer.reset();
               timer.start();
               if(!hasEventListener(MouseEvent.CLICK))
               {
                  addEventListener(MouseEvent.CLICK,onClick);
               }
               mouseEnabled = true;
            }
            else
            {
               if(hasEventListener(MouseEvent.CLICK))
               {
                  removeEventListener(MouseEvent.CLICK,onClick);
               }
               mouseEnabled = false;
            }
            swf = info.shift();
            if(swf != "")
            {
               swfPlayer.source = "../assets/images/Guide/" + swf + ".swf";
               swfPlayer.visible = true;
            }
            else
            {
               swfPlayer.visible = false;
               swfPlayer.source = "";
            }
         }
         else if(parent)
         {
            parent.removeChild(this);
         }
      }
      
      private function hideAll() : void
      {
         parent.removeChild(this);
      }
   }
}

