// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from wallet.djinni

#import "RCTCoreLGCosmosLikeRedelegation.h"


@implementation RCTCoreLGCosmosLikeRedelegation
//Export module
RCT_EXPORT_MODULE(RCTCoreLGCosmosLikeRedelegation)

@synthesize bridge = _bridge;


+ (BOOL)requiresMainQueueSetup
{
    return NO;
}
RCT_REMAP_METHOD(release, release:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    [self baseRelease:currentInstance withResolver: resolve rejecter:reject];
}
RCT_REMAP_METHOD(log, logWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    [self baseLogWithResolver:resolve rejecter:reject];
}
RCT_REMAP_METHOD(flush, flushWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    [self baseFlushWithResolver:resolve rejecter:reject];
}
RCT_REMAP_METHOD(isNull, isNull:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    [self baseIsNull:currentInstance withResolver:resolve rejecter:reject];
}

RCT_REMAP_METHOD(getDelegatorAddress,getDelegatorAddress:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGCosmosLikeRedelegation::getDelegatorAddress, first argument should be an instance of LGCosmosLikeRedelegation", nil);
        return;
    }
    LGCosmosLikeRedelegation *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGCosmosLikeRedelegation::getDelegatorAddress, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSString * objcResult = [currentInstanceObj getDelegatorAddress];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGCosmosLikeRedelegation::getDelegatorAddress", nil);
        return;
    }

}

RCT_REMAP_METHOD(getSrcValidatorAddress,getSrcValidatorAddress:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGCosmosLikeRedelegation::getSrcValidatorAddress, first argument should be an instance of LGCosmosLikeRedelegation", nil);
        return;
    }
    LGCosmosLikeRedelegation *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGCosmosLikeRedelegation::getSrcValidatorAddress, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSString * objcResult = [currentInstanceObj getSrcValidatorAddress];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGCosmosLikeRedelegation::getSrcValidatorAddress", nil);
        return;
    }

}

RCT_REMAP_METHOD(getDstValidatorAddress,getDstValidatorAddress:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGCosmosLikeRedelegation::getDstValidatorAddress, first argument should be an instance of LGCosmosLikeRedelegation", nil);
        return;
    }
    LGCosmosLikeRedelegation *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGCosmosLikeRedelegation::getDstValidatorAddress, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSString * objcResult = [currentInstanceObj getDstValidatorAddress];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGCosmosLikeRedelegation::getDstValidatorAddress", nil);
        return;
    }

}

RCT_REMAP_METHOD(getEntries,getEntries:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGCosmosLikeRedelegation::getEntries, first argument should be an instance of LGCosmosLikeRedelegation", nil);
        return;
    }
    LGCosmosLikeRedelegation *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGCosmosLikeRedelegation::getEntries, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSArray<LGCosmosLikeRedelegationEntry *> * objcResult = [currentInstanceObj getEntries];

    NSMutableArray *result = [[NSMutableArray alloc] init];
    for (id objcResult_elem in objcResult)
    {
        NSString *objcResult_elem_uuid = [[NSUUID UUID] UUIDString];
        RCTCoreLGCosmosLikeRedelegationEntry *rctImpl_objcResult_elem = (RCTCoreLGCosmosLikeRedelegationEntry *)[self.bridge moduleForName:@"CoreLGCosmosLikeRedelegationEntry"];
        NSArray *objcResult_elem_array = [[NSArray alloc] initWithObjects:objcResult_elem, objcResult_elem_uuid, nil];
        [rctImpl_objcResult_elem baseSetObject:objcResult_elem_array];
        NSDictionary *result_elem = @{@"type" : @"CoreLGCosmosLikeRedelegationEntry", @"uid" : objcResult_elem_uuid };
        [result addObject:result_elem];
    }

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGCosmosLikeRedelegation::getEntries", nil);
        return;
    }

}
@end
