//
//  BIDDatePickerViewController.m
//  Pickers
//
//  Created by Shin on 13/5/10.
//  Copyright (c) 2013年 tony. All rights reserved.
//

#import "BIDDatePickerViewController.h"

@interface BIDDatePickerViewController ()

@end

@implementation BIDDatePickerViewController

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
    // Do any additional setup after loading the view from its nib.
    
    NSDate *now = [NSDate date];
    [self.datePicker setDate:now animated:NO];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed
{
    NSDate *selected = [self.datePicker date];

    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterLongStyle];
    [dateFormatter setTimeStyle:NSDateFormatterLongStyle];
    

    NSString *formatDate = [dateFormatter stringFromDate:selected];
    
    NSString *message = [[NSString alloc] initWithFormat:@"你選擇的日期是 %@", formatDate];
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"訊息" message:message delegate:nil cancelButtonTitle:@"確認" otherButtonTitles:nil];
    
    [alertView show];
}

@end
