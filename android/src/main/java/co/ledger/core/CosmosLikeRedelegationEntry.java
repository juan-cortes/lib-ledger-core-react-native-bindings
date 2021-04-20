// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from wallet.djinni

package co.ledger.core;

import java.util.Date;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class CosmosLikeRedelegationEntry {
    /** Block height of the begin redelegate request */
    public abstract BigInt getCreationHeight();

    /** Timestamp of the redelegation completion */
    public abstract Date getCompletionTime();

    /** Balance requested to redelegate */
    public abstract BigInt getInitialBalance();

    /** Current amount being redelegated (i.e. less than initialBalance if slashed) */
    public abstract BigInt getBalance();
    /** Release the underlying native object */
    public abstract void destroy();


    private static final class CppProxy extends CosmosLikeRedelegationEntry
    {
        private final long nativeRef;
        private final AtomicBoolean destroyed = new AtomicBoolean(false);

        private CppProxy(long nativeRef)
        {
            if (nativeRef == 0) throw new RuntimeException("nativeRef is zero");
            this.nativeRef = nativeRef;
        }

        private native void nativeDestroy(long nativeRef);
        @Override
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
        public BigInt getCreationHeight()
        {
            if (this.destroyed.get())
            {
                throw new RuntimeException("trying to use a destroyed object (CosmosLikeRedelegationEntry)");
            }
            return native_getCreationHeight(this.nativeRef);
        }
        private native BigInt native_getCreationHeight(long _nativeRef);

        @Override
        public Date getCompletionTime()
        {
            if (this.destroyed.get())
            {
                throw new RuntimeException("trying to use a destroyed object (CosmosLikeRedelegationEntry)");
            }
            return native_getCompletionTime(this.nativeRef);
        }
        private native Date native_getCompletionTime(long _nativeRef);

        @Override
        public BigInt getInitialBalance()
        {
            if (this.destroyed.get())
            {
                throw new RuntimeException("trying to use a destroyed object (CosmosLikeRedelegationEntry)");
            }
            return native_getInitialBalance(this.nativeRef);
        }
        private native BigInt native_getInitialBalance(long _nativeRef);

        @Override
        public BigInt getBalance()
        {
            if (this.destroyed.get())
            {
                throw new RuntimeException("trying to use a destroyed object (CosmosLikeRedelegationEntry)");
            }
            return native_getBalance(this.nativeRef);
        }
        private native BigInt native_getBalance(long _nativeRef);
    }
}
