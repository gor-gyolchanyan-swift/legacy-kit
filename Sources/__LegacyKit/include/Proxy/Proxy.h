//
// Introductory information can be found in the `README.md` file located at the root of the repository that contains this file.
// Licensing information can be found in the `LICENSE` file located at the root of the repository that contains this file.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

NS_REFINED_FOR_SWIFT
__attribute__((__objc_runtime_name__("__LegacyKit_Proxy")))
@interface Proxy: NSProxy

    #pragma mark Proxy

    - (instancetype)init;

    @property (nonatomic, readonly) id staticObject NS_REFINED_FOR_SWIFT;
@end

NS_ASSUME_NONNULL_END
