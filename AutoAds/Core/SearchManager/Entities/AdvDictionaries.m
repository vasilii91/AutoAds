//
//  AdvDictionaries.m
//  AutoAds
//
//  Created by Vasilii Kasnitski on 9/9/12.
//  Copyright (c) 2012 Kyr Dunenkoff. All rights reserved.
//

#import "AdvDictionaries.h"

@implementation AdvDictionaries

+ (NSDictionary *)AdPeriods
{
    OrderedDictionary *dictionary = [OrderedDictionary new];
    [dictionary setValue:@"0" forKey:@"2 недели"];
    [dictionary setValue:@"1" forKey:@"4 недели"];
    [dictionary setValue:@"2" forKey:@"6 недели"];
    [dictionary setValue:@"3" forKey:@"8 недели"];
    
    return dictionary;
}

+ (NSDictionary *)Bools
{
    OrderedDictionary *dictionary = [OrderedDictionary new];
    [dictionary setValue:@"0" forKey:@"Да"];
    [dictionary setValue:@"1" forKey:@"Нет"];
    
    return dictionary;
}

+ (NSDictionary *)Cities2
{
    OrderedDictionary *dictionary = [OrderedDictionary new];
    [dictionary setValue:@"00100101u0000010000000" forKey:@"Екатеринбург"];
    [dictionary setValue:@"10010220000090000000" forKey:@"Магнитогорск"];
    [dictionary setValue:@"10010250000000000000" forKey:@"Москва"];
    [dictionary setValue:@"10010020000040000000" forKey:@"Октябрьский"];
    [dictionary setValue:@"10010020000050000000" forKey:@"Салават"];
    [dictionary setValue:@"10010020160010000000" forKey:@"Стерлитакам"];
    [dictionary setValue:@"10010020180010000000" forKey:@"Туймазы"];
    [dictionary setValue:@"10010020010010000000" forKey:@"Уфа"];
    [dictionary setValue:@"10010220000010000000" forKey:@"Челябинск"];
    
    
    return dictionary;
}

+ (NSDictionary *)Cities16
{
    OrderedDictionary *dictionary = [OrderedDictionary new];
    [dictionary setValue:@"00100100g0080010000000" forKey:@"Альметьевск"];
    [dictionary setValue:@"00100100g00e0010000000" forKey:@"Бугульма"];
    [dictionary setValue:@"00100100g00j0010000000" forKey:@"Елабуга"];
    [dictionary setValue:@"00100100g00l0010000000" forKey:@"Зеленодольск"];
    [dictionary setValue:@"00100100g0000010000000" forKey:@"Казань"];
    [dictionary setValue:@"10010250000000000000" forKey:@"Москва"];
    [dictionary setValue:@"00100100g0140010000000" forKey:@"Набережные Челны"];
    [dictionary setValue:@"00100100g00v0010000000" forKey:@"Нижнекамск"];
    [dictionary setValue:@"00100100g00v0010000000" forKey:@"Челябинск"];
    
    return dictionary;
}

+ (NSDictionary *)Cities29
{
    OrderedDictionary *dictionary = [OrderedDictionary new];
    [dictionary setValue:@"00100100t0000010000000" forKey:@"Архангельск"];
    [dictionary setValue:@"00100100t0020010000000" forKey:@"Вельск"];
    [dictionary setValue:@"00100100t0000050000000" forKey:@"Коряжма"];
    [dictionary setValue:@"00100100t0080010000000" forKey:@"Котлас"];
    [dictionary setValue:@"00100100t0000020000000" forKey:@"Мирный"];
    [dictionary setValue:@"00100100t0000030000000" forKey:@"Новодвинск"];
    [dictionary setValue:@"00100100t00e0010000000" forKey:@"Онега"];
    [dictionary setValue:@"00100100t00g0000010000" forKey:@"Плесецк"];
    [dictionary setValue:@"00100100t0000040000000" forKey:@"Северодвинск"];
    
    return dictionary;
}

+ (NSDictionary *)Cities34
{
    OrderedDictionary *dictionary = [OrderedDictionary new];
    [dictionary setValue:@"00100100y0000010000000" forKey:@"Волгоград"];
    [dictionary setValue:@"00100100y0000020000000" forKey:@"Волжский"];
    [dictionary setValue:@"00100100y0080010000000" forKey:@"Жирновск"];
    [dictionary setValue:@"00100100y00b0010000000" forKey:@"Камышин"];
    [dictionary setValue:@"00100100n0000010000000" forKey:@"Краснодар"];
    [dictionary setValue:@"00100100y00i0010000000" forKey:@"Михайловка"];
    [dictionary setValue:@"10010250000000000000" forKey:@"Москва"];
    [dictionary setValue:@"00100100y00v0010000000" forKey:@"Урюпинск"];
    [dictionary setValue:@"00100100y00w0010000000" forKey:@"Фролово"];
    
    return dictionary;
}


@end
