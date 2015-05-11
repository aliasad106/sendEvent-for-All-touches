//
//  MyApplication.m
//  FitnessElements
//
//  Created by Ali Asadullah on 11/05/2015.
//  Copyright (c) 2015 SwenggCo. All rights reserved.
//

#import "MyApplication.h"
#import "SignInViewController.h"
#import "PopupViewController.h"

#import "AppDelegate.h"

@implementation MyApplication
-(void)sendEvent:(UIEvent *)event
{
    
    NSSet *set= event.allTouches;
    NSArray *array=[set allObjects];
    UITouch *touchEvent= [array lastObject];
    UIView *view=[touchEvent view];
    if([view isKindOfClass:[UIButton class]])
    {
        UIButton *button = (UIButton *)view;

        for (id target in button.allTargets)
        {
            if (touchEvent.phase== UITouchPhaseEnded) {
                
                PopupViewController *alertView = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]]instantiateViewControllerWithIdentifier:@"PopupViewController"];
                if([target isKindOfClass:[ABC class]] || [target isKindOfClass:[XYZ class]])
                {
                        if([userNOTSignedIn]){
                            alertView.modalPresentationStyle = UIModalPresentationOverCurrentContext;
                            [target presentViewController:alertView animated:YES completion:NULL];
                    }
                }
                
            }
        }
    }
}

@end
