// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from callback.djinni

#import "RCTCoreLGCosmosLikeValidatorListCallback.h"


@implementation RCTCoreLGCosmosLikeValidatorListCallback
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
 * @params result optional of type list<T>, non null if main task failed
 * @params error optional of type Error, non null if main task succeeded
 */
- (void)onCallback:(nullable NSArray<LGCosmosLikeValidator *> *)result
             error:(nullable LGError *)error {
    if (error)
    {
        self.reject(@"RCTCoreLGCosmosLikeValidatorListCallback Error", error.message, nil);
        return;
    }

    NSMutableArray *converted_result = [[NSMutableArray alloc] init];
    for (id result_elem in result)
    {
        NSString *result_elem_uuid = [[NSUUID UUID] UUIDString];
        RCTCoreLGCosmosLikeValidator *rctImpl_result_elem = (RCTCoreLGCosmosLikeValidator *)[self.bridge moduleForName:@"CoreLGCosmosLikeValidator"];
        if (result_elem)
        {
            NSArray *result_elem_array = [[NSArray alloc] initWithObjects:result_elem, result_elem_uuid, nil];
            [rctImpl_result_elem baseSetObject:result_elem_array];
        }
        NSDictionary *converted_result_elem = @{@"type" : @"CoreLGCosmosLikeValidator", @"uid" : result_elem_uuid };
        [converted_result addObject:converted_result_elem];
    }

    self.resolve(converted_result);

}
@end
