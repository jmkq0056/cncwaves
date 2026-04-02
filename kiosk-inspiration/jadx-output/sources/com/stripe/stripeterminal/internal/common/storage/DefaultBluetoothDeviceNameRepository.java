package com.stripe.stripeterminal.internal.common.storage;

import com.stripe.jvmcore.storage.SharedPrefs;
import com.stripe.proto.model.sdk.BluetoothDeviceNameToSerialMap;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference0Impl;

/* JADX INFO: compiled from: DefaultBluetoothDeviceNameRepository.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\f\u001a\u00020\rH\u0016J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0018\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u000fH\u0016R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068B@BX\u0082\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/storage/DefaultBluetoothDeviceNameRepository;", "Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;", "sharedPrefs", "Lcom/stripe/jvmcore/storage/SharedPrefs;", "(Lcom/stripe/jvmcore/storage/SharedPrefs;)V", "value", "Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;", "bluetoothDeviceNameToSerialMap", "getBluetoothDeviceNameToSerialMap", "()Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;", "setBluetoothDeviceNameToSerialMap", "(Lcom/stripe/proto/model/sdk/BluetoothDeviceNameToSerialMap;)V", "clear", "", "getDeviceSerialFromName", "", "deviceName", "saveDeviceSerialMapping", "serialNumber", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultBluetoothDeviceNameRepository implements BluetoothDeviceNameRepository {
    private final SharedPrefs sharedPrefs;

    public DefaultBluetoothDeviceNameRepository(SharedPrefs sharedPrefs) {
        Intrinsics.checkNotNullParameter(sharedPrefs, "sharedPrefs");
        this.sharedPrefs = sharedPrefs;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void setBluetoothDeviceNameToSerialMap(BluetoothDeviceNameToSerialMap bluetoothDeviceNameToSerialMap) {
        this.sharedPrefs.putMessage(SharedPrefs.BLUETOOTH_DEVICE_NAME_SERIAL_MAPPING, bluetoothDeviceNameToSerialMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final synchronized BluetoothDeviceNameToSerialMap getBluetoothDeviceNameToSerialMap() {
        return (BluetoothDeviceNameToSerialMap) this.sharedPrefs.getMessage(SharedPrefs.BLUETOOTH_DEVICE_NAME_SERIAL_MAPPING, new BluetoothDeviceNameToSerialMap(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.stripe.stripeterminal.internal.common.storage.BluetoothDeviceNameRepository
    public void saveDeviceSerialMapping(String deviceName, String serialNumber) {
        Intrinsics.checkNotNullParameter(deviceName, "deviceName");
        Intrinsics.checkNotNullParameter(serialNumber, "serialNumber");
        if (Intrinsics.areEqual(deviceName, serialNumber)) {
            return;
        }
        new MutablePropertyReference0Impl(this) { // from class: com.stripe.stripeterminal.internal.common.storage.DefaultBluetoothDeviceNameRepository.saveDeviceSerialMapping.3
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return ((DefaultBluetoothDeviceNameRepository) this.receiver).getBluetoothDeviceNameToSerialMap();
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
            public void set(Object obj) {
                ((DefaultBluetoothDeviceNameRepository) this.receiver).setBluetoothDeviceNameToSerialMap((BluetoothDeviceNameToSerialMap) obj);
            }
        }.set(new BluetoothDeviceNameToSerialMap(MapsKt.plus(getBluetoothDeviceNameToSerialMap().map, TuplesKt.to(deviceName, serialNumber)), null, 2, 0 == true ? 1 : 0));
    }

    @Override // com.stripe.stripeterminal.internal.common.storage.BluetoothDeviceNameRepository
    public String getDeviceSerialFromName(String deviceName) {
        Intrinsics.checkNotNullParameter(deviceName, "deviceName");
        return getBluetoothDeviceNameToSerialMap().map.get(deviceName);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.stripe.stripeterminal.internal.common.storage.BluetoothDeviceNameRepository
    public void clear() {
        setBluetoothDeviceNameToSerialMap(new BluetoothDeviceNameToSerialMap(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0));
    }
}
