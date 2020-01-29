//
//  GShopViewController.h
//  GetRichQuick!
//
//  Created by Louis Agars-Smith on 13/02/2015.
//  Copyright (c) 2015 Louis Agars-Smith. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

NSInteger multiplier;
NSInteger uraniumBought;
NSInteger plutoniumBought;
NSInteger adamantBought;
NSInteger divineBought;

@interface GShopViewController : UIViewController {
    
    IBOutlet UILabel *uraniumPrice;
    IBOutlet UILabel *plutoniumPrice;
    IBOutlet UILabel *adamantPrice;
    IBOutlet UILabel *divinePrice;
    IBOutlet UIButton *uraniumButton;
    IBOutlet UIButton *plutoniumButton;
    IBOutlet UIButton *adamantButton;
    IBOutlet UIButton *divineButton;
    IBOutlet UILabel *moneyLabel;
    SystemSoundID playSoundID;
    
}

-(IBAction)buyUraniumFinger:(id)sender;
-(IBAction)buyPlutoniumFinger:(id)sender;
-(IBAction)buyAdamantiumFinger:(id)sender;
-(IBAction)buyDivineFinger:(id)sender;


@end
