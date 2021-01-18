//
//  SDKApplicationDelegate.m
//  cocoapodSDK
//
//  Created by gamepub on 2021/01/15.
//

#import "SDKApplicationDelegate.h"

#import "FIRConfiguration.h"
#import "FIRApp.h"
#import "AFNetworking.h"

@implementation SDKApplicationDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    [[FIRConfiguration sharedInstance] setLoggerLevel:FIRLoggerLevelMin];
    [FIRApp configure];
    
    
    return YES;
}

- (void) sendPacketServerTime:(NSString *)time
                      onSuccess:(void (^)(id))onSuccess
                      onFailure:(void (^)(NSError*))onFailure
{
    NSString *strUrl = @"https://pubsdkapitest.igamepub.co.kr/Api/Db/Time";
    NSURL *URL = [NSURL URLWithString:strUrl];
    
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc]initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    [manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    
    [manager    GET:URL.absoluteString
         parameters:nil
           progress:nil
            success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable resp)
    {
        NSLog(@"Reply POST JSON: %@", resp);
        
        onSuccess(resp);
    }
    failure:^(NSURLSessionDataTask *oper, NSError *err) {
        NSLog(@"Error: %@", err);
        onFailure(err);
    }];
    
}

@end


