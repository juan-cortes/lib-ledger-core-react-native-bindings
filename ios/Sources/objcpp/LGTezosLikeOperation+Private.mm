// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from tezos_like_wallet.djinni

#import "LGTezosLikeOperation+Private.h"
#import "LGTezosLikeOperation.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "LGTezosLikeTransaction+Private.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface LGTezosLikeOperation ()

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::TezosLikeOperation>&)cppRef;

@end

@implementation LGTezosLikeOperation {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::ledger::core::api::TezosLikeOperation>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::ledger::core::api::TezosLikeOperation>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

- (nullable LGTezosLikeTransaction *)getTransaction {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->getTransaction();
        return ::djinni_generated::TezosLikeTransaction::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace djinni_generated {

auto TezosLikeOperation::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto TezosLikeOperation::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<LGTezosLikeOperation>(cpp);
}

}  // namespace djinni_generated

@end
