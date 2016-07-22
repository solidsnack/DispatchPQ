all:
	swift build -Xcc -I/usr/local/include -Xlinker -L/usr/local/lib

clean:
	rm -rf .build/

repl: all
	swift -I .build/debug -L .build/debug -I Packages/ -lDispatchPQ
