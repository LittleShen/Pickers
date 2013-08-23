//
//  BIDDoubleComponentPickerViewController.m
//  Pickers
//
//  Created by Shin on 13/5/10.
//  Copyright (c) 2013年 tony. All rights reserved.
//

#import "BIDDoubleComponentPickerViewController.h"

@interface BIDDoubleComponentPickerViewController ()

@end

@implementation BIDDoubleComponentPickerViewController

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
    self.fillingTypes = @[@"Level 1", @"Level 2", @"Level 3", @"Level 4"];
    self.breadTypes = @[@"SubLevel 1", @"SubLevel 2", @"SubLevel 3", @"SubLevel 4"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender
{
    NSInteger fillingRow = [self.doublePicker selectedRowInComponent:kFillingComponent];
    NSInteger breadRow = [self.doublePicker selectedRowInComponent:kBreadComponent];
    
    NSString *filling = self.fillingTypes[fillingRow];
    NSString *bread = self.breadTypes[breadRow];
    
    NSString *message = [[NSString alloc] initWithFormat:@"您選的是 %@ -> %@", filling, bread];
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"訊息" message:message delegate:nil cancelButtonTitle:@"確認" otherButtonTitles:nil];
    [alertView show];
    
}

#pragma mark -
#pragma mark Picker Data Source Methods
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (component == kFillingComponent)
    {
        return [self.fillingTypes count];
    }
    else
    {
        return [self.breadTypes count];
    }
}

#pragma mark -
#pragma mark Picker Delegate
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (component == kFillingComponent)
    {
        return self.fillingTypes[row];
    }
    else
    {
        return self.breadTypes[row];
    }
}

@end
