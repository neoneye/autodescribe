autoDescribe
============

Prints human-readable information about an instance.


Sample code
-----------

	// A class with some properties
	@interface TestPerson : NSObject
	@property (nonatomic, strong) NSString *firstName;
	@property (nonatomic, strong) NSString *lastName;
	@property (nonatomic, strong) NSNumber *age;
	@end

	@implementation TestPerson
	// empty
	@end

	// Create instance of class and invoke autoDescribe
    TestPerson *person = [TestPerson new];
    person.firstName = @"John";
    person.lastName = @"Doe";
    person.age = [NSNumber numberWithFloat:33.33];
	NSLog(@"%@", [person autoDescribe]);

Output from sample code
-----------------------

	firstName=John
	lastName=Doe
	age=33.3
