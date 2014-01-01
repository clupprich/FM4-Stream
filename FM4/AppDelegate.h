//
//  AppDelegate.h
//  FM4
//
//  Created by Christoph Lupprich on 27/12/13.
//  Copyright (c) 2013 Christoph Lupprich. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <VLCKit/VLCKit.h>

@interface AppDelegate : NSObject <NSApplicationDelegate> {
  IBOutlet NSMenu *statusMenu;
  IBOutlet NSMenuItem *startStopMenuItem;
  NSStatusItem *statusItem;
  VLCMediaPlayer *player;
  BOOL playing;
}

- (IBAction)doStartOrStop:(id)sender;
- (IBAction)quitApplication:(id)sender;
- (IBAction)showInfo:(id)sender;

@end
