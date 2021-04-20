// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from bitcoin_like_wallet.djinni

package co.ledger.core;

import java.util.concurrent.atomic.AtomicBoolean;

/** Class of constants to set Bitcoin like wallet configurations. */
public abstract class BitcoinLikeWalletConfiguration {
    /** String keychain's name. */
    public static final String KEYCHAIN = "keychain";

    /** String observer's name. */
    public static final String OBSERVER = "observer";

    /** String explorer's name. */
    public static final String EXPLORER = "explorer";

    /** String synchronizer's name. */
    public static final String SYNCHRONIZER = "synchronizer";

    /** String with Payment Script type and BIP on which hierarchical wallet is based. */
    public static final String KEYCHAIN_P2PKH_BIP44 = "p2pkh_bip44";

    /** String websocket on which observer receives notifications from explorer. */
    public static final String OBSERVER_LEDGER_WEBSOCKET = "ledger_websocket";

    /** String explorer api. */
    public static final String EXPLORER_LEDGER_API = "ledger_api";

    /** String synchronizer by default. */
    public static final String SYNCHRONIZER_DEFAULT = "default";

    /** Release the underlying native object */
    public abstract void destroy();


    private static final class CppProxy extends BitcoinLikeWalletConfiguration
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
    }
}
