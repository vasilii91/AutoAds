//
//  AdvertisementCell.h
//  AutoAds
//
//  Created by Vasilii Kasnitski on 9/14/12.
//  Copyright (c) 2012 Kyr Dunenkoff. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AdvertisementCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageViewPhoto;
@property (weak, nonatomic) IBOutlet UILabel *labelCarName;
@property (weak, nonatomic) IBOutlet UILabel *labelPrice;
@property (weak, nonatomic) IBOutlet UILabel *labelOtherInfo;
+ (AdvertisementCell *)loadView;

@end
