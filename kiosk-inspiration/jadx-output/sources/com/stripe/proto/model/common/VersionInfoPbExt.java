package com.stripe.proto.model.common;

import com.stripe.proto.model.common.VersionInfoPb;
import com.stripe.wirecrpc.WirecrpcTypeGenExtKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;

/* JADX INFO: compiled from: VersionInfoPbExt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000b\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000b\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000b\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\b¨\u0006\r"}, d2 = {"Lcom/stripe/proto/model/common/VersionInfoPbExt;", "", "()V", "addClientType", "Lokhttp3/FormBody$Builder;", "message", "Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;", "context", "", "Lokhttp3/HttpUrl$Builder;", "Lokhttp3/MultipartBody$Builder;", "addVersionInfoPb", "Lcom/stripe/proto/model/common/VersionInfoPb;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class VersionInfoPbExt {
    public static final VersionInfoPbExt INSTANCE = new VersionInfoPbExt();

    public final FormBody.Builder addClientType(FormBody.Builder builder, VersionInfoPb.ClientType message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        return builder;
    }

    public final HttpUrl.Builder addClientType(HttpUrl.Builder builder, VersionInfoPb.ClientType message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        return builder;
    }

    public final MultipartBody.Builder addClientType(MultipartBody.Builder builder, VersionInfoPb.ClientType message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        return builder;
    }

    private VersionInfoPbExt() {
    }

    public final HttpUrl.Builder addVersionInfoPb(HttpUrl.Builder builder, VersionInfoPb message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        VersionInfoPb.ClientType clientType = message.client_type;
        if (clientType != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("client_type", context), clientType.name());
        }
        String str = message.client_version;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("client_version", context), str.toString());
        }
        builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("version_code", context), String.valueOf(message.version_code));
        return builder;
    }

    public final FormBody.Builder addVersionInfoPb(FormBody.Builder builder, VersionInfoPb message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        VersionInfoPb.ClientType clientType = message.client_type;
        if (clientType != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("client_type", context), clientType.name());
        }
        String str = message.client_version;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("client_version", context), str.toString());
        }
        builder.add(WirecrpcTypeGenExtKt.wrapWith("version_code", context), String.valueOf(message.version_code));
        return builder;
    }

    public final MultipartBody.Builder addVersionInfoPb(MultipartBody.Builder builder, VersionInfoPb message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        VersionInfoPb.ClientType clientType = message.client_type;
        if (clientType != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("client_type", context), clientType.name());
        }
        String str = message.client_version;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("client_version", context), str.toString());
        }
        builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("version_code", context), String.valueOf(message.version_code));
        return builder;
    }
}
