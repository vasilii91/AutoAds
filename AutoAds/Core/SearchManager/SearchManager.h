//
//  SearchManager.h
//  AutoAds
//
//  Created by Vasilii Kasnitski on 9/6/12.
//  Copyright (c) 2012 Kyr Dunenkoff. All rights reserved.
//

#import <Foundation/Foundation.h>

enum
{
    RubricTypeMotors
};
typedef NSUInteger RubricType;

@interface SearchManager : NSObject

- (NSArray *)categoriesByRubric:(NSString *)rubric subrubric:(NSString *)subrubric;

@end
