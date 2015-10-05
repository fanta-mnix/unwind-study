//
//  CustomNavigationController.m
//  UnwindStudy
//
//  Created by Rafael Fantini on 10/1/15.
//  Copyright © 2015 Movile. All rights reserved.
//

#import "CustomNavigationController.h"

@implementation CustomNavigationController

- (UIViewController *)viewControllerForUnwindSegueAction:(SEL)action fromViewController:(UIViewController *)fromViewController withSender:(id)sender {
    return [super viewControllerForUnwindSegueAction:action fromViewController:fromViewController withSender:sender]; // 1 (Push)
}

- (UIStoryboardSegue *)segueForUnwindingToViewController:(UIViewController *)toViewController fromViewController:(UIViewController *)fromViewController identifier:(NSString *)identifier { // 3 (Modal, Push)
    return [self.topViewController segueForUnwindingToViewController:toViewController
                                              fromViewController:fromViewController
                                                      identifier:identifier];
}

@end
