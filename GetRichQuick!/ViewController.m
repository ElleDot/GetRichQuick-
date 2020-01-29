//
//  ViewController.m
//  GetRichQuick!
//
//  Created by Louis Agars-Smith on 06/02/2015.
//  Copyright (c) 2015 Louis Agars-Smith. All rights reserved.
//

#import "ViewController.h"
#import "ShopViewController.h"
#import "2ShopViewController.h"
#import "SettingsViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
  
    
    firstTime = [[NSUserDefaults standardUserDefaults] integerForKey:@"first"];
    gigaReady = [[NSUserDefaults standardUserDefaults] integerForKey:@"giga"];
    iGigaReady = [[NSUserDefaults standardUserDefaults] integerForKey:@"igiga"];
    tapTotal = [[NSUserDefaults standardUserDefaults] integerForKey:@"total"];

    if (iGigaReady == 1) {
        iGigaShopButton.hidden = NO;
        idleShopButton.hidden = YES;
    }
    else if (iGigaReady == 0) {
        
        iGigaShopButton.hidden = YES;
        idleShopButton.hidden = NO;
        
    }
    
    if (gigaReady == 1) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Giga Tap Shop Unlocked!"
                                                        message:@"\nYou have progressed so far, you can't buy any more upgrades for your tap, so now you can go even further in the Giga tap shop! \n\n(The Gigashop is still where the old one was!)\n\nCongratulations and Happy Tapping!"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        gigaButton.hidden = NO;
        tapShop.hidden = YES;
        gigaReady = 2;
        [[NSUserDefaults standardUserDefaults] setInteger:gigaReady forKey:@"giga"];
        
    }
    else if (gigaReady == 2) {
        
        gigaButton.hidden = NO;
        tapShop.hidden = YES;
        
    }
    
    if (firstTime == 0) {
        cps = 0;
        lemonCost = 50;
        partCost = 5000;
        cashCost = 15000;
        corpCost = 250000;
        stockCost = 5000000;
        personalCost = 25000000;
        governmentCost = 200000000;
        moneyDuperCost = 1000000000;
        stockBought = 0;
        personalBought = 0;
        governmentBought = 0;
        moneyDuperBought = 0;
        LemonsBought = 0;
        partTimeBought = 0;
        cashMintBought = 0;
        CorporationBought = 0;
        [[NSUserDefaults standardUserDefaults] setInteger:cps forKey:@"cashps"];
        [[NSUserDefaults standardUserDefaults] setInteger:lemonCost forKey:@"lemonCost"];
        [[NSUserDefaults standardUserDefaults] setInteger:partCost forKey:@"partCost"];
        [[NSUserDefaults standardUserDefaults] setInteger:cashCost forKey:@"cashCost"];
        [[NSUserDefaults standardUserDefaults] setInteger:corpCost forKey:@"corpCost"];
        [[NSUserDefaults standardUserDefaults] setInteger:stockCost forKey:@"stockCost"];
        [[NSUserDefaults standardUserDefaults] setInteger:personalCost forKey:@"personalCost"];
        [[NSUserDefaults standardUserDefaults] setInteger:governmentCost forKey:@"governmentCost"];
        [[NSUserDefaults standardUserDefaults] setInteger:moneyDuperCost forKey:@"moneyDuperCost"];
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Welcome to GetRichQuick!"
                                                        message:@"\nThank you for downloading!\n\n To earn money, tap the 'Gimme Money!' button below.\n\nUpgrades are available in the shops below."
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        firstTime = 1;
        [[NSUserDefaults standardUserDefaults] setInteger:firstTime forKey:@"first"];
    }
    
    NSURL *SoundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"coin" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)SoundURL, &playSoundID);
    
    NSURL *SoundURL2 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"coin2" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)SoundURL2, &playSoundID2);
    
    NSURL *SoundURL3 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"coin3" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)SoundURL3, &playSoundID3);
    
    // Do any additional setup after loading the view, typically from a nib.
    money = [[NSUserDefaults standardUserDefaults] integerForKey:@"moneyNumber"];
    moneyLabel.text = [NSString stringWithFormat:@"Money: £%li", (long)money];
    multiplier = [[NSUserDefaults standardUserDefaults] integerForKey:@"multiplier"];
    multiplierLabel.text = [NSString stringWithFormat:@"Current Tap Level: %li", (long)multiplier];
    
    UIColor *orange = [UIColor orangeColor];
    UIColor *red = [UIColor redColor];
    UIColor *lightGray = [UIColor lightGrayColor];
    UIColor *darkGray = [UIColor grayColor];
    UIColor *darkerGray = [UIColor darkGrayColor];
    UIColor *black = [UIColor blackColor];
    UIColor *white = [UIColor whiteColor];
    
    if ((multiplier == 4) || (multiplier == 5)) {
        multiplierLabel.textAlignment = NSTextAlignmentCenter;
        
        [self->settingsButton setBackgroundColor:darkGray];
        [self->statisticsButton setBackgroundColor:darkGray];
        [self->idleShopButton setBackgroundColor:darkGray];
        [self->tapButton setBackgroundColor:darkGray];
        [self->shareButton setBackgroundColor:darkGray];
        
        [self->titleLabel setBackgroundColor:darkGray];
        
        [self->background setBackgroundColor:lightGray];
    }
    if ((multiplier == 6) || (multiplier == 7)) {
        multiplierLabel.textAlignment = NSTextAlignmentCenter;
        
        [self->settingsButton setBackgroundColor:darkerGray];
        [self->settingsButton setTitleColor:orange forState:UIControlStateNormal];

        [self->statisticsButton setBackgroundColor:darkerGray];
        [self->statisticsButton setTitleColor:orange forState:UIControlStateNormal];
        [self->idleShopButton setBackgroundColor:darkerGray];
        [self->idleShopButton setTitleColor:orange forState:UIControlStateNormal];
        [self->tapButton setBackgroundColor:darkerGray];
        [self->tapButton setTitleColor:orange forState:UIControlStateNormal];
        [self->shareButton setBackgroundColor:darkerGray];
        [self->shareButton setTitleColor:orange forState:UIControlStateNormal];
        
        [self->titleLabel setTextColor:orange];
        [self->titleLabel setBackgroundColor:darkerGray];
        
        [self->background setBackgroundColor:darkGray];
        
    }
    if (multiplier == 8) {
        multiplierLabel.textAlignment = NSTextAlignmentCenter;
        
        [self->multiplierLabel setTextColor:white];
        [self->cpsLabel setTextColor:white];
        [self->moneyLabel setTextColor:white];
        [self->copyright setTextColor:white];
        
        [self->settingsButton setBackgroundColor:black];
        [self->settingsButton setTitleColor:red forState:UIControlStateNormal];
        [self->statisticsButton setBackgroundColor:black];
        [self->statisticsButton setTitleColor:red forState:UIControlStateNormal];
        [self->idleShopButton setBackgroundColor:black];
        [self->idleShopButton setTitleColor:red forState:UIControlStateNormal];
        [self->tapButton setBackgroundColor:black];
        [self->tapButton setTitleColor:red forState:UIControlStateNormal];
        [self->shareButton setBackgroundColor:black];
        [self->shareButton setTitleColor:red forState:UIControlStateNormal];
        
        [self->background setBackgroundColor:darkerGray];
        
        [self->titleLabel setTextColor:red];
        [self->titleLabel setBackgroundColor:black];
        
        multiplierLabel.text = [NSString stringWithFormat:@"Tap Level Maxed!"];
    }

    
    
    cps = [[NSUserDefaults standardUserDefaults] integerForKey:@"cashps"];
    cpsLabel.text = [NSString stringWithFormat:@"Cash Per Second: £%li", (long)cps];
    [self idleMoney];
    
    copyright.text = [NSString stringWithFormat:@"Weh %li", (long)multiplier];
    
}

-(IBAction)shareFB:(id)sender {
    
    mySLComposerSheet = [[SLComposeViewController alloc] init];
    mySLComposerSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
    [mySLComposerSheet setInitialText:[NSString stringWithFormat:@"I just achieved £%li on 'GetRichQuick!', a new game for iOS, how high can you get?", (long)money]];
    [self presentViewController:mySLComposerSheet animated:YES completion:nil];
    [sender resignFirstResponder];
    
}

-(void)idleMoney {
    
    [idleTimer invalidate];
    money = money + cps;
     moneyLabel.text = [NSString stringWithFormat:@"Money: £%li", (long)money];
    [[NSUserDefaults standardUserDefaults] setInteger:money forKey:@"moneyNumber"];
    idleTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(idleMoney) userInfo:nil repeats:YES];
    
}

-(IBAction)dolla:(id)sender {
    
    money = money + 10000000;
    [[NSUserDefaults standardUserDefaults] setInteger:money forKey:@"moneyNumber"];
    money = [[NSUserDefaults standardUserDefaults] integerForKey:@"moneyNumber"];
    moneyLabel.text = [NSString stringWithFormat:@"Money: £%li", (long)money];
    
}

-(IBAction)tap:(id)sender {
    
    tapTotal = tapTotal + 1;
    [[NSUserDefaults standardUserDefaults] setInteger:tapTotal forKey:@"total"];
    
    if (tapTotal == 100) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Oy you!"
                                                        message:@"\nYou just hit 100 taps!\n\nGo to the statistics page to keep track of your total and other things!"
                                                       delegate:self
                                              cancelButtonTitle:@"Sure"
                                              otherButtonTitles:nil];
        [alert show];
    }
    
    if (tapTotal == 1000) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Here's something"
                                                        message:@"\nYou would have just earned an achievement!..\n\n...If I'd bothered coding one in...\n\nGo to the 'Statistics' page to see how many taps you've done!"
                                                       delegate:self
                                              cancelButtonTitle:@"Oh..."
                                              otherButtonTitles:nil];
        [alert show];
    }
    
    if (tapTotal == 2500) {
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hey again"
                                                        message:@"\nYou seem to be progressing!\n\n Don't forget to buy access to the Giga Idle Shop, it helps in the later stages!\n (It's in the settings page)"
                                                       delegate:self
                                              cancelButtonTitle:@"Thanks for the tip!"
                                              otherButtonTitles:nil];
        [alert show];
        
    }
    
    if (tapTotal == 10000) {
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Yowza!"
                                                        message:@"\n10,000 Taps!! Blimey!\n\nWhen you complete the game, your score multiplier doubles and stays like so forever!"
                                                       delegate:self
                                              cancelButtonTitle:@"Awesome!"
                                              otherButtonTitles:nil];
        [alert show];
        
        }
    
    if (multiplier == 0) {
        money = money + 1;
    }
    else if (multiplier == 1) {
        money = money + 5;
    }
    else if (multiplier == 2) {
        money = money + 20;
    }
    else if (multiplier == 3) {
        money = money + 100;
    }
    else if (multiplier == 4) {
        money = money + 250;
    }
    else if (multiplier == 5) {
        money = money + 1000;
    }
    else if (multiplier == 6) {
        money = money + 10000;
    }
    else if (multiplier == 7) {
        money = money + 100000;
    }
    else if (multiplier == 8) {
        money = money + 1000000;
    }
    
    [[NSUserDefaults standardUserDefaults] setInteger:money forKey:@"moneyNumber"];
    money = [[NSUserDefaults standardUserDefaults] integerForKey:@"moneyNumber"];
    moneyLabel.text = [NSString stringWithFormat:@"Money: £%li", (long)money];
    
    randomNumber = arc4random() %3;
    if (randomNumber == 0){
        
        AudioServicesPlaySystemSound(playSoundID);
    }
    else if (randomNumber == 1) {
        
        AudioServicesPlaySystemSound(playSoundID2);
        
    }
    
    else if (randomNumber == 2) {
        
        AudioServicesPlaySystemSound(playSoundID3);
        
    }
    
}

-(IBAction)settings:(id)sender {
    
    [idleTimer invalidate];
    
}

-(IBAction)tapShop:(id)sender {
    
    [idleTimer invalidate];
    
}

-(IBAction)idleShop:(id)sender {
    
    [idleTimer invalidate];
    
}

-(IBAction)statistics:(id)sender {
    
    [idleTimer invalidate];
    
}

-(IBAction)gigaTapShop:(id)sender {
    
    [idleTimer invalidate];
    
}

-(IBAction)gigaIdleShop:(id)sender {
    
    [idleTimer invalidate];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
