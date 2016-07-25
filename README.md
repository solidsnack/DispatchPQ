For example:

```
:;  make
swift build -Xcc -I/usr/local/include -Xlinker -L/usr/local/lib

:;  make repl
swift build -Xcc -I/usr/local/include -Xlinker -L/usr/local/lib

  1> import DispatchPQ
  2> let c = Connection()
c: DispatchPQ.Connection = {
  conninfo = "postgres:///"
  cxn = 0x0000000100a077d0
  cancelToken = {
    canceller = 0x0000000100905390
  }
  notifications = 0 values
  queue = {}
  clientThread = nil
  cookie = 2491638743
}
  3> c.query("SHOW data_directory")
$R0: DispatchPQ.Rows = {
  res = 0x0000000100b00480 -> 0x0000000100000001 repl_swift`_mh_execute_header + 1
}
  4> c.query("SHOW data_directory").data()
$R1: [[String?]] = 1 value {
  [0] = 1 value {
    [0] = "/usr/local/var/postgres"
  }
}
```
