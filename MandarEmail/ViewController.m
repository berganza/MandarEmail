//
//  ViewController.m
//  MandarEmail
//
//  Created by LLBER on 13/07/13.
//  Copyright (c) 2013 Berganza. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController

- (IBAction)email:(id)sender {
    
    MFMailComposeViewController * envio = [[MFMailComposeViewController alloc] init];
    
    [envio setMailComposeDelegate:self];
    
    if ([MFMailComposeViewController canSendMail]) {
        [envio setToRecipients:[NSArray arrayWithObjects:@"llberganza@gmail.com", nil]];
        [envio setSubject:@"Asunto"];
        [envio setMessageBody:@"Mensaje" isHTML:NO];
        [envio setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
        [self presentViewController:envio animated:YES completion:nil];
    }
}

-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error {
    
    if (error) {
        UIAlertView * alerta = [[UIAlertView alloc] initWithTitle:@"error"
                                                          message:[NSString stringWithFormat:@"error %@", [error description]]
                                                         delegate:nil
                                                cancelButtonTitle:@"dismiss"
                                                otherButtonTitles:nil, nil];
        
        [alerta show];
        
        [self dismissViewControllerAnimated:YES completion:nil];
        
    } else {
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
