// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from addresses.djinni

package co.ledger.core;

import java.util.concurrent.atomic.AtomicBoolean;

/** The xPUB definition for Bitcoin. */
public abstract class BitcoinLikeExtendedPublicKey {
    /** Derive an address from an xPUB and a path. */
    public abstract BitcoinLikeAddress derive(String path);

    /** Derive a public key from an xPUB and a path. */
    public abstract byte[] derivePublicKey(String path);

    /** Derive a shorten version of a public key (SHA256 + RIPEMD160) from an xPUB and a path. */
    public abstract byte[] deriveHash160(String path);

    /** Get the xPUB in base 58. */
    public abstract String toBase58();

    /** Get the root path of the xPUB. */
    public abstract String getRootPath();
    /** Release the underlying native object */
    public abstract void destroy();


    private static final class CppProxy extends BitcoinLikeExtendedPublicKey
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
        public BitcoinLikeAddress derive(String path)
        {
            if (this.destroyed.get())
            {
                throw new RuntimeException("trying to use a destroyed object (BitcoinLikeExtendedPublicKey)");
            }
            return native_derive(this.nativeRef, path);
        }
        private native BitcoinLikeAddress native_derive(long _nativeRef, String path);

        @Override
        public byte[] derivePublicKey(String path)
        {
            if (this.destroyed.get())
            {
                throw new RuntimeException("trying to use a destroyed object (BitcoinLikeExtendedPublicKey)");
            }
            return native_derivePublicKey(this.nativeRef, path);
        }
        private native byte[] native_derivePublicKey(long _nativeRef, String path);

        @Override
        public byte[] deriveHash160(String path)
        {
            if (this.destroyed.get())
            {
                throw new RuntimeException("trying to use a destroyed object (BitcoinLikeExtendedPublicKey)");
            }
            return native_deriveHash160(this.nativeRef, path);
        }
        private native byte[] native_deriveHash160(long _nativeRef, String path);

        @Override
        public String toBase58()
        {
            if (this.destroyed.get())
            {
                throw new RuntimeException("trying to use a destroyed object (BitcoinLikeExtendedPublicKey)");
            }
            return native_toBase58(this.nativeRef);
        }
        private native String native_toBase58(long _nativeRef);

        @Override
        public String getRootPath()
        {
            if (this.destroyed.get())
            {
                throw new RuntimeException("trying to use a destroyed object (BitcoinLikeExtendedPublicKey)");
            }
            return native_getRootPath(this.nativeRef);
        }
        private native String native_getRootPath(long _nativeRef);
    }
}
