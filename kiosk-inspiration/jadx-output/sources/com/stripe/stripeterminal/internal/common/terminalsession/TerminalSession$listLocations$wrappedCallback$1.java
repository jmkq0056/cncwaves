package com.stripe.stripeterminal.internal.common.terminalsession;

import com.stripe.stripeterminal.external.callable.LocationListCallback;
import com.stripe.stripeterminal.external.models.Location;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.log.SdkResponse;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TerminalSession.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001e\u0010\u0006\u001a\u00020\u00032\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\n\u001a\u00020\u000bH\u0016¨\u0006\f"}, d2 = {"com/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$listLocations$wrappedCallback$1", "Lcom/stripe/stripeterminal/external/callable/LocationListCallback;", "onFailure", "", "e", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "onSuccess", "locations", "", "Lcom/stripe/stripeterminal/external/models/Location;", "hasMore", "", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TerminalSession$listLocations$wrappedCallback$1 implements LocationListCallback {
    final /* synthetic */ LocationListCallback $callback;
    final /* synthetic */ TerminalSession this$0;

    TerminalSession$listLocations$wrappedCallback$1(TerminalSession terminalSession, LocationListCallback locationListCallback) {
        this.this$0 = terminalSession;
        this.$callback = locationListCallback;
    }

    @Override // com.stripe.stripeterminal.external.callable.LocationListCallback
    public void onSuccess(List<Location> locations, boolean hasMore) {
        Intrinsics.checkNotNullParameter(locations, "locations");
        this.this$0.logger.endOperation(SdkResponse.INSTANCE.success(), "sdk_operation");
        this.$callback.onSuccess(locations, hasMore);
    }

    @Override // com.stripe.stripeterminal.external.callable.ErrorCallback
    public void onFailure(TerminalException e) {
        Intrinsics.checkNotNullParameter(e, "e");
        this.this$0.logger.endOperation(SdkResponse.INSTANCE.failure(e), "sdk_operation");
        this.$callback.onFailure(e);
    }
}
