//
//  AppDelegate.m
//  Test获取本机IP地址
//
//  Created by SunSet on 15-6-11.
//  Copyright (c) 2015年 SunSet. All rights reserved.
//

#import "AppDelegate.h"
#import "XQIPAdress.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSLog(@" 本地ip: %@ ",[self deviceIPAdress]);
    
    return YES;
}


- (NSString *)deviceIPAdress {
    InitAddresses();
    GetIPAddresses();
    GetHWAddresses();
    
    /*
     int i;
     NSString *deviceIP;
     for (i=0; i<MAXADDRS; ++i)
     {
     static unsigned long localHost = 0x7F000001;        // 127.0.0.1
     unsigned long theAddr;
     
     theAddr = ip_addrs[i];
     
     if (theAddr == 0) break;
     if (theAddr == localHost) continue;
     
     NSLog(@"%s %s %s/n", if_names[i], hw_addrs[i], ip_names[i]);
     }
     deviceIP = [NSString stringWithFormat:@"%s", ip_names[i]];
     */
    
    //this will get you the right IP from your device in format like 198.111.222.444. If you use the for loop above you will se that ip_names array will also contain localhost IP 127.0.0.1 that's why I don't use it. Eventualy this was code from mac that's why it uses arrays for ip_names as macs can have multiple IPs
    return [NSString stringWithFormat:@"%s", ip_names[1]];
}


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
