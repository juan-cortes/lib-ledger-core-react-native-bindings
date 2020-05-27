// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from addresses.djinni

#import "RCTCoreLGCosmosLikeExtendedPublicKey.h"


@implementation RCTCoreLGCosmosLikeExtendedPublicKey
//Export module
RCT_EXPORT_MODULE(RCTCoreLGCosmosLikeExtendedPublicKey)

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

/** Derive an address from an xPUB and a path. */
RCT_REMAP_METHOD(derive,derive:(NSDictionary *)currentInstance withParams:(nonnull NSString *)path withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGCosmosLikeExtendedPublicKey::derive, first argument should be an instance of LGCosmosLikeExtendedPublicKey", nil);
        return;
    }
    LGCosmosLikeExtendedPublicKey *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGCosmosLikeExtendedPublicKey::derive, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGCosmosLikeAddress * objcResult = [currentInstanceObj derive:path];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGCosmosLikeAddress *rctImpl_objcResult = (RCTCoreLGCosmosLikeAddress *)[self.bridge moduleForName:@"CoreLGCosmosLikeAddress"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGCosmosLikeAddress", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGCosmosLikeExtendedPublicKey::derive", nil);
        return;
    }

}

/** Derive a public key from an xPUB and a path. */
RCT_REMAP_METHOD(derivePublicKey,derivePublicKey:(NSDictionary *)currentInstance withParams:(nonnull NSString *)path withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGCosmosLikeExtendedPublicKey::derivePublicKey, first argument should be an instance of LGCosmosLikeExtendedPublicKey", nil);
        return;
    }
    LGCosmosLikeExtendedPublicKey *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGCosmosLikeExtendedPublicKey::derivePublicKey, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSData * objcResult = [currentInstanceObj derivePublicKey:path];
    NSString *objcResultData = [self dataToHexString:objcResult];
    NSDictionary *result = @{@"value" : objcResultData};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGCosmosLikeExtendedPublicKey::derivePublicKey", nil);
        return;
    }

}

/** Derive a shorten version of a public key (SHA256 + RIPEMD160) from an xPUB and a path. */
RCT_REMAP_METHOD(deriveHash160,deriveHash160:(NSDictionary *)currentInstance withParams:(nonnull NSString *)path withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGCosmosLikeExtendedPublicKey::deriveHash160, first argument should be an instance of LGCosmosLikeExtendedPublicKey", nil);
        return;
    }
    LGCosmosLikeExtendedPublicKey *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGCosmosLikeExtendedPublicKey::deriveHash160, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSData * objcResult = [currentInstanceObj deriveHash160:path];
    NSString *objcResultData = [self dataToHexString:objcResult];
    NSDictionary *result = @{@"value" : objcResultData};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGCosmosLikeExtendedPublicKey::deriveHash160", nil);
        return;
    }

}

/** Get the publicKey in bech32 representatrion. */
RCT_REMAP_METHOD(toBech32,toBech32:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGCosmosLikeExtendedPublicKey::toBech32, first argument should be an instance of LGCosmosLikeExtendedPublicKey", nil);
        return;
    }
    LGCosmosLikeExtendedPublicKey *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGCosmosLikeExtendedPublicKey::toBech32, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSString * objcResult = [currentInstanceObj toBech32];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGCosmosLikeExtendedPublicKey::toBech32", nil);
        return;
    }

}

/** Get the publicKey in base58 representatrion. */
RCT_REMAP_METHOD(toBase58,toBase58:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGCosmosLikeExtendedPublicKey::toBase58, first argument should be an instance of LGCosmosLikeExtendedPublicKey", nil);
        return;
    }
    LGCosmosLikeExtendedPublicKey *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGCosmosLikeExtendedPublicKey::toBase58, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSString * objcResult = [currentInstanceObj toBase58];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGCosmosLikeExtendedPublicKey::toBase58", nil);
        return;
    }

}

/** Get the root path of the xPUB. */
RCT_REMAP_METHOD(getRootPath,getRootPath:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGCosmosLikeExtendedPublicKey::getRootPath, first argument should be an instance of LGCosmosLikeExtendedPublicKey", nil);
        return;
    }
    LGCosmosLikeExtendedPublicKey *currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGCosmosLikeExtendedPublicKey::getRootPath, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    NSString * objcResult = [currentInstanceObj getRootPath];
    NSDictionary *result = @{@"value" : objcResult};
    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGCosmosLikeExtendedPublicKey::getRootPath", nil);
        return;
    }

}
@end
