// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from tezos_like_wallet.djinni

#include "TezosLikeOriginatedAccount.hpp"
#include <memory>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@class LGTezosLikeOriginatedAccount;

namespace djinni_generated {

class TezosLikeOriginatedAccount
{
public:
    using CppType = std::shared_ptr<::ledger::core::api::TezosLikeOriginatedAccount>;
    using CppOptType = std::shared_ptr<::ledger::core::api::TezosLikeOriginatedAccount>;
    using ObjcType = LGTezosLikeOriginatedAccount*;

    using Boxed = TezosLikeOriginatedAccount;

    static CppType toCpp(ObjcType objc);
    static ObjcType fromCppOpt(const CppOptType& cpp);
    static ObjcType fromCpp(const CppType& cpp) { return fromCppOpt(cpp); }

private:
    class ObjcProxy;
};

}  // namespace djinni_generated

