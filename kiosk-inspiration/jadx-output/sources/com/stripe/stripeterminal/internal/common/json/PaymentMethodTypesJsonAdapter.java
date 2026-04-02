package com.stripe.stripeterminal.internal.common.json;

import com.squareup.moshi.FromJson;
import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.ToJson;
import com.stripe.json.BaseEnumJsonAdapterKt;
import com.stripe.stripeterminal.external.models.PaymentMethodType;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentMethodTypesJsonAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\bH\u0007J\u001c\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\bH\u0007R2\u0010\u0003\u001a&\u0012\f\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005 \u0006*\u0012\u0012\f\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/json/PaymentMethodTypesJsonAdapter;", "", "()V", "adapter", "Lcom/squareup/moshi/JsonAdapter;", "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "kotlin.jvm.PlatformType", "fromJson", "", "paymentMethodTypes", "", "toJson", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PaymentMethodTypesJsonAdapter {
    private final JsonAdapter<PaymentMethodType> adapter = BaseEnumJsonAdapterKt.createEnumJsonAdapterWithFallback(PaymentMethodType.class, null).lenient();

    @FromJson
    public final List<PaymentMethodType> fromJson(List<String> paymentMethodTypes) throws IOException {
        Intrinsics.checkNotNullParameter(paymentMethodTypes, "paymentMethodTypes");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = paymentMethodTypes.iterator();
        while (it.hasNext()) {
            PaymentMethodType paymentMethodTypeFromJson = this.adapter.fromJson((String) it.next());
            if (paymentMethodTypeFromJson != null) {
                arrayList.add(paymentMethodTypeFromJson);
            }
        }
        return arrayList;
    }

    @ToJson
    public final List<String> toJson(List<? extends PaymentMethodType> paymentMethodTypes) {
        Intrinsics.checkNotNullParameter(paymentMethodTypes, "paymentMethodTypes");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = paymentMethodTypes.iterator();
        while (it.hasNext()) {
            String json = this.adapter.toJson((PaymentMethodType) it.next());
            if (json != null) {
                arrayList.add(json);
            }
        }
        return arrayList;
    }
}
