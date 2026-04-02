package com.stripe.core.bbpos.mappers;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.properties.Delegates;
import kotlin.properties.ObservableProperty;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KProperty;

/* JADX INFO: compiled from: DeviceInfoMapper.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R/\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u00048V@VX\u0096\u008e\u0002¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lcom/stripe/core/bbpos/mappers/DefaultDeviceInfoCache;", "Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;", "()V", "<set-?>", "", "coinCellBatteryVoltage", "getCoinCellBatteryVoltage", "()Ljava/lang/String;", "setCoinCellBatteryVoltage", "(Ljava/lang/String;)V", "coinCellBatteryVoltage$delegate", "Lkotlin/properties/ReadWriteProperty;", "sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultDeviceInfoCache implements DeviceInfoCache {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.mutableProperty1(new MutablePropertyReference1Impl(DefaultDeviceInfoCache.class, "coinCellBatteryVoltage", "getCoinCellBatteryVoltage()Ljava/lang/String;", 0))};

    /* JADX INFO: renamed from: coinCellBatteryVoltage$delegate, reason: from kotlin metadata */
    private final ReadWriteProperty coinCellBatteryVoltage;

    public DefaultDeviceInfoCache() {
        Delegates delegates = Delegates.INSTANCE;
        final Object obj = null;
        this.coinCellBatteryVoltage = new ObservableProperty<String>(obj) { // from class: com.stripe.core.bbpos.mappers.DefaultDeviceInfoCache$special$$inlined$vetoable$1
            @Override // kotlin.properties.ObservableProperty
            protected boolean beforeChange(KProperty<?> property, String oldValue, String newValue) {
                Intrinsics.checkNotNullParameter(property, "property");
                String str = newValue;
                return true ^ (str == null || str.length() == 0);
            }
        };
    }

    @Override // com.stripe.core.bbpos.mappers.DeviceInfoCache
    public String getCoinCellBatteryVoltage() {
        return (String) this.coinCellBatteryVoltage.getValue(this, $$delegatedProperties[0]);
    }

    @Override // com.stripe.core.bbpos.mappers.DeviceInfoCache
    public void setCoinCellBatteryVoltage(String str) {
        this.coinCellBatteryVoltage.setValue(this, $$delegatedProperties[0], str);
    }
}
