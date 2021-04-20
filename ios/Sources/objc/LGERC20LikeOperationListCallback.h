// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from callback.djinni

#import "LGError.h"
#import <Foundation/Foundation.h>
@class LGERC20LikeOperation;


/** Callback triggered by main completed task, returning optional result as list of template type T. */
@protocol LGERC20LikeOperationListCallback

/**
 * Method triggered when main task complete.
 * @params result optional of type list<T>, non null if main task failed
 * @params error optional of type Error, non null if main task succeeded
 */
- (void)onCallback:(nullable NSArray<LGERC20LikeOperation *> *)result
             error:(nullable LGError *)error;

@end
