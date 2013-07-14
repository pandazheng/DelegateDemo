//
//  FindApartment.h
//  DelegateDemo
//
//  Created by panda zheng on 13-7-14.
//  Copyright (c) 2013年 panda zheng. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Person;

typedef enum
{
    kHightRent = 0,
    kMiddleRent = 1,
    kLowRent = 2
}HouseRent;

@protocol FindApartment <NSObject>

- (HouseRent) findApartment : (Person *) person;


@end
