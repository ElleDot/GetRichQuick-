//
//  2ShopViewController.h
//  GetRichQuick!
//
//  Created by Louis Agars-Smith on 09/02/2015.
//  Copyright (c) 2015 Louis Agars-Smith. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import "ViewController.h"

@interface _ShopViewController : UIViewController {
    
    IBOutlet UILabel *lemonPrice;
    IBOutlet UILabel *partTimePrice;
    IBOutlet UILabel *cashMintPrice;
    IBOutlet UILabel *corporationPrice;
    IBOutlet UIButton *lemonButton;
    IBOutlet UIButton *partTimeButton;
    IBOutlet UIButton *cashMintButton;
    IBOutlet UIButton *corporationButton;
    IBOutlet UILabel *lemonsOwned;
    IBOutlet UILabel *partsOwned;
    IBOutlet UILabel *cashOwned;
    IBOutlet UILabel *corporationsOwned;
    IBOutlet UILabel *moneyLabel;
    SystemSoundID playSoundID;
    
}

-(IBAction)buyLemonade:(id)sender;
-(IBAction)buyPartTime:(id)sender;
-(IBAction)buyCashMint:(id)sender;
-(IBAction)buyCorporation:(id)sender;


@end
