package easyxdm;

import easyxdm.Socket;


typedef Local = {
  ping:String->Dynamic->Void
}


typedef Remote = {
  ping:String->Dynamic->Void
}


class Main {


  public static function main() {

    var socket = new Socket<{name:String,data:Dynamic}>({
      onMessage:function(event,origin) {
        event.name;
      }
    });


    var local:Local = {
      ping:function(msg:String,fn:String->Void) {
        fn('hello');
      }
    }


    var remote:Remote = {
      ping:untyped {}
    }

    var rpc = new Rpc({},{
      remote:remote,
      local:local
    });

    var rpc_remote = rpc.toRemote();
    

  }
}
