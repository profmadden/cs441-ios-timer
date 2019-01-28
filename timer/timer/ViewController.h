//
//  ViewController.h
//  timer
//
//  Created by Patrick Madden on 1/28/19.
//  Copyright © 2019 SUNY Binghamton. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (nonatomic, strong) NSTimer *timer;
@property (nonatomic, strong) IBOutlet UILabel *label;

@end

