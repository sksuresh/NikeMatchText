//
//  NextViewController.h
//  BoldMatchingText
//
//  Created by SureshDokula on 18/02/16.
//  Copyright © 2016 Test. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NextViewController : UIViewController
{
    NSString *strFullWord;
    NSString *strMatchWord;
}
@property NSString *strFullWord;
@property NSString *strMatchWord;
@property (nonatomic,weak) IBOutlet UITextField *txtfld;
-(NSMutableAttributedString*)findingthemacthedIndexes:(NSString*)strFullString andMatch:(NSString*)matchstring;

@end
