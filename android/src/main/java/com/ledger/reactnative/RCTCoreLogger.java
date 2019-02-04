// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from logger.djinni

package com.ledger.reactnative;

import co.ledger.core.Logger;
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

/** Class to print logs to console. */
public class RCTCoreLogger extends ReactContextBaseJavaModule {

    private final ReactApplicationContext reactContext;
    private Map<String, Logger> javaObjects;
    public Map<String, Logger> getJavaObjects()
    {
        return javaObjects;
    }

    public RCTCoreLogger(ReactApplicationContext reactContext)
    {
        super(reactContext);
        this.reactContext = reactContext;
        this.javaObjects = new HashMap<String, Logger>();
        WritableNativeMap.setUseNativeAccessor(true);
    }

    @Override
    public String getName()
    {
        return "RCTCoreLogger";
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
            promise.reject("Failed to release instance of RCTCoreLogger", "First parameter of RCTCoreLogger::release should be an instance of RCTCoreLogger");
        }
    }
    @ReactMethod
    public void log(Promise promise)
    {
        WritableNativeArray result = new WritableNativeArray();
        for (Map.Entry<String, Logger> elem : this.javaObjects.entrySet())
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

    /**
     * Print debug message to console.
     * @param tag, string
     * @param message, string
     */
    @ReactMethod
    public void d(ReadableMap currentInstance, String tag, String message, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            Logger currentInstanceObj = this.javaObjects.get(sUid);

            currentInstanceObj.d(tag, message);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /**
     * Print information message to console.
     * @param tag, string
     * @param message, string
     */
    @ReactMethod
    public void i(ReadableMap currentInstance, String tag, String message, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            Logger currentInstanceObj = this.javaObjects.get(sUid);

            currentInstanceObj.i(tag, message);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /**
     * Print error message to console.
     * @param tag, string
     * @param message, string
     */
    @ReactMethod
    public void e(ReadableMap currentInstance, String tag, String message, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            Logger currentInstanceObj = this.javaObjects.get(sUid);

            currentInstanceObj.e(tag, message);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /**
     * Print warning message to console.
     * @param tag, string
     * @param message, string
     */
    @ReactMethod
    public void w(ReadableMap currentInstance, String tag, String message, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            Logger currentInstanceObj = this.javaObjects.get(sUid);

            currentInstanceObj.w(tag, message);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
    /**
     * Print critical error message to console.
     * @param tag, string
     * @param message, string
     */
    @ReactMethod
    public void c(ReadableMap currentInstance, String tag, String message, Promise promise) {
        try
        {
            String sUid = currentInstance.getString("uid");

            Logger currentInstanceObj = this.javaObjects.get(sUid);

            currentInstanceObj.c(tag, message);
        }
        catch(Exception e)
        {
            promise.reject(e.toString(), e.getMessage());
        }
    }
}
