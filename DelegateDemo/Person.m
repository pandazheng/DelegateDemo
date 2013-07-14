//
//  Person.m
//  DelegateDemo
//
//  Created by panda zheng on 13-7-14.
//  Copyright (c) 2013年 panda zheng. All rights reserved.
//

#import "Person.h"

@interface Person()

- (void) startFindApartment: (NSTimer *)timer;

@end

@implementation Person

@synthesize name = _name;
@synthesize delegate = _delegate;

- (id) initWithName:(NSString *)name withDelegate:(id<FindApartment>)delegate1
{
    self = [super init];
    if (self)
    {
        self.name = name;
        self.delegate = delegate1;  //设置代理
    }
    
    return self;
}

- (void) wantToFindApartment
{
    [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(startFindApartment:) userInfo:@"heihei" repeats:YES];
}

- (void) startFindApartment:(NSTimer *)timer
{    
    if ([self.delegate respondsToSelector:@selector(findApartment:)])
    {
        rent = [self.delegate findApartment:self];
    }
    
    if (rent == kHightRent)
    {
        NSLog(@"%@ 说太贵了，麻烦你们在找找",self.name);
    }else if (rent == kMiddleRent)
    {
        NSLog(@"%@ 说还是太贵了，麻烦你们在找找",self.name);
    }else
    {
        NSLog(@"%@ 说就要这套公寓了",self.name);
        [timer invalidate];
    }
    printf("\n");
}

@end
