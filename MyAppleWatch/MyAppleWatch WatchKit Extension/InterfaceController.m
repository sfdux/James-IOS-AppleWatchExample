//
//  InterfaceController.m
//  MyAppleWatch WatchKit Extension
//
//  Created by JamesMac on 3/20/15.
//  Copyright (c) 2015 Person. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@end


@implementation InterfaceController
@synthesize labGuess,labResult,timeNow;

int _correct = 5;


- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)btnGuess {
    int value = arc4random() % (10);
    
    [labGuess setText:[NSString stringWithFormat:@"您猜的金额是: %d",value]];
    
    if(_correct == value){
        [labResult setText:@"恭喜您，人品爆发，红包是您的啦!"];
    }else{
        [labResult setText:@"好遗憾。。。没猜对"];
    }
    
}
@end



