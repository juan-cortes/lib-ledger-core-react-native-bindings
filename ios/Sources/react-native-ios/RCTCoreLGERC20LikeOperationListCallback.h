// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from callback.djinni

#import "LGERC20LikeOperation.h"
#import "LGERC20LikeOperationListCallbackImpl.h"
#import "LGError.h"
#import "RCTCoreLGERC20LikeOperation.h"
#import "RCTCoreLGError.h"
#import <Foundation/Foundation.h>
#import <React/RCTBridge.h>
#import <React/RCTBridgeModule.h>


/** Callback triggered by main completed task, returning optional result as list of template type T. */
@interface RCTCoreLGERC20LikeOperationListCallback : NSObject <LGERC20LikeOperationListCallback>
@property (nonatomic, strong) RCTPromiseResolveBlock resolve;
@property (nonatomic, strong) RCTPromiseRejectBlock reject;
@property (nonatomic, weak) RCTBridge *bridge;
-(instancetype)initWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock) reject andBridge: (RCTBridge *) bridge;
@end
