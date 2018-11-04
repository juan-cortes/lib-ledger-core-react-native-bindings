// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from bitcoin_script.djinni

#import "RCTCoreLGBitcoinLikeScriptChunk.h"


@implementation RCTCoreLGBitcoinLikeScriptChunk
//Export module
RCT_EXPORT_MODULE(RCTCoreLGBitcoinLikeScriptChunk)

@synthesize bridge = _bridge;

-(instancetype)init
{
    self = [super init];
    //Init Objc implementation
    if(self)
    {
        self.objcImplementations = [[NSMutableDictionary alloc] init];
    }
    return self;
}

+ (BOOL)requiresMainQueueSetup
{
    return NO;
}
RCT_REMAP_METHOD(release, release:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeScriptChunk::release, first argument should be an instance of LGBitcoinLikeScriptChunk", nil);
        return;
    }
    [self.objcImplementations removeObjectForKey:currentInstance[@"uid"]];
    resolve(@(YES));
}
RCT_REMAP_METHOD(log, logWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    NSMutableArray *uuids = [[NSMutableArray alloc] init];
    for (id key in self.objcImplementations)
    {
        [uuids addObject:key];
    }
    NSDictionary *result = @{@"value" : uuids};
    resolve(result);
}
RCT_REMAP_METHOD(flush, flushWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
{
    [self.objcImplementations removeAllObjects];
    resolve(@(YES));
}

RCT_REMAP_METHOD(isOperator,isOperator:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeScriptChunk::isOperator, first argument should be an instance of LGBitcoinLikeScriptChunk", nil);
        return;
    }
    LGBitcoinLikeScriptChunk *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeScriptChunk::isOperator, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    BOOL objcResult = [currentInstanceObj isOperator];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeScriptChunk::isOperator", nil);
        return;
    }

}

RCT_REMAP_METHOD(isPushedData,isPushedData:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeScriptChunk::isPushedData, first argument should be an instance of LGBitcoinLikeScriptChunk", nil);
        return;
    }
    LGBitcoinLikeScriptChunk *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeScriptChunk::isPushedData, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    BOOL objcResult = [currentInstanceObj isPushedData];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeScriptChunk::isPushedData", nil);
        return;
    }

}

RCT_REMAP_METHOD(getOperator,getOperator:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeScriptChunk::getOperator, first argument should be an instance of LGBitcoinLikeScriptChunk", nil);
        return;
    }
    LGBitcoinLikeScriptChunk *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeScriptChunk::getOperator, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGBitcoinLikeOperator * objcResult = [currentInstanceObj getOperator];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGBitcoinLikeOperator *rctImpl_objcResult = (RCTCoreLGBitcoinLikeOperator *)[self.bridge moduleForName:@"CoreLGBitcoinLikeOperator"];
    [rctImpl_objcResult.objcImplementations setObject:objcResult forKey:objcResult_uuid];
    NSDictionary *result = @{@"type" : @"CoreLGBitcoinLikeOperator", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeScriptChunk::getOperator", nil);
        return;
    }

}

RCT_REMAP_METHOD(getPushedData,getPushedData:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeScriptChunk::getPushedData, first argument should be an instance of LGBitcoinLikeScriptChunk", nil);
        return;
    }
    LGBitcoinLikeScriptChunk *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeScriptChunk::getPushedData, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSData * objcResult = [currentInstanceObj getPushedData];
    NSDictionary *result = @{@"value" : objcResult.description};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeScriptChunk::getPushedData", nil);
        return;
    }

}

RCT_REMAP_METHOD(next,next:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeScriptChunk::next, first argument should be an instance of LGBitcoinLikeScriptChunk", nil);
        return;
    }
    LGBitcoinLikeScriptChunk *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeScriptChunk::next, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGBitcoinLikeScriptChunk * objcResult = [currentInstanceObj next];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGBitcoinLikeScriptChunk *rctImpl_objcResult = (RCTCoreLGBitcoinLikeScriptChunk *)[self.bridge moduleForName:@"CoreLGBitcoinLikeScriptChunk"];
    [rctImpl_objcResult.objcImplementations setObject:objcResult forKey:objcResult_uuid];
    NSDictionary *result = @{@"type" : @"CoreLGBitcoinLikeScriptChunk", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeScriptChunk::next", nil);
        return;
    }

}

RCT_REMAP_METHOD(hasNext,hasNext:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeScriptChunk::hasNext, first argument should be an instance of LGBitcoinLikeScriptChunk", nil);
        return;
    }
    LGBitcoinLikeScriptChunk *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeScriptChunk::hasNext, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    BOOL objcResult = [currentInstanceObj hasNext];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeScriptChunk::hasNext", nil);
        return;
    }

}
@end
