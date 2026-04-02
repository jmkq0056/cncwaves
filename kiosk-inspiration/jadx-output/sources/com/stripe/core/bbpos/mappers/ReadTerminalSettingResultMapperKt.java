package com.stripe.core.bbpos.mappers;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.sdk.TerminalSettingValue;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;

/* JADX INFO: compiled from: ReadTerminalSettingResultMapper.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u0002H\u0000¨\u0006\u0003"}, d2 = {"convert", "Lcom/stripe/bbpos/sdk/TerminalSettingValue;", "", "sdk_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class ReadTerminalSettingResultMapperKt {
    public static final TerminalSettingValue convert(Object obj) {
        TerminalSettingValue.Status status;
        if (obj instanceof String) {
            return new TerminalSettingValue(null, (String) obj, null, 5, null);
        }
        if (!(obj instanceof BBDeviceController.TerminalSettingStatus)) {
            if (obj == null) {
                return new TerminalSettingValue(null, null, null, 7, null);
            }
            return new TerminalSettingValue(null, null, null, 7, null);
        }
        if (obj == BBDeviceController.TerminalSettingStatus.SUCCESS) {
            status = TerminalSettingValue.Status.SUCCESS;
        } else if (obj == BBDeviceController.TerminalSettingStatus.TLV_INCORRECT) {
            status = TerminalSettingValue.Status.TLV_INCORRECT;
        } else if (obj == BBDeviceController.TerminalSettingStatus.TAG_NOT_FOUND) {
            status = TerminalSettingValue.Status.TAG_NOT_FOUND;
        } else if (obj == BBDeviceController.TerminalSettingStatus.LENGTH_INCORRECT) {
            status = TerminalSettingValue.Status.LENGTH_INCORRECT;
        } else if (obj == BBDeviceController.TerminalSettingStatus.BOOTLOADER_NOT_SUPPORT) {
            status = TerminalSettingValue.Status.BOOTLOADER_NOT_SUPPORT;
        } else if (obj == BBDeviceController.TerminalSettingStatus.TAG_NOT_ALLOWED_TO_ACCESS) {
            status = TerminalSettingValue.Status.TAG_NOT_ALLOWED_TO_ACCESS;
        } else if (obj == BBDeviceController.TerminalSettingStatus.TAG_NOT_WRITTEN_CORRECTLY) {
            status = TerminalSettingValue.Status.TAG_NOT_WRITTEN_CORRECTLY;
        } else if (obj == BBDeviceController.TerminalSettingStatus.INVALID_VALUE) {
            status = TerminalSettingValue.Status.INVALID_VALUE;
        } else if (obj == BBDeviceController.TerminalSettingStatus.USER_DEFINED_DATA_NOT_ENALBLED) {
            status = TerminalSettingValue.Status.USER_DEFINED_DATA_NOT_ENALBLED;
        } else if (obj == BBDeviceController.TerminalSettingStatus.TAG_NOT_UPDATED) {
            status = TerminalSettingValue.Status.TAG_NOT_UPDATED;
        } else {
            if (obj != BBDeviceController.TerminalSettingStatus.UNKNOWN) {
                throw new NoWhenBranchMatchedException();
            }
            status = TerminalSettingValue.Status.UNKNOWN;
        }
        return new TerminalSettingValue(status, null, null, 6, null);
    }
}
