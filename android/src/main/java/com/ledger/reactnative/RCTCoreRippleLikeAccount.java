// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from ripple_like_wallet.djinni

package com.ledger.reactnative;

import co.ledger.core.AmountCallback;
import co.ledger.core.BoolCallback;
import co.ledger.core.RippleLikeAccount;
import co.ledger.core.RippleLikeTransaction;
import co.ledger.core.RippleLikeTransactionBuilder;
import co.ledger.core.StringCallback;
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

/**Class representing a Ripple account */
@ReactModule(name = "RCTCoreRippleLikeAccount")
public class RCTCoreRippleLikeAccount extends ReactContextBaseJavaModule {

    private final ReactApplicationContext reactContext;
    private Map<String, RippleLikeAccount> javaObjects;
    public Map<String, RippleLikeAccount> getJavaObjects()
    {
        return javaObjects;
    }

    public RCTCoreRippleLikeAccount(ReactApplicationContext reactContext)
    {
        super(reactContext);
        this.reactContext = reactContext;
        this.javaObjects = new HashMap<String, RippleLikeAccount>();
        WritableNativeMap.setUseNativeAccessor(true);
    }

    @Override
    public String getName()
    {
        return "RCTCoreRippleLikeAccount";
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
            promise.reject("Failed to release instance of RCTCoreRippleLikeAccount", "First parameter of RCTCoreRippleLikeAccount::release should be an instance of RCTCoreRippleLikeAccount");
        }
    }
    @ReactMethod
    public void log(Promise promise)
    {
        WritableNativeArray result = new WritableNativeArray();
        for (Map.Entry<String, RippleLikeAccount> elem : this.javaObjects.entrySet())
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

    @ReactMethod
    public void broadcastRawTransaction(ReadableMap currentInstance, String transaction, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            RippleLikeAccount currentInstanceObj = this.javaObjects.get(sUid);

            byte [] javaParam_0 = hexStringToByteArray(transaction);

            RCTCoreStringCallback javaParam_1 = RCTCoreStringCallback.initWithPromise(promise, this.reactContext);
            currentInstanceObj.broadcastRawTransaction(javaParam_0, javaParam_1);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    @ReactMethod
    public void broadcastTransaction(ReadableMap currentInstance, ReadableMap transaction, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            RippleLikeAccount currentInstanceObj = this.javaObjects.get(sUid);

            RCTCoreRippleLikeTransaction rctParam_transaction = this.reactContext.getNativeModule(RCTCoreRippleLikeTransaction.class);
            RippleLikeTransaction javaParam_0 = rctParam_transaction.getJavaObjects().get(transaction.getString("uid"));
            RCTCoreStringCallback javaParam_1 = RCTCoreStringCallback.initWithPromise(promise, this.reactContext);
            currentInstanceObj.broadcastTransaction(javaParam_0, javaParam_1);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    @ReactMethod
    public void buildTransaction(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            RippleLikeAccount currentInstanceObj = this.javaObjects.get(sUid);

            RippleLikeTransactionBuilder javaResult = currentInstanceObj.buildTransaction();

            String javaResult_uuid = UUID.randomUUID().toString();
            RCTCoreRippleLikeTransactionBuilder rctImpl_javaResult = this.reactContext.getNativeModule(RCTCoreRippleLikeTransactionBuilder.class);
            rctImpl_javaResult.getJavaObjects().put(javaResult_uuid, javaResult);
            WritableNativeMap result = new WritableNativeMap();
            result.putString("type","RCTCoreRippleLikeTransactionBuilder");
            result.putString("uid",javaResult_uuid);

            promise.resolve(result);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /**
     * Get fees from network
     * Note: it would have been better to have this method on RippleLikeWallet
     * but since RippleLikeWallet is not used anywhere, it's better to keep all
     * specific methods under the same specific class so it will be easy to segratate
     * when the right time comes !
     */
    @ReactMethod
    public void getFees(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            RippleLikeAccount currentInstanceObj = this.javaObjects.get(sUid);

            RCTCoreAmountCallback javaParam_0 = RCTCoreAmountCallback.initWithPromise(promise, this.reactContext);
            currentInstanceObj.getFees(javaParam_0);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /**
     * Get base reserve (dust to leave on an XRP account) from network
     * Note: same note as above
     */
    @ReactMethod
    public void getBaseReserve(ReadableMap currentInstance, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            RippleLikeAccount currentInstanceObj = this.javaObjects.get(sUid);

            RCTCoreAmountCallback javaParam_0 = RCTCoreAmountCallback.initWithPromise(promise, this.reactContext);
            currentInstanceObj.getBaseReserve(javaParam_0);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /**
     * Check whether an account has been activated or not
     * Here activation, means that the XRP account received a first transaction with a minimum amount
     * greater or equal to XRP base reserve
     * @param: address to check
     * @return: true if valid address and has been activated, false otherwise
     */
    @ReactMethod
    public void isAddressActivated(ReadableMap currentInstance, String address, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            RippleLikeAccount currentInstanceObj = this.javaObjects.get(sUid);

            RCTCoreBoolCallback javaParam_1 = RCTCoreBoolCallback.initWithPromise(promise, this.reactContext);
            currentInstanceObj.isAddressActivated(address, javaParam_1);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
}
