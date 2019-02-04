// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from crypto.djinni

package com.ledger.reactnative;

import co.ledger.core.HashAlgorithmHelper;
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
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Optional;
import java.util.UUID;

/** Helper class for commonly used crypto algorithms. */
public class RCTCoreHashAlgorithmHelper extends ReactContextBaseJavaModule {

    private final ReactApplicationContext reactContext;
    private Map<String, HashAlgorithmHelperImpl> javaObjects;
    public Map<String, HashAlgorithmHelperImpl> getJavaObjects()
    {
        return javaObjects;
    }

    public RCTCoreHashAlgorithmHelper(ReactApplicationContext reactContext)
    {
        super(reactContext);
        this.reactContext = reactContext;
        this.javaObjects = new HashMap<String, HashAlgorithmHelperImpl>();
        WritableNativeMap.setUseNativeAccessor(true);
    }

    @Override
    public String getName()
    {
        return "RCTCoreHashAlgorithmHelper";
    }
    @ReactMethod
    public void newInstance(Promise promise)
    {
        HashAlgorithmHelperImpl newInstance = new HashAlgorithmHelperImpl(this.reactContext);
        String uuid = UUID.randomUUID().toString();
        this.javaObjects.put(uuid, newInstance);
        WritableNativeMap finalResult = new WritableNativeMap();
        finalResult.putString("type","RCTCoreHashAlgorithmHelper");
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
            promise.reject("Failed to release instance of RCTCoreHashAlgorithmHelper", "First parameter of RCTCoreHashAlgorithmHelper::release should be an instance of RCTCoreHashAlgorithmHelper");
        }
    }
    @ReactMethod
    public void log(Promise promise)
    {
        WritableNativeArray result = new WritableNativeArray();
        for (Map.Entry<String, HashAlgorithmHelperImpl> elem : this.javaObjects.entrySet())
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
     * RACE Integrity Primitives Evaluation Message Digest (used in Bitcoin).
     * @param data in bytes, message to hash
     * @return 160 bits hashed message
     */
    @ReactMethod
    public void ripemd160(ReadableMap currentInstance, String data, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            HashAlgorithmHelperImpl currentInstanceObj = this.javaObjects.get(sUid);

            byte [] javaParam_0 = hexStringToByteArray(data);

            byte[] javaResult = currentInstanceObj.ripemd160(javaParam_0);
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
     * Secure Hash Algorithm (used in Bitcoin).
     * @param data in bytes, message to hash
     * @return 256 bits hashed message
     */
    @ReactMethod
    public void sha256(ReadableMap currentInstance, String data, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            HashAlgorithmHelperImpl currentInstanceObj = this.javaObjects.get(sUid);

            byte [] javaParam_0 = hexStringToByteArray(data);

            byte[] javaResult = currentInstanceObj.sha256(javaParam_0);
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
     * Hash algorithm used in ethereum.
     * @param data in bytes, message to hash
     * @return 256 bits hashed message
     */
    @ReactMethod
    public void keccak256(ReadableMap currentInstance, String data, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            HashAlgorithmHelperImpl currentInstanceObj = this.javaObjects.get(sUid);

            byte [] javaParam_0 = hexStringToByteArray(data);

            byte[] javaResult = currentInstanceObj.keccak256(javaParam_0);
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
}
