//
//  G2ShopViewController.h
//  GetRichQuick!
//
//  Created by Louis Agars-Smith on 17/02/2015.
//  Copyright (c) 2015 Louis Agars-Smith. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import "ViewController.h"

NSInteger completes;

@interface G_ShopViewController : UIViewController {
    
    IBOutlet UILabel *stockPrice;
    IBOutlet UILabel *governmentPrice;
    IBOutlet UILabel *personalPrice;
    IBOutlet UILabel *moneyDuperPrice;
    IBOutlet UIButton *stockButton;
    IBOutlet UIButton *personalButton;
    IBOutlet UIButton *governmentButton;
    IBOutlet UIButton *moneyDuperButton;
    IBOutlet UILabel *stockOwned;
    IBOutlet UILabel *personalOwned;
    IBOutlet UILabel *GovernmentOwned;
    IBOutlet UILabel *moneyDuperOwned;
    IBOutlet UILabel *moneyLabel;
    SystemSoundID playSoundID;
    
}

-(IBAction)buyStock:(id)sender;
-(IBAction)buyGovernment:(id)sender;
-(IBAction)buyPersonalMoney:(id)sender;
-(IBAction)buyMoneyDuplicator:(id)sender;

@end
