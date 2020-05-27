// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from validators.djinni

package com.ledger.reactnative;

import co.ledger.core.CosmosLikeValidatorDistributionInformation;
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

/** Distribution data for a Validator */
@ReactModule(name = "RCTCoreCosmosLikeValidatorDistributionInformation")
public class RCTCoreCosmosLikeValidatorDistributionInformation extends ReactContextBaseJavaModule {
    private final ReactApplicationContext reactContext;
    private Map<String, CosmosLikeValidatorDistributionInformation> javaObjects;
    public Map<String, CosmosLikeValidatorDistributionInformation> getJavaObjects()
    {
        return javaObjects;
    }

    public RCTCoreCosmosLikeValidatorDistributionInformation(ReactApplicationContext reactContext)
    {
        super(reactContext);
        this.reactContext = reactContext;
        this.javaObjects = new HashMap<String, CosmosLikeValidatorDistributionInformation>();
    }

    @Override
    public String getName()
    {
        return "RCTCoreCosmosLikeValidatorDistributionInformation";
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
            promise.reject("Failed to release instance of RCTCoreCosmosLikeValidatorDistributionInformation", "First parameter of RCTCoreCosmosLikeValidatorDistributionInformation::release should be an instance of RCTCoreCosmosLikeValidatorDistributionInformation");
        }
    }
    @ReactMethod
    public void log(Promise promise)
    {
        WritableNativeArray result = new WritableNativeArray();
        for (Map.Entry<String, CosmosLikeValidatorDistributionInformation> elem : this.javaObjects.entrySet())
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

    @ReactMethod
    public void init(String selfBondRewards, String validatorCommission, Promise promise) {
        CosmosLikeValidatorDistributionInformation javaResult = new CosmosLikeValidatorDistributionInformation(selfBondRewards, validatorCommission);

        String uuid = UUID.randomUUID().toString();
        this.javaObjects.put(uuid, javaResult);
        WritableNativeMap finalResult = new WritableNativeMap();
        finalResult.putString("type","RCTCoreCosmosLikeValidatorDistributionInformation");
        finalResult.putString("uid",uuid);
        promise.resolve(finalResult);
    }
    @ReactMethod
    public void getSelfBondRewards(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            CosmosLikeValidatorDistributionInformation javaObj = this.javaObjects.get(uid);
            String result = javaObj.getSelfBondRewards();
            WritableNativeMap resultMap = new WritableNativeMap();
            resultMap.putString("value", result);
            promise.resolve(resultMap);
        }
        else
        {
            promise.reject("Failed to call RCTCoreCosmosLikeValidatorDistributionInformation::getSelfBondRewards", "First parameter of RCTCoreCosmosLikeValidatorDistributionInformation::getSelfBondRewards should be an instance of RCTCoreCosmosLikeValidatorDistributionInformation");
        }
    }

    @ReactMethod
    public void getValidatorCommission(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            CosmosLikeValidatorDistributionInformation javaObj = this.javaObjects.get(uid);
            String result = javaObj.getValidatorCommission();
            WritableNativeMap resultMap = new WritableNativeMap();
            resultMap.putString("value", result);
            promise.resolve(resultMap);
        }
        else
        {
            promise.reject("Failed to call RCTCoreCosmosLikeValidatorDistributionInformation::getValidatorCommission", "First parameter of RCTCoreCosmosLikeValidatorDistributionInformation::getValidatorCommission should be an instance of RCTCoreCosmosLikeValidatorDistributionInformation");
        }
    }

}
