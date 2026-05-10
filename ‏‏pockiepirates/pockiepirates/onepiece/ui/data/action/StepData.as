package data.action
{
   public class StepData
   {
      
      public var desc:String;
      
      public var stepName:String;
      
      public var stepId:int;
      
      public var fetch:Boolean;
      
      public var id:int;
      
      public function StepData()
      {
         super();
      }
      
      public function dealStep(_desc:String, _fetch:Boolean, _stepId:int, _name:String, _id:int) : void
      {
         id = _id;
         desc = _desc;
         fetch = _fetch;
         stepId = _stepId;
         stepName = _name;
      }
   }
}

