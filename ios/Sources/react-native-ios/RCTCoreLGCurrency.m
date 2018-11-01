// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from currency.djinni

#import "RCTCoreLGCurrency.h"
#import "LGCurrency.h"

@implementation RCTCoreLGCurrency

//Export module
RCT_EXPORT_MODULE(RCTCoreLGCurrency)

@synthesize bridge = _bridge;
-(instancetype)init
{
    self = [super init];
    //Init Objc implementation
    if(self)
    {
        self.objcImplementations = [[NSMutableDictionary alloc] init];
        self.implementationsData = [[NSMutableDictionary alloc] init];
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
        reject(@"impl_call_error", @"Error while calling RCTCoreLGCurrency::release, first argument should be an instance of LGCurrency", nil);
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
RCT_REMAP_METHOD(init, initWithWalletType:(int)walletType
                                     name:(nonnull NSString *)name
                            bip44CoinType:(int)bip44CoinType
                         paymentUriScheme:(nonnull NSString *)paymentUriScheme
                                    units:(NSArray <NSDictionary *> *)units
             bitcoinLikeNetworkParameters:(nullable NSDictionary *)bitcoinLikeNetworkParameters withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    NSMutableDictionary *implementationsData = [[NSMutableDictionary alloc] init];
    NSMutableArray *field_4 = [[NSMutableArray alloc] init];

    NSMutableArray *field_4_data = [[NSMutableArray alloc] init];

    for (id units_elem in units)
    {
        RCTCoreLGCurrencyUnit *rctParam_units_elem = (RCTCoreLGCurrencyUnit *)[self.bridge moduleForName:@"CoreLGCurrencyUnit"];
        LGCurrencyUnit *field_4_elem = (LGCurrencyUnit *)[rctParam_units_elem.objcImplementations objectForKey:units_elem[@"uid"]];
        [field_4_data addObject:units_elem[@"uid"]];
        [field_4 addObject:field_4_elem];

    }
    [implementationsData setObject:field_4_data forKey:@"units"];

    RCTCoreLGBitcoinLikeNetworkParameters *rctParam_bitcoinLikeNetworkParameters = (RCTCoreLGBitcoinLikeNetworkParameters *)[self.bridge moduleForName:@"CoreLGBitcoinLikeNetworkParameters"];
    LGBitcoinLikeNetworkParameters *field_5 = (LGBitcoinLikeNetworkParameters *)[rctParam_bitcoinLikeNetworkParameters.objcImplementations objectForKey:bitcoinLikeNetworkParameters[@"uid"]];
    [implementationsData setObject:bitcoinLikeNetworkParameters[@"uid"] forKey:@"bitcoinLikeNetworkParameters"];


    LGCurrency * finalResult = [[LGCurrency alloc] initWithWalletType:(LGWalletType)walletType name:name bip44CoinType:bip44CoinType paymentUriScheme:paymentUriScheme units:field_4 bitcoinLikeNetworkParameters:field_5];
    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGCurrency *rctImpl = (RCTCoreLGCurrency *)[self.bridge moduleForName:@"CoreLGCurrency"];
    [rctImpl.objcImplementations setObject:finalResult forKey:uuid];
    NSDictionary *result = @{@"type" : @"CoreLGCurrency", @"uid" : uuid };
    if (result)
    {
        [self.implementationsData setObject:implementationsData forKey:uuid];
        resolve(result);
    }
}

-(void)mapImplementationsData:(NSDictionary *)currentInstance
{
    LGCurrency *objcImpl = (LGCurrency *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSMutableDictionary *implementationsData = [[NSMutableDictionary alloc] init];
    id field_4 = objcImpl.units;
    NSMutableArray *converted_field_4 = [[NSMutableArray alloc] init];
    for (id field_4_elem in field_4)
    {
        NSString *field_4_elem_uuid = [[NSUUID UUID] UUIDString];
        RCTCoreLGCurrencyUnit *rctImpl_field_4_elem = (RCTCoreLGCurrencyUnit *)[self.bridge moduleForName:@"CoreLGCurrencyUnit"];
        [rctImpl_field_4_elem.objcImplementations setObject:field_4_elem forKey:field_4_elem_uuid];
        NSDictionary *converted_field_4_elem = @{@"type" : @"CoreLGCurrencyUnit", @"uid" : field_4_elem_uuid };
        [converted_field_4 addObject:converted_field_4_elem];
    }
    [implementationsData setObject:converted_field_4 forKey:@"units"];
    id field_5 = objcImpl.bitcoinLikeNetworkParameters;
    NSString *field_5_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGBitcoinLikeNetworkParameters *rctImpl_field_5 = (RCTCoreLGBitcoinLikeNetworkParameters *)[self.bridge moduleForName:@"CoreLGBitcoinLikeNetworkParameters"];
    [rctImpl_field_5.objcImplementations setObject:field_5 forKey:field_5_uuid];
    NSDictionary *converted_field_5 = @{@"type" : @"CoreLGBitcoinLikeNetworkParameters", @"uid" : field_5_uuid };
    [implementationsData setObject:converted_field_5 forKey:@"bitcoinLikeNetworkParameters"];
    [self.implementationsData setObject:implementationsData forKey:currentInstance[@"uid"]];
}
RCT_REMAP_METHOD(getWalletType, getWalletType:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGCurrency *objcImpl = (LGCurrency *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : @((int)objcImpl.walletType)};
    resolve(result);
}

RCT_REMAP_METHOD(getName, getName:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGCurrency *objcImpl = (LGCurrency *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : objcImpl.name};
    resolve(result);
}

RCT_REMAP_METHOD(getBip44CoinType, getBip44CoinType:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGCurrency *objcImpl = (LGCurrency *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : @((int)objcImpl.bip44CoinType)};
    resolve(result);
}

RCT_REMAP_METHOD(getPaymentUriScheme, getPaymentUriScheme:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGCurrency *objcImpl = (LGCurrency *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *result = @{@"value" : objcImpl.paymentUriScheme};
    resolve(result);
}

RCT_REMAP_METHOD(getUnits, getUnits:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGCurrency *objcImpl = (LGCurrency *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *data = (NSDictionary *)[self.implementationsData objectForKey:currentInstance[@"uid"]];
    if (!data)
    {
        [self mapImplementationsData:currentInstance];
        data = (NSDictionary *)[self.implementationsData objectForKey:currentInstance[@"uid"]];
    }
    NSArray *returnUuid = [data objectForKey:@"units"];
    NSDictionary *result = @{@"type" : @"CoreLGCurrencyUnit", @"uid" : returnUuid };
    resolve(result);
}

RCT_REMAP_METHOD(getBitcoinLikeNetworkParameters, getBitcoinLikeNetworkParameters:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    LGCurrency *objcImpl = (LGCurrency *)[self.objcImplementations objectForKey:currentInstance[@"uid"]];
    NSDictionary *data = (NSDictionary *)[self.implementationsData objectForKey:currentInstance[@"uid"]];
    if (!data)
    {
        [self mapImplementationsData:currentInstance];
        data = (NSDictionary *)[self.implementationsData objectForKey:currentInstance[@"uid"]];
    }
    NSString *returnUuid = [data objectForKey:@"bitcoinLikeNetworkParameters"];
    NSDictionary *result = @{@"type" : @"CoreLGBitcoinLikeNetworkParameters", @"uid" : returnUuid };
    resolve(result);
}

@end
