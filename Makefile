all: clean build


build:
	mkdir -p build
	xcrun clang -x objective-c -arch x86_64 -g -framework Foundation -framework ScriptingBridge -mmacosx-version-min=10.11 -Wl,-sectcreate,__TEXT,__info_plist,Info.plist -fobjc-arc -Wall -Werror main.m -o build/tunes
	-codesign --sign "Developer ID" build/tunes

clean:
	rm -rdf build
