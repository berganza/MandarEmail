//
//  ViewController.h
//  MandarEmail
//
//  Created by LLBER on 13/07/13.
//  Copyright (c) 2013 Berganza. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <MessageUI/MessageUI.h>

@interface ViewController : UIViewController<MFMailComposeViewControllerDelegate>

- (IBAction)email:(id)sender;
@end
