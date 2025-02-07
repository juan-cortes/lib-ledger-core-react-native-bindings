// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from wallet_pool.djinni

#import "RCTCoreLGWalletPoolBuilder.h"


@implementation RCTCoreLGWalletPoolBuilder
//Export module
RCT_EXPORT_MODULE(RCTCoreLGWalletPoolBuilder)

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
 * Set http client to be used for wallet pool build.
 * @param client, HttpClient
 * @return WalletPoolBuilder object, instance with wallet pool http client set
 */
RCT_REMAP_METHOD(setHttpClient,setHttpClient:(NSDictionary *)currentInstance withParams:(NSDictionary *)client withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGWalletPoolBuilder::setHttpClient, first argument should be an instance of LGWalletPoolBuilder", nil);
        return;
    }
    LGWalletPoolBuilder *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGWalletPoolBuilder::setHttpClient, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    RCTCoreLGHttpClient *rctParam_client = (RCTCoreLGHttpClient *)[self.bridge moduleForName:@"CoreLGHttpClient"];
    id<LGHttpClient>objcParam_0 = (id<LGHttpClient>)[rctParam_client.objcImplementations objectForKey:client[@"uid"]];
    LGWalletPoolBuilder * objcResult = [currentInstanceObj setHttpClient:objcParam_0];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGWalletPoolBuilder *rctImpl_objcResult = (RCTCoreLGWalletPoolBuilder *)[self.bridge moduleForName:@"CoreLGWalletPoolBuilder"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGWalletPoolBuilder", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGWalletPoolBuilder::setHttpClient", nil);
        return;
    }

}

/**
 * Set web socket client, through which wallet pool will listen and get notified (by explorers, DBs...).
 * @param client, WebSocketClient object
 * @reutnr WalletPoolBuilder object, instance with wallet pool web socket client set
 */
RCT_REMAP_METHOD(setWebsocketClient,setWebsocketClient:(NSDictionary *)currentInstance withParams:(NSDictionary *)client withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGWalletPoolBuilder::setWebsocketClient, first argument should be an instance of LGWalletPoolBuilder", nil);
        return;
    }
    LGWalletPoolBuilder *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGWalletPoolBuilder::setWebsocketClient, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    RCTCoreLGWebSocketClient *rctParam_client = (RCTCoreLGWebSocketClient *)[self.bridge moduleForName:@"CoreLGWebSocketClient"];
    id<LGWebSocketClient>objcParam_0 = (id<LGWebSocketClient>)[rctParam_client.objcImplementations objectForKey:client[@"uid"]];
    LGWalletPoolBuilder * objcResult = [currentInstanceObj setWebsocketClient:objcParam_0];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGWalletPoolBuilder *rctImpl_objcResult = (RCTCoreLGWalletPoolBuilder *)[self.bridge moduleForName:@"CoreLGWalletPoolBuilder"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGWalletPoolBuilder", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGWalletPoolBuilder::setWebsocketClient", nil);
        return;
    }

}

/**
 * Set path resolver that will be used for wallet pool creation to resolve wallet pool's (DB's, logs, preferences ...) paths.
 * @param pathResolver, Pathresolver object
 * @param WalletPoolBuilder object, instance with wallet pool path resolver set
 */
RCT_REMAP_METHOD(setPathResolver,setPathResolver:(NSDictionary *)currentInstance withParams:(NSDictionary *)pathResolver withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGWalletPoolBuilder::setPathResolver, first argument should be an instance of LGWalletPoolBuilder", nil);
        return;
    }
    LGWalletPoolBuilder *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGWalletPoolBuilder::setPathResolver, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    RCTCoreLGPathResolver *rctParam_pathResolver = (RCTCoreLGPathResolver *)[self.bridge moduleForName:@"CoreLGPathResolver"];
    id<LGPathResolver>objcParam_0 = (id<LGPathResolver>)[rctParam_pathResolver.objcImplementations objectForKey:pathResolver[@"uid"]];
    LGWalletPoolBuilder * objcResult = [currentInstanceObj setPathResolver:objcParam_0];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGWalletPoolBuilder *rctImpl_objcResult = (RCTCoreLGWalletPoolBuilder *)[self.bridge moduleForName:@"CoreLGWalletPoolBuilder"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGWalletPoolBuilder", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGWalletPoolBuilder::setPathResolver", nil);
        return;
    }

}

/**
 * Set log printer that will be used for wallet pool creation to dump wallet pool's logs (for debug purposes).
 * @param printer, LogPrinter object
 * @param WalletPoolBuilder object, instance with wallet pool logger set
 */
RCT_REMAP_METHOD(setLogPrinter,setLogPrinter:(NSDictionary *)currentInstance withParams:(NSDictionary *)printer withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGWalletPoolBuilder::setLogPrinter, first argument should be an instance of LGWalletPoolBuilder", nil);
        return;
    }
    LGWalletPoolBuilder *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGWalletPoolBuilder::setLogPrinter, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    RCTCoreLGLogPrinter *rctParam_printer = (RCTCoreLGLogPrinter *)[self.bridge moduleForName:@"CoreLGLogPrinter"];
    id<LGLogPrinter>objcParam_0 = (id<LGLogPrinter>)[rctParam_printer.objcImplementations objectForKey:printer[@"uid"]];
    LGWalletPoolBuilder * objcResult = [currentInstanceObj setLogPrinter:objcParam_0];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGWalletPoolBuilder *rctImpl_objcResult = (RCTCoreLGWalletPoolBuilder *)[self.bridge moduleForName:@"CoreLGWalletPoolBuilder"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGWalletPoolBuilder", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGWalletPoolBuilder::setLogPrinter", nil);
        return;
    }

}

/**
 * Set thread dispatcher that will be used for wallet pool creation to dispatch wallet pool's tasks through different threads.
 * @param dispatcher, ThreadDispatcher object
 * @param WalletPoolBuilder object, instance with wallet pool thread dispatcher set
 */
RCT_REMAP_METHOD(setThreadDispatcher,setThreadDispatcher:(NSDictionary *)currentInstance withParams:(NSDictionary *)dispatcher withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGWalletPoolBuilder::setThreadDispatcher, first argument should be an instance of LGWalletPoolBuilder", nil);
        return;
    }
    LGWalletPoolBuilder *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGWalletPoolBuilder::setThreadDispatcher, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    RCTCoreLGThreadDispatcher *rctParam_dispatcher = (RCTCoreLGThreadDispatcher *)[self.bridge moduleForName:@"CoreLGThreadDispatcher"];
    id<LGThreadDispatcher>objcParam_0 = (id<LGThreadDispatcher>)[rctParam_dispatcher.objcImplementations objectForKey:dispatcher[@"uid"]];
    LGWalletPoolBuilder * objcResult = [currentInstanceObj setThreadDispatcher:objcParam_0];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGWalletPoolBuilder *rctImpl_objcResult = (RCTCoreLGWalletPoolBuilder *)[self.bridge moduleForName:@"CoreLGWalletPoolBuilder"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGWalletPoolBuilder", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGWalletPoolBuilder::setThreadDispatcher", nil);
        return;
    }

}

/**
 * Set name that will be used for wallet pool creation.
 * @param name, string
 * @return WalletPoolBuilder object, instance with wallet pool name set
 */
RCT_REMAP_METHOD(setName,setName:(NSDictionary *)currentInstance withParams:(nonnull NSString *)name withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGWalletPoolBuilder::setName, first argument should be an instance of LGWalletPoolBuilder", nil);
        return;
    }
    LGWalletPoolBuilder *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGWalletPoolBuilder::setName, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGWalletPoolBuilder * objcResult = [currentInstanceObj setName:name];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGWalletPoolBuilder *rctImpl_objcResult = (RCTCoreLGWalletPoolBuilder *)[self.bridge moduleForName:@"CoreLGWalletPoolBuilder"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGWalletPoolBuilder", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGWalletPoolBuilder::setName", nil);
        return;
    }

}

/**
 * Set password that will be used for wallet pool creation.
 * @param password, string
 * @return WalletPoolBuilder object, with wallet pool password set
 */
RCT_REMAP_METHOD(setPassword,setPassword:(NSDictionary *)currentInstance withParams:(nonnull NSString *)password withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGWalletPoolBuilder::setPassword, first argument should be an instance of LGWalletPoolBuilder", nil);
        return;
    }
    LGWalletPoolBuilder *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGWalletPoolBuilder::setPassword, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    LGWalletPoolBuilder * objcResult = [currentInstanceObj setPassword:password];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGWalletPoolBuilder *rctImpl_objcResult = (RCTCoreLGWalletPoolBuilder *)[self.bridge moduleForName:@"CoreLGWalletPoolBuilder"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGWalletPoolBuilder", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGWalletPoolBuilder::setPassword", nil);
        return;
    }

}

/**
 * Set random number generator that will be used for wallet pool creation.
 * @param rng, RandomNumberGenerator object
 * @return WalletPoolBuilder object, with wallet pool random number generator set
 */
RCT_REMAP_METHOD(setRandomNumberGenerator,setRandomNumberGenerator:(NSDictionary *)currentInstance withParams:(NSDictionary *)rng withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGWalletPoolBuilder::setRandomNumberGenerator, first argument should be an instance of LGWalletPoolBuilder", nil);
        return;
    }
    LGWalletPoolBuilder *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGWalletPoolBuilder::setRandomNumberGenerator, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    RCTCoreLGRandomNumberGenerator *rctParam_rng = (RCTCoreLGRandomNumberGenerator *)[self.bridge moduleForName:@"CoreLGRandomNumberGenerator"];
    id<LGRandomNumberGenerator>objcParam_0 = (id<LGRandomNumberGenerator>)[rctParam_rng.objcImplementations objectForKey:rng[@"uid"]];
    LGWalletPoolBuilder * objcResult = [currentInstanceObj setRandomNumberGenerator:objcParam_0];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGWalletPoolBuilder *rctImpl_objcResult = (RCTCoreLGWalletPoolBuilder *)[self.bridge moduleForName:@"CoreLGWalletPoolBuilder"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGWalletPoolBuilder", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGWalletPoolBuilder::setRandomNumberGenerator", nil);
        return;
    }

}

/**
 * Set database that will be used for wallet pool creation, it will store all wallet pool's data (created wallets, accounts, preferences ...).
 * @param backend, DatabaseBackend object
 * @return WalletPoolBuilder object, with wallet pool database set
 */
RCT_REMAP_METHOD(setDatabaseBackend,setDatabaseBackend:(NSDictionary *)currentInstance withParams:(NSDictionary *)backend withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGWalletPoolBuilder::setDatabaseBackend, first argument should be an instance of LGWalletPoolBuilder", nil);
        return;
    }
    LGWalletPoolBuilder *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGWalletPoolBuilder::setDatabaseBackend, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    RCTCoreLGDatabaseBackend *rctParam_backend = (RCTCoreLGDatabaseBackend *)[self.bridge moduleForName:@"CoreLGDatabaseBackend"];
    LGDatabaseBackend *objcParam_0 = (LGDatabaseBackend *)[rctParam_backend.objcImplementations objectForKey:backend[@"uid"]];
    LGWalletPoolBuilder * objcResult = [currentInstanceObj setDatabaseBackend:objcParam_0];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGWalletPoolBuilder *rctImpl_objcResult = (RCTCoreLGWalletPoolBuilder *)[self.bridge moduleForName:@"CoreLGWalletPoolBuilder"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGWalletPoolBuilder", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGWalletPoolBuilder::setDatabaseBackend", nil);
        return;
    }

}

/**
 * Set configuration that will be used for wallet pool creation.
 * @param configuration, DynamicObject object
 * @return WalletPoolBuilder object, with wallet pool configuration set
 */
RCT_REMAP_METHOD(setConfiguration,setConfiguration:(NSDictionary *)currentInstance withParams:(NSDictionary *)configuration withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGWalletPoolBuilder::setConfiguration, first argument should be an instance of LGWalletPoolBuilder", nil);
        return;
    }
    LGWalletPoolBuilder *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGWalletPoolBuilder::setConfiguration, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    RCTCoreLGDynamicObject *rctParam_configuration = (RCTCoreLGDynamicObject *)[self.bridge moduleForName:@"CoreLGDynamicObject"];
    LGDynamicObject *objcParam_0 = (LGDynamicObject *)[rctParam_configuration.objcImplementations objectForKey:configuration[@"uid"]];
    LGWalletPoolBuilder * objcResult = [currentInstanceObj setConfiguration:objcParam_0];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGWalletPoolBuilder *rctImpl_objcResult = (RCTCoreLGWalletPoolBuilder *)[self.bridge moduleForName:@"CoreLGWalletPoolBuilder"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGWalletPoolBuilder", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGWalletPoolBuilder::setConfiguration", nil);
        return;
    }

}

/**
 * Set the external PreferencesBackend
 * @param backend, PreferencesBackend object
 * @return WalletPoolBuilder object, with wallet pool externalPreferencesBackend set
 */
RCT_REMAP_METHOD(setExternalPreferencesBackend,setExternalPreferencesBackend:(NSDictionary *)currentInstance withParams:(NSDictionary *)backend withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGWalletPoolBuilder::setExternalPreferencesBackend, first argument should be an instance of LGWalletPoolBuilder", nil);
        return;
    }
    LGWalletPoolBuilder *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGWalletPoolBuilder::setExternalPreferencesBackend, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    RCTCoreLGPreferencesBackend *rctParam_backend = (RCTCoreLGPreferencesBackend *)[self.bridge moduleForName:@"CoreLGPreferencesBackend"];
    id<LGPreferencesBackend>objcParam_0 = (id<LGPreferencesBackend>)[rctParam_backend.objcImplementations objectForKey:backend[@"uid"]];
    LGWalletPoolBuilder * objcResult = [currentInstanceObj setExternalPreferencesBackend:objcParam_0];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGWalletPoolBuilder *rctImpl_objcResult = (RCTCoreLGWalletPoolBuilder *)[self.bridge moduleForName:@"CoreLGWalletPoolBuilder"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGWalletPoolBuilder", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGWalletPoolBuilder::setExternalPreferencesBackend", nil);
        return;
    }

}

/**
 * Set the internal PreferencesBackend
 * @param backend, PreferencesBackend object
 * @return WalletPoolBuilder object, with wallet pool internalPreferencesBackend set
 */
RCT_REMAP_METHOD(setInternalPreferencesBackend,setInternalPreferencesBackend:(NSDictionary *)currentInstance withParams:(NSDictionary *)backend withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGWalletPoolBuilder::setInternalPreferencesBackend, first argument should be an instance of LGWalletPoolBuilder", nil);
        return;
    }
    LGWalletPoolBuilder *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGWalletPoolBuilder::setInternalPreferencesBackend, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    RCTCoreLGPreferencesBackend *rctParam_backend = (RCTCoreLGPreferencesBackend *)[self.bridge moduleForName:@"CoreLGPreferencesBackend"];
    id<LGPreferencesBackend>objcParam_0 = (id<LGPreferencesBackend>)[rctParam_backend.objcImplementations objectForKey:backend[@"uid"]];
    LGWalletPoolBuilder * objcResult = [currentInstanceObj setInternalPreferencesBackend:objcParam_0];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGWalletPoolBuilder *rctImpl_objcResult = (RCTCoreLGWalletPoolBuilder *)[self.bridge moduleForName:@"CoreLGWalletPoolBuilder"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGWalletPoolBuilder", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGWalletPoolBuilder::setInternalPreferencesBackend", nil);
        return;
    }

}

/**
 * Create wallet pool.
 * @param callback, Callback object returning a WalletPool instance
 */
RCT_REMAP_METHOD(build,build:(NSDictionary *)currentInstance WithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    if (!currentInstance[@"uid"] || !currentInstance[@"type"])
    {
        reject(@"impl_call_error", @"Error while calling RCTCoreLGWalletPoolBuilder::build, first argument should be an instance of LGWalletPoolBuilder", nil);
        return;
    }
    LGWalletPoolBuilder *currentInstanceObj = nil;
    @synchronized(self)
    {
        currentInstanceObj = [self.objcImplementations objectForKey:currentInstance[@"uid"]];
    }
    if (!currentInstanceObj)
    {
        NSString *error = [NSString stringWithFormat:@"Error while calling LGWalletPoolBuilder::build, instance of uid %@ not found", currentInstance[@"uid"]];
        reject(@"impl_call_error", error, nil);
        return;
    }
    RCTCoreLGWalletPoolCallback *objcParam_0 = [[RCTCoreLGWalletPoolCallback alloc] initWithResolver:resolve rejecter:reject andBridge:self.bridge];
    [currentInstanceObj build:objcParam_0];

}

/**
 * Create an instance of the wallet pool builder.
 * @return WalletPoolBuilder object
 */
RCT_REMAP_METHOD(createInstance,createInstanceWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    LGWalletPoolBuilder * objcResult = [LGWalletPoolBuilder createInstance];

    NSString *objcResult_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGWalletPoolBuilder *rctImpl_objcResult = (RCTCoreLGWalletPoolBuilder *)[self.bridge moduleForName:@"CoreLGWalletPoolBuilder"];
    NSArray *objcResult_array = [[NSArray alloc] initWithObjects:objcResult, objcResult_uuid, nil];
    [rctImpl_objcResult baseSetObject:objcResult_array];
    NSDictionary *result = @{@"type" : @"CoreLGWalletPoolBuilder", @"uid" : objcResult_uuid };

    if(result)
    {
        resolve(result);
    }
    else
    {
        reject(@"impl_call_error", @"Error while calling LGWalletPoolBuilder::createInstance", nil);
        return;
    }

}
@end
