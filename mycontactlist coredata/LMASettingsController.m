//
//  LMASettingsController.m
//  MyContactList CoreData
//
//  Created by Doug Anderson on 5/19/14.
//  Copyright (c) 2014 Learning Mobile Apps. All rights reserved.
//

#import "LMASettingsController.h"
#import "Constants.h"

@interface LMASettingsController ()

@end

@implementation LMASettingsController

NSArray *sortOrderItems;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    //set the UI based on values in NSUserDefaults
    NSUserDefaults *settings = [NSUserDefaults standardUserDefaults];
    
    BOOL sortAscending =[settings boolForKey:kSortDirectionAscending];
    if(sortAscending)
    {
        _swAscending.selectedSegmentIndex=0;
    }
    else
    {
        _swAscending.selectedSegmentIndex=1;
    }
    NSString *sortField = [settings objectForKey:kSortField];
    int i = 0;
    for (NSString *field in sortOrderItems) {
        if([field isEqualToString:sortField]) {
            [_pckSortField setSelectedSegmentIndex:i];
        }
        i++;
    }
    
}




- (void)viewVillAppear
{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sortDirectionChanged:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (_swAscending.selectedSegmentIndex==0)
    {
        [defaults setBool:TRUE forKey:kSortDirectionAscending];
    }
    else
    {
        [defaults setBool:FALSE forKey:kSortDirectionAscending];
    }
}

#pragma mark - UIPickerView DataSource
// Returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// Returns the # of rows in the picker
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [sortOrderItems count];
}

//Sets the value that is shown for each row in the picker
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [sortOrderItems objectAtIndex:row];
}

//If the user chooses from the pickerview, it calls this function;
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSString *sortField = [sortOrderItems objectAtIndex:row];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:sortField forKey:kSortField];
    [defaults synchronize];
}


@end
