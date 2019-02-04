// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from callback.djinni

#import "RCTCoreLGErrorCodeCallback.h"


@implementation RCTCoreLGErrorCodeCallback
-(instancetype)initWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock) reject andBridge: (RCTBridge *) bridge
{
    self = [super init];
    if(self)
    {
        self.resolve = resolve;
        self.reject = reject;
        self.bridge = bridge;
    }
    return self;
}

/**
 * Method triggered when main task complete.
 * @params result optional of type T, non null if main task failed
 * @params error optional of type Error, non null if main task succeeded
 */
- (void)onCallback:(nullable NSNumber *)result
             error:(nullable LGError *)error {
    if (error)
    {
        self.reject(@"RCTCoreLGErrorCodeCallback Error", error.message, nil);
        return;
    }


    NSDictionary *callbackResult = @{@"value" : result};
    self.resolve(callbackResult);

}
@end
