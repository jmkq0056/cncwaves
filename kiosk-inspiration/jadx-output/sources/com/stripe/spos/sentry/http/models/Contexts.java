package com.stripe.spos.sentry.http.models;

import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import java.util.List;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: Contexts.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0087\b\u0018\u0000 (2\u00020\u0001:\u0005&'()*B7\b\u0011\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\fB\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\rJ\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0016\u001a\u00020\tHÆ\u0003J'\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J&\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00002\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$HÁ\u0001¢\u0006\u0002\b%R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006+"}, d2 = {"Lcom/stripe/spos/sentry/http/models/Contexts;", "", "seen1", "", "app", "Lcom/stripe/spos/sentry/http/models/Contexts$AppInfo;", "os", "Lcom/stripe/spos/sentry/http/models/Contexts$OsInfo;", "device", "Lcom/stripe/spos/sentry/http/models/Contexts$DeviceInfo;", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/stripe/spos/sentry/http/models/Contexts$AppInfo;Lcom/stripe/spos/sentry/http/models/Contexts$OsInfo;Lcom/stripe/spos/sentry/http/models/Contexts$DeviceInfo;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Lcom/stripe/spos/sentry/http/models/Contexts$AppInfo;Lcom/stripe/spos/sentry/http/models/Contexts$OsInfo;Lcom/stripe/spos/sentry/http/models/Contexts$DeviceInfo;)V", "getApp", "()Lcom/stripe/spos/sentry/http/models/Contexts$AppInfo;", "getDevice", "()Lcom/stripe/spos/sentry/http/models/Contexts$DeviceInfo;", "getOs", "()Lcom/stripe/spos/sentry/http/models/Contexts$OsInfo;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$sentry_http", "$serializer", "AppInfo", "Companion", "DeviceInfo", "OsInfo", "sentry-http"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final /* data */ class Contexts {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final AppInfo app;
    private final DeviceInfo device;
    private final OsInfo os;

    public static /* synthetic */ Contexts copy$default(Contexts contexts, AppInfo appInfo, OsInfo osInfo, DeviceInfo deviceInfo, int i, Object obj) {
        if ((i & 1) != 0) {
            appInfo = contexts.app;
        }
        if ((i & 2) != 0) {
            osInfo = contexts.os;
        }
        if ((i & 4) != 0) {
            deviceInfo = contexts.device;
        }
        return contexts.copy(appInfo, osInfo, deviceInfo);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final AppInfo getApp() {
        return this.app;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final OsInfo getOs() {
        return this.os;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final DeviceInfo getDevice() {
        return this.device;
    }

    public final Contexts copy(AppInfo app, OsInfo os, DeviceInfo device) {
        Intrinsics.checkNotNullParameter(app, "app");
        Intrinsics.checkNotNullParameter(os, "os");
        Intrinsics.checkNotNullParameter(device, "device");
        return new Contexts(app, os, device);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Contexts)) {
            return false;
        }
        Contexts contexts = (Contexts) other;
        return Intrinsics.areEqual(this.app, contexts.app) && Intrinsics.areEqual(this.os, contexts.os) && Intrinsics.areEqual(this.device, contexts.device);
    }

    public int hashCode() {
        return (((this.app.hashCode() * 31) + this.os.hashCode()) * 31) + this.device.hashCode();
    }

    public String toString() {
        return "Contexts(app=" + this.app + ", os=" + this.os + ", device=" + this.device + ')';
    }

    /* JADX INFO: compiled from: Contexts.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/spos/sentry/http/models/Contexts$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/spos/sentry/http/models/Contexts;", "sentry-http"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<Contexts> serializer() {
            return Contexts$$serializer.INSTANCE;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ Contexts(int i, AppInfo appInfo, OsInfo osInfo, DeviceInfo deviceInfo, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, Contexts$$serializer.INSTANCE.getDescriptor());
        }
        this.app = appInfo;
        this.os = osInfo;
        this.device = deviceInfo;
    }

    public Contexts(AppInfo app, OsInfo os, DeviceInfo device) {
        Intrinsics.checkNotNullParameter(app, "app");
        Intrinsics.checkNotNullParameter(os, "os");
        Intrinsics.checkNotNullParameter(device, "device");
        this.app = app;
        this.os = os;
        this.device = device;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$sentry_http(Contexts self, CompositeEncoder output, SerialDescriptor serialDesc) {
        output.encodeSerializableElement(serialDesc, 0, Contexts$AppInfo$$serializer.INSTANCE, self.app);
        output.encodeSerializableElement(serialDesc, 1, Contexts$OsInfo$$serializer.INSTANCE, self.os);
        output.encodeSerializableElement(serialDesc, 2, Contexts$DeviceInfo$$serializer.INSTANCE, self.device);
    }

    public final AppInfo getApp() {
        return this.app;
    }

    public final OsInfo getOs() {
        return this.os;
    }

    /* JADX INFO: compiled from: Contexts.kt */
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 &2\u00020\u0001:\u0002%&B=\b\u0011\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nB\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0002\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J'\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001c\u001a\u00020\u0005HÖ\u0001J&\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00002\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#HÁ\u0001¢\u0006\u0002\b$R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0010\u0010\r\u001a\u0004\b\u0011\u0010\u000fR\u001c\u0010\u0007\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0012\u0010\r\u001a\u0004\b\u0013\u0010\u000f¨\u0006'"}, d2 = {"Lcom/stripe/spos/sentry/http/models/Contexts$AppInfo;", "", "seen1", "", OfflineStorageConstantsKt.ID, "", "name", "version", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getId$annotations", "()V", "getId", "()Ljava/lang/String;", "getName$annotations", "getName", "getVersion$annotations", "getVersion", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$sentry_http", "$serializer", "Companion", "sentry-http"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Serializable
    public static final /* data */ class AppInfo {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final String id;
        private final String name;
        private final String version;

        public static /* synthetic */ AppInfo copy$default(AppInfo appInfo, String str, String str2, String str3, int i, Object obj) {
            if ((i & 1) != 0) {
                str = appInfo.id;
            }
            if ((i & 2) != 0) {
                str2 = appInfo.name;
            }
            if ((i & 4) != 0) {
                str3 = appInfo.version;
            }
            return appInfo.copy(str, str2, str3);
        }

        @SerialName("app_identifier")
        public static /* synthetic */ void getId$annotations() {
        }

        @SerialName("app_name")
        public static /* synthetic */ void getName$annotations() {
        }

        @SerialName("app_version")
        public static /* synthetic */ void getVersion$annotations() {
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getId() {
            return this.id;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getName() {
            return this.name;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getVersion() {
            return this.version;
        }

        public final AppInfo copy(String id, String name, String version) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(version, "version");
            return new AppInfo(id, name, version);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof AppInfo)) {
                return false;
            }
            AppInfo appInfo = (AppInfo) other;
            return Intrinsics.areEqual(this.id, appInfo.id) && Intrinsics.areEqual(this.name, appInfo.name) && Intrinsics.areEqual(this.version, appInfo.version);
        }

        public int hashCode() {
            return (((this.id.hashCode() * 31) + this.name.hashCode()) * 31) + this.version.hashCode();
        }

        public String toString() {
            return "AppInfo(id=" + this.id + ", name=" + this.name + ", version=" + this.version + ')';
        }

        /* JADX INFO: compiled from: Contexts.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/spos/sentry/http/models/Contexts$AppInfo$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/spos/sentry/http/models/Contexts$AppInfo;", "sentry-http"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final KSerializer<AppInfo> serializer() {
                return Contexts$AppInfo$$serializer.INSTANCE;
            }
        }

        @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
        public /* synthetic */ AppInfo(int i, @SerialName("app_identifier") String str, @SerialName("app_name") String str2, @SerialName("app_version") String str3, SerializationConstructorMarker serializationConstructorMarker) {
            if (7 != (i & 7)) {
                PluginExceptionsKt.throwMissingFieldException(i, 7, Contexts$AppInfo$$serializer.INSTANCE.getDescriptor());
            }
            this.id = str;
            this.name = str2;
            this.version = str3;
        }

        public AppInfo(String id, String name, String version) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(version, "version");
            this.id = id;
            this.name = name;
            this.version = version;
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self$sentry_http(AppInfo self, CompositeEncoder output, SerialDescriptor serialDesc) {
            output.encodeStringElement(serialDesc, 0, self.id);
            output.encodeStringElement(serialDesc, 1, self.name);
            output.encodeStringElement(serialDesc, 2, self.version);
        }

        public final String getId() {
            return this.id;
        }

        public final String getName() {
            return this.name;
        }

        public final String getVersion() {
            return this.version;
        }
    }

    public final DeviceInfo getDevice() {
        return this.device;
    }

    /* JADX INFO: compiled from: Contexts.kt */
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 %2\u00020\u0001:\u0002$%BA\b\u0011\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bB%\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005¢\u0006\u0002\u0010\fJ\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J1\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001b\u001a\u00020\u0005HÖ\u0001J&\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"HÁ\u0001¢\u0006\u0002\b#R\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000e¨\u0006&"}, d2 = {"Lcom/stripe/spos/sentry/http/models/Contexts$OsInfo;", "", "seen1", "", "name", "", "version", "type", "build", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getBuild", "()Ljava/lang/String;", "getName", "getType", "getVersion", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$sentry_http", "$serializer", "Companion", "sentry-http"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Serializable
    public static final /* data */ class OsInfo {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final String build;
        private final String name;
        private final String type;
        private final String version;

        public static /* synthetic */ OsInfo copy$default(OsInfo osInfo, String str, String str2, String str3, String str4, int i, Object obj) {
            if ((i & 1) != 0) {
                str = osInfo.name;
            }
            if ((i & 2) != 0) {
                str2 = osInfo.version;
            }
            if ((i & 4) != 0) {
                str3 = osInfo.type;
            }
            if ((i & 8) != 0) {
                str4 = osInfo.build;
            }
            return osInfo.copy(str, str2, str3, str4);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getName() {
            return this.name;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getVersion() {
            return this.version;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getType() {
            return this.type;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final String getBuild() {
            return this.build;
        }

        public final OsInfo copy(String name, String version, String type, String build) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(version, "version");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(build, "build");
            return new OsInfo(name, version, type, build);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof OsInfo)) {
                return false;
            }
            OsInfo osInfo = (OsInfo) other;
            return Intrinsics.areEqual(this.name, osInfo.name) && Intrinsics.areEqual(this.version, osInfo.version) && Intrinsics.areEqual(this.type, osInfo.type) && Intrinsics.areEqual(this.build, osInfo.build);
        }

        public int hashCode() {
            return (((((this.name.hashCode() * 31) + this.version.hashCode()) * 31) + this.type.hashCode()) * 31) + this.build.hashCode();
        }

        public String toString() {
            return "OsInfo(name=" + this.name + ", version=" + this.version + ", type=" + this.type + ", build=" + this.build + ')';
        }

        /* JADX INFO: compiled from: Contexts.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/spos/sentry/http/models/Contexts$OsInfo$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/spos/sentry/http/models/Contexts$OsInfo;", "sentry-http"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final KSerializer<OsInfo> serializer() {
                return Contexts$OsInfo$$serializer.INSTANCE;
            }
        }

        @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
        public /* synthetic */ OsInfo(int i, String str, String str2, String str3, String str4, SerializationConstructorMarker serializationConstructorMarker) {
            if (15 != (i & 15)) {
                PluginExceptionsKt.throwMissingFieldException(i, 15, Contexts$OsInfo$$serializer.INSTANCE.getDescriptor());
            }
            this.name = str;
            this.version = str2;
            this.type = str3;
            this.build = str4;
        }

        public OsInfo(String name, String version, String type, String build) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(version, "version");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(build, "build");
            this.name = name;
            this.version = version;
            this.type = type;
            this.build = build;
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self$sentry_http(OsInfo self, CompositeEncoder output, SerialDescriptor serialDesc) {
            output.encodeStringElement(serialDesc, 0, self.name);
            output.encodeStringElement(serialDesc, 1, self.version);
            output.encodeStringElement(serialDesc, 2, self.type);
            output.encodeStringElement(serialDesc, 3, self.build);
        }

        public final String getName() {
            return this.name;
        }

        public final String getVersion() {
            return this.version;
        }

        public final String getType() {
            return this.type;
        }

        public final String getBuild() {
            return this.build;
        }
    }

    /* JADX INFO: compiled from: Contexts.kt */
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 ,2\u00020\u0001:\u0002+,BS\b\u0011\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\rB3\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\n¢\u0006\u0002\u0010\u000eJ\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0005HÆ\u0003J\u000f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00050\nHÆ\u0003JA\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u00052\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\nHÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\u0003HÖ\u0001J\t\u0010\"\u001a\u00020\u0005HÖ\u0001J&\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u00002\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)HÁ\u0001¢\u0006\u0002\b*R\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\n¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0012R\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0012¨\u0006-"}, d2 = {"Lcom/stripe/spos/sentry/http/models/Contexts$DeviceInfo;", "", "seen1", "", "modelId", "", "model", "manufacturer", "type", "archs", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getArchs", "()Ljava/util/List;", "getManufacturer", "()Ljava/lang/String;", "getModel", "getModelId$annotations", "()V", "getModelId", "getType", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$sentry_http", "$serializer", "Companion", "sentry-http"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Serializable
    public static final /* data */ class DeviceInfo {
        private final List<String> archs;
        private final String manufacturer;
        private final String model;
        private final String modelId;
        private final String type;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final KSerializer<Object>[] $childSerializers = {null, null, null, null, new ArrayListSerializer(StringSerializer.INSTANCE)};

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ DeviceInfo copy$default(DeviceInfo deviceInfo, String str, String str2, String str3, String str4, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                str = deviceInfo.modelId;
            }
            if ((i & 2) != 0) {
                str2 = deviceInfo.model;
            }
            if ((i & 4) != 0) {
                str3 = deviceInfo.manufacturer;
            }
            if ((i & 8) != 0) {
                str4 = deviceInfo.type;
            }
            if ((i & 16) != 0) {
                list = deviceInfo.archs;
            }
            List list2 = list;
            String str5 = str3;
            return deviceInfo.copy(str, str2, str5, str4, list2);
        }

        @SerialName("model_id")
        public static /* synthetic */ void getModelId$annotations() {
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getModelId() {
            return this.modelId;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getModel() {
            return this.model;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getManufacturer() {
            return this.manufacturer;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final String getType() {
            return this.type;
        }

        public final List<String> component5() {
            return this.archs;
        }

        public final DeviceInfo copy(String modelId, String model, String manufacturer, String type, List<String> archs) {
            Intrinsics.checkNotNullParameter(modelId, "modelId");
            Intrinsics.checkNotNullParameter(model, "model");
            Intrinsics.checkNotNullParameter(manufacturer, "manufacturer");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(archs, "archs");
            return new DeviceInfo(modelId, model, manufacturer, type, archs);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof DeviceInfo)) {
                return false;
            }
            DeviceInfo deviceInfo = (DeviceInfo) other;
            return Intrinsics.areEqual(this.modelId, deviceInfo.modelId) && Intrinsics.areEqual(this.model, deviceInfo.model) && Intrinsics.areEqual(this.manufacturer, deviceInfo.manufacturer) && Intrinsics.areEqual(this.type, deviceInfo.type) && Intrinsics.areEqual(this.archs, deviceInfo.archs);
        }

        public int hashCode() {
            return (((((((this.modelId.hashCode() * 31) + this.model.hashCode()) * 31) + this.manufacturer.hashCode()) * 31) + this.type.hashCode()) * 31) + this.archs.hashCode();
        }

        public String toString() {
            return "DeviceInfo(modelId=" + this.modelId + ", model=" + this.model + ", manufacturer=" + this.manufacturer + ", type=" + this.type + ", archs=" + this.archs + ')';
        }

        /* JADX INFO: compiled from: Contexts.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/spos/sentry/http/models/Contexts$DeviceInfo$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/spos/sentry/http/models/Contexts$DeviceInfo;", "sentry-http"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final KSerializer<DeviceInfo> serializer() {
                return Contexts$DeviceInfo$$serializer.INSTANCE;
            }
        }

        @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
        public /* synthetic */ DeviceInfo(int i, @SerialName("model_id") String str, String str2, String str3, String str4, List list, SerializationConstructorMarker serializationConstructorMarker) {
            if (31 != (i & 31)) {
                PluginExceptionsKt.throwMissingFieldException(i, 31, Contexts$DeviceInfo$$serializer.INSTANCE.getDescriptor());
            }
            this.modelId = str;
            this.model = str2;
            this.manufacturer = str3;
            this.type = str4;
            this.archs = list;
        }

        public DeviceInfo(String modelId, String model, String manufacturer, String type, List<String> archs) {
            Intrinsics.checkNotNullParameter(modelId, "modelId");
            Intrinsics.checkNotNullParameter(model, "model");
            Intrinsics.checkNotNullParameter(manufacturer, "manufacturer");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(archs, "archs");
            this.modelId = modelId;
            this.model = model;
            this.manufacturer = manufacturer;
            this.type = type;
            this.archs = archs;
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self$sentry_http(DeviceInfo self, CompositeEncoder output, SerialDescriptor serialDesc) {
            KSerializer<Object>[] kSerializerArr = $childSerializers;
            output.encodeStringElement(serialDesc, 0, self.modelId);
            output.encodeStringElement(serialDesc, 1, self.model);
            output.encodeStringElement(serialDesc, 2, self.manufacturer);
            output.encodeStringElement(serialDesc, 3, self.type);
            output.encodeSerializableElement(serialDesc, 4, kSerializerArr[4], self.archs);
        }

        public final String getModelId() {
            return this.modelId;
        }

        public final String getModel() {
            return this.model;
        }

        public final String getManufacturer() {
            return this.manufacturer;
        }

        public final String getType() {
            return this.type;
        }

        public final List<String> getArchs() {
            return this.archs;
        }
    }
}
