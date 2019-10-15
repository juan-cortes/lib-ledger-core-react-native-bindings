// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from tezos_like_wallet.djinni

package co.ledger.core;

import java.util.Date;
import java.util.concurrent.atomic.AtomicBoolean;

/**Class representing a Tezos transaction */
public abstract class TezosLikeTransaction {
    /** Get type of operation (transaction, reveal ... cf TezosOperationTag) */
    public abstract TezosOperationTag getType();

    /** Get the hash of the transaction. */
    public abstract String getHash();

    /** Get Fees (in drop) */
    public abstract Amount getFees();

    /** Get destination XTZ. address */
    public abstract TezosLikeAddress getReceiver();

    /** Get XTZ. sender address */
    public abstract TezosLikeAddress getSender();

    /** Get amount of XTZ to send */
    public abstract Amount getValue();

    /** Serialize the transaction to its raw format. */
    public abstract byte[] serialize();

    /** Set signature of transaction, when a signature is set serialize method gives back serialized Tx */
    public abstract void setSignature(byte[] signature);

    /**
     * Get the time when the transaction was issued or the time of the block including
     * this transaction
     */
    public abstract Date getDate();

    /** Get Signing public Key */
    public abstract byte[] getSigningPubKey();

    public abstract BigInt getCounter();

    public abstract Amount getGasLimit();

    public abstract BigInt getStorageLimit();

    /** Get hash of block in which tx is included */
    public abstract String getBlockHash();

    private static final class CppProxy extends TezosLikeTransaction
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
        public TezosOperationTag getType()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getType(this.nativeRef);
        }
        private native TezosOperationTag native_getType(long _nativeRef);

        @Override
        public String getHash()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getHash(this.nativeRef);
        }
        private native String native_getHash(long _nativeRef);

        @Override
        public Amount getFees()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getFees(this.nativeRef);
        }
        private native Amount native_getFees(long _nativeRef);

        @Override
        public TezosLikeAddress getReceiver()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getReceiver(this.nativeRef);
        }
        private native TezosLikeAddress native_getReceiver(long _nativeRef);

        @Override
        public TezosLikeAddress getSender()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getSender(this.nativeRef);
        }
        private native TezosLikeAddress native_getSender(long _nativeRef);

        @Override
        public Amount getValue()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getValue(this.nativeRef);
        }
        private native Amount native_getValue(long _nativeRef);

        @Override
        public byte[] serialize()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_serialize(this.nativeRef);
        }
        private native byte[] native_serialize(long _nativeRef);

        @Override
        public void setSignature(byte[] signature)
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            native_setSignature(this.nativeRef, signature);
        }
        private native void native_setSignature(long _nativeRef, byte[] signature);

        @Override
        public Date getDate()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getDate(this.nativeRef);
        }
        private native Date native_getDate(long _nativeRef);

        @Override
        public byte[] getSigningPubKey()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getSigningPubKey(this.nativeRef);
        }
        private native byte[] native_getSigningPubKey(long _nativeRef);

        @Override
        public BigInt getCounter()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getCounter(this.nativeRef);
        }
        private native BigInt native_getCounter(long _nativeRef);

        @Override
        public Amount getGasLimit()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getGasLimit(this.nativeRef);
        }
        private native Amount native_getGasLimit(long _nativeRef);

        @Override
        public BigInt getStorageLimit()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getStorageLimit(this.nativeRef);
        }
        private native BigInt native_getStorageLimit(long _nativeRef);

        @Override
        public String getBlockHash()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            return native_getBlockHash(this.nativeRef);
        }
        private native String native_getBlockHash(long _nativeRef);
    }
}
