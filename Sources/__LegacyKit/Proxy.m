//
// Introductory information can be found in the `README.md` file located at the root of the repository that contains this file.
// Licensing information can be found in the `LICENSE` file located at the root of the repository that contains this file.
//

#import "Proxy/Proxy.h"

NS_ASSUME_NONNULL_BEGIN

@implementation Proxy

    #pragma mark Proxy

    - (instancetype)init {
        return self;
    }

    - (id)staticObject {
        [[NSException exceptionWithName:NSInternalInconsistencyException reason:@"execution has reached a routine that was supposed to be overriden" userInfo:nil] raise];
    }

@end

@implementation Proxy (NSProxy)

    #pragma mark NSProxy

    - (void)forwardInvocation:(NSInvocation *)invocation {
        [invocation setTarget:[self staticObject]];
        [invocation invoke];
        return;
    }

    - (NSMethodSignature *_Nullable)methodSignatureForSelector:(SEL)selector {
        return [[self staticObject] methodSignatureForSelector:selector];
    }

@end

NS_ASSUME_NONNULL_END
