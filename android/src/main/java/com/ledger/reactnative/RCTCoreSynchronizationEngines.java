// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from configuration.djinni

package com.ledger.reactnative;

import co.ledger.core.SynchronizationEngines;
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

/** Available synchronization mechanisms. */
public class RCTCoreSynchronizationEngines extends ReactContextBaseJavaModule {

    private final ReactApplicationContext reactContext;
    private Map<String, SynchronizationEngines> javaObjects;
    public Map<String, SynchronizationEngines> getJavaObjects()
    {
        return javaObjects;
    }

    public RCTCoreSynchronizationEngines(ReactApplicationContext reactContext)
    {
        super(reactContext);
        this.reactContext = reactContext;
        this.javaObjects = new HashMap<String, SynchronizationEngines>();
        WritableNativeMap.setUseNativeAccessor(true);
    }

    @Override
    public String getName()
    {
        return "RCTCoreSynchronizationEngines";
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
            promise.reject("Failed to release instance of RCTCoreSynchronizationEngines", "First parameter of RCTCoreSynchronizationEngines::release should be an instance of RCTCoreSynchronizationEngines");
        }
    }
    @ReactMethod
    public void log(Promise promise)
    {
        WritableNativeArray result = new WritableNativeArray();
        for (Map.Entry<String, SynchronizationEngines> elem : this.javaObjects.entrySet())
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

}
