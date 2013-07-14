//
//  Person.h
//  DelegateDemo
//
//  Created by panda zheng on 13-7-14.
//  Copyright (c) 2013年 panda zheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FindApartment.h"

@interface Person : NSObject
{
@private
    NSString *_name;
    id <FindApartment> delegate;
    HouseRent rent;
}

@property (nonatomic,copy) NSString *name;
@property (nonatomic,assign) id <FindApartment> delegate;

- (id) initWithName: (NSString*) name withDelegate: (id <FindApartment>) delegate1;

- (void) wantToFindApartment;

@end
