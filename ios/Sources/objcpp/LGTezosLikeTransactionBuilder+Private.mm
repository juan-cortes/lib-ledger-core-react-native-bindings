// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from tezos_like_wallet.djinni

#import "LGTezosLikeTransactionBuilder+Private.h"
#import "LGTezosLikeTransactionBuilder.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#import "LGAmount+Private.h"
#import "LGBigInt+Private.h"
#import "LGCurrency+Private.h"
#import "LGTezosLikeTransaction+Private.h"
#import "LGTezosLikeTransactionCallback+Private.h"
#import "LGTezosOperationTag+Private.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface LGTezosLikeTransactionBuilder ()

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::TezosLikeTransactionBuilder>&)cppRef;

@end

@implementation LGTezosLikeTransactionBuilder {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::ledger::core::api::TezosLikeTransactionBuilder>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::TezosLikeTransactionBuilder>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

- (nullable LGTezosLikeTransactionBuilder *)setType:(LGTezosOperationTag)type {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->setType(::djinni::Enum<::ledger::core::api::TezosOperationTag, LGTezosOperationTag>::toCpp(type));
        return ::djinni_generated::TezosLikeTransactionBuilder::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGTezosLikeTransactionBuilder *)sendToAddress:(nullable LGAmount *)amount
                                                  address:(nonnull NSString *)address {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->sendToAddress(::djinni_generated::Amount::toCpp(amount),
                                                                 ::djinni::String::toCpp(address));
        return ::djinni_generated::TezosLikeTransactionBuilder::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGTezosLikeTransactionBuilder *)wipeToAddress:(nonnull NSString *)address {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->wipeToAddress(::djinni::String::toCpp(address));
        return ::djinni_generated::TezosLikeTransactionBuilder::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGTezosLikeTransactionBuilder *)setFees:(nullable LGAmount *)fees {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->setFees(::djinni_generated::Amount::toCpp(fees));
        return ::djinni_generated::TezosLikeTransactionBuilder::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGTezosLikeTransactionBuilder *)setTransactionFees:(nullable LGAmount *)transactionFees {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->setTransactionFees(::djinni_generated::Amount::toCpp(transactionFees));
        return ::djinni_generated::TezosLikeTransactionBuilder::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGTezosLikeTransactionBuilder *)setRevealFees:(nullable LGAmount *)revealFees {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->setRevealFees(::djinni_generated::Amount::toCpp(revealFees));
        return ::djinni_generated::TezosLikeTransactionBuilder::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGTezosLikeTransactionBuilder *)setGasLimit:(nullable LGAmount *)gasLimit {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->setGasLimit(::djinni_generated::Amount::toCpp(gasLimit));
        return ::djinni_generated::TezosLikeTransactionBuilder::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGTezosLikeTransactionBuilder *)setStorageLimit:(nullable LGBigInt *)storageLimit {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->setStorageLimit(::djinni_generated::BigInt::toCpp(storageLimit));
        return ::djinni_generated::TezosLikeTransactionBuilder::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)build:(nullable id<LGTezosLikeTransactionCallback>)callback {
    try {
        _cppRefHandle.get()->build(::djinni_generated::TezosLikeTransactionCallback::toCpp(callback));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nullable LGTezosLikeTransactionBuilder *)clone {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->clone();
        return ::djinni_generated::TezosLikeTransactionBuilder::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)reset {
    try {
        _cppRefHandle.get()->reset();
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nullable LGTezosLikeTransaction *)parseRawUnsignedTransaction:(nonnull LGCurrency *)currency
                                                  rawTransaction:(nonnull NSData *)rawTransaction
                                                  protocolUpdate:(nonnull NSString *)protocolUpdate {
    try {
        auto objcpp_result_ = ::ledger::core::api::TezosLikeTransactionBuilder::parseRawUnsignedTransaction(::djinni_generated::Currency::toCpp(currency),
                                                                                                            ::djinni::Binary::toCpp(rawTransaction),
                                                                                                            ::djinni::String::toCpp(protocolUpdate));
        return ::djinni_generated::TezosLikeTransaction::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nullable LGTezosLikeTransaction *)parseRawSignedTransaction:(nonnull LGCurrency *)currency
                                                rawTransaction:(nonnull NSData *)rawTransaction
                                                protocolUpdate:(nonnull NSString *)protocolUpdate {
    try {
        auto objcpp_result_ = ::ledger::core::api::TezosLikeTransactionBuilder::parseRawSignedTransaction(::djinni_generated::Currency::toCpp(currency),
                                                                                                          ::djinni::Binary::toCpp(rawTransaction),
                                                                                                          ::djinni::String::toCpp(protocolUpdate));
        return ::djinni_generated::TezosLikeTransaction::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace djinni_generated {

auto TezosLikeTransactionBuilder::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto TezosLikeTransactionBuilder::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<LGTezosLikeTransactionBuilder>(cpp);
}

}  // namespace djinni_generated

@end
