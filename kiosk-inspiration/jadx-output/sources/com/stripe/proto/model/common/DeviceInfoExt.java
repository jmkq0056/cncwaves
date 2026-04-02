package com.stripe.proto.model.common;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.proto.model.common.DeviceInfo;
import com.stripe.wirecrpc.WirecrpcTypeGenExtKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;

/* JADX INFO: compiled from: DeviceInfoExt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000b\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000b\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000b\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\b¨\u0006\r"}, d2 = {"Lcom/stripe/proto/model/common/DeviceInfoExt;", "", "()V", "addDeviceClass", "Lokhttp3/FormBody$Builder;", "message", "Lcom/stripe/proto/model/common/DeviceInfo$DeviceClass;", "context", "", "Lokhttp3/HttpUrl$Builder;", "Lokhttp3/MultipartBody$Builder;", "addDeviceInfo", "Lcom/stripe/proto/model/common/DeviceInfo;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DeviceInfoExt {
    public static final DeviceInfoExt INSTANCE = new DeviceInfoExt();

    public final FormBody.Builder addDeviceClass(FormBody.Builder builder, DeviceInfo.DeviceClass message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        return builder;
    }

    public final HttpUrl.Builder addDeviceClass(HttpUrl.Builder builder, DeviceInfo.DeviceClass message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        return builder;
    }

    public final MultipartBody.Builder addDeviceClass(MultipartBody.Builder builder, DeviceInfo.DeviceClass message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        return builder;
    }

    private DeviceInfoExt() {
    }

    public final HttpUrl.Builder addDeviceInfo(HttpUrl.Builder builder, DeviceInfo message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        DeviceInfo.DeviceClass deviceClass = message.device_class;
        if (deviceClass != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("device_class", context), deviceClass.name());
        }
        builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("device_uuid", context), message.device_uuid.toString());
        HardwareModel hardwareModel = message.hardware_model;
        if (hardwareModel != null) {
            HardwareModelExt.INSTANCE.addHardwareModel(builder, hardwareModel, WirecrpcTypeGenExtKt.wrapWith("hardware_model", context));
        }
        ApplicationModel applicationModel = message.app_model;
        if (applicationModel != null) {
            ApplicationModelExt.INSTANCE.addApplicationModel(builder, applicationModel, WirecrpcTypeGenExtKt.wrapWith("app_model", context));
        }
        builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("device_ip", context), message.device_ip.toString());
        builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("host_hw_version", context), message.host_hw_version.toString());
        builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("host_os_version", context), message.host_os_version.toString());
        builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("hostname", context), message.hostname.toString());
        InternetConnectionSource internetConnectionSource = message.connectivity_source;
        if (internetConnectionSource != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("connectivity_source", context), internetConnectionSource.name());
        }
        builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("bbpos_firmware", context), message.bbpos_firmware.toString());
        builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("bbpos_base_config", context), message.bbpos_base_config.toString());
        builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("bbpos_key_profile", context), message.bbpos_key_profile.toString());
        builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("bbpos_rom", context), message.bbpos_rom.toString());
        builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("stripe_config_hash", context), message.stripe_config_hash.toString());
        Location location = message.location;
        if (location != null) {
            LocationExt.INSTANCE.addLocation(builder, location, WirecrpcTypeGenExtKt.wrapWith(FirebaseAnalytics.Param.LOCATION, context));
        }
        return builder;
    }

    public final FormBody.Builder addDeviceInfo(FormBody.Builder builder, DeviceInfo message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        DeviceInfo.DeviceClass deviceClass = message.device_class;
        if (deviceClass != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("device_class", context), deviceClass.name());
        }
        builder.add(WirecrpcTypeGenExtKt.wrapWith("device_uuid", context), message.device_uuid.toString());
        HardwareModel hardwareModel = message.hardware_model;
        if (hardwareModel != null) {
            HardwareModelExt.INSTANCE.addHardwareModel(builder, hardwareModel, WirecrpcTypeGenExtKt.wrapWith("hardware_model", context));
        }
        ApplicationModel applicationModel = message.app_model;
        if (applicationModel != null) {
            ApplicationModelExt.INSTANCE.addApplicationModel(builder, applicationModel, WirecrpcTypeGenExtKt.wrapWith("app_model", context));
        }
        builder.add(WirecrpcTypeGenExtKt.wrapWith("device_ip", context), message.device_ip.toString());
        builder.add(WirecrpcTypeGenExtKt.wrapWith("host_hw_version", context), message.host_hw_version.toString());
        builder.add(WirecrpcTypeGenExtKt.wrapWith("host_os_version", context), message.host_os_version.toString());
        builder.add(WirecrpcTypeGenExtKt.wrapWith("hostname", context), message.hostname.toString());
        InternetConnectionSource internetConnectionSource = message.connectivity_source;
        if (internetConnectionSource != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("connectivity_source", context), internetConnectionSource.name());
        }
        builder.add(WirecrpcTypeGenExtKt.wrapWith("bbpos_firmware", context), message.bbpos_firmware.toString());
        builder.add(WirecrpcTypeGenExtKt.wrapWith("bbpos_base_config", context), message.bbpos_base_config.toString());
        builder.add(WirecrpcTypeGenExtKt.wrapWith("bbpos_key_profile", context), message.bbpos_key_profile.toString());
        builder.add(WirecrpcTypeGenExtKt.wrapWith("bbpos_rom", context), message.bbpos_rom.toString());
        builder.add(WirecrpcTypeGenExtKt.wrapWith("stripe_config_hash", context), message.stripe_config_hash.toString());
        Location location = message.location;
        if (location != null) {
            LocationExt.INSTANCE.addLocation(builder, location, WirecrpcTypeGenExtKt.wrapWith(FirebaseAnalytics.Param.LOCATION, context));
        }
        return builder;
    }

    public final MultipartBody.Builder addDeviceInfo(MultipartBody.Builder builder, DeviceInfo message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        DeviceInfo.DeviceClass deviceClass = message.device_class;
        if (deviceClass != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("device_class", context), deviceClass.name());
        }
        builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("device_uuid", context), message.device_uuid.toString());
        HardwareModel hardwareModel = message.hardware_model;
        if (hardwareModel != null) {
            HardwareModelExt.INSTANCE.addHardwareModel(builder, hardwareModel, WirecrpcTypeGenExtKt.wrapWith("hardware_model", context));
        }
        ApplicationModel applicationModel = message.app_model;
        if (applicationModel != null) {
            ApplicationModelExt.INSTANCE.addApplicationModel(builder, applicationModel, WirecrpcTypeGenExtKt.wrapWith("app_model", context));
        }
        builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("device_ip", context), message.device_ip.toString());
        builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("host_hw_version", context), message.host_hw_version.toString());
        builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("host_os_version", context), message.host_os_version.toString());
        builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("hostname", context), message.hostname.toString());
        InternetConnectionSource internetConnectionSource = message.connectivity_source;
        if (internetConnectionSource != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("connectivity_source", context), internetConnectionSource.name());
        }
        builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("bbpos_firmware", context), message.bbpos_firmware.toString());
        builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("bbpos_base_config", context), message.bbpos_base_config.toString());
        builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("bbpos_key_profile", context), message.bbpos_key_profile.toString());
        builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("bbpos_rom", context), message.bbpos_rom.toString());
        builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("stripe_config_hash", context), message.stripe_config_hash.toString());
        Location location = message.location;
        if (location != null) {
            LocationExt.INSTANCE.addLocation(builder, location, WirecrpcTypeGenExtKt.wrapWith(FirebaseAnalytics.Param.LOCATION, context));
        }
        return builder;
    }
}
