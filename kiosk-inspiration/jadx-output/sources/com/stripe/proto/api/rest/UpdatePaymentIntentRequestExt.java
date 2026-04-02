package com.stripe.proto.api.rest;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.wirecrpc.WirecrpcTypeGenExtKt;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;

/* JADX INFO: compiled from: UpdatePaymentIntentRequestExt.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequestExt;", "", "()V", "addUpdatePaymentIntentRequest", "Lokhttp3/FormBody$Builder;", "message", "Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;", "context", "", "Lokhttp3/HttpUrl$Builder;", "Lokhttp3/MultipartBody$Builder;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UpdatePaymentIntentRequestExt {
    public static final UpdatePaymentIntentRequestExt INSTANCE = new UpdatePaymentIntentRequestExt();

    private UpdatePaymentIntentRequestExt() {
    }

    public final HttpUrl.Builder addUpdatePaymentIntentRequest(HttpUrl.Builder builder, UpdatePaymentIntentRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Iterator<T> it = message.expand.iterator();
        while (it.hasNext()) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("expand", context) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, ((String) it.next()).toString());
        }
        Long l = message.amount;
        if (l != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith(BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, context), String.valueOf(l.longValue()));
        }
        String str = message.id;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith(OfflineStorageConstantsKt.ID, context), str.toString());
        }
        RequestedPaymentMethod requestedPaymentMethod = message.payment_method_data;
        if (requestedPaymentMethod != null) {
            RequestedPaymentMethodExt.INSTANCE.addRequestedPaymentMethod(builder, requestedPaymentMethod, WirecrpcTypeGenExtKt.wrapWith("payment_method_data", context));
        }
        Long l2 = message.amount_tip;
        if (l2 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("amount_tip", context), String.valueOf(l2.longValue()));
        }
        UpdatePaymentIntentPaymentMethodOptions updatePaymentIntentPaymentMethodOptions = message.payment_method_options;
        if (updatePaymentIntentPaymentMethodOptions != null) {
            UpdatePaymentIntentPaymentMethodOptionsExt.INSTANCE.addUpdatePaymentIntentPaymentMethodOptions(builder, updatePaymentIntentPaymentMethodOptions, WirecrpcTypeGenExtKt.wrapWith("payment_method_options", context));
        }
        return builder;
    }

    public final FormBody.Builder addUpdatePaymentIntentRequest(FormBody.Builder builder, UpdatePaymentIntentRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Iterator<T> it = message.expand.iterator();
        while (it.hasNext()) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("expand", context) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, ((String) it.next()).toString());
        }
        Long l = message.amount;
        if (l != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith(BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, context), String.valueOf(l.longValue()));
        }
        String str = message.id;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith(OfflineStorageConstantsKt.ID, context), str.toString());
        }
        RequestedPaymentMethod requestedPaymentMethod = message.payment_method_data;
        if (requestedPaymentMethod != null) {
            RequestedPaymentMethodExt.INSTANCE.addRequestedPaymentMethod(builder, requestedPaymentMethod, WirecrpcTypeGenExtKt.wrapWith("payment_method_data", context));
        }
        Long l2 = message.amount_tip;
        if (l2 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("amount_tip", context), String.valueOf(l2.longValue()));
        }
        UpdatePaymentIntentPaymentMethodOptions updatePaymentIntentPaymentMethodOptions = message.payment_method_options;
        if (updatePaymentIntentPaymentMethodOptions != null) {
            UpdatePaymentIntentPaymentMethodOptionsExt.INSTANCE.addUpdatePaymentIntentPaymentMethodOptions(builder, updatePaymentIntentPaymentMethodOptions, WirecrpcTypeGenExtKt.wrapWith("payment_method_options", context));
        }
        return builder;
    }

    public final MultipartBody.Builder addUpdatePaymentIntentRequest(MultipartBody.Builder builder, UpdatePaymentIntentRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Iterator<T> it = message.expand.iterator();
        while (it.hasNext()) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("expand", context) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, ((String) it.next()).toString());
        }
        Long l = message.amount;
        if (l != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith(BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, context), String.valueOf(l.longValue()));
        }
        String str = message.id;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith(OfflineStorageConstantsKt.ID, context), str.toString());
        }
        RequestedPaymentMethod requestedPaymentMethod = message.payment_method_data;
        if (requestedPaymentMethod != null) {
            RequestedPaymentMethodExt.INSTANCE.addRequestedPaymentMethod(builder, requestedPaymentMethod, WirecrpcTypeGenExtKt.wrapWith("payment_method_data", context));
        }
        Long l2 = message.amount_tip;
        if (l2 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("amount_tip", context), String.valueOf(l2.longValue()));
        }
        UpdatePaymentIntentPaymentMethodOptions updatePaymentIntentPaymentMethodOptions = message.payment_method_options;
        if (updatePaymentIntentPaymentMethodOptions != null) {
            UpdatePaymentIntentPaymentMethodOptionsExt.INSTANCE.addUpdatePaymentIntentPaymentMethodOptions(builder, updatePaymentIntentPaymentMethodOptions, WirecrpcTypeGenExtKt.wrapWith("payment_method_options", context));
        }
        return builder;
    }
}
