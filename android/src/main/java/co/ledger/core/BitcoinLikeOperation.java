// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from bitcoin_like_wallet.djinni

package co.ledger.core;

import java.util.concurrent.atomic.AtomicBoolean;

/** Class representing a Bitcoin Operation. */
public abstract class BitcoinLikeOperation {
    /**
     * Get operation's transaction.
     * @return BitcoinLikeTransaction object
     */
    public abstract BitcoinLikeTransaction getTransaction();
    /** Release the underlying native object */
    public abstract void destroy();


    private static final class CppProxy extends BitcoinLikeOperation
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
        public BitcoinLikeTransaction getTransaction()
        {
            if (this.destroyed.get())
            {
                throw new RuntimeException("trying to use a destroyed object (BitcoinLikeOperation)");
            }
            return native_getTransaction(this.nativeRef);
        }
        private native BitcoinLikeTransaction native_getTransaction(long _nativeRef);
    }
}
