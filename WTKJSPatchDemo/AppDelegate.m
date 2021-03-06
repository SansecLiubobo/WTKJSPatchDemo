//
//  AppDelegate.m
//  WTKJSPatchDemo
//
//  Created by 王同科 on 16/7/21.
//  Copyright © 2016年 王同科. All rights reserved.
//

#import "AppDelegate.h"
#import "JPEngine.h"
//#import "AFNetworking.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
//    
//    [JSPatch startWithAppKey:@"ed6a9b522a5e8787"];
//    [JSPatch sync];
//    [JSPatch testScriptInBundle];
    
//    http://192.168.1.78:8080/ly_zhb_app/main.js"
    

    
    [JPEngine startEngine];
    NSString *sourcePath = [[NSBundle mainBundle] pathForResource:@"main" ofType:@"js"];
    NSString *script = [NSString stringWithContentsOfFile:sourcePath encoding:NSUTF8StringEncoding error:nil];
    [JPEngine evaluateScript:script];
//
    return YES;
}

//- (NSString *)downLoadJS
//{
//    NSString *path = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents/ceshi.js"];
//    NSURL *urlPath = [NSURL URLWithString:[NSString stringWithFormat:@"file://%@",path]];
//    NSString *jsString = [NSString stringWithContentsOfURL:urlPath encoding:NSUTF8StringEncoding error:nil];
//    
//    return jsString;
//    
//    
//}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
