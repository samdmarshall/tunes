#import <Foundation/Foundation.h>
#import <ScriptingBridge/ScriptingBridge.h>
#import <iso646.h>
#import "iTunes.h"

int main(int argc, const char *argv[]) {
	@autoreleasepool {
		NSArray *arguments = [[NSProcessInfo processInfo] arguments];

		iTunesApplication *itunes_instance = [SBApplication applicationWithBundleIdentifier:@"com.apple.iTunes"];

		bool stop_argument = ([arguments count] >= 2 and [[arguments objectAtIndex:1] isEqualToString:@"stop"]);
		if (stop_argument) {
			[itunes_instance pause];
		}

		bool find_argument = ([arguments count] >= 4 and [[arguments objectAtIndex:1] isEqualToString:@"find"]);
		if (find_argument) {

			NSArray __unused *results;

			NSString __unused *search_string = [arguments objectAtIndex:3];
		
			bool song_argument = ([[arguments objectAtIndex:2] isEqualToString:@"song"]);
			if (song_argument) {
			
			}

			bool playlist_argument = ([[arguments objectAtIndex:2] isEqualToString:@"playlist"]);
			if (playlist_argument) {
				
			}

		}
		
		bool start_argument = ([arguments count] >= 2 and [[arguments objectAtIndex:1] isEqualToString:@"start"]);
		if (start_argument) {

			bool resume = ([arguments count] == 2);
			if (resume) {
				[itunes_instance playOnce:NO];
			}
		}
		
	}
	return 0;
}
