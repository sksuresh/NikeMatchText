//
//  NextViewController.m
//  BoldMatchingText
//
//  Created by SureshDokula on 18/02/16.
//  Copyright © 2016 Test. All rights reserved.
//

#import "NextViewController.h"

@interface NextViewController ()

@end

@implementation NextViewController
@synthesize txtfld,strFullWord,strMatchWord;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"FullWord %@ -- MatchWordTest %@",strFullWord,strMatchWord);
//    [self findingthemacthedIndexes];
//    NSMutableAttributedString *attributstr = [[NSMutableAttributedString alloc] initWithString:strFullWord];
//    [attributstr addAttributes:[NSDictionary dictionaryWithObject:[UIFont boldSystemFontOfSize:12.0] forKey:NSFontAttributeName] range:NSMakeRange(2, 2)];
//    [attributstr addAttributes:[NSDictionary dictionaryWithObject:[UIFont boldSystemFontOfSize:12.0] forKey:NSFontAttributeName] range:NSMakeRange(5, 2)];
//    [txtfld setAttributedText:attributstr];
    [txtfld setAttributedText:[self findingthemacthedIndexes:strFullWord andMatch:strMatchWord]];
}

-(NSMutableAttributedString*)findingthemacthedIndexes:(NSString*)strFullString andMatch:(NSString*)matchstring
{
    NSMutableAttributedString *attributstr = [[NSMutableAttributedString alloc] initWithString:strFullString];
    int index = 0;
        if((strFullString == nil) || (matchstring == nil))
            return attributstr;
    while (index<[strFullString length]) {
        if(!((index+[matchstring length]-1)<[strFullString length]))
            return attributstr;
        @try {
            NSString *str =  [strFullString substringWithRange:NSMakeRange(index,[matchstring length])];
            if([str isEqualToString:matchstring])
            {
                [attributstr addAttributes:[NSDictionary dictionaryWithObject:[UIFont boldSystemFontOfSize:18.0] forKey:NSFontAttributeName] range:NSMakeRange(index, [matchstring length])];
                NSLog(@"string match found");
                index += [matchstring length];
            }
            else{
                [attributstr addAttributes:[NSDictionary dictionaryWithObject:[UIFont systemFontOfSize:18.0] forKey:NSFontAttributeName] range:NSMakeRange(index, 1)];

                index +=1;
            }

        }
        @catch (NSException *exception) {
            NSLog(@"%@",[exception name]);
        }
        @finally {
        }
    }
    return attributstr;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
