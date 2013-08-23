//
//  BIDDependentComponentPickerViewController.h
//  Pickers
//
//  Created by Shin on 13/5/10.
//  Copyright (c) 2013年 tony. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kStateComponent 0
#define kZipComponent 1

@interface BIDDependentComponentPickerViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property (weak, nonatomic) IBOutlet UIPickerView *dependentPicker;
@property (strong, nonatomic) NSDictionary *stateZips;
@property (strong, nonatomic) NSArray *states;
@property (strong, nonatomic) NSArray *zips;
- (IBAction)buttonPressed:(id)sender;


@end
