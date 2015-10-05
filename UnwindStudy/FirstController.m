//
//  FirstController.m
//  UnwindStudy
//
//  Created by Rafael Fantini on 10/1/15.
//  Copyright © 2015 Movile. All rights reserved.
//

#import "FirstController.h"

@implementation FirstController

- (IBAction)unwindToFirst:(UIStoryboardSegue *)unwindSegue {
    NSLog(@"Loko"); // 5 (Modal, Push)
}

- (UIViewController *)viewControllerForUnwindSegueAction:(SEL)action fromViewController:(UIViewController *)fromViewController withSender:(id)sender {
    return [super viewControllerForUnwindSegueAction:action fromViewController:fromViewController withSender:sender]; // 1 (Modal)
}

- (UIStoryboardSegue *)segueForUnwindingToViewController:(UIViewController *)toViewController fromViewController:(UIViewController *)fromViewController identifier:(NSString *)identifier {
    return [super segueForUnwindingToViewController:toViewController fromViewController:fromViewController identifier:identifier]; // 4 (Modal)
}

- (BOOL)canPerformUnwindSegueAction:(SEL)action fromViewController:(UIViewController *)fromViewController withSender:(id)sender {
    return [super canPerformUnwindSegueAction:action fromViewController:fromViewController withSender:sender]; // 2 (Modal, Push)
}

@end
