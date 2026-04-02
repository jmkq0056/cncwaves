package com.stripe.core.bbpos;

import com.stripe.core.hardware.updates.ReaderVersion;
import java.util.Hashtable;
import kotlin.Metadata;

/* JADX INFO: compiled from: ReaderVersionMaker.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u0004\u0018\u00010\t2\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000bH\u0000¢\u0006\u0002\b\fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/stripe/core/bbpos/ReaderVersionMaker;", "", "()V", "CONFIG_VERSION", "", "FIRMWARE_VERSION", "KEY_PROFILE_NAME", "PIN_KEY_PROFILE_ID", "fromBbposData", "Lcom/stripe/core/hardware/updates/ReaderVersion;", "data", "Ljava/util/Hashtable;", "fromBbposData$sdk_release", "sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReaderVersionMaker {
    private static final String CONFIG_VERSION = "terminalSettingVersion";
    private static final String FIRMWARE_VERSION = "firmwareVersion";
    public static final ReaderVersionMaker INSTANCE = new ReaderVersionMaker();
    private static final String KEY_PROFILE_NAME = "keyProfileName";
    private static final String PIN_KEY_PROFILE_ID = "pinKeyProfileID";

    private ReaderVersionMaker() {
    }

    public final ReaderVersion fromBbposData$sdk_release(Hashtable<String, String> data) {
        if (data != null) {
            return new ReaderVersion(data.get(CONFIG_VERSION), data.get(FIRMWARE_VERSION), data.get(KEY_PROFILE_NAME), data.get(PIN_KEY_PROFILE_ID));
        }
        return null;
    }
}
