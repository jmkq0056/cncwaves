package com.stripe.proto.api.rest;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.model.common.DeviceInfo;
import com.stripe.proto.model.common.DeviceInfoExt;
import com.stripe.proto.model.common.VersionInfoPb;
import com.stripe.proto.model.common.VersionInfoPbExt;
import com.stripe.stripeterminal.internal.common.adapter.BbposAdapter;
import com.stripe.wirecrpc.WirecrpcTypeGenExtKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;

/* JADX INFO: compiled from: RedeemForOfflineConnectionTokenRequestExt.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequestExt;", "", "()V", "addRedeemForOfflineConnectionTokenRequest", "Lokhttp3/FormBody$Builder;", "message", "Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;", "context", "", "Lokhttp3/HttpUrl$Builder;", "Lokhttp3/MultipartBody$Builder;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RedeemForOfflineConnectionTokenRequestExt {
    public static final RedeemForOfflineConnectionTokenRequestExt INSTANCE = new RedeemForOfflineConnectionTokenRequestExt();

    private RedeemForOfflineConnectionTokenRequestExt() {
    }

    public final HttpUrl.Builder addRedeemForOfflineConnectionTokenRequest(HttpUrl.Builder builder, RedeemForOfflineConnectionTokenRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.device_type;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("device_type", context), str.toString());
        }
        String str2 = message.device_serial_number;
        if (str2 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("device_serial_number", context), str2.toString());
        }
        String str3 = message.location;
        if (str3 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith(FirebaseAnalytics.Param.LOCATION, context), str3.toString());
        }
        Long l = message.reader_last_activated_online;
        if (l != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("reader_last_activated_online", context), String.valueOf(l.longValue()));
        }
        String str4 = message.reader_id;
        if (str4 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith(OfflineStorageConstantsKt.READER_ID, context), str4.toString());
        }
        VersionInfoPb versionInfoPb = message.pos_version_info;
        if (versionInfoPb != null) {
            VersionInfoPbExt.INSTANCE.addVersionInfoPb(builder, versionInfoPb, WirecrpcTypeGenExtKt.wrapWith("pos_version_info", context));
        }
        DeviceInfo deviceInfo = message.pos_device_info;
        if (deviceInfo != null) {
            DeviceInfoExt.INSTANCE.addDeviceInfo(builder, deviceInfo, WirecrpcTypeGenExtKt.wrapWith("pos_device_info", context));
        }
        DeviceInfo deviceInfo2 = message.reader_;
        if (deviceInfo2 != null) {
            DeviceInfoExt.INSTANCE.addDeviceInfo(builder, deviceInfo2, WirecrpcTypeGenExtKt.wrapWith(OfflineStorageConstantsKt.READER, context));
        }
        ConnectionType connectionType = message.connection_type;
        if (connectionType != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith(BbposAdapter.CONNECTION_TYPE_TAG_KEY, context), connectionType.name());
        }
        return builder;
    }

    public final FormBody.Builder addRedeemForOfflineConnectionTokenRequest(FormBody.Builder builder, RedeemForOfflineConnectionTokenRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.device_type;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("device_type", context), str.toString());
        }
        String str2 = message.device_serial_number;
        if (str2 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("device_serial_number", context), str2.toString());
        }
        String str3 = message.location;
        if (str3 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith(FirebaseAnalytics.Param.LOCATION, context), str3.toString());
        }
        Long l = message.reader_last_activated_online;
        if (l != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("reader_last_activated_online", context), String.valueOf(l.longValue()));
        }
        String str4 = message.reader_id;
        if (str4 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith(OfflineStorageConstantsKt.READER_ID, context), str4.toString());
        }
        VersionInfoPb versionInfoPb = message.pos_version_info;
        if (versionInfoPb != null) {
            VersionInfoPbExt.INSTANCE.addVersionInfoPb(builder, versionInfoPb, WirecrpcTypeGenExtKt.wrapWith("pos_version_info", context));
        }
        DeviceInfo deviceInfo = message.pos_device_info;
        if (deviceInfo != null) {
            DeviceInfoExt.INSTANCE.addDeviceInfo(builder, deviceInfo, WirecrpcTypeGenExtKt.wrapWith("pos_device_info", context));
        }
        DeviceInfo deviceInfo2 = message.reader_;
        if (deviceInfo2 != null) {
            DeviceInfoExt.INSTANCE.addDeviceInfo(builder, deviceInfo2, WirecrpcTypeGenExtKt.wrapWith(OfflineStorageConstantsKt.READER, context));
        }
        ConnectionType connectionType = message.connection_type;
        if (connectionType != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith(BbposAdapter.CONNECTION_TYPE_TAG_KEY, context), connectionType.name());
        }
        return builder;
    }

    public final MultipartBody.Builder addRedeemForOfflineConnectionTokenRequest(MultipartBody.Builder builder, RedeemForOfflineConnectionTokenRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.device_type;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("device_type", context), str.toString());
        }
        String str2 = message.device_serial_number;
        if (str2 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("device_serial_number", context), str2.toString());
        }
        String str3 = message.location;
        if (str3 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith(FirebaseAnalytics.Param.LOCATION, context), str3.toString());
        }
        Long l = message.reader_last_activated_online;
        if (l != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("reader_last_activated_online", context), String.valueOf(l.longValue()));
        }
        String str4 = message.reader_id;
        if (str4 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith(OfflineStorageConstantsKt.READER_ID, context), str4.toString());
        }
        VersionInfoPb versionInfoPb = message.pos_version_info;
        if (versionInfoPb != null) {
            VersionInfoPbExt.INSTANCE.addVersionInfoPb(builder, versionInfoPb, WirecrpcTypeGenExtKt.wrapWith("pos_version_info", context));
        }
        DeviceInfo deviceInfo = message.pos_device_info;
        if (deviceInfo != null) {
            DeviceInfoExt.INSTANCE.addDeviceInfo(builder, deviceInfo, WirecrpcTypeGenExtKt.wrapWith("pos_device_info", context));
        }
        DeviceInfo deviceInfo2 = message.reader_;
        if (deviceInfo2 != null) {
            DeviceInfoExt.INSTANCE.addDeviceInfo(builder, deviceInfo2, WirecrpcTypeGenExtKt.wrapWith(OfflineStorageConstantsKt.READER, context));
        }
        ConnectionType connectionType = message.connection_type;
        if (connectionType != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith(BbposAdapter.CONNECTION_TYPE_TAG_KEY, context), connectionType.name());
        }
        return builder;
    }
}
