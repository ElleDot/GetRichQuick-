//
//  2ShopViewController.m
//  GetRichQuick!
//
//  Created by Louis Agars-Smith on 09/02/2015.
//  Copyright (c) 2015 Louis Agars-Smith. All rights reserved.
//

#import "2ShopViewController.h"
#import "ViewController.h"
#import "SettingsViewController.h"

@interface _ShopViewController ()

@end

@implementation _ShopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSURL *SoundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"kaching" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)SoundURL, &playSoundID);
    
    LemonsBought = [[NSUserDefaults standardUserDefaults] integerForKey:@"lemonNumber"];
    partTimeBought = [[NSUserDefaults standardUserDefaults] integerForKey:@"partNumber"];
    cashMintBought = [[NSUserDefaults standardUserDefaults] integerForKey:@"cashNumber"];
    CorporationBought = [[NSUserDefaults standardUserDefaults] integerForKey:@"corpNumber"];
    
    lemonCost = [[NSUserDefaults standardUserDefaults] integerForKey:@"lemonCost"];
    partCost = [[NSUserDefaults standardUserDefaults] integerForKey:@"partCost"];
    cashCost = [[NSUserDefaults standardUserDefaults] integerForKey:@"cashCost"];
    corpCost = [[NSUserDefaults standardUserDefaults] integerForKey:@"corpCost"];
    
    
    
    moneyLabel.text = [NSString stringWithFormat:@"Money: £%li", (long)money];
    
    lemonPrice.text = [NSString stringWithFormat:@"Cost: %li", (long)lemonCost];
    lemonsOwned.text = [NSString stringWithFormat:@"Lemonade Stand: %li", (long)LemonsBought];
    
    partTimePrice.text = [NSString stringWithFormat:@"Cost: %li", (long)partCost];
    partsOwned.text = [NSString stringWithFormat:@"Part Time Job: %li", (long)partTimeBought];
    
    cashMintPrice.text = [NSString stringWithFormat:@"Cost: %li", (long)cashCost];
    cashOwned.text = [NSString stringWithFormat:@"Cash Mint: %li", (long)cashMintBought];
    
    corporationPrice.text = [NSString stringWithFormat:@"Cost: %li", (long)corpCost];
    corporationsOwned.text = [NSString stringWithFormat:@"Stock Share: %li", (long)CorporationBought];
    
    
}

-(IBAction)buyLemonade:(id)sender {
    
    if (LemonsBought == 0) {
        lemonCost = 50;
        [[NSUserDefaults standardUserDefaults] setInteger:lemonCost forKey:@"lemonCost"];
        if (money >= lemonCost) {
            AudioServicesPlaySystemSound(playSoundID);
            money = money - 50;
            [[NSUserDefaults standardUserDefaults] setInteger:money forKey:@"moneyNumber"];
            moneyLabel.text = [NSString stringWithFormat:@"Money: £%li", (long)money];
            cps = cps + 1;
            [[NSUserDefaults standardUserDefaults] setInteger:cps forKey:@"cashps"];
            LemonsBought = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:LemonsBought forKey:@"lemonNumber"];
            lemonsOwned.text = [NSString stringWithFormat:@"Lemonade Stand: %li", (long)LemonsBought];
            lemonPrice.text = [NSString stringWithFormat:@"Cost: %li", (long)lemonCost];
            [[NSUserDefaults standardUserDefaults] setInteger:lemonCost forKey:@"lemonCost"];
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
        
        if (money >= lemonCost) {
            AudioServicesPlaySystemSound(playSoundID);
            lemonCost = [[NSUserDefaults standardUserDefaults] integerForKey:@"lemonCost"];
            money = money - lemonCost;
            [[NSUserDefaults standardUserDefaults] setInteger:money forKey:@"moneyNumber"];
            moneyLabel.text = [NSString stringWithFormat:@"Money: £%li", (long)money];
            cps = cps + 1;
            [[NSUserDefaults standardUserDefaults] setInteger:cps forKey:@"cashps"];
            LemonsBought = LemonsBought + 1;
            [[NSUserDefaults standardUserDefaults] setInteger:LemonsBought forKey:@"lemonNumber"];
            lemonsOwned.text = [NSString stringWithFormat:@"Lemonade Stand: %li", (long)LemonsBought];
            
            lemonCost = lemonCost + (lemonCost / 4);
            lemonPrice.text = [NSString stringWithFormat:@"Cost: %li", (long)lemonCost];
            [[NSUserDefaults standardUserDefaults] setInteger:lemonCost forKey:@"lemonCost"];
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

-(IBAction)buyPartTime:(id)sender {
    
    if (partTimeBought == 0) {
        partCost = 5000;
        [[NSUserDefaults standardUserDefaults] setInteger:partCost forKey:@"partCost"];
        if (money >= partCost) {
            AudioServicesPlaySystemSound(playSoundID);
            money = money - 5000;
            [[NSUserDefaults standardUserDefaults] setInteger:money forKey:@"moneyNumber"];
            moneyLabel.text = [NSString stringWithFormat:@"Money: £%li", (long)money];
            cps = cps + 10;
            [[NSUserDefaults standardUserDefaults] setInteger:cps forKey:@"cashps"];
            partTimeBought = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:partTimeBought forKey:@"partNumber"];
            partsOwned.text = [NSString stringWithFormat:@"Part Time Job: %li", (long)partTimeBought];
            partTimePrice.text = [NSString stringWithFormat:@"Cost: %li", (long)partCost];
            [[NSUserDefaults standardUserDefaults] setInteger:partCost forKey:@"partCost"];
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
        
        if (money >= partCost) {
            AudioServicesPlaySystemSound(playSoundID);
            partCost = [[NSUserDefaults standardUserDefaults] integerForKey:@"partCost"];
            money = money - partCost;
            [[NSUserDefaults standardUserDefaults] setInteger:money forKey:@"moneyNumber"];
            moneyLabel.text = [NSString stringWithFormat:@"Money: £%li", (long)money];
            cps = cps + 10;
            [[NSUserDefaults standardUserDefaults] setInteger:cps forKey:@"cashps"];
            partTimeBought = partTimeBought + 1;
            [[NSUserDefaults standardUserDefaults] setInteger:partTimeBought forKey:@"partNumber"];
            partsOwned.text = [NSString stringWithFormat:@"Part Time Job: %li", (long)partTimeBought];
            
            partCost = partCost + (partCost / 4);
            partTimePrice.text = [NSString stringWithFormat:@"Cost: %li", (long)partCost];
            [[NSUserDefaults standardUserDefaults] setInteger:partCost forKey:@"partCost"];
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

-(IBAction)buyCashMint:(id)sender {
    
    if (cashMintBought == 0) {
        cashCost = 15000;
        [[NSUserDefaults standardUserDefaults] setInteger:cashCost forKey:@"cashCost"];
        if (money >= cashCost) {
            AudioServicesPlaySystemSound(playSoundID);
            money = money - 15000;
            [[NSUserDefaults standardUserDefaults] setInteger:money forKey:@"moneyNumber"];
            moneyLabel.text = [NSString stringWithFormat:@"Money: £%li", (long)money];
            cps = cps + 25;
            [[NSUserDefaults standardUserDefaults] setInteger:cps forKey:@"cashps"];
            cashMintBought = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:cashMintBought forKey:@"cashNumber"];
            cashOwned.text = [NSString stringWithFormat:@"Cash Mint: %li", (long)cashMintBought];
            cashMintPrice.text = [NSString stringWithFormat:@"Cost: %li", (long)cashCost];
            [[NSUserDefaults standardUserDefaults] setInteger:cashCost forKey:@"cashCost"];
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
        
        if (money >= cashCost) {
            AudioServicesPlaySystemSound(playSoundID);
            cashCost = [[NSUserDefaults standardUserDefaults] integerForKey:@"cashCost"];
            money = money - cashCost;
            [[NSUserDefaults standardUserDefaults] setInteger:money forKey:@"moneyNumber"];
            moneyLabel.text = [NSString stringWithFormat:@"Money: £%li", (long)money];
            cps = cps + 25;
            [[NSUserDefaults standardUserDefaults] setInteger:cps forKey:@"cashps"];
            cashMintBought = cashMintBought + 1;
            [[NSUserDefaults standardUserDefaults] setInteger:cashMintBought forKey:@"cashNumber"];
            cashOwned.text = [NSString stringWithFormat:@"Cash Mint: %li", (long)cashMintBought];
            
            cashCost = cashCost + (cashCost / 4);
            cashMintPrice.text = [NSString stringWithFormat:@"Cost: %li", (long)cashCost];
            [[NSUserDefaults standardUserDefaults] setInteger:cashCost forKey:@"cashCost"];
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

-(IBAction)buyCorporation:(id)sender {

    if (CorporationBought == 0) {
        corpCost = 250000;
        [[NSUserDefaults standardUserDefaults] setInteger:corpCost forKey:@"corpCost"];
        if (money >= corpCost) {
            AudioServicesPlaySystemSound(playSoundID);
            money = money - 250000;
            [[NSUserDefaults standardUserDefaults] setInteger:money forKey:@"moneyNumber"];
            moneyLabel.text = [NSString stringWithFormat:@"Money: £%li", (long)money];
            cps = cps + 100;
            [[NSUserDefaults standardUserDefaults] setInteger:cps forKey:@"cashps"];
            CorporationBought = 1;
            [[NSUserDefaults standardUserDefaults] setInteger:CorporationBought forKey:@"corpNumber"];
            corporationsOwned.text = [NSString stringWithFormat:@"Stock Share: %li", (long)CorporationBought];
            corporationPrice.text = [NSString stringWithFormat:@"Cost: %li", (long)corpCost];
            [[NSUserDefaults standardUserDefaults] setInteger:corpCost forKey:@"corpCost"];
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
        
        if (money >= corpCost) {
            AudioServicesPlaySystemSound(playSoundID);
            corpCost = [[NSUserDefaults standardUserDefaults] integerForKey:@"corpCost"];
            money = money - corpCost;
            [[NSUserDefaults standardUserDefaults] setInteger:money forKey:@"moneyNumber"];
            moneyLabel.text = [NSString stringWithFormat:@"Money: £%li", (long)money];
            cps = cps + 100;
            [[NSUserDefaults standardUserDefaults] setInteger:cps forKey:@"cashps"];
            CorporationBought = CorporationBought + 1;
            [[NSUserDefaults standardUserDefaults] setInteger:CorporationBought forKey:@"corpNumber"];
            corporationsOwned.text = [NSString stringWithFormat:@"Stock Share: %li", (long)CorporationBought];
            
            corpCost = corpCost + (corpCost / 4);
            corporationPrice.text = [NSString stringWithFormat:@"Cost: %li", (long)corpCost];
            [[NSUserDefaults standardUserDefaults] setInteger:corpCost forKey:@"corpCost"];
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
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
