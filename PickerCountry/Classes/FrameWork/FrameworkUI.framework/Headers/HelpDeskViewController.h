//
//  HelpDeskViewController.h
//  SDKProjects
//
//  Created by Quickli on 20/07/16.
//  Copyright © 2016 Quickli. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelpDeskViewController : UIViewController

/* Navigation bar IBOutlet   */
@property (weak, nonatomic) IBOutlet UIView *navigationBarView;
@property (weak, nonatomic) IBOutlet UIButton *closeButton;
@property (weak, nonatomic) IBOutlet UILabel *feedbackLabel;
@property (weak, nonatomic) IBOutlet UIButton *sendButton;

/* Remaining label IBOutlet   */
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *emailLabel;
@property (weak, nonatomic) IBOutlet UILabel *categoryLabel;
@property (weak, nonatomic) IBOutlet UILabel *messageLabel;


/* UITextfield IBOutlet   */
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextField *questionTextField;
@property (weak, nonatomic) IBOutlet UITextView *messageTextView;

@end
