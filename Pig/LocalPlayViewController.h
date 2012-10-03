//
//  LocalPlayViewController.h
//  Pig
//
//  Created by  on 9/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LocalPlayViewController : UIViewController
{
    IBOutlet UIButton *exitButton;
    IBOutlet UIButton *holdButton;
    IBOutlet UIButton *rollButton;
    IBOutlet UIImageView *die1View;
    IBOutlet UIImageView *die2View;
    IBOutlet UILabel *rollResultLabel;
    IBOutlet UILabel *roundScoreLabel;
    IBOutlet UILabel *player1ScoreLabel;
    IBOutlet UILabel *player2ScoreLabel;
    
}

@property UIButton *exitButton;
@property UIButton *holdButton;
@property UIButton *rollButton;
@property UIImageView *die1View;
@property UIImageView *die2View;
@property UILabel  *rollResultLabel;
@property UILabel  *roundScoreLabel;
@property UILabel *player1ScoreLabel;
@property UILabel *player2ScoreLabel;

-(void)playGame;


-(IBAction)holdButtonPressed:(id)sender;
-(IBAction)rollButtonPressed:(id)sender;
-(IBAction)exitButtonPressed:(id)sender;

@end
