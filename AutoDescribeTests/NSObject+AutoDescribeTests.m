//
//  NSObject+AutoDescribeTests.m
//  AutoDescribe
//
//  Created by Simon Strandgaard on 10/5/12.
//
//

#import "NSObject+AutoDescribeTests.h"
#import "NSObject+AutoDescribe.h"

@interface TestPerson : NSObject

@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;
@property (nonatomic, strong) NSNumber *age;

@end

@implementation TestPerson

// empty

@end

@implementation NSObject_AutoDescribeTests

-(void)test0 {
    TestPerson *person = [TestPerson new];
    person.firstName = @"John";
    person.lastName = @"Doe";
    person.age = [NSNumber numberWithFloat:33.33];
    NSString *actual = [person autoDescribe];
    NSString *expected = @"firstName=John\nlastName=Doe\nage=33.33";
    STAssertEqualObjects(actual, expected, nil);
}

@end
