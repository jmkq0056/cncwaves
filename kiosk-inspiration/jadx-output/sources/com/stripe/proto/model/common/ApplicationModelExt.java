package com.stripe.proto.model.common;

import com.stripe.wirecrpc.WirecrpcTypeGenExtKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;

/* JADX INFO: compiled from: ApplicationModelExt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/common/ApplicationModelExt;", "", "()V", "addApplicationModel", "Lokhttp3/FormBody$Builder;", "message", "Lcom/stripe/proto/model/common/ApplicationModel;", "context", "", "Lokhttp3/HttpUrl$Builder;", "Lokhttp3/MultipartBody$Builder;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ApplicationModelExt {
    public static final ApplicationModelExt INSTANCE = new ApplicationModelExt();

    private ApplicationModelExt() {
    }

    public final HttpUrl.Builder addApplicationModel(HttpUrl.Builder builder, ApplicationModel message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("app_id", context), message.app_id.toString());
        builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("app_version", context), message.app_version.toString());
        return builder;
    }

    public final FormBody.Builder addApplicationModel(FormBody.Builder builder, ApplicationModel message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        builder.add(WirecrpcTypeGenExtKt.wrapWith("app_id", context), message.app_id.toString());
        builder.add(WirecrpcTypeGenExtKt.wrapWith("app_version", context), message.app_version.toString());
        return builder;
    }

    public final MultipartBody.Builder addApplicationModel(MultipartBody.Builder builder, ApplicationModel message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("app_id", context), message.app_id.toString());
        builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("app_version", context), message.app_version.toString());
        return builder;
    }
}
