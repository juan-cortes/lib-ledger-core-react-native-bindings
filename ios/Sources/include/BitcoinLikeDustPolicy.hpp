// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from addresses.djinni

#ifndef DJINNI_GENERATED_BITCOINLIKEDUSTPOLICY_HPP
#define DJINNI_GENERATED_BITCOINLIKEDUSTPOLICY_HPP

#include <functional>
#include <iostream>
#include <string>

namespace ledger { namespace core { namespace api {

enum class BitcoinLikeDustPolicy : int {
    FIXED,
    PER_BYTE,
    PER_KBYTE,
};
 std::string to_string(const BitcoinLikeDustPolicy& bitcoinLikeDustPolicy);
 std::ostream &operator<<(std::ostream &os, const BitcoinLikeDustPolicy &o);

} } }  // namespace ledger::core::api

namespace std {

template <>
struct hash<::ledger::core::api::BitcoinLikeDustPolicy> {
    size_t operator()(::ledger::core::api::BitcoinLikeDustPolicy type) const {
        return std::hash<int>()(static_cast<int>(type));
    }
};

}  // namespace std
#endif //DJINNI_GENERATED_BITCOINLIKEDUSTPOLICY_HPP
