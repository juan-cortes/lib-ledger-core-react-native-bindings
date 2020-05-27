// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from callback.djinni

#include "CosmosLikeTransactionCallback.hpp"
#include <memory>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@protocol LGCosmosLikeTransactionCallback;

namespace djinni_generated {

class CosmosLikeTransactionCallback
{
public:
    using CppType = std::shared_ptr<::ledger::core::api::CosmosLikeTransactionCallback>;
    using CppOptType = std::shared_ptr<::ledger::core::api::CosmosLikeTransactionCallback>;
    using ObjcType = id<LGCosmosLikeTransactionCallback>;

    using Boxed = CosmosLikeTransactionCallback;

    static CppType toCpp(ObjcType objc);
    static ObjcType fromCppOpt(const CppOptType& cpp);
    static ObjcType fromCpp(const CppType& cpp) { return fromCppOpt(cpp); }

private:
    class ObjcProxy;
};

}  // namespace djinni_generated

