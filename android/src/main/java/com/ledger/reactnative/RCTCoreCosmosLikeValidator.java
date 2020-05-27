// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from validators.djinni

package com.ledger.reactnative;

import co.ledger.core.CosmosLikeValidator;
import co.ledger.core.CosmosLikeValidatorCommission;
import co.ledger.core.CosmosLikeValidatorDescription;
import co.ledger.core.CosmosLikeValidatorDistributionInformation;
import co.ledger.core.CosmosLikeValidatorSigningInformation;
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

/** All of Validator related information */
@ReactModule(name = "RCTCoreCosmosLikeValidator")
public class RCTCoreCosmosLikeValidator extends ReactContextBaseJavaModule {
    private final ReactApplicationContext reactContext;
    private Map<String, CosmosLikeValidator> javaObjects;
    private Map<String, Object> implementationsData;
    public Map<String, CosmosLikeValidator> getJavaObjects()
    {
        return javaObjects;
    }

    public RCTCoreCosmosLikeValidator(ReactApplicationContext reactContext)
    {
        super(reactContext);
        this.reactContext = reactContext;
        this.javaObjects = new HashMap<String, CosmosLikeValidator>();
        this.implementationsData = new HashMap<>();
    }

    @Override
    public String getName()
    {
        return "RCTCoreCosmosLikeValidator";
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
            promise.reject("Failed to release instance of RCTCoreCosmosLikeValidator", "First parameter of RCTCoreCosmosLikeValidator::release should be an instance of RCTCoreCosmosLikeValidator");
        }
    }
    @ReactMethod
    public void log(Promise promise)
    {
        WritableNativeArray result = new WritableNativeArray();
        for (Map.Entry<String, CosmosLikeValidator> elem : this.javaObjects.entrySet())
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
    public void init(ReadableMap validatorDetails, ReadableMap commission, ReadableMap distInfo, ReadableMap signInfo, int unbondingHeight, Date unbondingTime, String minSelfDelegation, boolean jailed, String votingPower, String operatorAddress, String consensusPubkey, int activeStatus, Promise promise) {
        WritableNativeMap implementationsData = new WritableNativeMap();
        RCTCoreCosmosLikeValidatorDescription rctParam_validatorDetails = this.reactContext.getNativeModule(RCTCoreCosmosLikeValidatorDescription.class);
        CosmosLikeValidatorDescription javaParam_0 = rctParam_validatorDetails.getJavaObjects().get(validatorDetails.getString("uid"));
        implementationsData.putString("validatorDetails", validatorDetails.getString("uid"));
        RCTCoreCosmosLikeValidatorCommission rctParam_commission = this.reactContext.getNativeModule(RCTCoreCosmosLikeValidatorCommission.class);
        CosmosLikeValidatorCommission javaParam_1 = rctParam_commission.getJavaObjects().get(commission.getString("uid"));
        implementationsData.putString("commission", commission.getString("uid"));
        RCTCoreCosmosLikeValidatorDistributionInformation rctParam_distInfo = this.reactContext.getNativeModule(RCTCoreCosmosLikeValidatorDistributionInformation.class);
        CosmosLikeValidatorDistributionInformation javaParam_2 = rctParam_distInfo.getJavaObjects().get(distInfo.getString("uid"));
        implementationsData.putString("distInfo", distInfo.getString("uid"));
        RCTCoreCosmosLikeValidatorSigningInformation rctParam_signInfo = this.reactContext.getNativeModule(RCTCoreCosmosLikeValidatorSigningInformation.class);
        CosmosLikeValidatorSigningInformation javaParam_3 = rctParam_signInfo.getJavaObjects().get(signInfo.getString("uid"));
        implementationsData.putString("signInfo", signInfo.getString("uid"));
        CosmosLikeValidator javaResult = new CosmosLikeValidator(javaParam_0, javaParam_1, javaParam_2, javaParam_3, unbondingHeight, unbondingTime, minSelfDelegation, jailed, votingPower, operatorAddress, consensusPubkey, activeStatus);

        String uuid = UUID.randomUUID().toString();
        this.javaObjects.put(uuid, javaResult);
        WritableNativeMap finalResult = new WritableNativeMap();
        finalResult.putString("type","RCTCoreCosmosLikeValidator");
        finalResult.putString("uid",uuid);
        this.implementationsData.put(uuid, implementationsData);
        promise.resolve(finalResult);
    }
    public void mapImplementationsData(ReadableMap currentInstance)
    {
        String currentInstanceUid = currentInstance.getString("uid");
        CosmosLikeValidator javaImpl = this.javaObjects.get(currentInstanceUid);
        WritableNativeMap implementationsData = new WritableNativeMap();
        CosmosLikeValidatorDescription field_0 = javaImpl.getValidatorDetails();
        String field_0_uuid = UUID.randomUUID().toString();
        RCTCoreCosmosLikeValidatorDescription rctImpl_field_0 = this.reactContext.getNativeModule(RCTCoreCosmosLikeValidatorDescription.class);
        rctImpl_field_0.getJavaObjects().put(field_0_uuid, field_0);
        WritableNativeMap converted_field_0 = new WritableNativeMap();
        converted_field_0.putString("type","RCTCoreCosmosLikeValidatorDescription");
        converted_field_0.putString("uid",field_0_uuid);
        implementationsData.putMap("validatorDetails", converted_field_0);
        CosmosLikeValidatorCommission field_1 = javaImpl.getCommission();
        String field_1_uuid = UUID.randomUUID().toString();
        RCTCoreCosmosLikeValidatorCommission rctImpl_field_1 = this.reactContext.getNativeModule(RCTCoreCosmosLikeValidatorCommission.class);
        rctImpl_field_1.getJavaObjects().put(field_1_uuid, field_1);
        WritableNativeMap converted_field_1 = new WritableNativeMap();
        converted_field_1.putString("type","RCTCoreCosmosLikeValidatorCommission");
        converted_field_1.putString("uid",field_1_uuid);
        implementationsData.putMap("commission", converted_field_1);
        CosmosLikeValidatorDistributionInformation field_2 = javaImpl.getDistInfo();
        String field_2_uuid = UUID.randomUUID().toString();
        RCTCoreCosmosLikeValidatorDistributionInformation rctImpl_field_2 = this.reactContext.getNativeModule(RCTCoreCosmosLikeValidatorDistributionInformation.class);
        rctImpl_field_2.getJavaObjects().put(field_2_uuid, field_2);
        WritableNativeMap converted_field_2 = new WritableNativeMap();
        converted_field_2.putString("type","RCTCoreCosmosLikeValidatorDistributionInformation");
        converted_field_2.putString("uid",field_2_uuid);
        implementationsData.putMap("distInfo", converted_field_2);
        CosmosLikeValidatorSigningInformation field_3 = javaImpl.getSignInfo();
        String field_3_uuid = UUID.randomUUID().toString();
        RCTCoreCosmosLikeValidatorSigningInformation rctImpl_field_3 = this.reactContext.getNativeModule(RCTCoreCosmosLikeValidatorSigningInformation.class);
        rctImpl_field_3.getJavaObjects().put(field_3_uuid, field_3);
        WritableNativeMap converted_field_3 = new WritableNativeMap();
        converted_field_3.putString("type","RCTCoreCosmosLikeValidatorSigningInformation");
        converted_field_3.putString("uid",field_3_uuid);
        implementationsData.putMap("signInfo", converted_field_3);
        this.implementationsData.put(currentInstanceUid, implementationsData);
    }
    @ReactMethod
    public void getValidatorDetails(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            if (!this.implementationsData.containsKey(uid))
            {
                this.mapImplementationsData(currentInstance);
            }
            ReadableNativeMap data = (ReadableNativeMap)this.implementationsData.get(uid);
            WritableNativeMap result = new WritableNativeMap();
            result.merge(data.getMap("validatorDetails"));
            promise.resolve(result);
        }
        else
        {
            promise.reject("Failed to call RCTCoreCosmosLikeValidator::getValidatorDetails", "First parameter of RCTCoreCosmosLikeValidator::getValidatorDetails should be an instance of RCTCoreCosmosLikeValidator");
        }
    }

    @ReactMethod
    public void getCommission(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            if (!this.implementationsData.containsKey(uid))
            {
                this.mapImplementationsData(currentInstance);
            }
            ReadableNativeMap data = (ReadableNativeMap)this.implementationsData.get(uid);
            WritableNativeMap result = new WritableNativeMap();
            result.merge(data.getMap("commission"));
            promise.resolve(result);
        }
        else
        {
            promise.reject("Failed to call RCTCoreCosmosLikeValidator::getCommission", "First parameter of RCTCoreCosmosLikeValidator::getCommission should be an instance of RCTCoreCosmosLikeValidator");
        }
    }

    @ReactMethod
    public void getDistInfo(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            if (!this.implementationsData.containsKey(uid))
            {
                this.mapImplementationsData(currentInstance);
            }
            ReadableNativeMap data = (ReadableNativeMap)this.implementationsData.get(uid);
            WritableNativeMap result = new WritableNativeMap();
            result.merge(data.getMap("distInfo"));
            promise.resolve(result);
        }
        else
        {
            promise.reject("Failed to call RCTCoreCosmosLikeValidator::getDistInfo", "First parameter of RCTCoreCosmosLikeValidator::getDistInfo should be an instance of RCTCoreCosmosLikeValidator");
        }
    }

    @ReactMethod
    public void getSignInfo(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            if (!this.implementationsData.containsKey(uid))
            {
                this.mapImplementationsData(currentInstance);
            }
            ReadableNativeMap data = (ReadableNativeMap)this.implementationsData.get(uid);
            WritableNativeMap result = new WritableNativeMap();
            result.merge(data.getMap("signInfo"));
            promise.resolve(result);
        }
        else
        {
            promise.reject("Failed to call RCTCoreCosmosLikeValidator::getSignInfo", "First parameter of RCTCoreCosmosLikeValidator::getSignInfo should be an instance of RCTCoreCosmosLikeValidator");
        }
    }

    @ReactMethod
    public void getUnbondingHeight(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            CosmosLikeValidator javaObj = this.javaObjects.get(uid);
            int result = javaObj.getUnbondingHeight();
            WritableNativeMap resultMap = new WritableNativeMap();
            resultMap.putInt("value", result);
            promise.resolve(resultMap);
        }
        else
        {
            promise.reject("Failed to call RCTCoreCosmosLikeValidator::getUnbondingHeight", "First parameter of RCTCoreCosmosLikeValidator::getUnbondingHeight should be an instance of RCTCoreCosmosLikeValidator");
        }
    }

    @ReactMethod
    public void getUnbondingTime(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            CosmosLikeValidator javaObj = this.javaObjects.get(uid);
            Date result = javaObj.getUnbondingTime();
            DateFormat resultDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");
            resultDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            String converted_result = resultDateFormat.format(result);
            promise.resolve(converted_result);
        }
        else
        {
            promise.reject("Failed to call RCTCoreCosmosLikeValidator::getUnbondingTime", "First parameter of RCTCoreCosmosLikeValidator::getUnbondingTime should be an instance of RCTCoreCosmosLikeValidator");
        }
    }

    @ReactMethod
    public void getMinSelfDelegation(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            CosmosLikeValidator javaObj = this.javaObjects.get(uid);
            String result = javaObj.getMinSelfDelegation();
            WritableNativeMap resultMap = new WritableNativeMap();
            resultMap.putString("value", result);
            promise.resolve(resultMap);
        }
        else
        {
            promise.reject("Failed to call RCTCoreCosmosLikeValidator::getMinSelfDelegation", "First parameter of RCTCoreCosmosLikeValidator::getMinSelfDelegation should be an instance of RCTCoreCosmosLikeValidator");
        }
    }

    @ReactMethod
    public void getJailed(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            CosmosLikeValidator javaObj = this.javaObjects.get(uid);
            boolean result = javaObj.getJailed();
            WritableNativeMap resultMap = new WritableNativeMap();
            resultMap.putBoolean("value", result);
            promise.resolve(resultMap);
        }
        else
        {
            promise.reject("Failed to call RCTCoreCosmosLikeValidator::getJailed", "First parameter of RCTCoreCosmosLikeValidator::getJailed should be an instance of RCTCoreCosmosLikeValidator");
        }
    }

    @ReactMethod
    public void getVotingPower(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            CosmosLikeValidator javaObj = this.javaObjects.get(uid);
            String result = javaObj.getVotingPower();
            WritableNativeMap resultMap = new WritableNativeMap();
            resultMap.putString("value", result);
            promise.resolve(resultMap);
        }
        else
        {
            promise.reject("Failed to call RCTCoreCosmosLikeValidator::getVotingPower", "First parameter of RCTCoreCosmosLikeValidator::getVotingPower should be an instance of RCTCoreCosmosLikeValidator");
        }
    }

    @ReactMethod
    public void getOperatorAddress(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            CosmosLikeValidator javaObj = this.javaObjects.get(uid);
            String result = javaObj.getOperatorAddress();
            WritableNativeMap resultMap = new WritableNativeMap();
            resultMap.putString("value", result);
            promise.resolve(resultMap);
        }
        else
        {
            promise.reject("Failed to call RCTCoreCosmosLikeValidator::getOperatorAddress", "First parameter of RCTCoreCosmosLikeValidator::getOperatorAddress should be an instance of RCTCoreCosmosLikeValidator");
        }
    }

    @ReactMethod
    public void getConsensusPubkey(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            CosmosLikeValidator javaObj = this.javaObjects.get(uid);
            String result = javaObj.getConsensusPubkey();
            WritableNativeMap resultMap = new WritableNativeMap();
            resultMap.putString("value", result);
            promise.resolve(resultMap);
        }
        else
        {
            promise.reject("Failed to call RCTCoreCosmosLikeValidator::getConsensusPubkey", "First parameter of RCTCoreCosmosLikeValidator::getConsensusPubkey should be an instance of RCTCoreCosmosLikeValidator");
        }
    }

    @ReactMethod
    public void getActiveStatus(ReadableMap currentInstance, Promise promise)
    {
        String uid = currentInstance.getString("uid");
        if (uid.length() > 0)
        {
            CosmosLikeValidator javaObj = this.javaObjects.get(uid);
            int result = javaObj.getActiveStatus();
            WritableNativeMap resultMap = new WritableNativeMap();
            resultMap.putInt("value", result);
            promise.resolve(resultMap);
        }
        else
        {
            promise.reject("Failed to call RCTCoreCosmosLikeValidator::getActiveStatus", "First parameter of RCTCoreCosmosLikeValidator::getActiveStatus should be an instance of RCTCoreCosmosLikeValidator");
        }
    }

}
