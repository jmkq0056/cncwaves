package com.stripe.stripeterminal.external.callable;

import com.stripe.stripeterminal.external.models.CollectInputsResult;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: CollectInputsResultCallback.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0007À\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/external/callable/CollectInputsResultCallback;", "Lcom/stripe/stripeterminal/external/callable/ErrorCallback;", "onSuccess", "", "results", "", "Lcom/stripe/stripeterminal/external/models/CollectInputsResult;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface CollectInputsResultCallback extends ErrorCallback {
    void onSuccess(List<? extends CollectInputsResult> results);
}
