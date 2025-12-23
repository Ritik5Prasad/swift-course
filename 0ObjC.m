#import <Foundation/Foundation.h>

@interface MyClass : NSObject
 - (void)instanceHello;
 + (void)classHello;
@end

@implementation MyClass
 - (void)instanceHello { NSLog(@"Instance"); }
 + (void)classHello { NSLog(@"Class"); }
@end


int main(){
    // NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

    // [MyClass classHello];

    // MyClass *obj = [[MyClass alloc] init];
    // [obj instanceHello];

    // [obj release]; 
    // [pool drain];

    @autoreleasepool {
        MyClass *obj = [[MyClass alloc] init];
       [obj instanceHello];
    }

    return 0;
}
