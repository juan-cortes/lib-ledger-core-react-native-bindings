// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from callback.djinni

#import "LGError.h"
#import "LGEthereumLikeTransaction.h"
#import "LGEthereumLikeTransactionCallbackImpl.h"
#import "RCTCoreLGError.h"
#import "RCTCoreLGEthereumLikeTransaction.h"
#import <Foundation/Foundation.h>
#import <React/RCTBridge.h>
#import <React/RCTBridgeModule.h>


/** Callback triggered by main completed task, returning optional result of template type T. */
@interface RCTCoreLGEthereumLikeTransactionCallback : NSObject <LGEthereumLikeTransactionCallback>
@property (nonatomic, strong) RCTPromiseResolveBlock resolve;
@property (nonatomic, strong) RCTPromiseRejectBlock reject;
@property (nonatomic, weak) RCTBridge *bridge;
-(instancetype)initWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock) reject andBridge: (RCTBridge *) bridge;
@end
