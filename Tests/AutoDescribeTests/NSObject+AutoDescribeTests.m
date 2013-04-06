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



@interface TestPersonChild : TestPerson

@property (nonatomic, strong) NSString *nickName;

@end

@implementation TestPersonChild

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

-(void)test1 {
    TestPersonChild *person = [TestPersonChild new];
    person.firstName = @"John";
    person.lastName = @"Doe Junior";
    person.age = [NSNumber numberWithFloat:5.55];
    person.nickName = @"JDJ";
    NSString *actual = [person autoDescribe];
    NSString *expected = @"nickName=JDJ\nfirstName=John\nlastName=Doe Junior\nage=5.55";
    STAssertEqualObjects(actual, expected, nil);
}

@end
