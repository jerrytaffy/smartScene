//
//  ViewController.h
//  SmartScene
//
//  Created by Chan Jerry on 13-1-22.
//  Copyright (c) 2013年 Chan Jerry. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIGestureRecognizerDelegate, UIWebViewDelegate>{
    IBOutlet UIWebView *contentView;
    IBOutlet UITextField *ipAddressView, *portView;
    IBOutlet UISwitch *handModeView, *statusBarView;
    BOOL isHidden;
}

- (IBAction) connectAction:(id)sender;
- (IBAction) statusAction:(id)sender;

@end
