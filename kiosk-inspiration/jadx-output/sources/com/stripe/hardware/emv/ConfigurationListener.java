package com.stripe.hardware.emv;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: compiled from: ConfigurationListener.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u001c\u0010\u0006\u001a\u00020\u00032\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00010\bH&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\fH&J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000fÀ\u0006\u0001"}, d2 = {"Lcom/stripe/hardware/emv/ConfigurationListener;", "", "handleDisplaySettings", "", FirebaseAnalytics.Param.SUCCESS, "", "handleReaderAid", "aidData", "", "", "handleReaderSettings", "readerSettings", "Lcom/stripe/hardware/emv/ReaderSettings;", "handleUpdateReaderAidData", "handleUpdateReaderSettings", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface ConfigurationListener {
    void handleDisplaySettings(boolean success);

    void handleReaderAid(Map<String, ? extends Object> aidData);

    void handleReaderSettings(ReaderSettings readerSettings);

    void handleUpdateReaderAidData(boolean success);

    void handleUpdateReaderSettings(boolean success);
}
