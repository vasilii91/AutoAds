//
//  AdvertisementCell.m
//  AutoAds
//
//  Created by Vasilii Kasnitski on 9/14/12.
//  Copyright (c) 2012 Kyr Dunenkoff. All rights reserved.
//

#import "AdvertisementCell.h"

@implementation AdvertisementCell


#pragma mark - Initialization
@synthesize imageViewPhoto;
@synthesize labelCarName;
@synthesize labelPrice;
@synthesize labelOtherInfo;

- (void)awakeFromNib
{
    [labelCarName setFont:[UIFont fontWithName:FONT_DINPro_MEDIUM size:14]];
    [labelCarName setTextColor:FONT_COLOR_MY_BLUE_COLOR];
    
    [labelPrice setFont:[UIFont fontWithName:FONT_DINPro_MEDIUM size:14]];
    
    [labelOtherInfo setFont:[UIFont fontWithName:FONT_DINPro_MEDIUM size:11]];
}

+ (AdvertisementCell *)loadView
{
    return [[[NSBundle mainBundle] loadNibNamed:@"AdvertisementCell" owner:nil options:nil] lastObject];
}
@end
