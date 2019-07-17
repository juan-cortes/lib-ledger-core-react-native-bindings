// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from ethereum_like_wallet.djinni

#import "LGOperationType.h"
#import <Foundation/Foundation.h>
@class LGBigInt;


/** Class representing an Ethereum internal transaction. */
@interface LGInternalTransaction : NSObject

/** Get start gas (in wei) : maximum amount of gas the originator is willing to pay. */
- (nullable LGBigInt *)getGasLimit;

/** Used gas (in wei) : used gas during this transaction: */
- (nullable LGBigInt *)getUsedGas;

/** Get source ETH address. */
- (nonnull NSString *)getSender;

/** Get destination ETH address. */
- (nonnull NSString *)getReceiver;

/** Get amount of ether to send. */
- (nullable LGBigInt *)getValue;

/** Get binary data payload. */
- (nonnull NSData *)getData;

/** Get operation type : whether it is a SEND or RECEIVE. */
- (LGOperationType)getOperationType;

@end
