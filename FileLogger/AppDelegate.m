//
//  AppDelegate.m
//  FileLogger
//
//  Created by Mac on 29/03/16.
//  Copyright © 2016 fsystem. All rights reserved.
//

#import "AppDelegate.h"
#import "PRNUtils.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    NSError *error;
    
    NSString *  LogDataPath = [[PRNUtils documentsDirectoryPath]stringByAppendingPathComponent:[NSString stringWithFormat:@"%@Logs",@""]];
    
    if (![[NSFileManager defaultManager] fileExistsAtPath:LogDataPath]){
        [[NSFileManager defaultManager] createDirectoryAtPath:LogDataPath withIntermediateDirectories:NO attributes:nil error:&error];
        
    }

    NSString *logFilePath = [LogDataPath stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.log",[NSDate date]]];
    freopen([logFilePath cStringUsingEncoding:NSASCIIStringEncoding], "a+", stderr);
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
}

- (void)applicationWillTerminate:(UIApplication *)application {
 
}

@end
