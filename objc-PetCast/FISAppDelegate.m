//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "FISDog.h"

@implementation FISAppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    FISDog *dog = [[FISDog alloc] init];
    NSLog(@"%@",[dog makeASound]);
    NSLog(@"%@",[dog assaultTheMailman]);
    
    NSLog(@"Casting..%@", [(FISPet*)dog makeASound]);
    
    FISPet *pet = [[FISPet alloc] init];
    
    // this will crash
//    NSLog(@"Casting again..%@", [(FISDog*)pet assaultTheMailman]);
    
    FISPet *dogPet = (FISPet *)dog;
    
    // this doesn't work
//    [dogPet assualtTheMailman];
    
    return YES;
}

@end
