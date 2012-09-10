//
//  AdvDictionaries.h
//  AutoAds
//
//  Created by Vasilii Kasnitski on 9/9/12.
//  Copyright (c) 2012 Kyr Dunenkoff. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OrderedDictionary.h"

@interface AdvDictionaries : NSObject

+ (NSDictionary *)AdPeriods;
+ (NSDictionary *)Bools;


#pragma mark - Cities

+ (NSDictionary *)Cities2;
+ (NSDictionary *)Cities16;
+ (NSDictionary *)Cities29;
+ (NSDictionary *)Cities34;
+ (NSDictionary *)Cities59;
+ (NSDictionary *)Cities61;
+ (NSDictionary *)Cities63;
+ (NSDictionary *)Cities72;
+ (NSDictionary *)Cities74;
+ (NSDictionary *)Cities76;


#pragma mark - Colors

+ (NSDictionary *)WheelColors;
+ (NSDictionary *)VehicleColors;


#pragma mark - BodyTypes

+ (NSDictionary *)BodyTypesRusForeign;
+ (NSDictionary *)BodyTypesBuses;
+ (NSDictionary *)BodyTypesTrucks;
+ (NSDictionary *)BodyTypesSmall;
+ (NSDictionary *)BodyTypesTrailers;
+ (NSDictionary *)BodyTypesSpecial;
+ (NSDictionary *)BodyTypesBikes;


#pragma mark - DriveTypes

+ (NSDictionary *)DriveTypesRusForeign;
+ (NSDictionary *)DriveTypesBusesSmallSpecial;
+ (NSDictionary *)DriveTypesTrucks;


#pragma mark - CabinTypes

+ (NSDictionary *)CabinTypes;


#pragma mark - Other

+ (NSDictionary *)WheelMaterials;
+ (NSDictionary *)SpikesTypes;
+ (NSDictionary *)TiresWidthes;
+ (NSDictionary *)TiresHeights;
+ (NSDictionary *)TiresDiameters;
+ (NSDictionary *)WheelDiameters;
+ (NSDictionary *)WheelSorties;

@end
