//
//  BIDDatePickerViewController.h
//  Pickers
//
//  Created by Shin on 13/5/10.
//  Copyright (c) 2013年 tony. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDDatePickerViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;
- (IBAction)buttonPressed;

@end
