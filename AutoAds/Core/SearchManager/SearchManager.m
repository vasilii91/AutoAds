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
        }
    }
    
    return _sharedMySingleton;
}


#pragma mark - Private methods

- (NSArray *)categoriesByRubric:(NSString *)rubric subrubric:(NSString *)subrubric
{
    
    return nil;
}

- (void)fillGroups
{
    
}

- (AdvGroup *)fillGeneralGroup
{
    AdvGroup *group = [AdvGroup new];
    group.name = @"Общие поля";
    group.type = GroupTypeGeneral;
    
    NSMutableArray *fields = [NSMutableArray new];
    
    AdvField *field = [AdvField new];
    field.name = @"";
    field.value = RubricTypeMotors;
    
    
    
    group.fields = fields;
    
    return group;
}
@end
