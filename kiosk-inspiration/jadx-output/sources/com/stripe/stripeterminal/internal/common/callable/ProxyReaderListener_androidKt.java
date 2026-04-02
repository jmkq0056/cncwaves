package com.stripe.stripeterminal.internal.common.callable;

import com.stripe.stripeterminal.external.models.ConnectionConfiguration;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ProxyReaderListener.android.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u001a.\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0005¨\u0006\t"}, d2 = {"assertRequiredListener", "", "config", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", "hasMobileReaderListener", "", "hasHandoffReaderListener", "hasTapToPayReaderListener", "hasInternetReaderListener", "public_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class ProxyReaderListener_androidKt {
    public static final void assertRequiredListener(ConnectionConfiguration config, boolean z, boolean z2, boolean z3, boolean z4) throws TerminalException {
        Intrinsics.checkNotNullParameter(config, "config");
        if (config instanceof ConnectionConfiguration.BluetoothConnectionConfiguration) {
            if (!z) {
                throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "A MobileReaderListener is required when using BluetoothConnectionConfiguration.", null, null, 12, null);
            }
        } else if (config instanceof ConnectionConfiguration.UsbConnectionConfiguration) {
            if (!z) {
                throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "A MobileReaderListener is required when using UsbConnectionConfiguration.", null, null, 12, null);
            }
        } else {
            if (config instanceof ConnectionConfiguration.EmbeddedConnectionConfiguration ? true : config instanceof ConnectionConfiguration.HandoffConnectionConfiguration ? true : config instanceof ConnectionConfiguration.InternetConnectionConfiguration) {
                return;
            }
            boolean z5 = config instanceof ConnectionConfiguration.TapToPayConnectionConfiguration;
        }
    }
}
