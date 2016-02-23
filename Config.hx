package easyxdm;

typedef Config = {
  ?remote:String,
  ?local:String,
  ?swf:String,
  ?onReady:Void->Void,
  ?swfNoThrottle:Bool,
  ?swfContainer:String,
  ?lazy:Bool,
  ?container:js.html.Element,
  ?props:Dynamic,
  ?remoteHelper:String,
  ?hash:Bool,
  ?acl:Dynamic
}
