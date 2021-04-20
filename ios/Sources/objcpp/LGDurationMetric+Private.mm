// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from core.djinni

#import "LGDurationMetric+Private.h"
#import "DJIMarshal+Private.h"
#include <cassert>

namespace djinni_generated {

auto DurationMetric::toCpp(ObjcType obj) -> CppType
{
    assert(obj);
    return {::djinni::I64::toCpp(obj.totalMs),
            ::djinni::I32::toCpp(obj.count)};
}

auto DurationMetric::fromCpp(const CppType& cpp) -> ObjcType
{
    return [[LGDurationMetric alloc] initWithTotalMs:(::djinni::I64::fromCpp(cpp.total_ms))
                                               count:(::djinni::I32::fromCpp(cpp.count))];
}

}  // namespace djinni_generated
