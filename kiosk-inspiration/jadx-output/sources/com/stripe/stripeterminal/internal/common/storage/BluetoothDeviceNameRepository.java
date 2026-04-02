package com.stripe.stripeterminal.internal.common.storage;

import kotlin.Metadata;

/* JADX INFO: compiled from: BluetoothDeviceNameRepository.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0005H&J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0005H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\tÀ\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;", "", "clear", "", "getDeviceSerialFromName", "", "deviceName", "saveDeviceSerialMapping", "serialNumber", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface BluetoothDeviceNameRepository {
    void clear();

    String getDeviceSerialFromName(String deviceName);

    void saveDeviceSerialMapping(String deviceName, String serialNumber);
}
