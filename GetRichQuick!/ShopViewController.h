//
//  ShopViewController.h
//  GetRichQuick!
//
//  Created by Louis Agars-Smith on 08/02/2015.
//  Copyright (c) 2015 Louis Agars-Smith. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

NSInteger multiplier;
NSInteger superBought;
NSInteger megaBought;
NSInteger goldBought;
NSInteger diamondBought;
NSInteger gigaReady;

@interface ShopViewController : UIViewController {
    
    IBOutlet UILabel *pigPrice;
    IBOutlet UILabel *walletPrice;
    IBOutlet UILabel *treePrice;
    IBOutlet UILabel *diamondPrice;
    IBOutlet UIButton *superButton;
    IBOutlet UIButton *megaButton;
    IBOutlet UIButton *goldButton;
    IBOutlet UIButton *diamondButton;
    IBOutlet UILabel *moneyLabel;
    SystemSoundID playSoundID;
    
}

-(IBAction)buySuperFinger:(id)sender;
-(IBAction)buyMegaFinger:(id)sender;
-(IBAction)buyGoldFinger:(id)sender;
-(IBAction)buyDiamondFinger:(id)sender;


@end
