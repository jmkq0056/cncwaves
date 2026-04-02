package com.stripe.proto.api.rest;

import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.model.common.DeviceInfo;
import com.stripe.proto.model.common.DeviceInfoExt;
import com.stripe.proto.model.common.VersionInfoPb;
import com.stripe.proto.model.common.VersionInfoPbExt;
import com.stripe.stripeterminal.internal.common.adapter.BbposAdapter;
import com.stripe.wirecrpc.WirecrpcTypeGenExtKt;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;

/* JADX INFO: compiled from: ActivateConnectionTokenRequestExt.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequestExt;", "", "()V", "addActivateConnectionTokenRequest", "Lokhttp3/FormBody$Builder;", "message", "Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;", "context", "", "Lokhttp3/HttpUrl$Builder;", "Lokhttp3/MultipartBody$Builder;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ActivateConnectionTokenRequestExt {
    public static final ActivateConnectionTokenRequestExt INSTANCE = new ActivateConnectionTokenRequestExt();

    private ActivateConnectionTokenRequestExt() {
    }

    public final HttpUrl.Builder addActivateConnectionTokenRequest(HttpUrl.Builder builder, ActivateConnectionTokenRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.pos_device_id;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("pos_device_id", context), str.toString());
        }
        String str2 = message.device_type;
        if (str2 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("device_type", context), str2.toString());
        }
        String str3 = message.device_serial_number;
        if (str3 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("device_serial_number", context), str3.toString());
        }
        DeviceInfo deviceInfo = message.reader_;
        if (deviceInfo != null) {
            DeviceInfoExt.INSTANCE.addDeviceInfo(builder, deviceInfo, WirecrpcTypeGenExtKt.wrapWith(OfflineStorageConstantsKt.READER, context));
        }
        VersionInfoPb versionInfoPb = message.reader_version_info;
        if (versionInfoPb != null) {
            VersionInfoPbExt.INSTANCE.addVersionInfoPb(builder, versionInfoPb, WirecrpcTypeGenExtKt.wrapWith("reader_version_info", context));
        }
        DeviceInfo deviceInfo2 = message.pos_device_info;
        if (deviceInfo2 != null) {
            DeviceInfoExt.INSTANCE.addDeviceInfo(builder, deviceInfo2, WirecrpcTypeGenExtKt.wrapWith("pos_device_info", context));
        }
        VersionInfoPb versionInfoPb2 = message.pos_version_info;
        if (versionInfoPb2 != null) {
            VersionInfoPbExt.INSTANCE.addVersionInfoPb(builder, versionInfoPb2, WirecrpcTypeGenExtKt.wrapWith("pos_version_info", context));
        }
        ReportedReaderConfig reportedReaderConfig = message.reported_reader_config;
        if (reportedReaderConfig != null) {
            ReportedReaderConfigExt.INSTANCE.addReportedReaderConfig(builder, reportedReaderConfig, WirecrpcTypeGenExtKt.wrapWith("reported_reader_config", context));
        }
        String str4 = message.register_to_location;
        if (str4 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("register_to_location", context), str4.toString());
        }
        VersionInfoPb versionInfoPb3 = message.pos_secondary_version_info;
        if (versionInfoPb3 != null) {
            VersionInfoPbExt.INSTANCE.addVersionInfoPb(builder, versionInfoPb3, WirecrpcTypeGenExtKt.wrapWith("pos_secondary_version_info", context));
        }
        Iterator<T> it = message.expand.iterator();
        while (it.hasNext()) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("expand", context) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, ((String) it.next()).toString());
        }
        Boolean bool = message.generate_offline_stripe_session_token;
        if (bool != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("generate_offline_stripe_session_token", context), String.valueOf(bool.booleanValue()));
        }
        ConnectionType connectionType = message.connection_type;
        if (connectionType != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith(BbposAdapter.CONNECTION_TYPE_TAG_KEY, context), connectionType.name());
        }
        return builder;
    }

    public final FormBody.Builder addActivateConnectionTokenRequest(FormBody.Builder builder, ActivateConnectionTokenRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.pos_device_id;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("pos_device_id", context), str.toString());
        }
        String str2 = message.device_type;
        if (str2 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("device_type", context), str2.toString());
        }
        String str3 = message.device_serial_number;
        if (str3 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("device_serial_number", context), str3.toString());
        }
        DeviceInfo deviceInfo = message.reader_;
        if (deviceInfo != null) {
            DeviceInfoExt.INSTANCE.addDeviceInfo(builder, deviceInfo, WirecrpcTypeGenExtKt.wrapWith(OfflineStorageConstantsKt.READER, context));
        }
        VersionInfoPb versionInfoPb = message.reader_version_info;
        if (versionInfoPb != null) {
            VersionInfoPbExt.INSTANCE.addVersionInfoPb(builder, versionInfoPb, WirecrpcTypeGenExtKt.wrapWith("reader_version_info", context));
        }
        DeviceInfo deviceInfo2 = message.pos_device_info;
        if (deviceInfo2 != null) {
            DeviceInfoExt.INSTANCE.addDeviceInfo(builder, deviceInfo2, WirecrpcTypeGenExtKt.wrapWith("pos_device_info", context));
        }
        VersionInfoPb versionInfoPb2 = message.pos_version_info;
        if (versionInfoPb2 != null) {
            VersionInfoPbExt.INSTANCE.addVersionInfoPb(builder, versionInfoPb2, WirecrpcTypeGenExtKt.wrapWith("pos_version_info", context));
        }
        ReportedReaderConfig reportedReaderConfig = message.reported_reader_config;
        if (reportedReaderConfig != null) {
            ReportedReaderConfigExt.INSTANCE.addReportedReaderConfig(builder, reportedReaderConfig, WirecrpcTypeGenExtKt.wrapWith("reported_reader_config", context));
        }
        String str4 = message.register_to_location;
        if (str4 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("register_to_location", context), str4.toString());
        }
        VersionInfoPb versionInfoPb3 = message.pos_secondary_version_info;
        if (versionInfoPb3 != null) {
            VersionInfoPbExt.INSTANCE.addVersionInfoPb(builder, versionInfoPb3, WirecrpcTypeGenExtKt.wrapWith("pos_secondary_version_info", context));
        }
        Iterator<T> it = message.expand.iterator();
        while (it.hasNext()) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("expand", context) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, ((String) it.next()).toString());
        }
        Boolean bool = message.generate_offline_stripe_session_token;
        if (bool != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("generate_offline_stripe_session_token", context), String.valueOf(bool.booleanValue()));
        }
        ConnectionType connectionType = message.connection_type;
        if (connectionType != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith(BbposAdapter.CONNECTION_TYPE_TAG_KEY, context), connectionType.name());
        }
        return builder;
    }

    public final MultipartBody.Builder addActivateConnectionTokenRequest(MultipartBody.Builder builder, ActivateConnectionTokenRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.pos_device_id;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("pos_device_id", context), str.toString());
        }
        String str2 = message.device_type;
        if (str2 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("device_type", context), str2.toString());
        }
        String str3 = message.device_serial_number;
        if (str3 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("device_serial_number", context), str3.toString());
        }
        DeviceInfo deviceInfo = message.reader_;
        if (deviceInfo != null) {
            DeviceInfoExt.INSTANCE.addDeviceInfo(builder, deviceInfo, WirecrpcTypeGenExtKt.wrapWith(OfflineStorageConstantsKt.READER, context));
        }
        VersionInfoPb versionInfoPb = message.reader_version_info;
        if (versionInfoPb != null) {
            VersionInfoPbExt.INSTANCE.addVersionInfoPb(builder, versionInfoPb, WirecrpcTypeGenExtKt.wrapWith("reader_version_info", context));
        }
        DeviceInfo deviceInfo2 = message.pos_device_info;
        if (deviceInfo2 != null) {
            DeviceInfoExt.INSTANCE.addDeviceInfo(builder, deviceInfo2, WirecrpcTypeGenExtKt.wrapWith("pos_device_info", context));
        }
        VersionInfoPb versionInfoPb2 = message.pos_version_info;
        if (versionInfoPb2 != null) {
            VersionInfoPbExt.INSTANCE.addVersionInfoPb(builder, versionInfoPb2, WirecrpcTypeGenExtKt.wrapWith("pos_version_info", context));
        }
        ReportedReaderConfig reportedReaderConfig = message.reported_reader_config;
        if (reportedReaderConfig != null) {
            ReportedReaderConfigExt.INSTANCE.addReportedReaderConfig(builder, reportedReaderConfig, WirecrpcTypeGenExtKt.wrapWith("reported_reader_config", context));
        }
        String str4 = message.register_to_location;
        if (str4 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("register_to_location", context), str4.toString());
        }
        VersionInfoPb versionInfoPb3 = message.pos_secondary_version_info;
        if (versionInfoPb3 != null) {
            VersionInfoPbExt.INSTANCE.addVersionInfoPb(builder, versionInfoPb3, WirecrpcTypeGenExtKt.wrapWith("pos_secondary_version_info", context));
        }
        Iterator<T> it = message.expand.iterator();
        while (it.hasNext()) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("expand", context) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, ((String) it.next()).toString());
        }
        Boolean bool = message.generate_offline_stripe_session_token;
        if (bool != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("generate_offline_stripe_session_token", context), String.valueOf(bool.booleanValue()));
        }
        ConnectionType connectionType = message.connection_type;
        if (connectionType != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith(BbposAdapter.CONNECTION_TYPE_TAG_KEY, context), connectionType.name());
        }
        return builder;
    }
}
