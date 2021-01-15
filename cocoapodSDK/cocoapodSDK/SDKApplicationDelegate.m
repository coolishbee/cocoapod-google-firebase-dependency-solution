//
//  SDKApplicationDelegate.m
//  cocoapodSDK
//
//  Created by gamepub on 2021/01/15.
//

#import "SDKApplicationDelegate.h"

@import Firebase;

@implementation SDKApplicationDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    [[FIRConfiguration sharedInstance] setLoggerLevel:FIRLoggerLevelMin];
    [FIRApp configure];
    
    
    return YES;
}

@end


