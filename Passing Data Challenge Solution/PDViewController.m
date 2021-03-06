//
//  PDViewController.m
//  Passing Data Challenge Solution
//
//  Created by jim Veneskey on 4/2/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import "PDViewController.h"
#import "PDDetailViewController.h"

@interface PDViewController ()

@end

@implementation PDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([sender isKindOfClass:[UIButton class]]) {
        if ([segue.destinationViewController isKindOfClass:[PDDetailViewController class]]) {
            PDDetailViewController *detailVC = segue.destinationViewController;
            detailVC.informationFromTextField = self.textField.text;
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
