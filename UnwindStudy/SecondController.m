//
//  SecondController.m
//  UnwindStudy
//
//  Created by Rafael Fantini on 10/1/15.
//  Copyright © 2015 Movile. All rights reserved.
//

#import "SecondController.h"

@implementation SecondController

- (IBAction)buttonpressed:(id)sender {
    [self performSegueWithIdentifier:@"unwindToFirst" sender:self];
}

- (UIStoryboardSegue *)segueForUnwindingToViewController:(UIViewController *)toViewController fromViewController:(UIViewController *)fromViewController identifier:(NSString *)identifier {
    return [super segueForUnwindingToViewController:toViewController fromViewController:fromViewController identifier:identifier]; // 4 (Push)
}

@end
