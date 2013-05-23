//
//  ViewController.h
//  TapAndDragTextViewToGrid
//
//  Created by Craig Hagerman on 12/05/14.
//  Copyright (c) 2012年 self. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIGestureRecognizerDelegate>
{
    UITextView *textview;
}
@property (nonatomic, retain) UITextView *textview;
- (IBAction)handlePan:(UIPanGestureRecognizer *)recognizer;

@end
