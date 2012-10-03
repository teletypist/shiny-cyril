//
//  ViewController.m
//  Pig
//
//  Created by  on 9/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

static int LOCAL_VC = 1;
static int NETWORK_VC = 2;
static int NAMES_VC = 3;
static int ABOUT_VC = 4;



@implementation ViewController

@synthesize localPlayButton;
@synthesize networkPlayButton;
@synthesize aboutButton;
@synthesize namesButton;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)localPlayPressed:(id)sender
{
    NSLog(@"Local play pressed");
    
    [self pushView:localPlayVC :LOCAL_VC]; 
    //[localPlayVC playGame]; //this is done in localPlayVC's viewDidLoad
}

- (IBAction)networkPlayPressed:(id)sender
{
    NSLog(@"Network play pressed");  
    
    [self pushView:networkPlayVC :NETWORK_VC];
    //playGame is called in localPlayVC's viewDidLoad
}

- (IBAction)namesPressed:(id)sender
{
    NSLog(@"Player names play pressed");
    
    [self pushView:namesVC :NAMES_VC]; 
}

- (IBAction)aboutPressed:(id)sender
{
    NSLog(@"About game pressed");
    
    [self pushView:aboutVC :ABOUT_VC]; 
}


- (void)pushView:(UIViewController*)nextVC:(int)viewControllerNum
{
    if (nil == nextVC)
    {
        switch (viewControllerNum){
            
            case 1: //LOCAL_VC
                
                localPlayVC=[[LocalPlayViewController alloc] init];
                nextVC=localPlayVC;
                break;
                
            case 2: //NETWORK_VC
                networkPlayVC=[[NetworkPlayViewController alloc] init];
                nextVC=networkPlayVC;
                break;
            
            case 3: //NAMES_VC
                namesVC=[[NamesViewController alloc] init];
                nextVC=namesVC;
                break;
                
            case 4: //ABOUT_VC
                aboutVC=[[AboutViewController alloc] init];
                nextVC=aboutVC;
                break;
            
            default:
                break;
        }
    }
        
    [self.navigationController pushViewController:nextVC animated:NO];
}





@end