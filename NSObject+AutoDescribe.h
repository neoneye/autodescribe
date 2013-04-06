//
//  NSObject+AutoDescribe.h
//  AutoDescribe
//
//  Created by Simon Strandgaard on 10/5/12.
//
//

#import <Foundation/Foundation.h>

@interface NSObject (AutoDescribe)

/**
 * Prints human-readable information about an instance. Similar to PHPs `var_dump` and `print_r`.
 *
 * Use the `autoDescribe` method to inspect the properties of any object:
 *
 *		MyClass *obj = ...;
 *		NSLog(@"%@", [obj autoDescribe]);
 *
 * @return A string listing all the properties and values.
 */
-(NSString *)autoDescribe;

@end
