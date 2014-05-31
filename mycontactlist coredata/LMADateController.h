//
//  LMADateController.h
//  MyContactList CoreData
//
//  Created by Doug Anderson on 5/19/14.
//  Copyright (c) 2014 Learning Mobile Apps. All rights reserved.
//


#import <UIKit/UIKit.h>

//1
@protocol LMADateControllerDelegate <NSObject>
//2
@required
-(void)dateChanged:(NSDate *) date;

@end

@interface LMADateController : UIViewController
//3
@property (strong, nonatomic) id<LMADateControllerDelegate> delegate;
@property (weak, nonatomic) IBOutlet UIDatePicker *dtpDate;
@end
