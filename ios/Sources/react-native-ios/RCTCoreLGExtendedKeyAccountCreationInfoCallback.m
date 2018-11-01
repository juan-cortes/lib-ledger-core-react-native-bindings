// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from callback.djinni

#import "RCTCoreLGExtendedKeyAccountCreationInfoCallback.h"


@implementation RCTCoreLGExtendedKeyAccountCreationInfoCallback
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
 * Method triggered when main task complete
 * @params result optional of type T, non null if main task failed
 * @params error optional of type Error, non null if main task succeeded
 */
- (void)onCallback:(nullable LGExtendedKeyAccountCreationInfo *)result
             error:(nullable LGError *)error {
    if (error)
    {
        self.reject(@"RCTCoreLGExtendedKeyAccountCreationInfoCallback Error", error.message, nil);
        return;
    }

    NSString *result_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGExtendedKeyAccountCreationInfo *rctImpl_result = (RCTCoreLGExtendedKeyAccountCreationInfo *)[self.bridge moduleForName:@"CoreLGExtendedKeyAccountCreationInfo"];
    [rctImpl_result.objcImplementations setObject:result forKey:result_uuid];
    NSDictionary *converted_result = @{@"type" : @"CoreLGExtendedKeyAccountCreationInfo", @"uid" : result_uuid };

    self.resolve(converted_result);

}
@end
