package com.stripe.device;

import com.stripe.proto.model.common.HardwareModel;
import kotlin.Metadata;

/* JADX INFO: compiled from: PlatformDeviceInfo.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0007H&J\b\u0010\b\u001a\u00020\u0005H&J\b\u0010\t\u001a\u00020\u0005H&J\b\u0010\n\u001a\u00020\u000bH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\fÀ\u0006\u0001"}, d2 = {"Lcom/stripe/device/PlatformDeviceInfo;", "", "getHardwareModel", "Lcom/stripe/proto/model/common/HardwareModel;", "getHardwareVersion", "", "getMainlandDeviceType", "Lcom/stripe/device/MainlandDeviceType;", "getSerialNumber", "getSoftwareVersion", "isSimulated", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface PlatformDeviceInfo {
    HardwareModel getHardwareModel();

    String getHardwareVersion();

    MainlandDeviceType getMainlandDeviceType();

    String getSerialNumber();

    String getSoftwareVersion();

    boolean isSimulated();
}
