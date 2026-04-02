package com.stripe.core.bbpos.mappers;

import com.stripe.bbpos.sdk.DeviceInfo;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DeviceInfoMapper.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0000\u001a\u0016\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u001a\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0002*\u0004\u0018\u00010\u0002H\u0002\u001a \u0010\u0006\u001a\u00020\u0007*\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0004H\u0000¨\u0006\t"}, d2 = {"getDeviceInfoFields", "", "", "deviceInfoCache", "Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;", "nullIfEmpty", "toDeviceInfo", "Lcom/stripe/bbpos/sdk/DeviceInfo;", "", "sdk_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class DeviceInfoMapperKt {
    public static final DeviceInfo toDeviceInfo(Map<String, String> map, DeviceInfoCache deviceInfoCache) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        Intrinsics.checkNotNullParameter(deviceInfoCache, "deviceInfoCache");
        String strNullIfEmpty = nullIfEmpty(deviceInfoCache.getCoinCellBatteryVoltage());
        if (strNullIfEmpty == null) {
            strNullIfEmpty = nullIfEmpty(map.get("coinCellBatteryVoltage"));
            if (strNullIfEmpty != null) {
                deviceInfoCache.setCoinCellBatteryVoltage(strNullIfEmpty);
            } else {
                strNullIfEmpty = null;
            }
        }
        return new DeviceInfo(nullIfEmpty(map.get("pinKsn")), nullIfEmpty(map.get("batteryPercentage")), nullIfEmpty(map.get("terminalSettingVersion")), nullIfEmpty(map.get("deviceSettingVersion")), nullIfEmpty(map.get("bootloaderVersion")), nullIfEmpty(map.get("emvKeyProfileID")), nullIfEmpty(map.get("firmwareVersion")), nullIfEmpty(map.get("hardwareVersion")), nullIfEmpty(map.get("macKeyProfileID")), nullIfEmpty(map.get("pinKeyProfileID")), nullIfEmpty(map.get("serialNumber")), nullIfEmpty(map.get("trackKeyProfileID")), nullIfEmpty(map.get("isCharging")), nullIfEmpty(map.get("firmwareID")), nullIfEmpty(strNullIfEmpty), nullIfEmpty(map.get("macKsn")), nullIfEmpty(map.get("emvKsn")), nullIfEmpty(map.get("trackKsn")), nullIfEmpty(map.get("isUsbConnected")), null, 524288, null);
    }

    public static final List<String> getDeviceInfoFields(DeviceInfoCache deviceInfoCache) {
        Intrinsics.checkNotNullParameter(deviceInfoCache, "deviceInfoCache");
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        listCreateListBuilder.addAll(CollectionsKt.listOf((Object[]) new String[]{"pinKsn", "batteryPercentage", "terminalSettingVersion", "deviceSettingVersion", "bootloaderVersion", "emvKeyProfileID", "firmwareVersion", "hardwareVersion", "macKeyProfileID", "pinKeyProfileID", "serialNumber", "trackKeyProfileID", "isCharging", "firmwareID", "isUsbConnected"}));
        if (deviceInfoCache.getCoinCellBatteryVoltage() == null) {
            listCreateListBuilder.add("coinCellBatteryVoltage");
        }
        return CollectionsKt.build(listCreateListBuilder);
    }

    private static final String nullIfEmpty(String str) {
        String str2 = str;
        if (str2 == null || str2.length() == 0) {
            return null;
        }
        return str;
    }
}
