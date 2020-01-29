//
//  GShopViewController.m
//  GetRichQuick!
//
//  Created by Louis Agars-Smith on 13/02/2015.
//  Copyright (c) 2015 Louis Agars-Smith. All rights reserved.
//

#import "GShopViewController.h"
#import "ShopViewController.h"
#import "ViewController.h"

@interface GShopViewController ()

@end

@implementation GShopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSURL *SoundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"kaching" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)SoundURL, &playSoundID);
    
    UIColor *orange = [UIColor orangeColor];
    
    moneyLabel.text = [NSString stringWithFormat:@"Money: £%li", (long)money];
    
    uraniumBought = [[NSUserDefaults standardUserDefaults] integerForKey:@"super"];
    plutoniumBought = [[NSUserDefaults standardUserDefaults] integerForKey:@"mega"];
    adamantBought = [[NSUserDefaults standardUserDefaults] integerForKey:@"gold"];
    divineBought = [[NSUserDefaults standardUserDefaults] integerForKey:@"diamond"];
    if (multiplier == 5) {
        uraniumButton.hidden = YES;
        uraniumPrice.text = [NSString stringWithFormat:@"Purchased!"];
        uraniumPrice.textAlignment = NSTextAlignmentCenter;
        [self->uraniumPrice setTextColor:orange];
    }
    if (multiplier == 6) {
        uraniumButton.hidden = YES;
        uraniumPrice.text = [NSString stringWithFormat:@"Purchased!"];
        uraniumPrice.textAlignment = NSTextAlignmentCenter;
        [self->uraniumPrice setTextColor:orange];
        plutoniumButton.hidden = YES;
        plutoniumPrice.text = [NSString stringWithFormat:@"Purchased!"];
        plutoniumPrice.textAlignment = NSTextAlignmentCenter;
        [self->plutoniumPrice setTextColor:orange];
    }
    if (multiplier == 7) {
        uraniumButton.hidden = YES;
        uraniumPrice.text = [NSString stringWithFormat:@"Purchased!"];
        uraniumPrice.textAlignment = NSTextAlignmentCenter;
        [self->uraniumPrice setTextColor:orange];
        plutoniumButton.hidden = YES;
        plutoniumPrice.text = [NSString stringWithFormat:@"Purchased!"];
        plutoniumPrice.textAlignment = NSTextAlignmentCenter;
        [self->plutoniumPrice setTextColor:orange];
        adamantButton.hidden = YES;
        adamantPrice.text = [NSString stringWithFormat:@"Purchased!"];
        adamantPrice.textAlignment = NSTextAlignmentCenter;
        [self->adamantPrice setTextColor:orange];
    }
    if (multiplier == 8) {
        uraniumButton.hidden = YES;
        uraniumPrice.text = [NSString stringWithFormat:@"Purchased!"];
        uraniumPrice.textAlignment = NSTextAlignmentCenter;
        [self->uraniumPrice setTextColor:orange];
        plutoniumButton.hidden = YES;
        plutoniumPrice.text = [NSString stringWithFormat:@"Purchased!"];
        plutoniumPrice.textAlignment = NSTextAlignmentCenter;
        [self->plutoniumPrice setTextColor:orange];
        adamantButton.hidden = YES;
        adamantPrice.text = [NSString stringWithFormat:@"Purchased!"];
        adamantPrice.textAlignment = NSTextAlignmentCenter;
        [self->adamantPrice setTextColor:orange];
        divineButton.hidden = YES;
        divinePrice.text = [NSString stringWithFormat:@"Purchased!"];
        divinePrice.textAlignment = NSTextAlignmentCenter;
        [self->divinePrice setTextColor:orange];
    }
}

-(IBAction)buyUraniumFinger:(id)sender {
    
    if (money >= 2500000) {
        AudioServicesPlaySystemSound(playSoundID);
        money = money - 2500000;
        uraniumBought = 1;
        [[NSUserDefaults standardUserDefaults] setInteger:uraniumBought forKey:@"uranium"];
        [[NSUserDefaults standardUserDefaults] setInteger:money forKey:@"moneyNumber"];
        multiplier = 5;
        [[NSUserDefaults standardUserDefaults] setInteger:multiplier forKey:@"multiplier"];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Purchase Successful"
                                                        message:@"Your tap now earns a whopping £1000!"
                                                       delegate:self
                                              cancelButtonTitle:@"Yay"
                                              otherButtonTitles:nil];
        [alert show];
        uraniumButton.hidden = YES;
        uraniumPrice.text = [NSString stringWithFormat:@"Purchased!"];
        UIColor *orange = [UIColor orangeColor];
        [self->uraniumPrice setTextColor:orange];
        
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

-(IBAction)buyPlutoniumFinger:(id)sender {
    
    if (money >= 5000000) {
        AudioServicesPlaySystemSound(playSoundID);
        money = money - 5000000;
        plutoniumBought = 1;
        uraniumBought = 1;
        [[NSUserDefaults standardUserDefaults] setInteger:plutoniumBought forKey:@"plutonium"];
        [[NSUserDefaults standardUserDefaults] setInteger:money forKey:@"moneyNumber"];
        multiplier = 6;
        [[NSUserDefaults standardUserDefaults] setInteger:multiplier forKey:@"multiplier"];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Purchase Successful"
                                                        message:@"Your tap now earns a massive £10k!"
                                                       delegate:self
                                              cancelButtonTitle:@"Nice"
                                              otherButtonTitles:nil];
        [alert show];
        uraniumButton.hidden = YES;
        uraniumPrice.text = [NSString stringWithFormat:@"Purchased!"];
        UIColor *orange = [UIColor orangeColor];
        [self->uraniumPrice setTextColor:orange];
        plutoniumButton.hidden = YES;
        plutoniumPrice.text = [NSString stringWithFormat:@"Purchased!"];
        [self->plutoniumPrice setTextColor:orange];
        
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

-(IBAction)buyAdamantiumFinger:(id)sender {
    
    if (money >= 125000000) {
        AudioServicesPlaySystemSound(playSoundID);
        money = money - 125000000;
        uraniumBought = 1;
        plutoniumBought = 1;
        adamantBought = 1;
        [[NSUserDefaults standardUserDefaults] setInteger:uraniumBought forKey:@"uranium"];
        [[NSUserDefaults standardUserDefaults] setInteger:plutoniumBought forKey:@"plutonium"];
        [[NSUserDefaults standardUserDefaults] setInteger:adamantBought forKey:@"adamantium"];
        [[NSUserDefaults standardUserDefaults] setInteger:money forKey:@"moneyNumber"];
        multiplier = 7;
        [[NSUserDefaults standardUserDefaults] setInteger:multiplier forKey:@"multiplier"];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Purchase Successful"
                                                        message:@"\nYour tap now earns an almost silly £100k!\n\nYou're almost there!"
                                                       delegate:self
                                              cancelButtonTitle:@"I can do it!"
                                              otherButtonTitles:nil];
        [alert show];
        uraniumButton.hidden = YES;
        uraniumPrice.text = [NSString stringWithFormat:@"Purchased!"];
        UIColor *orange = [UIColor orangeColor];
        [self->uraniumPrice setTextColor:orange];
        plutoniumButton.hidden = YES;
        plutoniumPrice.text = [NSString stringWithFormat:@"Purchased!"];
        [self->plutoniumPrice setTextColor:orange];
        adamantButton.hidden = YES;
        adamantPrice.text = [NSString stringWithFormat:@"Purchased!"];
        [self->adamantPrice setTextColor:orange];
        
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

-(IBAction)buyDivineFinger:(id)sender {
    
    if (money >= 1000000000) {
        AudioServicesPlaySystemSound(playSoundID);
        money = money - 1000000000;
        uraniumBought = 1;
        plutoniumBought = 1;
        adamantBought = 1;
        divineBought = 1;
        multiplier = 8;
        [[NSUserDefaults standardUserDefaults] setInteger:uraniumBought forKey:@"uranium"];
        [[NSUserDefaults standardUserDefaults] setInteger:plutoniumBought forKey:@"plutonium"];
        [[NSUserDefaults standardUserDefaults] setInteger:adamantBought forKey:@"adamantium"];
        [[NSUserDefaults standardUserDefaults] setInteger:divineBought forKey:@"divine"];
        [[NSUserDefaults standardUserDefaults] setInteger:money forKey:@"moneyNumber"];
        
        [[NSUserDefaults standardUserDefaults] setInteger:multiplier forKey:@"multiplier"];
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Purchase Successful"
                                                        message:@"\nYour tap now earns an almighty million!\n\nWell done!"
                                                       delegate:self
                                              cancelButtonTitle:@"Aw yeah!"
                                              otherButtonTitles:nil];
        [alert show];
        
        uraniumButton.hidden = YES;
        uraniumPrice.text = [NSString stringWithFormat:@"Purchased!"];
        UIColor *orange = [UIColor orangeColor];
        [self->uraniumPrice setTextColor:orange];
        plutoniumButton.hidden = YES;
        plutoniumPrice.text = [NSString stringWithFormat:@"Purchased!"];
        [self->plutoniumPrice setTextColor:orange];
        adamantButton.hidden = YES;
        adamantPrice.text = [NSString stringWithFormat:@"Purchased!"];
        [self->adamantPrice setTextColor:orange];
        divineButton.hidden = YES;
        divinePrice.text = [NSString stringWithFormat:@"Purchased!"];
        [self->divinePrice setTextColor:orange];
        
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
