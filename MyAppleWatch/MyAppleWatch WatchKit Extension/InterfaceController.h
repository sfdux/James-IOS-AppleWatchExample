//
//  InterfaceController.h
//  MyAppleWatch WatchKit Extension
//
//  Created by JamesMac on 3/20/15.
//  Copyright (c) 2015 Person. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController : WKInterfaceController
@property (weak, nonatomic) IBOutlet WKInterfaceSlider *sliderBar;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *labGuess;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *labResult;
@property (weak, nonatomic) IBOutlet WKInterfaceTimer *timeNow;

- (IBAction)btnGuess;

@end
