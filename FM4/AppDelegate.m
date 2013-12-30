//
//  AppDelegate.m
//  FM4
//
//  Created by Christoph Lupprich on 27/12/13.
//  Copyright (c) 2013 Christoph Lupprich. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
  NSImage *image = [NSImage imageNamed:@"StatusBarIcon"];
  statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
  [statusItem setMenu:statusMenu];
  //[statusItem setTitle:@"FM4"];
  [statusItem setImage:image];
  [statusItem setHighlightMode:YES];
}

- (IBAction)doStartOrStop:(id)sender
{
  if (playing)
  {
    [self stopStream];
    [startStopMenuItem setTitle:@"Start"];
  }
  else
  {
    [self startStream];
    [startStopMenuItem setTitle:@"Stop"];
  }
}

- (void)startStream
{
  if (player == nil) {
    player = [[VLCMediaPlayer alloc] init];
    [player setMedia:[VLCMedia mediaWithURL:[NSURL URLWithString:@"mms://apasf.apa.at/fm4_live_worldwide"]]];
  }
  
  [player play];
  playing = TRUE;
}

- (void)stopStream
{
  if (player == nil)
    return;
  
  [player stop];
  playing = FALSE;
}

@end
