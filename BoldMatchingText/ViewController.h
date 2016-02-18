//
//  ViewController.h
//  BoldMatchingText
//
//  Created by SureshDokula on 18/02/16.
//  Copyright © 2016 Test. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>

@property (nonatomic,weak) IBOutlet UITextField *txtword;
@property (nonatomic,weak) IBOutlet UITextField *txtmatchword;
@end

