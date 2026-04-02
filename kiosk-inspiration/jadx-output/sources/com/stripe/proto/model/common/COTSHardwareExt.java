package com.stripe.proto.model.common;

import com.stripe.wirecrpc.WirecrpcTypeGenExtKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;

/* JADX INFO: compiled from: COTSHardwareExt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/common/COTSHardwareExt;", "", "()V", "addCOTSHardware", "Lokhttp3/FormBody$Builder;", "message", "Lcom/stripe/proto/model/common/COTSHardware;", "context", "", "Lokhttp3/HttpUrl$Builder;", "Lokhttp3/MultipartBody$Builder;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class COTSHardwareExt {
    public static final COTSHardwareExt INSTANCE = new COTSHardwareExt();

    private COTSHardwareExt() {
    }

    public final HttpUrl.Builder addCOTSHardware(HttpUrl.Builder builder, COTSHardware message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("name", context), message.name.toString());
        builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("model", context), message.model.toString());
        builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("manufacturer", context), message.manufacturer.toString());
        MobileOS mobileOS = message.mobile_os;
        if (mobileOS != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("mobile_os", context), mobileOS.name());
        }
        return builder;
    }

    public final FormBody.Builder addCOTSHardware(FormBody.Builder builder, COTSHardware message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        builder.add(WirecrpcTypeGenExtKt.wrapWith("name", context), message.name.toString());
        builder.add(WirecrpcTypeGenExtKt.wrapWith("model", context), message.model.toString());
        builder.add(WirecrpcTypeGenExtKt.wrapWith("manufacturer", context), message.manufacturer.toString());
        MobileOS mobileOS = message.mobile_os;
        if (mobileOS != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("mobile_os", context), mobileOS.name());
        }
        return builder;
    }

    public final MultipartBody.Builder addCOTSHardware(MultipartBody.Builder builder, COTSHardware message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("name", context), message.name.toString());
        builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("model", context), message.model.toString());
        builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("manufacturer", context), message.manufacturer.toString());
        MobileOS mobileOS = message.mobile_os;
        if (mobileOS != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("mobile_os", context), mobileOS.name());
        }
        return builder;
    }
}
