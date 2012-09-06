//
//  ButtonCell.m
//  AutoAds
//
//  Created by Kyr Dunenkoff on 8/14/12.
//  Copyright (c) 2012 Kyr Dunenkoff. All rights reserved.
//

#import "ButtonCell.h"

@implementation ButtonCell

@synthesize titleLabel = _titleLabel;
@synthesize button = _button;
@synthesize delegate = _delegate;


#pragma mark - Initialization

- (void)awakeFromNib
{
    [_titleLabel setFont:[UIFont fontWithName:FONT_DINPro_BOLD size:13.]];
    [_button.titleLabel setFont:[UIFont fontWithName:FONT_DINPro_BOLD size:14.]];
    [_button setBackgroundImage:[[UIImage imageNamed:@"tableButton.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 4, 0, 4)] forState:UIControlStateNormal];
    [_button addTarget:self action:@selector(onButton:) forControlEvents:UIControlEventTouchUpInside];
    
    UIImageView *iv = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"50.png"]];
    [self setBackgroundView:iv];
}

- (CGFloat)cellHeight
{
    return 50;
}


#pragma mark - Actions

- (void)onButton:(id)sender
{
    if (_delegate != nil && [_delegate conformsToProtocol:@protocol(ButtonCellDelegate)] && [_delegate respondsToSelector:@selector(didTapButtonInButtonCell:)]) {
        [_delegate didTapButtonInButtonCell:self];
    }
}

@end
