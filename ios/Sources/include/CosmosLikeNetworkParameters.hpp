// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from addresses.djinni

#ifndef DJINNI_GENERATED_COSMOSLIKENETWORKPARAMETERS_HPP
#define DJINNI_GENERATED_COSMOSLIKENETWORKPARAMETERS_HPP

#include <cstdint>
#include <iostream>
#include <string>
#include <utility>
#include <vector>

namespace ledger { namespace core { namespace api {

struct CosmosLikeNetworkParameters final {
    /** Name of the network. */
    std::string Identifier;
    /** Constant prefix to prepend all signature messages. */
    std::string MessagePrefix;
    /** Version of the Extended Public Key standard. */
    std::vector<uint8_t> XPUBVersion;
    /** Prefix useful for bech32 encoding of secp256k1 raw pubKey */
    std::vector<uint8_t> PubKeyPrefix;
    /** Prefix useful for bech32 encoding of ed25519 raw pubKey */
    std::vector<uint8_t> Ed25519PubKeyPrefix;
    /** Prefix useful during originated address construction from pubKey hash */
    std::vector<uint8_t> AddressPrefix;
    /** Chain ID of the network */
    std::string ChainId;
    /** Addition CIPs enabled for this network. */
    std::vector<std::string> AdditionalCIPs;

    CosmosLikeNetworkParameters(std::string Identifier_,
                                std::string MessagePrefix_,
                                std::vector<uint8_t> XPUBVersion_,
                                std::vector<uint8_t> PubKeyPrefix_,
                                std::vector<uint8_t> Ed25519PubKeyPrefix_,
                                std::vector<uint8_t> AddressPrefix_,
                                std::string ChainId_,
                                std::vector<std::string> AdditionalCIPs_)
    : Identifier(std::move(Identifier_))
    , MessagePrefix(std::move(MessagePrefix_))
    , XPUBVersion(std::move(XPUBVersion_))
    , PubKeyPrefix(std::move(PubKeyPrefix_))
    , Ed25519PubKeyPrefix(std::move(Ed25519PubKeyPrefix_))
    , AddressPrefix(std::move(AddressPrefix_))
    , ChainId(std::move(ChainId_))
    , AdditionalCIPs(std::move(AdditionalCIPs_))
    {}

    CosmosLikeNetworkParameters(const CosmosLikeNetworkParameters& cpy) {
       this->Identifier = cpy.Identifier;
       this->MessagePrefix = cpy.MessagePrefix;
       this->XPUBVersion = cpy.XPUBVersion;
       this->PubKeyPrefix = cpy.PubKeyPrefix;
       this->Ed25519PubKeyPrefix = cpy.Ed25519PubKeyPrefix;
       this->AddressPrefix = cpy.AddressPrefix;
       this->ChainId = cpy.ChainId;
       this->AdditionalCIPs = cpy.AdditionalCIPs;
    }

    CosmosLikeNetworkParameters() = default;


    CosmosLikeNetworkParameters& operator=(const CosmosLikeNetworkParameters& cpy) {
       this->Identifier = cpy.Identifier;
       this->MessagePrefix = cpy.MessagePrefix;
       this->XPUBVersion = cpy.XPUBVersion;
       this->PubKeyPrefix = cpy.PubKeyPrefix;
       this->Ed25519PubKeyPrefix = cpy.Ed25519PubKeyPrefix;
       this->AddressPrefix = cpy.AddressPrefix;
       this->ChainId = cpy.ChainId;
       this->AdditionalCIPs = cpy.AdditionalCIPs;
       return *this;
    }

    template <class Archive>
    void load(Archive& archive) {
        archive(Identifier, MessagePrefix, XPUBVersion, PubKeyPrefix, Ed25519PubKeyPrefix, AddressPrefix, ChainId, AdditionalCIPs);
    }

    template <class Archive>
    void save(Archive& archive) const {
        archive(Identifier, MessagePrefix, XPUBVersion, PubKeyPrefix, Ed25519PubKeyPrefix, AddressPrefix, ChainId, AdditionalCIPs);
    }
};

} } }  // namespace ledger::core::api
#endif //DJINNI_GENERATED_COSMOSLIKENETWORKPARAMETERS_HPP
