//
//  ViewController.h
//  GetRichQuick!
//
//  Created by Louis Agars-Smith on 06/02/2015.
//  Copyright (c) 2015 Louis Agars-Smith. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import <Social/Social.h>

int randomNumber;
NSInteger money;
NSInteger firstTime;
NSInteger cps;
NSInteger lemonCost;
NSInteger partCost;
NSInteger cashCost;
NSInteger corpCost;
NSInteger LemonsBought;
NSInteger partTimeBought;
NSInteger cashMintBought;
NSInteger CorporationBought;
NSInteger stockCost;
NSInteger stockBought;
NSInteger personalCost;
NSInteger personalBought;
NSInteger governmentCost;
NSInteger governmentBought;
NSInteger moneyDuperCost;
NSInteger moneyDuperBought;
NSInteger tapTotal;

@interface ViewController : UIViewController {
    
    SLComposeViewController *mySLComposerSheet;
    IBOutlet UILabel *moneyLabel;
    IBOutlet UILabel *multiplierLabel;
    IBOutlet UILabel *cpsLabel;
    IBOutlet UIButton *gigaButton;
    IBOutlet UIButton *tapShop;
    IBOutlet UIView *background;
    IBOutlet UILabel *titleLabel;
    IBOutlet UIButton *settingsButton;
    IBOutlet UIButton *statisticsButton;
    IBOutlet UIButton *idleShopButton;
    IBOutlet UIButton *tapButton;
    IBOutlet UILabel *copyright;
    IBOutlet UIButton *shareButton;
    IBOutlet UIButton *iGigaShopButton;
    SystemSoundID playSoundID;
    SystemSoundID playSoundID2;
    SystemSoundID playSoundID3;
    
    NSTimer *idleTimer;
    
}

-(IBAction)tap:(id)sender;
-(IBAction)dolla:(id)sender;
-(IBAction)settings:(id)sender;
-(IBAction)statistics:(id)sender;
-(IBAction)tapShop:(id)sender;
-(IBAction)idleShop:(id)sender;
-(IBAction)gigaTapShop:(id)sender;
-(IBAction)gigaIdleShop:(id)sender;

@end


