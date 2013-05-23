//
//  ViewController.m
//  TapAndDragTextViewToGrid
//
//  Created by Craig Hagerman on 12/05/14.
//  Copyright (c) 2012年 self. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize textview;

- (IBAction)handlePan:(UIPanGestureRecognizer *)recognizer {
    CGPoint translation = [recognizer translationInView:self.view];
    recognizer.view.center = CGPointMake(recognizer.view.center.x + translation.x, 
                                         recognizer.view.center.y + translation.y);
    [recognizer setTranslation:CGPointMake(0, 0) inView:self.view];
    
    if (recognizer.state == UIGestureRecognizerStateEnded) {
        CGPoint finalPoint = CGPointMake(10,10);
        [UIView animateWithDuration:2 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
            recognizer.view.center = finalPoint;
        } completion:nil];
    }
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    for (UIView * view in self.view.subviews) {
    UIPanGestureRecognizer * recognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan:)];
    recognizer.delegate = self;
    //[textview addGestureRecognizer:recognizer];
    [view addGestureRecognizer:recognizer];
    }
}


- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
