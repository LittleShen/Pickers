//
//  BIDSingleComponentPickerViewController.h
//  Pickers
//
//  Created by Shin on 13/5/10.
//  Copyright (c) 2013年 tony. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDSingleComponentPickerViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property (weak, nonatomic) IBOutlet UIPickerView *singlePicker;
@property (strong, nonatomic) NSArray *characterNames;
- (IBAction)buttonPressed:(id)sender;

@end
