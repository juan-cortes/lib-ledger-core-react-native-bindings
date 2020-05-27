// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from messages.djinni

package co.ledger.core;

import java.util.concurrent.atomic.AtomicBoolean;

public abstract class CosmosLikeMessage {
    /**
     * Get type
     * @return CosmosLikeMsgType a message type
     */
    public abstract CosmosLikeMsgType getMessageType();

    /**
     * Get type
     * @return string a message type in string format
     */
    public abstract String getRawMessageType();

    /**
     * Get type
     * @return bool if the message was successfully executed on the chain
     */
    public abstract boolean getSuccess();

    /**
     * Get type
     * @return string the log of the message execution (useful when getSuccess() == false)
     */
    public abstract String getLog();

    /**
     * Get message index in the tx
     * @return string the 0-based index in the tx or "fees" for the fees in the tx
     */
    public abstract String getIndex();

    /**
     * Wrap the given CosmosLikeMsgSend into a CosmosLikeMessage
     * @param msg The message you need to wrap.
     * @return CosmosLikeMessage A wrapped message.
     */
    public static native CosmosLikeMessage wrapMsgSend(CosmosLikeMsgSend msg);

    /**
     * Unwrap a message to a CosmosLikeMsgSend
     * @param msg The message to unwrap
     * @return CosmosLikeMsgDelegate the unwrapped message
     */
    public static native CosmosLikeMsgSend unwrapMsgSend(CosmosLikeMessage msg);

    /**
     * Wrap the given CosmosLikeMsgDelegate into a CosmosLikeMessage
     * @param msg The message you need to wrap.
     * @return CosmosLikeMessage A wrapped message.
     */
    public static native CosmosLikeMessage wrapMsgDelegate(CosmosLikeMsgDelegate msg);

    /**
     * Unwrap a message to a CosmosLikeMsgDelegate
     * @param msg The message to unwrap
     * @return CosmosLikeMsgDelegate the unwrapped message
     */
    public static native CosmosLikeMsgDelegate unwrapMsgDelegate(CosmosLikeMessage msg);

    /**
     * Wrap the given CosmosLikeMsgUndelegate into a CosmosLikeMessage
     * @param msg The message you need to wrap.
     * @return CosmosLikeMessage A wrapped message.
     */
    public static native CosmosLikeMessage wrapMsgUndelegate(CosmosLikeMsgUndelegate msg);

    /**
     * Unwrap a message to a CosmosLikeMsgUndelegate
     * @param msg The message to unwrap
     * @return CosmosLikeMsgUndelegate the unwrapped message
     */
    public static native CosmosLikeMsgUndelegate unwrapMsgUndelegate(CosmosLikeMessage msg);

    /**
     * Wrap the given CosmosLikeMsgBeginRedelegate into a CosmosLikeMessage
     * @param msg The message you need to wrap.
     * @return CosmosLikeMessage A wrapped message.
     */
    public static native CosmosLikeMessage wrapMsgBeginRedelegate(CosmosLikeMsgBeginRedelegate msg);

    /**
     * Unwrap a message to a CosmosLikeMsgBeginRedelegate
     * @param msg The message to unwrap
     * @return CosmosLikeMsgBeginRedelegate the unwrapped message
     */
    public static native CosmosLikeMsgBeginRedelegate unwrapMsgBeginRedelegate(CosmosLikeMessage msg);

    /**
     * Wrap the given CosmosLikeMsgSubmitProposal into a CosmosLikeMessage
     * @param msg The message you need to wrap.
     * @return CosmosLikeMessage A wrapped message.
     */
    public static native CosmosLikeMessage wrapMsgSubmitProposal(CosmosLikeMsgSubmitProposal msg);

    /**
     * Unwrap a message to a CosmosLikeMsgSubmitProposal
     * @param msg The message to unwrap
     * @return CosmosLikeMsgSubmitProposal the unwrapped message
     */
    public static native CosmosLikeMsgSubmitProposal unwrapMsgSubmitProposal(CosmosLikeMessage msg);

    /**
     * Wrap the given CosmosLikeMsgVote into a CosmosLikeMessage
     * @param msg The message you need to wrap.
     * @return CosmosLikeMessage A wrapped message.
     */
    public static native CosmosLikeMessage wrapMsgVote(CosmosLikeMsgVote msg);

    /**
     * Unwrap a message to a CosmosLikeMsgVote
     * @param msg The message to unwrap
     * @return CosmosLikeMsgVote the unwrapped message
     */
    public static native CosmosLikeMsgVote unwrapMsgVote(CosmosLikeMessage msg);

    /**
     * Wrap the given CosmosLikeMsgDeposit into a CosmosLikeMessage
     * @param msg The message you need to wrap.
     * @return CosmosLikeMessage A wrapped message.
     */
    public static native CosmosLikeMessage wrapMsgDeposit(CosmosLikeMsgDeposit msg);

    /**
     * Unwrap a message to a CosmosLikeMsgDeposit
     * @param msg The message to unwrap
     * @return CosmosLikeMsgDeposit the unwrapped message
     */
    public static native CosmosLikeMsgDeposit unwrapMsgDeposit(CosmosLikeMessage msg);

    /**
     * Wrap the given CosmosLikeMsgWithdrawDelegationReward into a CosmosLikeMessage
     * @param msg The message you need to wrap.
     * @return CosmosLikeMessage A wrapped message.
     */
    public static native CosmosLikeMessage wrapMsgWithdrawDelegationReward(CosmosLikeMsgWithdrawDelegationReward msg);

    /**
     * Unwrap a message to a CosmosLikeMsgWithdrawDelegationReward
     * @param msg The message to unwrap
     * @return CosmosLikeMsgWithdrawDelegationReward the unwrapped message
     */
    public static native CosmosLikeMsgWithdrawDelegationReward unwrapMsgWithdrawDelegationReward(CosmosLikeMessage msg);

    /**
     * Wrap the given CosmosLikeMsgMultiSend into a CosmosLikeMessage
     * @param msg The message you need to wrap.
     * @return CosmosLikeMessage A wrapped message.
     */
    public static native CosmosLikeMessage wrapMsgMultiSend(CosmosLikeMsgMultiSend msg);

    /**
     * Unwrap a message to a CosmosLikeMsgMultiSend
     * @param msg The message to unwrap
     * @return CosmosLikeMsgMultiSend the unwrapped message
     */
    public static native CosmosLikeMsgMultiSend unwrapMsgMultiSend(CosmosLikeMessage msg);

    /**
     * Wrap the given CosmosLikeMsgCreateValidator into a CosmosLikeMessage
     * @param msg The message you need to wrap.
     * @return CosmosLikeMessage A wrapped message.
     */
    public static native CosmosLikeMessage wrapMsgCreateValidator(CosmosLikeMsgCreateValidator msg);

    /**
     * Unwrap a message to a CosmosLikeMsgCreateValidator
     * @param msg The message to unwrap
     * @return CosmosLikeMsgCreateValidator the unwrapped message
     */
    public static native CosmosLikeMsgCreateValidator unwrapMsgCreateValidator(CosmosLikeMessage msg);

    /**
     * Wrap the given CosmosLikeMsgEditValidator into a CosmosLikeMessage
     * @param msg The message you need to wrap.
     * @return CosmosLikeMessage A wrapped message.
     */
    public static native CosmosLikeMessage wrapMsgEditValidator(CosmosLikeMsgEditValidator msg);

    /**
     * Unwrap a message to a CosmosLikeMsgEditValidator
     * @param msg The message to unwrap
     * @return CosmosLikeMsgEditValidator the unwrapped message
     */
    public static native CosmosLikeMsgEditValidator unwrapMsgEditValidator(CosmosLikeMessage msg);

    /**
     * Wrap the given CosmosLikeMsgSetWithdrawAddress into a CosmosLikeMessage
     * @param msg The message you need to wrap.
     * @return CosmosLikeMessage A wrapped message.
     */
    public static native CosmosLikeMessage wrapMsgSetWithdrawAddress(CosmosLikeMsgSetWithdrawAddress msg);

    /**
     * Unwrap a message to a CosmosLikeMsgSetWithdrawAddress
     * @param msg The message to unwrap
     * @return CosmosLikeMsgSetWithdrawAddress the unwrapped message
     */
    public static native CosmosLikeMsgSetWithdrawAddress unwrapMsgSetWithdrawAddress(CosmosLikeMessage msg);

    /**
     * Wrap the given CosmosLikeMsgWithdrawDelegatorReward into a CosmosLikeMessage
     * @param msg The message you need to wrap.
     * @return CosmosLikeMessage A wrapped message.
     */
    public static native CosmosLikeMessage wrapMsgWithdrawDelegatorReward(CosmosLikeMsgWithdrawDelegatorReward msg);

    /**
     * Unwrap a message to a CosmosLikeMsgWithdrawDelegatorReward
     * @param msg The message to unwrap
     * @return CosmosLikeMsgWithdrawDelegatorReward the unwrapped message
     */
    public static native CosmosLikeMsgWithdrawDelegatorReward unwrapMsgWithdrawDelegatorReward(CosmosLikeMessage msg);

    /**
     * Wrap the given CosmosLikeMsgWithdrawValidatorCommission into a CosmosLikeMessage
     * @param msg The message you need to wrap.
     * @return CosmosLikeMessage A wrapped message.
     */
    public static native CosmosLikeMessage wrapMsgWithdrawValidatorCommission(CosmosLikeMsgWithdrawValidatorCommission msg);

    /**
     * Unwrap a message to a CosmosLikeMsgWithdrawValidatorCommission
     * @param msg The message to unwrap
     * @return CosmosLikeMsgWithdrawValidatorCommission the unwrapped message
     */
    public static native CosmosLikeMsgWithdrawValidatorCommission unwrapMsgWithdrawValidatorCommission(CosmosLikeMessage msg);

    /**
     * Wrap the given CosmosLikeMsgUnjail into a CosmosLikeMessage
     * @param msg The message you need to wrap.
     * @return CosmosLikeMessage A wrapped message.
     */
    public static native CosmosLikeMessage wrapMsgUnjail(CosmosLikeMsgUnjail msg);

    /**
     * Unwrap a message to a CosmosLikeMsgUnjail
     * @param msg The message to unwrap
     * @return CosmosLikeMsgUnjail the unwrapped message
     */
    public static native CosmosLikeMsgUnjail unwrapMsgUnjail(CosmosLikeMessage msg);

    private static final class CppProxy extends CosmosLikeMessage
    {
        private final long nativeRef;
        private final AtomicBoolean destroyed = new AtomicBoolean(false);

        private CppProxy(long nativeRef)
        {
            if (nativeRef == 0) throw new RuntimeException("nativeRef is zero");
            this.nativeRef = nativeRef;
        }

        private native void nativeDestroy(long nativeRef);
        public void destroy()
        {
            boolean destroyed = this.destroyed.getAndSet(true);
            if (!destroyed) nativeDestroy(this.nativeRef);
        }
        protected void finalize() throws java.lang.Throwable
        {
            destroy();
            super.finalize();
        }

        @Override
        public CosmosLikeMsgType getMessageType()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getMessageType(this.nativeRef);
        }
        private native CosmosLikeMsgType native_getMessageType(long _nativeRef);

        @Override
        public String getRawMessageType()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getRawMessageType(this.nativeRef);
        }
        private native String native_getRawMessageType(long _nativeRef);

        @Override
        public boolean getSuccess()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getSuccess(this.nativeRef);
        }
        private native boolean native_getSuccess(long _nativeRef);

        @Override
        public String getLog()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getLog(this.nativeRef);
        }
        private native String native_getLog(long _nativeRef);

        @Override
        public String getIndex()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getIndex(this.nativeRef);
        }
        private native String native_getIndex(long _nativeRef);
    }
}
