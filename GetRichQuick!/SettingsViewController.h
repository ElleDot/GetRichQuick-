//
//  SettingsViewController.h
//  GetRichQuick!
//
//  Created by Louis Agars-Smith on 07/02/2015.
//  Copyright (c) 2015 Louis Agars-Smith. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

NSInteger iGigaReady;

@interface SettingsViewController : UIViewController {
    
    IBOutlet UIButton *resetScore;
    IBOutlet UIView *background1;
    IBOutlet UILabel *settingsLabel;
    IBOutlet UILabel *settingsSubTitle;
    
    IBOutlet UIView *resetContainer;
    IBOutlet UIButton *exitButton;
    IBOutlet UILabel *resetLabel;
    
    IBOutlet UIView *iGigaContainer;
    IBOutlet UIButton *iGigaButton;
    IBOutlet UILabel *iGigaLabel;
    
    IBOutlet UILabel *moneyLabel;
    
    SystemSoundID playSoundID;
    
}

-(IBAction)reset:(id)sender;
-(IBAction)iGigaBuy:(id)sender;

@end
