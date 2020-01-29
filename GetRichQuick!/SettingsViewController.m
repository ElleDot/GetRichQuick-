//
//  SettingsViewController.m
//  GetRichQuick!
//
//  Created by Louis Agars-Smith on 07/02/2015.
//  Copyright (c) 2015 Louis Agars-Smith. All rights reserved.
//

#import "SettingsViewController.h"
#import "ViewController.h"
#import "ShopViewController.h"
#import "2ShopViewController.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSURL *SoundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"kaching" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)SoundURL, &playSoundID);
    
    money = [[NSUserDefaults standardUserDefaults] integerForKey:@"moneyNumber"];
    moneyLabel.text =[NSString stringWithFormat:@"Money: £%li", (long)money];
    
    UIColor *orange = [UIColor orangeColor];
    UIColor *red = [UIColor redColor];
    UIColor *lightGray = [UIColor lightGrayColor];
    UIColor *darkGray = [UIColor grayColor];
    UIColor *darkerGray = [UIColor darkGrayColor];
    UIColor *black = [UIColor blackColor];
    UIColor *white = [UIColor whiteColor];
    
    iGigaReady = [[NSUserDefaults standardUserDefaults] integerForKey:@"igiga"];
    if (iGigaReady == 1) {
        
    iGigaButton.hidden = YES;
        
    }
    
    if ((multiplier == 4) || (multiplier == 5)) {
        
        [self->exitButton setBackgroundColor:darkGray];
        [self->settingsLabel setBackgroundColor:darkGray];
        [self->settingsSubTitle setBackgroundColor:darkGray];
        
        [self->resetContainer setBackgroundColor:darkGray];
        [self->iGigaContainer setBackgroundColor:darkGray];
        [self->background1 setBackgroundColor:lightGray];
        
    }
    
    if ((multiplier == 6) || (multiplier == 7)) {
        
        [self->exitButton setBackgroundColor:darkerGray];
        [self->settingsSubTitle setBackgroundColor:darkerGray];
        [self->settingsLabel setTextColor:orange];
        [self->resetLabel setTextColor:orange];
        [self->settingsLabel setBackgroundColor:darkerGray];
        
        [self->resetContainer setBackgroundColor:darkerGray];
        [self->iGigaContainer setBackgroundColor:darkerGray];
        [self->iGigaLabel setTextColor:orange];
        [self->iGigaButton setTitleColor:orange forState:UIControlStateNormal];
        [self->background1 setBackgroundColor:darkGray];
        
    }
    
    if (multiplier == 8) {
        
        [self->exitButton setBackgroundColor:black];
        [self->settingsSubTitle setBackgroundColor:black];
        [self->settingsLabel setTextColor:red];
        [self->settingsLabel setBackgroundColor:black];
        [self->resetLabel setTextColor:white];
        
        [self->resetContainer setBackgroundColor:black];
        [self->iGigaContainer setBackgroundColor:black];
        [self->iGigaLabel setTextColor:white];
        [self->iGigaButton setTitleColor:red forState:UIControlStateNormal];
        [self->background1 setBackgroundColor:darkerGray];
        
    }
    
}

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    if (buttonIndex == 0) {
        
        NSLog(@"... everything was eaten by a black hole");
        
        money = 0;
        multiplier = 0;
        firstTime = 0;
        gigaReady = 0;
        cps = 0;
        tapTotal = 0;
        iGigaReady = 0;
        
        superBought = 0;
        megaBought = 0;
        goldBought = 0;
        diamondBought = 0;
        
        LemonsBought = 0;
        partTimeBought = 0;
        cashMintBought = 0;
        CorporationBought = 0;
        
        lemonCost = 50;
        partCost = 5000;
        cashCost = 10000;
        corpCost = 100000;
        
        stockBought = 0;
        personalBought = 0;
        governmentBought = 0;
        moneyDuperBought= 0;
        
        stockCost = 5000000;
        personalCost = 25000000;
        governmentCost = 200000000;
        moneyDuperCost = 1000000000;
        
        [[NSUserDefaults standardUserDefaults] setInteger:iGigaReady forKey:@"igiga"];
        [[NSUserDefaults standardUserDefaults] setInteger:firstTime forKey:@"first"];
        [[NSUserDefaults standardUserDefaults] setInteger:gigaReady forKey:@"giga"];
        [[NSUserDefaults standardUserDefaults] setInteger:tapTotal forKey:@"total"];
        
        [[NSUserDefaults standardUserDefaults] setInteger:superBought forKey:@"super"];
        [[NSUserDefaults standardUserDefaults] setInteger:megaBought forKey:@"mega"];
        [[NSUserDefaults standardUserDefaults] setInteger:goldBought forKey:@"gold"];
        [[NSUserDefaults standardUserDefaults] setInteger:diamondBought forKey:@"diamond"];
        
        [[NSUserDefaults standardUserDefaults] setInteger:money forKey:@"moneyNumber"];
        [[NSUserDefaults standardUserDefaults] setInteger:multiplier forKey:@"multiplier"];
        [[NSUserDefaults standardUserDefaults] setInteger:cps forKey:@"cashps"];
        
        [[NSUserDefaults standardUserDefaults] setInteger:LemonsBought forKey:@"lemonNumber"];
        [[NSUserDefaults standardUserDefaults] setInteger:partTimeBought forKey:@"partNumber"];
        [[NSUserDefaults standardUserDefaults] setInteger:cashMintBought forKey:@"cashNumber"];
        [[NSUserDefaults standardUserDefaults] setInteger:CorporationBought forKey:@"corpNumber"];
        
        [[NSUserDefaults standardUserDefaults] setInteger:lemonCost forKey:@"lemonCost"];
        [[NSUserDefaults standardUserDefaults] setInteger:partCost forKey:@"partCost"];
        [[NSUserDefaults standardUserDefaults] setInteger:cashCost forKey:@"cashCost"];
        [[NSUserDefaults standardUserDefaults] setInteger:corpCost forKey:@"corpCost"];
        
        [[NSUserDefaults standardUserDefaults] setInteger:stockBought forKey:@"stockNumber"];
        [[NSUserDefaults standardUserDefaults] setInteger:personalBought forKey:@"personalNumber"];
        [[NSUserDefaults standardUserDefaults] setInteger:governmentBought forKey:@"governmentNumber"];
        [[NSUserDefaults standardUserDefaults] setInteger:moneyDuperBought forKey:@"moneyDuperNumber"];
        
        [[NSUserDefaults standardUserDefaults] setInteger:stockCost forKey:@"stockCost"];
        [[NSUserDefaults standardUserDefaults] setInteger:personalCost forKey:@"personalCost"];
        [[NSUserDefaults standardUserDefaults] setInteger:governmentCost forKey:@"governmentCost"];
        [[NSUserDefaults standardUserDefaults] setInteger:moneyDuperBought forKey:@"moneyDuperCost"];
        
        
        money = [[NSUserDefaults standardUserDefaults] integerForKey:@"moneyNumber"];
        moneyLabel.text =[NSString stringWithFormat:@"Money: £%li", (long)money];
        
        iGigaButton.hidden = NO;
        
    } else if (buttonIndex == 1) {
        NSLog(@"... no data was lost");
    }
}

-(IBAction)reset:(id)sender {
    
    NSLog(@"Deletion actionsheet opened and...");
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Are you sure you want to delete everything?" delegate:self cancelButtonTitle:@"No, cancel!" destructiveButtonTitle:@"Yes, delete everything!" otherButtonTitles:nil];
    actionSheet.actionSheetStyle = UIActionSheetStyleBlackOpaque;
    [actionSheet showInView:[UIApplication sharedApplication].keyWindow];
    
}

-(IBAction)iGigaBuy:(id)sender {
    
    if (money >= 4000000) {
        AudioServicesPlaySystemSound(playSoundID);
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Giga Idle Shop Unlocked!"
                                                        message:@"Congratulations! (Like the Giga Tap Shop, the Giga Idle Shop is where the old one was.)"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        iGigaReady = 1;
        [[NSUserDefaults standardUserDefaults]setInteger:iGigaReady forKey:@"igiga"];
        
        money = money - 4000000;
        [[NSUserDefaults standardUserDefaults] setInteger:money forKey:@"moneyNumber"];
        money = [[NSUserDefaults standardUserDefaults] integerForKey:@"moneyNumber"];
        moneyLabel.text =[NSString stringWithFormat:@"Money: £%li", (long)money];
        
        iGigaButton.hidden = YES;
        
    }
    else {
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Purchase Unsuccessful"
                                                        message:@"You need more money!"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        
    }
    
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
