//
//  StatsViewController.m
//  GetRichQuick!
//
//  Created by Louis Agars-Smith on 14/02/2015.
//  Copyright (c) 2015 Louis Agars-Smith. All rights reserved.
//

#import "StatsViewController.h"
#import "ViewController.h"
#import "ShopViewController.h"
#import "G2ShopViewController.h"

@interface StatsViewController ()

@end

@implementation StatsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIColor *orange = [UIColor orangeColor];
    UIColor *red = [UIColor redColor];
    UIColor *lightGray = [UIColor lightGrayColor];
    UIColor *darkGray = [UIColor grayColor];
    UIColor *darkerGray = [UIColor darkGrayColor];
    UIColor *black = [UIColor blackColor];
    
    if ((multiplier == 4) || (multiplier == 5)) {
        
        [self->backgroundUIView setBackgroundColor:lightGray];
        
        [self->returnButton setBackgroundColor:darkGray];
        [self->tapTotalLabel setBackgroundColor:darkGray];
        [self->gameCompletes setBackgroundColor:darkGray];
        [self->titleText setBackgroundColor:darkGray];
        [self->subTitleText setBackgroundColor:darkGray];
        
    }
    
    if ((multiplier == 6) || (multiplier == 7)) {
        
        [self->returnButton setBackgroundColor:darkerGray];
        [self->tapTotalLabel setBackgroundColor:darkerGray];
        [self->gameCompletes setBackgroundColor:darkerGray];
        [self->subTitleText setBackgroundColor:darkerGray];
        [self->titleText setTextColor:orange];
        [self->titleText setBackgroundColor:darkerGray];
        
        [self->backgroundUIView setBackgroundColor:darkGray];
        
    }
    
    if (multiplier == 8) {
        
        [self->returnButton setBackgroundColor:black];
        [self->tapTotalLabel setBackgroundColor:black];
        [self->gameCompletes setBackgroundColor:black];
        [self->subTitleText setBackgroundColor:black];
        [self->titleText setTextColor:red];
        [self->titleText setBackgroundColor:black];
        
        [self->backgroundUIView setBackgroundColor:darkerGray];
        
    }
    
    tapTotal = [[NSUserDefaults standardUserDefaults] integerForKey:@"total"];
    tapTotalLabel.text = [NSString stringWithFormat:@"Total Taps: %li", (long)tapTotal];
    
    completes = [[NSUserDefaults standardUserDefaults] integerForKey:@"completes"];
    gameCompletes.text = [NSString stringWithFormat:@"Game Completions: %li",(long)completes];
    
    
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
