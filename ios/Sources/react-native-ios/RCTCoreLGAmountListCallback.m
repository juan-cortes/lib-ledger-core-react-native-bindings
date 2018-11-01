// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from callback.djinni

#import "RCTCoreLGAmountListCallback.h"


@implementation RCTCoreLGAmountListCallback
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
 * @params result optional of type list<T>, non null if main task failed
 * @params error optional of type Error, non null if main task succeeded
 */
- (void)onCallback:(nullable NSArray<LGAmount *> *)result
             error:(nullable LGError *)error {
    if (error)
    {
        self.reject(@"RCTCoreLGAmountListCallback Error", error.message, nil);
        return;
    }

    NSMutableArray *converted_result = [[NSMutableArray alloc] init];
    for (id result_elem in result)
    {
        NSString *result_elem_uuid = [[NSUUID UUID] UUIDString];
        RCTCoreLGAmount *rctImpl_result_elem = (RCTCoreLGAmount *)[self.bridge moduleForName:@"CoreLGAmount"];
        [rctImpl_result_elem.objcImplementations setObject:result_elem forKey:result_elem_uuid];
        NSDictionary *converted_result_elem = @{@"type" : @"CoreLGAmount", @"uid" : result_elem_uuid };
        [converted_result addObject:converted_result_elem];
    }

    self.resolve(converted_result);

}
@end
