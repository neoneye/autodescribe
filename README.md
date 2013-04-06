# AutoDescribe

Prints human-readable information about an instance.


## The problem

You pretty print objects using `NSLog(@"firstName: %@ lastName:%@ age: %@", ...)`.
It takes forever to write NSLog. Classes evolves and the properties changes. NSLog's are rarely in sync with the properties.

## Solution

AutoDescribe is like PHP's var_dump and print_r. All properties are pretty printed.


### Sample code

```objective-c
#import <AutoDescribe/NSObject+AutoDescribe.h>

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
```

### Output from sample code

	firstName=John
	lastName=Doe
	age=33.3


## Podfile

If your want the latest version, then add this to your `Podfile`

	pod 'AutoDescribe', :git => 'https://github.com/neoneye/autodescribe.git'


## Contact
	
Simon Strandgaard

- https://github.com/neoneye
- https://twitter.com/neoneye
- neoneye@gmail.com


## License

This code is distributed under the terms and conditions of the [MIT license](LICENSE.txt). 


## Change-log

**Version 1.0.0** @ 06.04.2013

- Full cocoapods support.
