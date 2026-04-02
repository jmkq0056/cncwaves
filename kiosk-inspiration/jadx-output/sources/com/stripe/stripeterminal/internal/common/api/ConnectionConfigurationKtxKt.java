package com.stripe.stripeterminal.internal.common.api;

import com.stripe.stripeterminal.external.models.ConnectionConfiguration;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ConnectionConfigurationKtx.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"shouldActivateWithExpandedLocation", "", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", "common_publish"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class ConnectionConfigurationKtxKt {
    public static final boolean shouldActivateWithExpandedLocation(ConnectionConfiguration connectionConfiguration) {
        Intrinsics.checkNotNullParameter(connectionConfiguration, "<this>");
        if (connectionConfiguration instanceof ConnectionConfiguration.EmbeddedConnectionConfiguration) {
            return ((ConnectionConfiguration.EmbeddedConnectionConfiguration) connectionConfiguration).getShouldActivateWithExpandedLocation();
        }
        if (connectionConfiguration instanceof ConnectionConfiguration.BluetoothConnectionConfiguration ? true : connectionConfiguration instanceof ConnectionConfiguration.HandoffConnectionConfiguration ? true : connectionConfiguration instanceof ConnectionConfiguration.InternetConnectionConfiguration ? true : connectionConfiguration instanceof ConnectionConfiguration.TapToPayConnectionConfiguration ? true : connectionConfiguration instanceof ConnectionConfiguration.UsbConnectionConfiguration) {
            return true;
        }
        throw new NoWhenBranchMatchedException();
    }
}
