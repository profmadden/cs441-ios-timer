//
//  ViewController.m
//  timer
//
//  Created by Patrick Madden on 1/28/19.
//  Copyright © 2019 SUNY Binghamton. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize timer;
@synthesize label;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.


    // The timer starts, and keeps running.  Every 5 seconds, the
    // code within the block executes.
    // NOTE: changing graphic elements must be done on the main
    // thread (there's some locking/semaphore stuff that happens
    // in iOS, and only the main thread can access the screen).
    // So -- in the block of code -- we call the method
    // "incrementLabel," which will happen on the main thread,
    // rather than on the thread triggered by the timer.
    timer = [NSTimer scheduledTimerWithTimeInterval:5 repeats:YES block:^(NSTimer * _Nonnull timer) {
        [self performSelectorOnMainThread:@selector(incrementLabel) withObject:nil waitUntilDone:NO];
    }];
}

-(void)incrementLabel
{
    static int x = 0;
    
    ++x;
    [label setText:[NSString stringWithFormat:@"Count is now %d", x]];
}

@end
