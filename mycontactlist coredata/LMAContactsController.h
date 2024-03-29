//
//  LMAFirstViewController.h
//  My ContactList
//
//  Created by Doug Anderson on 5/19/14.
//  Copyright (c) 2014 Learning Mobile Apps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Contact.h"

@interface LMAContactsController : UIViewController

@property (strong, nonatomic) Contact *contact;

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
- (IBAction)backgroundTap:(id)sender;
- (IBAction)changeEditMode:(id)sender;

@property (weak, nonatomic) IBOutlet UISegmentedControl *sgmtEditMode;
@property (weak, nonatomic) IBOutlet UITextField *txtName;
@property (weak, nonatomic) IBOutlet UITextField *txtAddress;
@property (weak, nonatomic) IBOutlet UITextField *txtCity;
@property (weak, nonatomic) IBOutlet UITextField *txtState;
@property (weak, nonatomic) IBOutlet UITextField *txtZip;
@property (weak, nonatomic) IBOutlet UITextField *txtCell;
@property (weak, nonatomic) IBOutlet UITextField *txtPhone;
@property (weak, nonatomic) IBOutlet UITextField *txtEmail;
@property (weak, nonatomic) IBOutlet UILabel *lblBirthdate;
@property (weak, nonatomic) IBOutlet UITextField *txtHomeMail;

@property (weak, nonatomic) IBOutlet UIButton *btnChange;

@end
