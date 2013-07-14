//
//  Agent.m
//  DelegateDemo
//
//  Created by panda zheng on 13-7-14.
//  Copyright (c) 2013年 panda zheng. All rights reserved.
//

#import "Agent.h"
#import "Person.h"

@implementation Agent

static int count = 1;

- (HouseRent) findApartment :(Person*) person
{
    NSLog(@"find");
    HouseRent rent;
    if (count == 1)
    {
        NSLog(@"中介公司对 %@ 说我们找了一个价格较高的公寓",person.name);
        rent = kHightRent;
    }else if (count == 2)
    {
        NSLog(@"中介公司对 %@ 说我们找了一个价格较中的公寓",person.name);
        rent = kMiddleRent;
    }else
    {
        NSLog(@"中介公司对 %@ 说我们找到一个价格较低的公寓",person.name);
        rent = kLowRent;
    }
    
    count++;
    return rent;
}

@end
