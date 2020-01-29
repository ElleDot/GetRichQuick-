//
//  ShopViewController.m
//  GetRichQuick!
//
//  Created by Louis Agars-Smith on 08/02/2015.
//  Copyright (c) 2015 Louis Agars-Smith. All rights reserved.
//

#import "ShopViewController.h"
#import "ViewController.h"

@interface ShopViewController ()

@end

@implementation ShopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSURL *SoundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"kaching" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)SoundURL, &playSoundID);
    
    UIColor *green = [UIColor greenColor];
    
    moneyLabel.text = [NSString stringWithFormat:@"Money: £%li", (long)money];
    
    superBought = [[NSUserDefaults standardUserDefaults] integerForKey:@"super"];
    megaBought = [[NSUserDefaults standardUserDefaults] integerForKey:@"mega"];
    goldBought = [[NSUserDefaults standardUserDefaults] integerForKey:@"gold"];
    diamondBought = [[NSUserDefaults standardUserDefaults] integerForKey:@"diamond"];
    if (multiplier == 1) {
        superButton.hidden = YES;
        pigPrice.text = [NSString stringWithFormat:@"Purchased!"];
        pigPrice.textAlignment = NSTextAlignmentCenter;
        [self->pigPrice setTextColor:green];
    }
    if (multiplier == 2) {
        superButton.hidden = YES;
        pigPrice.text = [NSString stringWithFormat:@"Purchased!"];
        pigPrice.textAlignment = NSTextAlignmentCenter;
        [self->pigPrice setTextColor:green];
        megaButton.hidden = YES;
        walletPrice.text = [NSString stringWithFormat:@"Purchased!"];
        walletPrice.textAlignment = NSTextAlignmentCenter;
        [self->walletPrice setTextColor:green];
    }
    if (multiplier == 3) {
        superButton.hidden = YES;
        pigPrice.text = [NSString stringWithFormat:@"Purchased!"];
        pigPrice.textAlignment = NSTextAlignmentCenter;
        [self->pigPrice setTextColor:green];
        megaButton.hidden = YES;
        walletPrice.text = [NSString stringWithFormat:@"Purchased!"];
        walletPrice.textAlignment = NSTextAlignmentCenter;
        [self->walletPrice setTextColor:green];
        goldButton.hidden = YES;
        treePrice.text = [NSString stringWithFormat:@"Purchased!"];
        treePrice.textAlignment = NSTextAlignmentCenter;
        [self->treePrice setTextColor:green];
    }
    if (multiplier == 4) {
        superButton.hidden = YES;
        pigPrice.text = [NSString stringWithFormat:@"Purchased!"];
        pigPrice.textAlignment = NSTextAlignmentCenter;
        [self->pigPrice setTextColor:green];
        megaButton.hidden = YES;
        walletPrice.text = [NSString stringWithFormat:@"Purchased!"];
        walletPrice.textAlignment = NSTextAlignmentCenter;
        [self->walletPrice setTextColor:green];
        goldButton.hidden = YES;
        treePrice.text = [NSString stringWithFormat:@"Purchased!"];
        treePrice.textAlignment = NSTextAlignmentCenter;
        [self->treePrice setTextColor:green];
        diamondButton.hidden = YES;
        diamondPrice.text = [NSString stringWithFormat:@"Purchased!"];
        diamondPrice.textAlignment = NSTextAlignmentCenter;
        [self->diamondPrice setTextColor:green];
    }
}

-(IBAction)buySuperFinger:(id)sender {
    
    if (money >= 250) {
        AudioServicesPlaySystemSound(playSoundID);
        money = money - 250;
        superBought = 1;
        [[NSUserDefaults standardUserDefaults] setInteger:superBought forKey:@"super"];
        [[NSUserDefaults standardUserDefaults] setInteger:money forKey:@"moneyNumber"];
        multiplier = 1;
        [[NSUserDefaults standardUserDefaults] setInteger:multiplier forKey:@"multiplier"];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Purchase Successful"
                                                        message:@"Your tap now earns £5!"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        UIColor *green = [UIColor greenColor];
        superButton.hidden = YES;
        pigPrice.text = [NSString stringWithFormat:@"Purchased!"];
        [self->pigPrice setTextColor:green];
        
        moneyLabel.text = [NSString stringWithFormat:@"Money: £%li", (long)money];
        
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

-(IBAction)buyMegaFinger:(id)sender {
    
    if (money >= 3000) {
        AudioServicesPlaySystemSound(playSoundID);
        money = money - 3000;
        superBought = 1;
        megaBought = 1;
        [[NSUserDefaults standardUserDefaults] setInteger:superBought forKey:@"super"];
        [[NSUserDefaults standardUserDefaults] setInteger:megaBought forKey:@"mega"];
        [[NSUserDefaults standardUserDefaults] setInteger:money forKey:@"moneyNumber"];
        multiplier = 2;
        [[NSUserDefaults standardUserDefaults] setInteger:multiplier forKey:@"multiplier"];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Purchase Successful"
                                                        message:@"Your tap now earns £20!"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        UIColor *green = [UIColor greenColor];
        superButton.hidden = YES;
        pigPrice.text = [NSString stringWithFormat:@"Purchased!"];
        [self->pigPrice setTextColor:green];
        megaButton.hidden = YES;
        walletPrice.text = [NSString stringWithFormat:@"Purchased!"];
        [self->walletPrice setTextColor:green];
        
        moneyLabel.text = [NSString stringWithFormat:@"Money: £%li", (long)money];
        
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

-(IBAction)buyGoldFinger:(id)sender {
    
    if (money >= 25000) {
        AudioServicesPlaySystemSound(playSoundID);
        money = money - 25000;
        superBought = 1;
        megaBought = 1;
        goldBought = 1;
        [[NSUserDefaults standardUserDefaults] setInteger:superBought forKey:@"super"];
        [[NSUserDefaults standardUserDefaults] setInteger:megaBought forKey:@"mega"];
        [[NSUserDefaults standardUserDefaults] setInteger:goldBought forKey:@"gold"];
        [[NSUserDefaults standardUserDefaults] setInteger:money forKey:@"moneyNumber"];
        multiplier = 3;
        [[NSUserDefaults standardUserDefaults] setInteger:multiplier forKey:@"multiplier"];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Purchase Successful"
                                                        message:@"Your tap now earns £100!"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        UIColor *green = [UIColor greenColor];
        superButton.hidden = YES;
        pigPrice.text = [NSString stringWithFormat:@"Purchased!"];
        [self->pigPrice setTextColor:green];
        megaButton.hidden = YES;
        walletPrice.text = [NSString stringWithFormat:@"Purchased!"];
        [self->walletPrice setTextColor:green];
        goldButton.hidden = YES;
        treePrice.text = [NSString stringWithFormat:@"Purchased!"];
        [self->treePrice setTextColor:green];
        
        moneyLabel.text = [NSString stringWithFormat:@"Money: £%li", (long)money];
        
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

-(IBAction)buyDiamondFinger:(id)sender {
    
    if (money >= 150000) {
        AudioServicesPlaySystemSound(playSoundID);
        money = money - 150000;
        superBought = 1;
        megaBought = 1;
        goldBought = 1;
        diamondBought = 1;
        
        multiplier = 4;
        gigaReady = 1;
        
        [[NSUserDefaults standardUserDefaults] setInteger:superBought forKey:@"super"];
        [[NSUserDefaults standardUserDefaults] setInteger:megaBought forKey:@"mega"];
        [[NSUserDefaults standardUserDefaults] setInteger:goldBought forKey:@"gold"];
        [[NSUserDefaults standardUserDefaults] setInteger:diamondBought forKey:@"diamond"];
        
        [[NSUserDefaults standardUserDefaults] setInteger:money forKey:@"moneyNumber"];
        
        [[NSUserDefaults standardUserDefaults] setInteger:multiplier forKey:@"multiplier"];
        [[NSUserDefaults standardUserDefaults] setInteger:gigaReady forKey:@"giga"];
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Purchase Successful"
                                                        message:@"Your tap now earns £250!"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        
        UIColor *green = [UIColor greenColor];
        superButton.hidden = YES;
        pigPrice.text = [NSString stringWithFormat:@"Purchased!"];
        [self->pigPrice setTextColor:green];
        megaButton.hidden = YES;
        walletPrice.text = [NSString stringWithFormat:@"Purchased!"];
        [self->walletPrice setTextColor:green];
        goldButton.hidden = YES;
        treePrice.text = [NSString stringWithFormat:@"Purchased!"];
        [self->treePrice setTextColor:green];
        diamondButton.hidden = YES;
        diamondPrice.text = [NSString stringWithFormat:@"Purchased!"];
        [self->diamondPrice setTextColor:green];
        
        moneyLabel.text = [NSString stringWithFormat:@"Money: £%li", (long)money];
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
