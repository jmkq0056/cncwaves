package com.stripe.stripeterminal.external.callable;

import com.stripe.stripeterminal.external.models.Location;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: LocationListCallback.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\bf\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\bH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\tÀ\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/external/callable/LocationListCallback;", "Lcom/stripe/stripeterminal/external/callable/ErrorCallback;", "onSuccess", "", "locations", "", "Lcom/stripe/stripeterminal/external/models/Location;", "hasMore", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface LocationListCallback extends ErrorCallback {
    void onSuccess(List<Location> locations, boolean hasMore);
}
