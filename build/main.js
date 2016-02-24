(function (console) { "use strict";
var easyxdm_Main = function() { };
easyxdm_Main.main = function() {
	var socket = new easyXDM.Socket({ onMessage : function(event,origin) {
		event.name;
	}});
	var local = { ping : function(msg,fn) {
		fn("hello");
	}};
	var remote = { ping : { }};
	var rpc = new easyXDM.Rpc({ },{ remote : remote, local : local});
	var rpc_remote = rpc;
	rpc_remote.ping("s",function(response) {
	});
};
easyxdm_Main.main();
})(typeof console != "undefined" ? console : {log:function(){}});
