// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from bitcoin_like_wallet.djinni

#import "RCTCoreLGBitcoinLikeTransaction.h"


@implementation RCTCoreLGBitcoinLikeTransaction
//Export module
RCT_EXPORT_MODULE(RCTCoreLGBitcoinLikeTransaction)

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
-(NSData *) hexStringToData: (NSString *)hexString 
{
    NSMutableData *data= [[NSMutableData alloc] init];
    unsigned char byte;
    char byteChars[3] = {'\0','\0','\0'};
    for (int i = 0; i < ([hexString length] / 2); i++)
    {
        byteChars[0] = [hexString characterAtIndex: i*2];
        byteChars[1] = [hexString characterAtIndex: i*2 + 1];
        byte = strtol(byteChars, NULL, 16);
        [data appendBytes:&byte length:1];
    }
    return data;
}
-(NSString *) dataToHexString: (NSData *)data 
{
    const unsigned char *bytes = (const unsigned char *)data.bytes;
    NSMutableString *hex = [NSMutableString new];
    for (NSInteger i = 0; i < data.length; i++)
    {
        [hex appendFormat:@"%02x", bytes[i]];
    }
    return [hex copy];
}

/** Get the hash of the transaction. */
RCT_REMAP_METHOD(getHash,getHash:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeTransaction::getHash, first argument should be an instance of LGBitcoinLikeTransaction", nil);
        return;
    }
    LGBitcoinLikeTransaction *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeTransaction::getHash, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSString * objcResult = [currentInstanceObj getHash];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeTransaction::getHash", nil);
        return;
    }

}

/** Get the input of the transaction. */
RCT_REMAP_METHOD(getInputs,getInputs:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeTransaction::getInputs, first argument should be an instance of LGBitcoinLikeTransaction", nil);
        return;
    }
    LGBitcoinLikeTransaction *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeTransaction::getInputs, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSArray<LGBitcoinLikeInput *> * objcResult = [currentInstanceObj getInputs];

    NSMutableArray *result = [[NSMutableArray alloc] init];
    for (id objcResult_elem in objcResult)
    {
        NSString *objcResult_elem_uuid = [[NSUUID UUID] UUIDString];
        RCTCoreLGBitcoinLikeInput *rctImpl_objcResult_elem = (RCTCoreLGBitcoinLikeInput *)[self.bridge moduleForName:@"CoreLGBitcoinLikeInput"];
        NSArray *objcResult_elem_array = [[NSArray alloc] initWithObjects:objcResult_elem, objcResult_elem_uuid, nil];
        [rctImpl_objcResult_elem baseSetObject:objcResult_elem_array];
        NSDictionary *result_elem = @{@"type" : @"CoreLGBitcoinLikeInput", @"uid" : objcResult_elem_uuid };
        [result addObject:result_elem];
    }

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeTransaction::getInputs", nil);
        return;
    }

}

/** Get the output of the transaction. */
RCT_REMAP_METHOD(getOutputs,getOutputs:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeTransaction::getOutputs, first argument should be an instance of LGBitcoinLikeTransaction", nil);
        return;
    }
    LGBitcoinLikeTransaction *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeTransaction::getOutputs, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSArray<LGBitcoinLikeOutput *> * objcResult = [currentInstanceObj getOutputs];

    NSMutableArray *result = [[NSMutableArray alloc] init];
    for (id objcResult_elem in objcResult)
    {
        NSString *objcResult_elem_uuid = [[NSUUID UUID] UUIDString];
        RCTCoreLGBitcoinLikeOutput *rctImpl_objcResult_elem = (RCTCoreLGBitcoinLikeOutput *)[self.bridge moduleForName:@"CoreLGBitcoinLikeOutput"];
        NSArray *objcResult_elem_array = [[NSArray alloc] initWithObjects:objcResult_elem, objcResult_elem_uuid, nil];
        [rctImpl_objcResult_elem baseSetObject:objcResult_elem_array];
        NSDictionary *result_elem = @{@"type" : @"CoreLGBitcoinLikeOutput", @"uid" : objcResult_elem_uuid };
        [result addObject:result_elem];
    }

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeTransaction::getOutputs", nil);
        return;
    }

}

/** Get the block in which the transaction is inserted if the transaction is confirmed. */
RCT_REMAP_METHOD(getBlock,getBlock:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeTransaction::getBlock, first argument should be an instance of LGBitcoinLikeTransaction", nil);
        return;
    }
    LGBitcoinLikeTransaction *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeTransaction::getBlock, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGBitcoinLikeBlock * objcResult = [currentInstanceObj getBlock];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGBitcoinLikeBlock *rctImpl_objcResult = (RCTCoreLGBitcoinLikeBlock *)[self.bridge moduleForName:@"CoreLGBitcoinLikeBlock"];
    if (objcResult)
    {
        NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
        [rctImpl_objcResult baseSetObject:objcResult_array];
    }
    NSDictionary *result = @{@"type" : @"CoreLGBitcoinLikeBlock", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeTransaction::getBlock", nil);
        return;
    }

}

/** Get the lock time of the transaction. */
RCT_REMAP_METHOD(getLockTime,getLockTime:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeTransaction::getLockTime, first argument should be an instance of LGBitcoinLikeTransaction", nil);
        return;
    }
    LGBitcoinLikeTransaction *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeTransaction::getLockTime, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSInteger objcResult = [currentInstanceObj getLockTime];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeTransaction::getLockTime", nil);
        return;
    }

}

/** Get the amount of fees of the transaction. */
RCT_REMAP_METHOD(getFees,getFees:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeTransaction::getFees, first argument should be an instance of LGBitcoinLikeTransaction", nil);
        return;
    }
    LGBitcoinLikeTransaction *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeTransaction::getFees, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGAmount * objcResult = [currentInstanceObj getFees];

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
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeTransaction::getFees", nil);
        return;
    }

}

/**
 * Get the time when the transaction was issued or the time of the block including
 * this transaction.
 */
RCT_REMAP_METHOD(getTime,getTime:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeTransaction::getTime, first argument should be an instance of LGBitcoinLikeTransaction", nil);
        return;
    }
    LGBitcoinLikeTransaction *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeTransaction::getTime, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSDate * objcResult = [currentInstanceObj getTime];
    NSISO8601DateFormatter *dateFormatter = [[NSISO8601DateFormatter alloc] init];
    NSString *objcResultDate = [dateFormatter stringFromDate:objcResult];
    NSDictionary *result = @{@"value" : objcResultDate};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeTransaction::getTime", nil);
        return;
    }

}

/** Get the timestamps serialized in the raw transaction if the underlying currency handles it. */
RCT_REMAP_METHOD(getTimestamp,getTimestamp:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeTransaction::getTimestamp, first argument should be an instance of LGBitcoinLikeTransaction", nil);
        return;
    }
    LGBitcoinLikeTransaction *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeTransaction::getTimestamp, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSNumber * objcResult = [currentInstanceObj getTimestamp];
    NSDictionary *result = @{@"value" : @([objcResult intValue])};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeTransaction::getTimestamp", nil);
        return;
    }

}

/** Get Transaction version. */
RCT_REMAP_METHOD(getVersion,getVersion:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeTransaction::getVersion, first argument should be an instance of LGBitcoinLikeTransaction", nil);
        return;
    }
    LGBitcoinLikeTransaction *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeTransaction::getVersion, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSInteger objcResult = [currentInstanceObj getVersion];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeTransaction::getVersion", nil);
        return;
    }

}

/** Serialize the transaction to its raw format. */
RCT_REMAP_METHOD(serialize,serialize:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeTransaction::serialize, first argument should be an instance of LGBitcoinLikeTransaction", nil);
        return;
    }
    LGBitcoinLikeTransaction *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeTransaction::serialize, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSData * objcResult = [currentInstanceObj serialize];
    NSString *objcResultData = [self dataToHexString:objcResult];
    NSDictionary *result = @{@"value" : objcResultData};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeTransaction::serialize", nil);
        return;
    }

}

/** Serialize outputs of the raw transaction into a byte array using the bitcoin transaction format. */
RCT_REMAP_METHOD(serializeOutputs,serializeOutputs:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeTransaction::serializeOutputs, first argument should be an instance of LGBitcoinLikeTransaction", nil);
        return;
    }
    LGBitcoinLikeTransaction *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeTransaction::serializeOutputs, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSData * objcResult = [currentInstanceObj serializeOutputs];
    NSString *objcResultData = [self dataToHexString:objcResult];
    NSDictionary *result = @{@"value" : objcResultData};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeTransaction::serializeOutputs", nil);
        return;
    }

}

/** Get the witness if the underlying transaction is a segwit transaction. */
RCT_REMAP_METHOD(getWitness,getWitness:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeTransaction::getWitness, first argument should be an instance of LGBitcoinLikeTransaction", nil);
        return;
    }
    LGBitcoinLikeTransaction *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeTransaction::getWitness, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSData * objcResult = [currentInstanceObj getWitness];
    NSString *objcResultData = [self dataToHexString:objcResult];
    NSDictionary *result = @{@"value" : objcResultData};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeTransaction::getWitness", nil);
        return;
    }

}

/**
 * Estimate the size of the raw transaction in bytes. This method returns a minimum estimated size and a maximum estimated
 * size.
 */
RCT_REMAP_METHOD(getEstimatedSize,getEstimatedSize:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeTransaction::getEstimatedSize, first argument should be an instance of LGBitcoinLikeTransaction", nil);
        return;
    }
    LGBitcoinLikeTransaction *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeTransaction::getEstimatedSize, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGEstimatedSize * objcResult = [currentInstanceObj getEstimatedSize];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGEstimatedSize *rctImpl_objcResult = (RCTCoreLGEstimatedSize *)[self.bridge moduleForName:@"CoreLGEstimatedSize"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGEstimatedSize", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeTransaction::getEstimatedSize", nil);
        return;
    }

}

/**
 * Sign all inputs for given transaction. 
 * Build DER encoded signature from RSV data.
 * @return SIGNING_SUCCEED if succeed case else refers to BitcoinLikeSignatureState enumeration
 */
RCT_REMAP_METHOD(setSignatures,setSignatures:(NSDictionary *)currentInstance withParams:(NSArray <NSDictionary *> *)signatures
                                                                               override:(BOOL)override withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeTransaction::setSignatures, first argument should be an instance of LGBitcoinLikeTransaction", nil);
        return;
    }
    LGBitcoinLikeTransaction *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeTransaction::setSignatures, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSMutableArray *objcParam_0 = [[NSMutableArray alloc] init];

    for (id signatures_elem in signatures)
    {
        RCTCoreLGBitcoinLikeSignature *rctParam_signatures_elem = (RCTCoreLGBitcoinLikeSignature *)[self.bridge moduleForName:@"CoreLGBitcoinLikeSignature"];
        LGBitcoinLikeSignature *objcParam_0_elem = (LGBitcoinLikeSignature *)[rctParam_signatures_elem.objcImplementations objectForKey:signatures_elem[@"uid"]];
        [objcParam_0 addObject:objcParam_0_elem];

    }
    LGBitcoinLikeSignatureState objcResult = [currentInstanceObj setSignatures:objcParam_0 override:override];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeTransaction::setSignatures", nil);
        return;
    }

}

/**
 * Sign all inputs for given transaction. 
 * @return SIGNING_SUCCEED if succeed case else refers to BitcoinLikeSignatureState enumeration
 */
RCT_REMAP_METHOD(setDERSignatures,setDERSignatures:(NSDictionary *)currentInstance withParams:(NSArray<NSString *> *)signatures
                                                                                     override:(BOOL)override withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGBitcoinLikeTransaction::setDERSignatures, first argument should be an instance of LGBitcoinLikeTransaction", nil);
        return;
    }
    LGBitcoinLikeTransaction *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGBitcoinLikeTransaction::setDERSignatures, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSMutableArray *objcParam_0 = [[NSMutableArray alloc] init];

    for (id signatures_elem in signatures)
    {
        NSData *objcParam_0_elem = [self hexStringToData:signatures_elem];

        [objcParam_0 addObject:objcParam_0_elem];

    }
    LGBitcoinLikeSignatureState objcResult = [currentInstanceObj setDERSignatures:objcParam_0 override:override];
    NSDictionary *result = @{@"value" : @(objcResult)};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGBitcoinLikeTransaction::setDERSignatures", nil);
        return;
    }

}
@end
