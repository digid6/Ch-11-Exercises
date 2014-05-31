//
//  LMASettingsController.h
//  MyContactList CoreData
//
//  Created by Doug Anderson on 5/19/14.
//  Copyright (c) 2014 Learning Mobile Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LMASettingsController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate> 
//@property (weak, nonatomic) IBOutlet UIPickerView *pckSortField;

@property (weak, nonatomic) IBOutlet UISegmentedControl *swAscending;
- (IBAction)sortDirectionChanged:(id)sender;
@property (weak, nonatomic) IBOutlet UISegmentedControl *pckSortField;

@end
