// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from currency.djinni

#import "RCTCoreLGCurrency.h"
#import "LGCurrency.h"

@implementation RCTCoreLGCurrency

//Export module
RCT_EXPORT_MODULE(RCTCoreLGCurrency)

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
RCT_REMAP_METHOD(init, initWithWalletType:(int)walletType
                                     name:(nonnull NSString *)name
                            bip44CoinType:(int)bip44CoinType
                         paymentUriScheme:(nonnull NSString *)paymentUriScheme
                                    units:(NSArray <NSDictionary *> *)units
             bitcoinLikeNetworkParameters:(nullable NSDictionary *)bitcoinLikeNetworkParameters
            ethereumLikeNetworkParameters:(nullable NSDictionary *)ethereumLikeNetworkParameters withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
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
    RCTCoreLGEthereumLikeNetworkParameters *rctParam_ethereumLikeNetworkParameters = (RCTCoreLGEthereumLikeNetworkParameters *)[self.bridge moduleForName:@"CoreLGEthereumLikeNetworkParameters"];
    LGEthereumLikeNetworkParameters *field_6 = (LGEthereumLikeNetworkParameters *)[rctParam_ethereumLikeNetworkParameters.objcImplementations objectForKey:ethereumLikeNetworkParameters[@"uid"]];
    [implementationsData setObject:ethereumLikeNetworkParameters[@"uid"] forKey:@"ethereumLikeNetworkParameters"];


    LGCurrency * finalResult = [[LGCurrency alloc] initWithWalletType:(LGWalletType)walletType name:name bip44CoinType:bip44CoinType paymentUriScheme:paymentUriScheme units:field_4 bitcoinLikeNetworkParameters:field_5 ethereumLikeNetworkParameters:field_6];
    NSString *uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGCurrency *rctImpl = (RCTCoreLGCurrency *)[self.bridge moduleForName:@"CoreLGCurrency"];
    NSArray *finalResultArray = [[NSArray alloc] initWithObjects:finalResult, uuid, nil];
    [rctImpl baseSetObject:finalResultArray];
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
        NSArray *field_4_elem_array = [[NSArray alloc] initWithObjects:field_4_elem, field_4_elem_uuid, nil];
        [rctImpl_field_4_elem baseSetObject:field_4_elem_array];
        NSDictionary *converted_field_4_elem = @{@"type" : @"CoreLGCurrencyUnit", @"uid" : field_4_elem_uuid };
        [converted_field_4 addObject:converted_field_4_elem];
    }
    [implementationsData setObject:converted_field_4 forKey:@"units"];
    id field_5 = objcImpl.bitcoinLikeNetworkParameters;
    NSString *field_5_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGBitcoinLikeNetworkParameters *rctImpl_field_5 = (RCTCoreLGBitcoinLikeNetworkParameters *)[self.bridge moduleForName:@"CoreLGBitcoinLikeNetworkParameters"];
    if (field_5)
    {
        NSArray *field_5_array = [[NSArray alloc] initWithObjects:field_5, field_5_uuid, nil];
        [rctImpl_field_5 baseSetObject:field_5_array];
    }
    NSDictionary *converted_field_5 = @{@"type" : @"CoreLGBitcoinLikeNetworkParameters", @"uid" : field_5_uuid };
    [implementationsData setObject:converted_field_5 forKey:@"bitcoinLikeNetworkParameters"];
    id field_6 = objcImpl.ethereumLikeNetworkParameters;
    NSString *field_6_uuid = [[NSUUID UUID] UUIDString];
    RCTCoreLGEthereumLikeNetworkParameters *rctImpl_field_6 = (RCTCoreLGEthereumLikeNetworkParameters *)[self.bridge moduleForName:@"CoreLGEthereumLikeNetworkParameters"];
    if (field_6)
    {
        NSArray *field_6_array = [[NSArray alloc] initWithObjects:field_6, field_6_uuid, nil];
        [rctImpl_field_6 baseSetObject:field_6_array];
    }
    NSDictionary *converted_field_6 = @{@"type" : @"CoreLGEthereumLikeNetworkParameters", @"uid" : field_6_uuid };
    [implementationsData setObject:converted_field_6 forKey:@"ethereumLikeNetworkParameters"];
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
    NSDictionary *data = (NSDictionary *)[self.implementationsData objectForKey:currentInstance[@"uid"]];
    if (!data)
    {
        [self mapImplementationsData:currentInstance];
        data = (NSDictionary *)[self.implementationsData objectForKey:currentInstance[@"uid"]];
    }
    NSArray<NSDictionary *> *result = [data objectForKey:@"units"];
    resolve(result);
}

RCT_REMAP_METHOD(getBitcoinLikeNetworkParameters, getBitcoinLikeNetworkParameters:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    NSDictionary *data = (NSDictionary *)[self.implementationsData objectForKey:currentInstance[@"uid"]];
    if (!data)
    {
        [self mapImplementationsData:currentInstance];
        data = (NSDictionary *)[self.implementationsData objectForKey:currentInstance[@"uid"]];
    }
    NSDictionary *result = [data objectForKey:@"bitcoinLikeNetworkParameters"];
    resolve(result);
}

RCT_REMAP_METHOD(getEthereumLikeNetworkParameters, getEthereumLikeNetworkParameters:(NSDictionary *)currentInstance withResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)rejecter)
{
    NSDictionary *data = (NSDictionary *)[self.implementationsData objectForKey:currentInstance[@"uid"]];
    if (!data)
    {
        [self mapImplementationsData:currentInstance];
        data = (NSDictionary *)[self.implementationsData objectForKey:currentInstance[@"uid"]];
    }
    NSDictionary *result = [data objectForKey:@"ethereumLikeNetworkParameters"];
    resolve(result);
}

@end
