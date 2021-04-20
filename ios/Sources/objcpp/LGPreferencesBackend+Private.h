// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from preferences.djinni

#include "PreferencesBackend.hpp"
#include <memory>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@protocol LGPreferencesBackend;

namespace djinni_generated {

class PreferencesBackend
{
public:
    using CppType = std::shared_ptr<::ledger::core::api::PreferencesBackend>;
    using CppOptType = std::shared_ptr<::ledger::core::api::PreferencesBackend>;
    using ObjcType = id<LGPreferencesBackend>;

    using Boxed = PreferencesBackend;

    static CppType toCpp(ObjcType objc);
    static ObjcType fromCppOpt(const CppOptType& cpp);
    static ObjcType fromCpp(const CppType& cpp) { return fromCppOpt(cpp); }

private:
    class ObjcProxy;
};

}  // namespace djinni_generated

