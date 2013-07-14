//
//  main.m
//  DelegateDemo
//
//  Created by panda zheng on 13-7-14.
//  Copyright (c) 2013年 panda zheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Agent.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Agent *agent = [[Agent alloc] init];
        
        Person *jack = [[Person alloc] initWithName:@"Jack" withDelegate:agent];
        
        [jack wantToFindApartment];
        
        BOOL isTure = YES;
        while (isTure)
        {
            NSDate *date = [NSDate date];
            [[NSRunLoop currentRunLoop] runUntilDate:[date dateByAddingTimeInterval:6]];
            isTure = NO;
            NSLog(@"程序退出了");
        }
    }
    return 0;
}

