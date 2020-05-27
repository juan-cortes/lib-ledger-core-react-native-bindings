// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from messages.djinni

#import "LGCosmosLikeMsgBeginRedelegate+Private.h"
#import "DJIMarshal+Private.h"
#import "LGCosmosLikeAmount+Private.h"
#include <cassert>

namespace djinni_generated {

auto CosmosLikeMsgBeginRedelegate::toCpp(ObjcType obj) -> CppType
{
    assert(obj);
    return {::djinni::String::toCpp(obj.delegatorAddress),
            ::djinni::String::toCpp(obj.validatorSourceAddress),
            ::djinni::String::toCpp(obj.validatorDestinationAddress),
            ::djinni_generated::CosmosLikeAmount::toCpp(obj.amount)};
}

auto CosmosLikeMsgBeginRedelegate::fromCpp(const CppType& cpp) -> ObjcType
{
    return [[LGCosmosLikeMsgBeginRedelegate alloc] initWithDelegatorAddress:(::djinni::String::fromCpp(cpp.delegatorAddress))
                                                     validatorSourceAddress:(::djinni::String::fromCpp(cpp.validatorSourceAddress))
                                                validatorDestinationAddress:(::djinni::String::fromCpp(cpp.validatorDestinationAddress))
                                                                     amount:(::djinni_generated::CosmosLikeAmount::fromCpp(cpp.amount))];
}

}  // namespace djinni_generated
