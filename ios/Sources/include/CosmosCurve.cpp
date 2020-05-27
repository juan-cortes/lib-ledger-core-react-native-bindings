// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from addresses.djinni

#include "CosmosCurve.hpp"  // my header
#include "enum_from_string.hpp"

namespace ledger { namespace core { namespace api {

std::string to_string(const CosmosCurve& cosmosCurve) {
    switch (cosmosCurve) {
        case CosmosCurve::ED25519: return "ED25519";
        case CosmosCurve::SECP256K1: return "SECP256K1";
    };
};
template <>
CosmosCurve from_string(const std::string& cosmosCurve) {
    if (cosmosCurve == "ED25519") return CosmosCurve::ED25519;
    else return CosmosCurve::SECP256K1;
};

std::ostream &operator<<(std::ostream &os, const CosmosCurve &o)
{
    switch (o) {
        case CosmosCurve::ED25519:  return os << "ED25519";
        case CosmosCurve::SECP256K1:  return os << "SECP256K1";
    }
}

} } }  // namespace ledger::core::api
