// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from bitcoin_like_wallet.djinni

#import "RCTCoreLGBitcoinLikeOutput.h"


@implementation RCTCoreLGBitcoinLikeOutput
//Export module
RCT_EXPORT_MODULE(RCTCoreLGBitcoinLikeOutput)

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

/**
 * Get transaction hash in which output was 'created'.
 * @return String, transaction hash containing output
 */
RCT_REMAP_METHOD(getTransactionHash,getTransactionHash:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeOutput::getTransactionHash, first argument should be an instance of LGBitcoinLikeOutput", nil);
        return;
    }
    LGBitcoinLikeOutput *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeOutput::getTransactionHash, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSString * objcResult = [currentInstanceObj getTransactionHash];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeOutput::getTransactionHash", nil);
        return;
    }

}

/**
 * Get index of output in list of all outputs contained in same transaction.
 * @return 32 bits integer, index of output
 */
RCT_REMAP_METHOD(getOutputIndex,getOutputIndex:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeOutput::getOutputIndex, first argument should be an instance of LGBitcoinLikeOutput", nil);
        return;
    }
    LGBitcoinLikeOutput *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeOutput::getOutputIndex, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSInteger objcResult = [currentInstanceObj getOutputIndex];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeOutput::getOutputIndex", nil);
        return;
    }

}

/**
 * Get amount of output.
 * @return Amount object, amount of output
 */
RCT_REMAP_METHOD(getValue,getValue:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeOutput::getValue, first argument should be an instance of LGBitcoinLikeOutput", nil);
        return;
    }
    LGBitcoinLikeOutput *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeOutput::getValue, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGAmount * objcResult = [currentInstanceObj getValue];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGAmount *rctImpl_objcResult = (RCTCoreLGAmount *)[self.bridge moduleForName:@"CoreLGAmount"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGAmount", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeOutput::getValue", nil);
        return;
    }

}

/**
 * Get script (witness script) cryptographic puzzle that determines the conditions to spend the output.
 * @return in Bytes (variable size depending on type of script P2PKH, P2SH), locking script to spend UTXO
 */
RCT_REMAP_METHOD(getScript,getScript:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeOutput::getScript, first argument should be an instance of LGBitcoinLikeOutput", nil);
        return;
    }
    LGBitcoinLikeOutput *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeOutput::getScript, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSData * objcResult = [currentInstanceObj getScript];
    NSDictionary *result = @{@"value" : objcResult.description};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeOutput::getScript", nil);
        return;
    }

}

RCT_REMAP_METHOD(parseScript,parseScript:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeOutput::parseScript, first argument should be an instance of LGBitcoinLikeOutput", nil);
        return;
    }
    LGBitcoinLikeOutput *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeOutput::parseScript, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGBitcoinLikeScript * objcResult = [currentInstanceObj parseScript];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGBitcoinLikeScript *rctImpl_objcResult = (RCTCoreLGBitcoinLikeScript *)[self.bridge moduleForName:@"CoreLGBitcoinLikeScript"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGBitcoinLikeScript", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeOutput::parseScript", nil);
        return;
    }

}

/**
 * Get address that spent the output.
 * @return Optional String, address that spent
 */
RCT_REMAP_METHOD(getAddress,getAddress:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeOutput::getAddress, first argument should be an instance of LGBitcoinLikeOutput", nil);
        return;
    }
    LGBitcoinLikeOutput *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeOutput::getAddress, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSString * objcResult = [currentInstanceObj getAddress];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeOutput::getAddress", nil);
        return;
    }

}

RCT_REMAP_METHOD(getDerivationPath,getDerivationPath:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeOutput::getDerivationPath, first argument should be an instance of LGBitcoinLikeOutput", nil);
        return;
    }
    LGBitcoinLikeOutput *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeOutput::getDerivationPath, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGDerivationPath * objcResult = [currentInstanceObj getDerivationPath];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGDerivationPath *rctImpl_objcResult = (RCTCoreLGDerivationPath *)[self.bridge moduleForName:@"CoreLGDerivationPath"];
    if (objcResult)
    {
        NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
        [rctImpl_objcResult baseSetObject:objcResult_array];
    }
    NSDictionary *result = @{@"type" : @"CoreLGDerivationPath", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeOutput::getDerivationPath", nil);
        return;
    }

}
@end
