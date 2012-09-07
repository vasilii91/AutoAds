//
//  SearchManager.h
//  AutoAds
//
//  Created by Vasilii Kasnitski on 9/6/12.
//  Copyright (c) 2012 Kyr Dunenkoff. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdvField.h"
#import "AdvGroup.h"

@interface SearchManager : NSObject
{
    NSMutableArray *groups;
}

- (NSArray *)categoriesByRubric:(NSString *)rubric subrubric:(NSString *)subrubric;

@end
