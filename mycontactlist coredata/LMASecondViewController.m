//
//  LMASecondViewController.m
//  My ContactList
//
//  Created by Doug Anderson on 5/19/14.
//  Copyright (c) 2014 Learning Mobile Apps. All rights reserved.
//

#import "LMASecondViewController.h"

@interface LMASecondViewController ()

@end

@implementation LMASecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //UIScrollView *tempScrollView=(UIScrollView *)self.view;
    _sv1.contentSize=CGSizeMake(325,1000);
}
//-(void)viewWillAppear:(BOOL)animated{
//    _sv1.contentSize=CGSizeMake(325,1000);
//
//}
-(void)viewDidLayoutSubviews
{
    _sv1.contentSize=CGSizeMake(325,1000);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
