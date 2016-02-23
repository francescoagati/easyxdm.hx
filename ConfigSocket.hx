package easyxdm;

typedef ConfigSocket<T> = {
  >easyxdm.Config,
  ?onMessage:T->Dynamic->Void
}
