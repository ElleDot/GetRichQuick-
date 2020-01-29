//
//  G2ShopViewController.m
//  GetRichQuick!
//
//  Created by Louis Agars-Smith on 17/02/2015.
//  Copyright (c) 2015 Louis Agars-Smith. All rights reserved.
//

#import "G2ShopViewController.h"

@interface G_ShopViewController ()

@end

@implementation G_ShopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSURL *SoundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"kaching" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)SoundURL, &playSoundID);
    
    stockBought = [[NSUserDefaults standardUserDefaults] integerForKey:@"stockNumber"];
    personalBought = [[NSUserDefaults standardUserDefaults] integerForKey:@"personalNumber"];
    governmentBought = [[NSUserDefaults standardUserDefaults] integerForKey:@"governmentNumber"];
    moneyDuperBought = [[NSUserDefaults standardUserDefaults] integerForKey:@"moneyDuperNumber"];
    
    stockCost = [[NSUserDefaults standardUserDefaults] integerForKey:@"stockCost"];
    personalCost = [[NSUserDefaults standardUserDefaults] integerForKey:@"personalCost"];
    governmentCost = [[NSUserDefaults standardUserDefaults] integerForKey:@"governmentCost"];
    moneyDuperCost = [[NSUserDefaults standardUserDefaults] integerForKey:@"moneyDuperCost"];
    
    
    
    moneyLabel.text = [NSString stringWithFormat:@"Money: £%li", (long)money];
    
    stockPrice.text = [NSString stringWithFormat:@"Cost: %li", (long)stockCost];
    stockOwned.text = [NSString stringWithFormat:@"Global Corporation: %li", (long)stockBought];
    
    personalPrice.text = [NSString stringWithFormat:@"Cost: %li", (long)personalCost];
    personalOwned.text = [NSString stringWithFormat:@"Personal Money Printer: %li", (long)personalBought];
    
    governmentPrice.text = [NSString stringWithFormat:@"Cost: %li", (long)governmentCost];
    GovernmentOwned.text = [NSString stringWithFormat:@"Governmental Profit: %li", (long)governmentBought];
    
    moneyDuperPrice.text = [NSString stringWithFormat:@"Cost: %li", (long)moneyDuperCost];
    moneyDuperOwned.text = [NSString stringWithFormat:@"Money Duplicator: %li", (long)moneyDuperBought];
    
    
}

-(IBAction)buyStock:(id)sender {
    
    if (stockBought == 0) {
        stockCost = 5000000;
        [[NSUserDefaults standardUserDefaults] setInteger:stockCost forKey:@"stockCost"];
        if (money >= stockCost) {
            AudioServicesPlaySystemSound(playSoundID);
            money = money - 5000000;
            [[NSUserDefaults standardUserDefaults] setInteger:money forKey:@"moneyNumber"];
            moneyLabel.text = [NSString stringWithFormat:@"Money: £%li", (long)money];
            cps = cps + 1000;
            [[NSUserDefaults standardUserDefaults] setInteger:cps forKey:@"cashps"];
            stockBought = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:stockBought forKey:@"stockNumber"];
            stockOwned.text = [NSString stringWithFormat:@"Global Corporation: %li", (long)stockBought];
            stockPrice.text = [NSString stringWithFormat:@"Cost: %li", (long)stockCost];
            [[NSUserDefaults standardUserDefaults] setInteger:stockCost forKey:@"stockCost"];
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
    else {
        
        if (money >= stockCost) {
            AudioServicesPlaySystemSound(playSoundID);
            stockCost = [[NSUserDefaults standardUserDefaults] integerForKey:@"stockCost"];
            money = money - stockCost;
            [[NSUserDefaults standardUserDefaults] setInteger:money forKey:@"moneyNumber"];
            moneyLabel.text = [NSString stringWithFormat:@"Money: £%li", (long)money];
            cps = cps + 1000;
            [[NSUserDefaults standardUserDefaults] setInteger:cps forKey:@"cashps"];
            stockBought = stockBought + 1;
            [[NSUserDefaults standardUserDefaults] setInteger:stockBought forKey:@"stockNumber"];
            stockOwned.text = [NSString stringWithFormat:@"Global Corporation: %li", (long)stockBought];
            
            stockCost = stockCost + (stockCost / 4);
            stockPrice.text = [NSString stringWithFormat:@"Cost: %li", (long)stockCost];
            [[NSUserDefaults standardUserDefaults] setInteger:stockCost forKey:@"stockCost"];
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
    
}

-(IBAction)buyPersonalMoney:(id)sender {
    
    if (personalBought == 0) {
        personalCost = 25000000;
        [[NSUserDefaults standardUserDefaults] setInteger:personalCost forKey:@"personalCost"];
        if (money >= personalCost) {
            AudioServicesPlaySystemSound(playSoundID);
            money = money - 25000000;
            [[NSUserDefaults standardUserDefaults] setInteger:money forKey:@"moneyNumber"];
            moneyLabel.text = [NSString stringWithFormat:@"Money: £%li", (long)money];
            cps = cps + 15000;
            [[NSUserDefaults standardUserDefaults] setInteger:cps forKey:@"cashps"];
            personalBought = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:personalBought forKey:@"personalNumber"];
            personalOwned.text = [NSString stringWithFormat:@"Personal Money Printer: %li", (long)personalBought];
            personalPrice.text = [NSString stringWithFormat:@"Cost: %li", (long)personalCost];
            [[NSUserDefaults standardUserDefaults] setInteger:personalCost forKey:@"personalCost"];
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
    else {
        
        if (money >= personalCost) {
            AudioServicesPlaySystemSound(playSoundID);
            personalCost = [[NSUserDefaults standardUserDefaults] integerForKey:@"personalCost"];
            money = money - personalCost;
            [[NSUserDefaults standardUserDefaults] setInteger:money forKey:@"moneyNumber"];
            moneyLabel.text = [NSString stringWithFormat:@"Money: £%li", (long)money];
            cps = cps + 15000;
            [[NSUserDefaults standardUserDefaults] setInteger:cps forKey:@"cashps"];
            personalBought = personalBought + 1;
            [[NSUserDefaults standardUserDefaults] setInteger:personalBought forKey:@"personalNumber"];
            personalOwned.text = [NSString stringWithFormat:@"Personal Money Printer: %li", (long)personalBought];
            
            personalCost = personalCost + (personalCost / 4);
            personalPrice.text = [NSString stringWithFormat:@"Cost: %li", (long)personalCost];
            [[NSUserDefaults standardUserDefaults] setInteger:personalCost forKey:@"personalCost"];
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
    
}

-(IBAction)buyGovernment:(id)sender {
    
    if (governmentBought == 0) {
        governmentCost = 200000000;
        [[NSUserDefaults standardUserDefaults] setInteger:governmentCost forKey:@"governmentCost"];
        if (money >= governmentCost) {
            AudioServicesPlaySystemSound(playSoundID);
            money = money - 200000000;
            [[NSUserDefaults standardUserDefaults] setInteger:money forKey:@"moneyNumber"];
            moneyLabel.text = [NSString stringWithFormat:@"Money: £%li", (long)money];
            cps = cps + 125000;
            [[NSUserDefaults standardUserDefaults] setInteger:cps forKey:@"cashps"];
            governmentBought = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:governmentBought forKey:@"governmentNumber"];
            GovernmentOwned.text = [NSString stringWithFormat:@"Governmental Profit: %li", (long)governmentBought];
            governmentPrice.text = [NSString stringWithFormat:@"Cost: %li", (long)governmentCost];
            [[NSUserDefaults standardUserDefaults] setInteger:governmentCost forKey:@"governmentCost"];
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
    else {
        
        if (money >= governmentCost) {
            AudioServicesPlaySystemSound(playSoundID);
            governmentCost = [[NSUserDefaults standardUserDefaults] integerForKey:@"governmentCost"];
            money = money - governmentCost;
            [[NSUserDefaults standardUserDefaults] setInteger:money forKey:@"moneyNumber"];
            moneyLabel.text = [NSString stringWithFormat:@"Money: £%li", (long)money];
            cps = cps + 125000;
            [[NSUserDefaults standardUserDefaults] setInteger:cps forKey:@"cashps"];
            governmentBought = governmentBought + 1;
            [[NSUserDefaults standardUserDefaults] setInteger:governmentBought forKey:@"governmentNumber"];
            GovernmentOwned.text = [NSString stringWithFormat:@"Governmental Profit: %li", (long)governmentBought];
            
            governmentCost = governmentCost + (governmentCost / 4);
            governmentPrice.text = [NSString stringWithFormat:@"Cost: %li", (long)governmentCost];
            [[NSUserDefaults standardUserDefaults] setInteger:governmentCost forKey:@"governmentCost"];
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
    
}

-(IBAction)buyMoneyDuplicator:(id)sender {
    
    if (moneyDuperBought == 0) {
        moneyDuperCost = 1000000000;
        [[NSUserDefaults standardUserDefaults] setInteger:moneyDuperCost forKey:@"moneyDuperCost"];
        if (money >= moneyDuperCost) {
            AudioServicesPlaySystemSound(playSoundID);
            money = money - 1000000000;
            [[NSUserDefaults standardUserDefaults] setInteger:money forKey:@"moneyNumber"];
            moneyLabel.text = [NSString stringWithFormat:@"Money: £%li", (long)money];
            cps = cps + 1000000;
            [[NSUserDefaults standardUserDefaults] setInteger:cps forKey:@"cashps"];
            moneyDuperBought = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:moneyDuperBought forKey:@"moneyDuperNumber"];
            moneyDuperOwned.text = [NSString stringWithFormat:@"Money Duplicator: %li", (long)moneyDuperBought];
            moneyDuperPrice.text = [NSString stringWithFormat:@"Cost: %li", (long)moneyDuperCost];
            [[NSUserDefaults standardUserDefaults] setInteger:moneyDuperCost forKey:@"moneyDuperCost"];
            
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Congratulations!!"
                                                            message:@"\nYou have bought a Money Duplicator, which means you have fully completed all that this game has to offer. Well done, you crazy person!\n\nFeel free to restart and try again, tell a friend or just boast to anyone you see."
                                                           delegate:self
                                                  cancelButtonTitle:@"Restart?!"
                                                  otherButtonTitles:nil];
            
            UIAlertView *slert = [[UIAlertView alloc] initWithTitle:@"Wait a minute..."
                                                            message:@"\nIn the statistics page, the number of times you complete this game is stored and cannot be deleted. Go check!\n\nFinally, as a proposed target, why don't you try and get so much money, the money label can't display it all. Then you can be crowned champion of everything!"
                                                           delegate:self
                                                  cancelButtonTitle:@"Sounds cool!"
                                                  otherButtonTitles:nil];
            [slert show];
            [alert show];
            
            completes = completes + 1;
            [[NSUserDefaults standardUserDefaults] setInteger:completes forKey:@"completes"];
            
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
    else {
        
        if (money >= moneyDuperCost) {
            AudioServicesPlaySystemSound(playSoundID);
            moneyDuperCost = [[NSUserDefaults standardUserDefaults] integerForKey:@"moneyDuperCost"];
            money = money - moneyDuperCost;
            [[NSUserDefaults standardUserDefaults] setInteger:money forKey:@"moneyNumber"];
            moneyLabel.text = [NSString stringWithFormat:@"Money: £%li", (long)money];
            cps = cps + 1000000;
            [[NSUserDefaults standardUserDefaults] setInteger:cps forKey:@"cashps"];
            moneyDuperBought = moneyDuperBought + 1;
            [[NSUserDefaults standardUserDefaults] setInteger:moneyDuperBought forKey:@"moneyDuperNumber"];
            moneyDuperOwned.text = [NSString stringWithFormat:@"Money Duplicator: %li", (long)moneyDuperBought];
            
            moneyDuperCost = moneyDuperCost + (moneyDuperCost / 4);
            moneyDuperPrice.text = [NSString stringWithFormat:@"Cost: %li", (long)moneyDuperCost];
            [[NSUserDefaults standardUserDefaults] setInteger:moneyDuperCost forKey:@"moneyDuperCost"];
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
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segu
 e sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
