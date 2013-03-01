//
//  AppDelegate.m
//  SmartScene
//
//  Created by JerryChan on 13-2-5.
//  Copyright (c) 2013年 JerryChan. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window;

- (void)dealloc
{
    [window release];
    [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    [self.window setAlphaValue:0.3f];
    NSApplication *app = [NSApplication sharedApplication];
    [app setWindowsNeedUpdate:YES];
}

- (void)update{
    NSLog(@"update window...");
}

@end
