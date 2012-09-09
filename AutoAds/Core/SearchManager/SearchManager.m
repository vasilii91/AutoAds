//
//  SearchManager.m
//  AutoAds
//
//  Created by Vasilii Kasnitski on 9/6/12.
//  Copyright (c) 2012 Kyr Dunenkoff. All rights reserved.
//

#import "SearchManager.h"

@implementation SearchManager


#pragma mark - Initialization

static SearchManager *_sharedMySingleton = nil;

- (id)init
{
    self = [super init];
    if (self) {
        groups = [NSMutableArray new];
    }
    
    return self;
}

+ (SearchManager *)sharedMySingleton
{
    @synchronized(self)
    {
        if (!_sharedMySingleton) {
            _sharedMySingleton = [[SearchManager alloc] init];
            [_sharedMySingleton fillGroups];
        }
    }
    
    return _sharedMySingleton;
}


#pragma mark - Private methods

- (AdvGroup *)categoriesByRubric:(NSString *)rubric subrubric:(NSString *)subrubric
{
    return [groups objectAtIndex:0];
}

- (void)fillGroups
{
    [groups addObject:[self fillGeneralGroup]];
}

- (AdvGroup *)fillGeneralGroup
{
    AdvGroup *group = [AdvGroup new];
    group.name = @"Общие поля";
    group.type = GroupTypeGeneral;
    
    AdvField *f1 = [AdvField newAdvField:F_PRICE_ENG :F_PRICE_RUS :nil :nil :nil :ValueTypeString :YES :YES :YES :YES :YES :YES];
    
    AdvField *f2 = [AdvField newAdvField:F_BARGAIN_ENG :F_BARGAIN_RUS :[AdvDictionaries Bools] :nil :nil :ValueTypeDictionary :YES :NO :NO :NO :NO :YES];
    AdvField *f3 = [AdvField newAdvField:F_CONTACT_NAME_ENG :F_CONTACT_NAME_RUS :nil :nil :nil :ValueTypeString :YES :YES :NO :NO :NO :YES];
    AdvField *f4 = [AdvField newAdvField:F_CONTACT_PHONE_ENG :F_CONTACT_PHONE_RUS :nil :nil :nil :ValueTypeString :YES :YES :NO :NO :NO :YES];
    AdvField *f5 = [AdvField newAdvField:F_ADDITIONAL_INFO_ENG :F_ADDITIONAL_INFO_RUS :nil :nil :nil :ValueTypeString :YES :NO :NO :NO :NO :NO];
    AdvField *f6 = [AdvField newAdvField:F_PHOTO_ENG :F_PHOTO_RUS :nil :nil :nil :ValueTypePhoto :YES :NO :YES :YES :YES :YES];
    AdvField *f7 = [AdvField newAdvField:F_CITY_ENG :F_CITY_RUS :nil :nil :nil :ValueTypeDictionary :YES :YES :YES :YES :YES :YES];
    
    AdvField *f8 = [AdvField newAdvField:F_PERIOD_ENG :F_PERIOD_RUS :[AdvDictionaries AdPeriods] :V_AD_PERIODS_8_WEEKS_RUS :nil :ValueTypeDictionary :YES :YES :NO :NO :NO :NO];
    AdvField *f9 = [AdvField new]; // непонятно, что делать
    AdvField *f10 = [AdvField newAdvField:F_DATE_ENG :F_DATE_RUS :nil :nil :nil :ValueTypeString :NO :NO :NO :NO :YES :NO];
    
    AdvField *f11 = [AdvField newAdvField:nil :F_IS_RECEIVE_IMMEDIATELY_MESSAGES :[AdvDictionaries Bools] :V_YES_RUS :nil :ValueTypeDictionary :YES :NO :NO :NO :NO :NO];
    AdvField *f12 = [AdvField newAdvField:nil :F_IS_AGREE_WITH_PLACEMENT_RULES :[AdvDictionaries Bools] :V_NO_RUS :nil :ValueTypeDictionary :YES :YES :NO :NO :NO :NO];
    
    NSArray *fields = @[f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12];
    
    group.fields = fields;
    
    return group;
}
@end
