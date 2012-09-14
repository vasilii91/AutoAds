//
//  ListOfAdvertisementHeader.m
//  AutoAds
//
//  Created by Vasilii Kasnitski on 9/14/12.
//  Copyright (c) 2012 Kyr Dunenkoff. All rights reserved.
//

#import "ListOfAdvertisementHeader.h"

@implementation ListOfAdvertisementHeader
@synthesize circulationView;


#pragma mark - Initialization

- (void)awakeFromNib
{
    [super awakeFromNib];
}

+ (ListOfAdvertisementHeader *)loadView
{
    ListOfAdvertisementHeader *header = [[[NSBundle mainBundle] loadNibNamed:@"ListOfAdvertisementHeader" owner:nil options:nil] lastObject];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
    label.textAlignment = UITextAlignmentCenter;
    [label setText:@"TEST"];
    [header.circulationView initializeWithViews:@[label]];
    
    return header;
}


#pragma mark - Actions

- (IBAction)clickOnTypeOfSortButton:(UIButton *)button
{
    if (button.tag == 0) {
        // click on left button
    }
    else {
        // click on right button
    }
}

@end
