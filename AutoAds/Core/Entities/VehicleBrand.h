//
//  VehicleBrand.h
//  AutoAds
//
//  Created by Vasilii Kasnitski on 9/11/12.
//  Copyright (c) 2012 Kyr Dunenkoff. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VehicleBrand : NSObject

@property (nonatomic, assign) NSInteger id;
@property (nonatomic, retain) NSString *title;
@property (nonatomic, retain) NSArray *subrubrics;
@property (nonatomic, assign) NSInteger order;

@end
