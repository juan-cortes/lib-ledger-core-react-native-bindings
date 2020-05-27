// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from messages.djinni

package com.ledger.reactnative;

import co.ledger.core.CosmosLikeAmount;
import co.ledger.core.CosmosLikeMsgDeposit;
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

@ReactModule(name = "RCTCoreCosmosLikeMsgDeposit")
public class RCTCoreCosmosLikeMsgDeposit extends ReactContextBaseJavaModule {
    private final ReactApplicationContext reactContext;
    private Map<String, CosmosLikeMsgDeposit> javaObjects;
    private Map<String, Object> implementationsData;
    public Map<String, CosmosLikeMsgDeposit> getJavaObjects()
    {
        return javaObjects;
    }

    public RCTCoreCosmosLikeMsgDeposit(ReactApplicationContext reactContext)
    {
        super(reactContext);
        this.reactContext = reactContext;
        this.javaObjects = new HashMap<String, CosmosLikeMsgDeposit>();
        this.implementationsData = new HashMap<>();
    }

    @Override
    public String getName()
    {
        return "RCTCoreCosmosLikeMsgDeposit";
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
            promise.reject("Failed to release instance of RCTCoreCosmosLikeMsgDeposit", "First parameter of RCTCoreCosmosLikeMsgDeposit::release should be an instance of RCTCoreCosmosLikeMsgDeposit");
        }
    }
    @ReactMethod
    public void log(Promise promise)
    {
        WritableNativeArray result = new WritableNativeArray();
        for (Map.Entry<String, CosmosLikeMsgDeposit> elem : this.javaObjects.entrySet())
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
    public void init(String depositor, String proposalId, ReadableArray amount, Promise promise) {
        WritableNativeMap implementationsData = new WritableNativeMap();
        ArrayList<CosmosLikeAmount> javaParam_2 = new ArrayList<CosmosLikeAmount>();
        WritableNativeArray javaParam_2_data = new WritableNativeArray();

        for (int i = 0; i <  amount.size(); i++)
        {
            ReadableMap amount_elem = amount.getMap(i);
            RCTCoreCosmosLikeAmount rctParam_amount_elem = this.reactContext.getNativeModule(RCTCoreCosmosLikeAmount.class);
            CosmosLikeAmount javaParam_2_elem = rctParam_amount_elem.getJavaObjects().get(amount_elem.getString("uid"));
            javaParam_2_data.pushString(amount_elem.getString("uid"));
            javaParam_2.add(javaParam_2_elem);
        }
        implementationsData.putArray("amount", javaParam_2_data);

        CosmosLikeMsgDeposit javaResult = new CosmosLikeMsgDeposit(depositor, proposalId, javaParam_2);

        String uuid = UUID.randomUUID().toString();
        this.javaObjects.put(uuid, javaResult);
        WritableNativeMap finalResult = new WritableNativeMap();
        finalResult.putString("type","RCTCoreCosmosLikeMsgDeposit");
        finalResult.putString("uid",uuid);
        this.implementationsData.put(uuid, implementationsData);
        promise.resolve(finalResult);
    }
    public void mapImplementationsData(ReadableMap currentInstance)
    {
        String currentInstanceUid = currentInstance.getString("uid");
        CosmosLikeMsgDeposit javaImpl = this.javaObjects.get(currentInstanceUid);
        WritableNativeMap implementationsData = new WritableNativeMap();
        ArrayList<CosmosLikeAmount> field_2 = javaImpl.getAmount();
        WritableNativeArray converted_field_2 = new WritableNativeArray();
        for (CosmosLikeAmount field_2_elem : field_2)
        {
            String field_2_elem_uuid = UUID.randomUUID().toString();
            RCTCoreCosmosLikeAmount rctImpl_field_2_elem = this.reactContext.getNativeModule(RCTCoreCosmosLikeAmount.class);
            rctImpl_field_2_elem.getJavaObjects().put(field_2_elem_uuid, field_2_elem);
            WritableNativeMap converted_field_2_elem = new WritableNativeMap();
            converted_field_2_elem.putString("type","RCTCoreCosmosLikeAmount");
            converted_field_2_elem.putString("uid",field_2_elem_uuid);
            converted_field_2.pushMap(converted_field_2_elem);
        }
        implementationsData.putArray("amount", converted_field_2);
        this.implementationsData.put(currentInstanceUid, implementationsData);
    }
    @ReactMethod
    public void getDepositor(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            CosmosLikeMsgDeposit javaObj = this.javaObjects.get(uid);
            String result = javaObj.getDepositor();
            WritableNativeMap resultMap = new WritableNativeMap();
            resultMap.putString("value", result);
            promise.resolve(resultMap);
        }
        else
        {
            promise.reject("Failed to call RCTCoreCosmosLikeMsgDeposit::getDepositor", "First parameter of RCTCoreCosmosLikeMsgDeposit::getDepositor should be an instance of RCTCoreCosmosLikeMsgDeposit");
        }
    }

    @ReactMethod
    public void getProposalId(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            CosmosLikeMsgDeposit javaObj = this.javaObjects.get(uid);
            String result = javaObj.getProposalId();
            WritableNativeMap resultMap = new WritableNativeMap();
            resultMap.putString("value", result);
            promise.resolve(resultMap);
        }
        else
        {
            promise.reject("Failed to call RCTCoreCosmosLikeMsgDeposit::getProposalId", "First parameter of RCTCoreCosmosLikeMsgDeposit::getProposalId should be an instance of RCTCoreCosmosLikeMsgDeposit");
        }
    }

    @ReactMethod
    public void getAmount(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            if (!this.implementationsData.containsKey(uid))
            {
                this.mapImplementationsData(currentInstance);
            }
            ReadableNativeMap data = (ReadableNativeMap)this.implementationsData.get(uid);
            ReadableArray resultTmp = data.getArray("amount");
            WritableNativeArray result = new WritableNativeArray();
            for (int i = 0; i < resultTmp.size(); i++)
            {
                WritableNativeMap result_elem = new WritableNativeMap();
                result_elem.merge(resultTmp.getMap(i));
                result.pushMap(result_elem);
            }
            promise.resolve(result);
        }
        else
        {
            promise.reject("Failed to call RCTCoreCosmosLikeMsgDeposit::getAmount", "First parameter of RCTCoreCosmosLikeMsgDeposit::getAmount should be an instance of RCTCoreCosmosLikeMsgDeposit");
        }
    }

}
