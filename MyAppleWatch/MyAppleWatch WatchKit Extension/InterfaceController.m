//
//  InterfaceController.m
//  MyAppleWatch WatchKit Extension
//
//  Created by JamesMac on 3/20/15.
//  Copyright (c) 2015 Person. All rights reserved.
//

#import "InterfaceController.h"

typedef enum {
    MessageSourceIncoming = 1,
    MessageSourceOutgoing = 2
} MessageSource;

typedef enum {
    MessageTypeText = 1,
    MessageTypeVoice = 2,
    MessageTypeImage = 3
} MessageType;


@interface InterfaceController(){
    NSMutableArray *_messages;
}

@end


@implementation InterfaceController
@synthesize labGuess,labResult,timeNow;

int _correct = 5;
NSString *_correctKey = @"我要红包";


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
    [self presentTextInputControllerWithSuggestions:@[@"Hello", @"Hi"] allowedInputMode:WKTextInputModeAllowAnimatedEmoji completion:^(NSArray *results) {
        if (results.count > 0) {
            NSDictionary *messageDic = @{@"msg":results.firstObject, @"source":@(MessageSourceOutgoing), @"type":@(MessageTypeText)};
            [labGuess setText:[NSString stringWithFormat:@"口令: %@",messageDic[@"msg"]]];
            if([messageDic[@"msg"] isEqualToString:_correctKey]){
                int value = arc4random() % (10);
                [labResult setText:[NSString stringWithFormat:@"恭喜您，人品爆发，%d元红包是您的啦!",value]];
            }else{
                [labResult setText:@"好遗憾。。。红包口令没猜对。"];
            }
        
            
        }
    }];
    
}
@end



