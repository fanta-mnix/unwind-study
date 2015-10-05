//
//  SecondViewController.m
//  CodeUnwind
//
//  Created by Rafael Fantini on 10/1/15.
//  Copyright © 2015 Movile. All rights reserved.
//

#import "SecondViewController.h"
#import "FirstViewController.h"

@implementation SecondViewController

- (IBAction)backPressed:(id)sender {
    SEL theUnwindSelector = @selector(unwindToRoot:);
    NSString *unwindSegueIdentifier = @"unwindToRoot";
    UINavigationController *nc = self.navigationController;
    
    // Find the view controller that has this unwindAction selector (may not be one in the nav stack)
    UIViewController *viewControllerToCallUnwindSelectorOn = [nc viewControllerForUnwindSegueAction:theUnwindSelector
                                                                                 fromViewController:self
                                                                                         withSender:sender];
    // None found, then do nothing.
    if (viewControllerToCallUnwindSelectorOn == nil) {
        NSLog(@"No controller found to unwind too");
        return;
    }
    
    // Can the controller that we found perform the unwind segue. (This is decided by that controllers implementation of canPerformSeque: method
    BOOL cps = [viewControllerToCallUnwindSelectorOn canPerformUnwindSegueAction:theUnwindSelector
                                                              fromViewController:self
                                                                      withSender:sender];
    // If we have permision to perform the seque on the controller where the unwindAction is implmented
    // then get the segue object and perform it.
    if (cps) {
        UIStoryboardSegue *unwindSegue = [nc segueForUnwindingToViewController:viewControllerToCallUnwindSelectorOn
                                                            fromViewController:self
                                                                    identifier:unwindSegueIdentifier];
        
        [viewControllerToCallUnwindSelectorOn prepareForSegue:unwindSegue sender:self];
        [unwindSegue perform];
    }
}

@end
