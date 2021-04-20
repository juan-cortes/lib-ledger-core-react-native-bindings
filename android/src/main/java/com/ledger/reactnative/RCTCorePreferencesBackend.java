// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from preferences.djinni

package com.ledger.reactnative;

import co.ledger.core.PreferencesBackend;
import co.ledger.core.PreferencesChange;
import co.ledger.core.RandomNumberGenerator;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.ReadableNativeArray;
import com.facebook.react.bridge.ReadableNativeMap;
import com.facebook.react.bridge.WritableNativeArray;
import com.facebook.react.bridge.WritableNativeMap;
import com.facebook.react.module.annotations.ReactModule;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Optional;
import java.util.TimeZone;
import java.util.UUID;

/** Interface describing the behaviour of the backend used by Preferences. */
@ReactModule(name = "RCTCorePreferencesBackend")
public class RCTCorePreferencesBackend extends ReactContextBaseJavaModule {

    private final ReactApplicationContext reactContext;
    private Map<String, PreferencesBackendImpl> javaObjects;
    public Map<String, PreferencesBackendImpl> getJavaObjects()
    {
        return javaObjects;
    }

    public RCTCorePreferencesBackend(ReactApplicationContext reactContext)
    {
        super(reactContext);
        this.reactContext = reactContext;
        this.javaObjects = new HashMap<String, PreferencesBackendImpl>();
    }

    @Override
    public String getName()
    {
        return "RCTCorePreferencesBackend";
    }
    @ReactMethod
    public void newInstance(Promise promise)
    {
        PreferencesBackendImpl newInstance = new PreferencesBackendImpl(this.reactContext);
        String uuid = UUID.randomUUID().toString();
        this.javaObjects.put(uuid, newInstance);
        WritableNativeMap finalResult = new WritableNativeMap();
        finalResult.putString("type","RCTCorePreferencesBackend");
        finalResult.putString("uid",uuid);
        promise.resolve(finalResult);
    }
    @ReactMethod
    public void release(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            this.javaObjects.remove(uid);
            promise.resolve(0);
        }
        else
        {
            promise.reject("Failed to release instance of RCTCorePreferencesBackend", "First parameter of RCTCorePreferencesBackend::release should be an instance of RCTCorePreferencesBackend");
        }
    }
    @ReactMethod
    public void log(Promise promise)
    {
        WritableNativeArray result = new WritableNativeArray();
        for (Map.Entry<String, PreferencesBackendImpl> elem : this.javaObjects.entrySet())
        {
            result.pushString(elem.getKey());
        }
        promise.resolve(result);
    }
    @ReactMethod
    public void flush(Promise promise)
    {
        this.javaObjects.clear();
        promise.resolve(0);
    }
    @ReactMethod
    public void isNull(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            if (this.javaObjects.get(uid) == null)
            {
                promise.resolve(true);
                return;
            }
            else
            {
                promise.resolve(false);
                return;
            }
        }
        promise.resolve(true);
    }
    public static byte[] hexStringToByteArray(String hexString)
    {
        int hexStringLength = hexString.length();
        byte[] data = new byte[hexStringLength / 2];
        for (int i = 0; i < hexStringLength; i += 2)
        {
            data[i / 2] = (byte) ((Character.digit(hexString.charAt(i), 16) << 4) + Character.digit(hexString.charAt(i+1), 16));
        }
        return data;
    }
    static final String HEXES = "0123456789ABCDEF";
    public static String byteArrayToHexString( byte [] data)
    {
        if (data == null)
        {
            return null;
        }
        final StringBuilder hexStringBuilder = new StringBuilder( 2 * data.length );
        for ( final byte b : data )
        {
            hexStringBuilder.append(HEXES.charAt((b & 0xF0) >> 4)).append(HEXES.charAt((b & 0x0F)));
        }
        return hexStringBuilder.toString();
    }

    /**
     * Gets the value associated to the given key.
     * @param key The data key.
     * @return The value associated to the key if it exists, an empty option otherwise.
     */
    @ReactMethod
    public void get(ReadableMap currentInstance, String key, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            PreferencesBackendImpl currentInstanceObj = this.javaObjects.get(sUid);

            byte [] javaParam_0 = hexStringToByteArray(key);

            byte[] javaResult = currentInstanceObj.get(javaParam_0);
            WritableNativeMap result = new WritableNativeMap();
            String finalJavaResult = byteArrayToHexString(javaResult);
            result.putString("value", finalJavaResult);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /**
     * Commit a change.
     * @param changes The list of changes to commit.
     * @return false if unsuccessful (might happen if the underlying DB was destroyed).
     */
    @ReactMethod
    public void commit(ReadableMap currentInstance, ReadableArray changes, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            PreferencesBackendImpl currentInstanceObj = this.javaObjects.get(sUid);

            ArrayList<PreferencesChange> javaParam_0 = new ArrayList<PreferencesChange>();
            for (int i = 0; i <  changes.size(); i++)
            {
                ReadableMap changes_elem = changes.getMap(i);
                RCTCorePreferencesChange rctParam_changes_elem = this.reactContext.getNativeModule(RCTCorePreferencesChange.class);
                PreferencesChange javaParam_0_elem = rctParam_changes_elem.getJavaObjects().get(changes_elem.getString("uid"));
                javaParam_0.add(javaParam_0_elem);
            }
            boolean javaResult = currentInstanceObj.commit(javaParam_0);
            WritableNativeMap result = new WritableNativeMap();
            result.putBoolean("value", javaResult);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /**
     * Turn encryption on for all future uses.
     * This method will set encryption on for all future values that will be persisted.
     * If this function is called on a plaintext storage (i.e. first encryption for
     * instance), it will also encrypt all data already present.
     * @param rng Random number generator used to generate the encryption salt.
     * @param password The new password.
     */
    @ReactMethod
    public void setEncryption(ReadableMap currentInstance, ReadableMap rng, String password, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            PreferencesBackendImpl currentInstanceObj = this.javaObjects.get(sUid);

            RCTCoreRandomNumberGenerator rctParam_rng = this.reactContext.getNativeModule(RCTCoreRandomNumberGenerator.class);
            RandomNumberGenerator javaParam_0 = rctParam_rng.getJavaObjects().get(rng.getString("uid"));
            RandomNumberGeneratorImpl javaParam_0_java = (RandomNumberGeneratorImpl)javaParam_0;
            javaParam_0_java.setPromise(promise);
            currentInstanceObj.setEncryption(javaParam_0, password);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /**
     * Turn off encryption by disabling the use of the internal cipher. Data is left
     * untouched.
     * This method is suitable when you want to get back raw, encrypted data. If you want
     * to disable encryption in order to read clear data back without password, consider
     * the resetEncryption method instead.
     */
    @ReactMethod
    public void unsetEncryption(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            PreferencesBackendImpl currentInstanceObj = this.javaObjects.get(sUid);

            currentInstanceObj.unsetEncryption();
            promise.resolve(0);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /**
     * Reset the encryption with a new password by first decrypting on the
     * fly with the old password the data present.
     * If the new password is an empty string, after this method is called, the database
     * is completely unciphered and no password is required to read from it.
     * @return true if the reset occurred correctly, false otherwise (e.g. trying to change
     * password with an old password but without a proper salt already persisted).
     */
    @ReactMethod
    public void resetEncryption(ReadableMap currentInstance, ReadableMap rng, String oldPassword, String newPassword, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            PreferencesBackendImpl currentInstanceObj = this.javaObjects.get(sUid);

            RCTCoreRandomNumberGenerator rctParam_rng = this.reactContext.getNativeModule(RCTCoreRandomNumberGenerator.class);
            RandomNumberGenerator javaParam_0 = rctParam_rng.getJavaObjects().get(rng.getString("uid"));
            boolean javaResult = currentInstanceObj.resetEncryption(javaParam_0, oldPassword, newPassword);
            WritableNativeMap result = new WritableNativeMap();
            result.putBoolean("value", javaResult);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /**
     * Get encryption salt, if any.
     * @return the encryption salt if it exists, an empty string otherwise.
     */
    @ReactMethod
    public void getEncryptionSalt(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            PreferencesBackendImpl currentInstanceObj = this.javaObjects.get(sUid);

            String javaResult = currentInstanceObj.getEncryptionSalt();
            WritableNativeMap result = new WritableNativeMap();
            result.putString("value", javaResult);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /** Clear all preferences. */
    @ReactMethod
    public void clear(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            PreferencesBackendImpl currentInstanceObj = this.javaObjects.get(sUid);

            currentInstanceObj.clear();
            promise.resolve(0);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
}
