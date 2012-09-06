//
//  MainMenuViewController.m
//  AutoAds
//
//  Created by Kyr Dunenkoff on 8/13/12.
//  Copyright (c) 2012 Kyr Dunenkoff. All rights reserved.
//

#import "MainMenuViewController.h"
#import "SearchViewController.h"

@interface MainMenuViewController ()

@end

@implementation MainMenuViewController {
    IBOutlet UIButton *_searchButton;
    IBOutlet UIButton *_addButton;
    IBOutlet UIButton *_favButton;
    IBOutlet UIButton *_moreButton;
    
    IBOutlet UIView *_bottomBar;
    IBOutlet UIButton *_infoButton;
}

//- (id)init {
//    self = [[UIStoryboard storyboardWithName:@"MainMenuViewController" bundle:nil] instantiateViewControllerWithIdentifier:@"MainMenuViewController"];
//    if (self) {
//        //
//    }
//    return self;
//}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor autoGray]];
    [_bottomBar setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"backgroundDark.png"]]];
    
    UIFont *font = [UIFont fontWithName:FONT_DINPro_MEDIUM size:20.];
    [_searchButton.titleLabel setFont:font];
    [_addButton.titleLabel setFont:font];
    [_favButton.titleLabel setFont:font];
    [_moreButton.titleLabel setFont:font];
    
    [_infoButton.titleLabel setFont:[UIFont fontWithName:FONT_DINPro_REGULAR size:14.]];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)pushSearch:(id)sender {
//    UITabBarController *tbc = [[UIStoryboard storyboardWithName:@"MainFlow" bundle:nil] instantiateViewControllerWithIdentifier:@"TabBarController"];
    SearchViewController *svc = [[SearchViewController alloc] init];
    [UIView transitionFromView:self.view toView:svc.view duration:0.5 options:UIViewAnimationTransitionFlipFromLeft completion:^(BOOL finished) {
        [[UIApplication sharedApplication].keyWindow setRootViewController:svc];
    }];
}

@end
