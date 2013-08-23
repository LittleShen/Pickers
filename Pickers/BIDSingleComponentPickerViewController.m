//
//  BIDSingleComponentPickerViewController.m
//  Pickers
//
//  Created by Shin on 13/5/10.
//  Copyright (c) 2013年 tony. All rights reserved.
//

#import "BIDSingleComponentPickerViewController.h"

@interface BIDSingleComponentPickerViewController ()

@end

@implementation BIDSingleComponentPickerViewController

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
    self.characterNames = @[@"Tony", @"Joe", @"James", @"Kenny", @"Daisy", @"Peter"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender
{
    NSInteger row = [self.singlePicker selectedRowInComponent:0];
    
    NSString *selected = self.characterNames[row];
    
    NSString *message = [[NSString alloc] initWithFormat:@"你選擇的是：%@", selected];
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"訊息" message:message delegate:nil cancelButtonTitle:@"確認" otherButtonTitles:nil];
    [alertView show];
    
}

#pragma mark -
#pragma mark Picker Data Source Methods
- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.characterNames count];
}

#pragma mark -
#pragma mark Picker Delegate Methods
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return self.characterNames[row];
}

@end
