package easyxdm;

@:native('easyXDM.Rpc')
extern class Rpc<T1,T2> {
  public function new(config:Config,services:Services<T1,T2>) {}

  public function toRemote():T1 return untyped this;

}
