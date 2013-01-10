## About AutoDescribe

Prints human-readable information about an instance.


#### The problem

You pretty print objects using `NSLog(@"firstName: %@ lastName:%@ age: %@", ...)`.
It takes forever to write NSLog. Classes evolves and the properties changes. NSLog's are rarely in sync with the properties.

#### Solution

AutoDescribe is like PHP's vardump and print_r. All properties are pretty printed.


#### Sample code

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

#### Output from sample code

	firstName=John
	lastName=Doe
	age=33.3


## Contact
	
Simon Strandgaard

- https://github.com/neoneye
- https://twitter.com/neoneye
- neoneye@gmail.com


## License

The MIT License (MIT)  
Copyright (c) 2013 Simon Strandgaard

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.