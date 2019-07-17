// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from tezos_like_wallet.djinni

package co.ledger.core;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/**Class representing a Tezos account */
public abstract class TezosLikeAccount {
    public abstract void broadcastRawTransaction(byte[] transaction, StringCallback callback);

    public abstract void broadcastTransaction(TezosLikeTransaction transaction, StringCallback callback);

    public abstract TezosLikeTransactionBuilder buildTransaction();

    /**
     * Get needed storage to proceed a tx
     * @param address to which we want to send tx
     * @return needed storage to interact with address/contract
     * Note: same note as for getGasPrice method on EthereumLikeAccount
     */
    public abstract void getStorage(String address, BigIntCallback callback);

    /**
     * Get estimated gas limit to set so the transaction will succeed
     * The passed address could be implicit address or contract
     * This estimation is based on X last incoming txs (to address) that succeeded
     * Note: same note as for getFees method on BitcoinLikeAccount
     */
    public abstract void getEstimatedGasLimit(String address, BigIntCallback callback);

    /** Get originated accounts by current account */
    public abstract ArrayList<TezosLikeOriginatedAccount> getOriginatedAccounts();

    private static final class CppProxy extends TezosLikeAccount
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
        public void broadcastRawTransaction(byte[] transaction, StringCallback callback)
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            native_broadcastRawTransaction(this.nativeRef, transaction, callback);
        }
        private native void native_broadcastRawTransaction(long _nativeRef, byte[] transaction, StringCallback callback);

        @Override
        public void broadcastTransaction(TezosLikeTransaction transaction, StringCallback callback)
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            native_broadcastTransaction(this.nativeRef, transaction, callback);
        }
        private native void native_broadcastTransaction(long _nativeRef, TezosLikeTransaction transaction, StringCallback callback);

        @Override
        public TezosLikeTransactionBuilder buildTransaction()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_buildTransaction(this.nativeRef);
        }
        private native TezosLikeTransactionBuilder native_buildTransaction(long _nativeRef);

        @Override
        public void getStorage(String address, BigIntCallback callback)
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            native_getStorage(this.nativeRef, address, callback);
        }
        private native void native_getStorage(long _nativeRef, String address, BigIntCallback callback);

        @Override
        public void getEstimatedGasLimit(String address, BigIntCallback callback)
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            native_getEstimatedGasLimit(this.nativeRef, address, callback);
        }
        private native void native_getEstimatedGasLimit(long _nativeRef, String address, BigIntCallback callback);

        @Override
        public ArrayList<TezosLikeOriginatedAccount> getOriginatedAccounts()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getOriginatedAccounts(this.nativeRef);
        }
        private native ArrayList<TezosLikeOriginatedAccount> native_getOriginatedAccounts(long _nativeRef);
    }
}
