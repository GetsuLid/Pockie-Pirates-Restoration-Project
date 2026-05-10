package mx.states
{
   import flash.display.DisplayObject;
   import mx.containers.ApplicationControlBar;
   import mx.containers.ControlBar;
   import mx.containers.Panel;
   import mx.core.Application;
   import mx.core.ContainerCreationPolicy;
   import mx.core.IDeferredInstance;
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   import mx.resources.IResourceManager;
   import mx.resources.ResourceManager;
   
   use namespace mx_internal;
   
   public class AddChild implements IOverride
   {
      
      mx_internal static const VERSION:String = "3.2.0.3958";
      
      mx_internal var added:Boolean = false;
      
      mx_internal var instanceCreated:Boolean = false;
      
      private var _creationPolicy:String = "auto";
      
      public var relativeTo:UIComponent;
      
      public var position:String;
      
      private var _target:DisplayObject;
      
      private var _targetFactory:IDeferredInstance;
      
      private var resourceManager:IResourceManager = ResourceManager.getInstance();
      
      public function AddChild(relativeTo:UIComponent = null, target:DisplayObject = null, position:String = "lastChild")
      {
         super();
         this.relativeTo = relativeTo;
         this.target = target;
         this.position = position;
      }
      
      public function remove(parent:UIComponent) : void
      {
         var obj:UIComponent = relativeTo ? relativeTo : parent;
         if(!added)
         {
            return;
         }
         switch(position)
         {
            case "before":
            case "after":
               obj.parent.removeChild(target);
               break;
            case "firstChild":
            case "lastChild":
            default:
               if(target is ControlBar && obj is Panel)
               {
                  Panel(obj).rawChildren.removeChild(target);
                  Panel(obj).createComponentsFromDescriptors();
               }
               else if(target is ApplicationControlBar && ApplicationControlBar(target).dock)
               {
                  Application(obj).mx_internal::dockControlBar(ApplicationControlBar(target),false);
                  Application(obj).removeChild(target);
               }
               else if(obj == target.parent)
               {
                  obj.removeChild(target);
               }
         }
         added = false;
      }
      
      public function initialize() : void
      {
         if(creationPolicy == ContainerCreationPolicy.AUTO)
         {
            createInstance();
         }
      }
      
      public function get target() : DisplayObject
      {
         if(!_target && creationPolicy != ContainerCreationPolicy.NONE)
         {
            createInstance();
         }
         return _target;
      }
      
      public function set creationPolicy(value:String) : void
      {
         _creationPolicy = value;
         if(_creationPolicy == ContainerCreationPolicy.ALL)
         {
            createInstance();
         }
      }
      
      public function set target(value:DisplayObject) : void
      {
         _target = value;
      }
      
      public function apply(parent:UIComponent) : void
      {
         var message:String = null;
         var obj:UIComponent = relativeTo ? relativeTo : parent;
         added = false;
         if(!target)
         {
            return;
         }
         if(target.parent)
         {
            message = resourceManager.getString("states","alreadyParented");
            throw new Error(message);
         }
         switch(position)
         {
            case "before":
               obj.parent.addChildAt(target,obj.parent.getChildIndex(obj));
               break;
            case "after":
               obj.parent.addChildAt(target,obj.parent.getChildIndex(obj) + 1);
               break;
            case "firstChild":
               obj.addChildAt(target,0);
               break;
            case "lastChild":
            default:
               obj.addChild(target);
               if(target is ControlBar && obj is Panel)
               {
                  Panel(obj).createComponentsFromDescriptors();
               }
               else if(target is ApplicationControlBar && ApplicationControlBar(target).dock && obj is Application)
               {
                  ApplicationControlBar(target).resetDock(true);
               }
         }
         added = true;
      }
      
      public function createInstance() : void
      {
         var instance:Object = null;
         if(!instanceCreated && !_target && Boolean(targetFactory))
         {
            instanceCreated = true;
            instance = targetFactory.getInstance();
            if(instance is DisplayObject)
            {
               _target = DisplayObject(instance);
            }
         }
      }
      
      public function set targetFactory(value:IDeferredInstance) : void
      {
         _targetFactory = value;
         if(creationPolicy == ContainerCreationPolicy.ALL)
         {
            createInstance();
         }
      }
      
      public function get creationPolicy() : String
      {
         return _creationPolicy;
      }
      
      public function get targetFactory() : IDeferredInstance
      {
         return _targetFactory;
      }
   }
}

