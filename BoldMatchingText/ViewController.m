//
//  ViewController.m
//  BoldMatchingText
//
//  Created by SureshDokula on 18/02/16.
//  Copyright © 2016 Test. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize txtword,
txtmatchword;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)goToCheck:(id)sender
{
    if([txtmatchword.text length] && [txtword.text length] && [txtword.text length]<=[txtmatchword.text length])
    {
        NSLog(@"Fullword %@ --- Matchword %@",txtmatchword.text,txtword.text);
    [self performSegueWithIdentifier:@"gonext" sender:nil];
        
    }
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NextViewController *next = [segue destinationViewController];
    next.strFullWord = txtmatchword.text;
    next.strMatchWord = txtword.text;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
