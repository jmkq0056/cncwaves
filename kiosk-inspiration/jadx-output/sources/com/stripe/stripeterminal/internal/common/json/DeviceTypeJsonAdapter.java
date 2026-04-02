package com.stripe.stripeterminal.internal.common.json;

import com.squareup.moshi.FromJson;
import com.squareup.moshi.ToJson;
import com.stripe.stripeterminal.external.models.DeviceType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DeviceTypeJsonAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0005H\u0007J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0006H\u0007R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/json/DeviceTypeJsonAdapter;", "", "()V", "deviceNameMap", "", "", "Lcom/stripe/stripeterminal/external/models/DeviceType;", "fromJson", "deviceType", "toJson", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DeviceTypeJsonAdapter {
    private final Map<String, DeviceType> deviceNameMap;

    /* JADX INFO: compiled from: DeviceTypeJsonAdapter.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class EntriesMappings {
        public static final /* synthetic */ EnumEntries<DeviceType> entries$0 = EnumEntriesKt.enumEntries(DeviceType.values());
    }

    public DeviceTypeJsonAdapter() {
        EnumEntries<DeviceType> enumEntries = EntriesMappings.entries$0;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(enumEntries, 10));
        for (DeviceType deviceType : enumEntries) {
            arrayList.add(TuplesKt.to(deviceType.getDeviceName(), deviceType));
        }
        Pair[] pairArr = (Pair[]) arrayList.toArray(new Pair[0]);
        this.deviceNameMap = MapsKt.mapOf((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
    }

    @FromJson
    public final DeviceType fromJson(String deviceType) {
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        DeviceType deviceType2 = this.deviceNameMap.get(deviceType);
        if (deviceType2 == null) {
            deviceType2 = DeviceType.UNKNOWN;
        }
        return deviceType2;
    }

    @ToJson
    public final String toJson(DeviceType deviceType) {
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        return deviceType.getDeviceName();
    }
}
