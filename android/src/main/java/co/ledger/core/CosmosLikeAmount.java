// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from messages.djinni

package co.ledger.core;

public final class CosmosLikeAmount {


    /*package*/ final String amount;

    /*package*/ final String denom;

    public CosmosLikeAmount(
            String amount,
            String denom) {
        this.amount = amount;
        this.denom = denom;
    }

    public String getAmount() {
        return amount;
    }

    public String getDenom() {
        return denom;
    }

    @Override
    public String toString() {
        return "CosmosLikeAmount{" +
                "amount=" + amount +
                "," + "denom=" + denom +
        "}";
    }

}
