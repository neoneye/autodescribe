//
//  NSObject+AutoDescribe.m
//  AutoDescribe
//
//  Created by Simon Strandgaard on 10/5/12.
//
//

#import "NSObject+AutoDescribe.h"
#import <objc/runtime.h>

@implementation NSObject (AutoDescribe)

-(NSString *)autoDescribe:(Class)classType
{
    id instance = self;
    
    NSUInteger count;
    objc_property_t *propList = class_copyPropertyList(classType, &count);
    NSMutableString *propPrint = [NSMutableString string];
    
    for ( int i = 0; i < count; i++ )
    {
        if (i > 0) {
            [propPrint appendString:@"\n"];
        }
        
        objc_property_t property = propList[i];
        
        const char *propName = property_getName(property);
        NSString *propNameString =[NSString stringWithCString:propName encoding:NSASCIIStringEncoding];
        
        if(propName)
        {
            @try {
                id value = [instance valueForKey:propNameString];
                [propPrint appendString:[NSString stringWithFormat:@"%@=%@", propNameString, value]];
            }
            @catch (NSException *exception) {
                [propPrint appendString:[NSString stringWithFormat:@"Can't get value for property %@ through KVO", propNameString]];
            }
        }
    }
    free(propList);
    
    
    // Now see if we need to map any superclasses as well.
    Class superClass = class_getSuperclass( classType );
    if ( superClass != nil && ! [superClass isEqual:[NSObject class]] )
    {
        NSString *superString = [instance autoDescribe:superClass];
        [propPrint appendString:@"\n"];
        [propPrint appendString:superString];
    }
    
    return propPrint;
}

-(NSString *)autoDescribe
{
	// Don't try to autoDescribe NSManagedObject subclasses (Core Data does this already)
    if ([self isKindOfClass:NSClassFromString(@"NSManagedObject")]) {
        return [self description];
    }
	
	Class classType = [self class];
    return [self autoDescribe:classType];
}

@end
