// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from configuration.djinni

package co.ledger.core;

import java.util.concurrent.atomic.AtomicBoolean;

/** Overall configuration. */
public abstract class Configuration {
    /** Selects the keychain engine (P2PKH, P2SH...). */
    public static final String KEYCHAIN_ENGINE = "KEYCHAIN_ENGINE";

    /** Sets the derivation scheme for the KEYCHAIN (defaults 44'/<coin_type>'/<account>'/<node>/<address>). */
    public static final String KEYCHAIN_DERIVATION_SCHEME = "KEYCHAIN_DERIVATION_SCHEME";

    /** Sets the observable range for HD keychains (BIP32 based). */
    public static final String KEYCHAIN_OBSERVABLE_RANGE = "KEYCHAIN_OBSERVABLE_RANGE";

    /** Selects the blockchain explorer engine (Ledger's API, Electrum server, RPC): */
    public static final String BLOCKCHAIN_EXPLORER_ENGINE = "BLOCKCHAIN_EXPLORER_ENGINE";

    /** Sets the API endpoint for API based engine (Ledger's API). */
    public static final String BLOCKCHAIN_EXPLORER_API_ENDPOINT = "BLOCKCHAIN_EXPLORER_API_ENDPOINT";

    /** Sets the API key if one is required */
    public static final String BLOCKCHAIN_EXPLORER_API_KEY = "BLOCKCHAIN_EXPLORER_API_KEY";

    /** Sets the API version. */
    public static final String BLOCKCHAIN_EXPLORER_VERSION = "BLOCKCHAIN_EXPLORER_VERSION";

    /** Sets the API port (e.g. for XRP it is 51234) */
    public static final String BLOCKCHAIN_EXPLORER_PORT = "BLOCKCHAIN_EXPLORER_PORT";

    /** Selects the blockchain observer engine (Ledger's API) */
    public static final String BLOCKCHAIN_OBSERVER_ENGINE = "BLOCKCHAIN_OBSERVER_ENGINE";

    /** Selects the blockchain observer engine (Ledger's API; Websocket version). */
    public static final String BLOCKCHAIN_OBSERVER_WS_ENDPOINT = "BLOCKCHAIN_OBSERVER_WS_ENDPOINT";

    /** Selects the synchronization engine. */
    public static final String SYNCHRONIZATION_ENGINE = "SYNCHRONIZATION_ENGINE";

    /** Sets the half batch size (default: 20). */
    public static final String SYNCHRONIZATION_HALF_BATCH_SIZE = "SYNCHRONIZATION_HALF_BATCH_SIZE";

    /** Operation trust. */
    public static final String TRUST_LIMIT = "TRUST_LIMIT";

    /** Time to Live for block cache */
    public static final String TTL_CACHE = "TTL_CACHE";

    /** Syncronization token deactivation */
    public static final String DEACTIVATE_SYNC_TOKEN = "DEACTIVATE_SYNC_TOKEN";

    /** Release the underlying native object */
    public abstract void destroy();


    private static final class CppProxy extends Configuration
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
