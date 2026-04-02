package com.stripe.core.readerupdate;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.stripe.proto.model.common.ClientVersionSpecPb;
import com.stripe.proto.model.config.MobileClientConfig;
import com.stripe.proto.terminal.terminal.pub.message.common.ImageRef;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UpdateSummary.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u001eB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u001d\u001a\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\bR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0014¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u0014¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0016R\u0011\u0010\u0019\u001a\u00020\u001a¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001c¨\u0006\u001f"}, d2 = {"Lcom/stripe/core/readerupdate/UpdateSummary;", "", "builder", "Lcom/stripe/core/readerupdate/UpdateSummary$Builder;", "(Lcom/stripe/core/readerupdate/UpdateSummary$Builder;)V", "configSpec", "Lcom/stripe/proto/model/common/ClientVersionSpecPb;", "getConfigSpec", "()Lcom/stripe/proto/model/common/ClientVersionSpecPb;", "firmwareSpec", "getFirmwareSpec", "fullConfig", "Lcom/stripe/proto/model/config/MobileClientConfig;", "getFullConfig", "()Lcom/stripe/proto/model/config/MobileClientConfig;", "imageRef", "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;", "getImageRef", "()Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;", "keyProfileName", "", "getKeyProfileName", "()Ljava/lang/String;", "settingsVersion", "getSettingsVersion", RemoteConfigConstants.ResponseFieldKey.STATE, "Lcom/stripe/core/readerupdate/UpdateState;", "getState", "()Lcom/stripe/core/readerupdate/UpdateState;", "toBuilder", "Builder", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UpdateSummary {
    private final Builder builder;
    private final ClientVersionSpecPb configSpec;
    private final ClientVersionSpecPb firmwareSpec;
    private final MobileClientConfig fullConfig;
    private final ImageRef imageRef;
    private final String keyProfileName;
    private final String settingsVersion;
    private final UpdateState state;

    public /* synthetic */ UpdateSummary(Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
        this(builder);
    }

    private UpdateSummary(Builder builder) {
        this.builder = builder;
        this.state = builder.getState();
        this.fullConfig = builder.getFullConfig();
        this.configSpec = builder.getConfigSpec();
        this.firmwareSpec = builder.getFirmwareSpec();
        this.keyProfileName = builder.getKeyProfileName();
        this.settingsVersion = builder.getSettingsVersion();
        this.imageRef = builder.getImageRef();
    }

    public final UpdateState getState() {
        return this.state;
    }

    public final MobileClientConfig getFullConfig() {
        return this.fullConfig;
    }

    public final ClientVersionSpecPb getConfigSpec() {
        return this.configSpec;
    }

    public final ClientVersionSpecPb getFirmwareSpec() {
        return this.firmwareSpec;
    }

    public final String getKeyProfileName() {
        return this.keyProfileName;
    }

    public final String getSettingsVersion() {
        return this.settingsVersion;
    }

    public final ImageRef getImageRef() {
        return this.imageRef;
    }

    /* JADX INFO: renamed from: toBuilder, reason: from getter */
    public final Builder getBuilder() {
        return this.builder;
    }

    /* JADX INFO: compiled from: UpdateSummary.kt */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010&\u001a\u00020'J\u0010\u0010(\u001a\u00020\u00002\b\u0010)\u001a\u0004\u0018\u00010\u0006J\u0010\u0010*\u001a\u00020\u00002\b\u0010)\u001a\u0004\u0018\u00010\u0006J\u0010\u0010+\u001a\u00020\u00002\b\u0010,\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010-\u001a\u00020\u00002\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u0010\u0010.\u001a\u00020\u00002\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bJ\u0010\u0010/\u001a\u00020\u00002\b\u00100\u001a\u0004\u0018\u00010\u001bR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\b\"\u0004\b\r\u0010\nR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001c\u0010 \u001a\u0004\u0018\u00010\u001bX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u001d\"\u0004\b\"\u0010\u001fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010\u0004¨\u00061"}, d2 = {"Lcom/stripe/core/readerupdate/UpdateSummary$Builder;", "", RemoteConfigConstants.ResponseFieldKey.STATE, "Lcom/stripe/core/readerupdate/UpdateState;", "(Lcom/stripe/core/readerupdate/UpdateState;)V", "configSpec", "Lcom/stripe/proto/model/common/ClientVersionSpecPb;", "getConfigSpec$readerupdate_release", "()Lcom/stripe/proto/model/common/ClientVersionSpecPb;", "setConfigSpec$readerupdate_release", "(Lcom/stripe/proto/model/common/ClientVersionSpecPb;)V", "firmwareSpec", "getFirmwareSpec$readerupdate_release", "setFirmwareSpec$readerupdate_release", "fullConfig", "Lcom/stripe/proto/model/config/MobileClientConfig;", "getFullConfig$readerupdate_release", "()Lcom/stripe/proto/model/config/MobileClientConfig;", "setFullConfig$readerupdate_release", "(Lcom/stripe/proto/model/config/MobileClientConfig;)V", "imageRef", "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;", "getImageRef$readerupdate_release", "()Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;", "setImageRef$readerupdate_release", "(Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;)V", "keyProfileName", "", "getKeyProfileName$readerupdate_release", "()Ljava/lang/String;", "setKeyProfileName$readerupdate_release", "(Ljava/lang/String;)V", "settingsVersion", "getSettingsVersion$readerupdate_release", "setSettingsVersion$readerupdate_release", "getState$readerupdate_release", "()Lcom/stripe/core/readerupdate/UpdateState;", "setState$readerupdate_release", "build", "Lcom/stripe/core/readerupdate/UpdateSummary;", "setConfigSpec", "spec", "setFirmwareSpec", "setFullConfig", "config", "setImageRef", "setKeyProfileName", "setSettingsVersion", "version", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder {
        private ClientVersionSpecPb configSpec;
        private ClientVersionSpecPb firmwareSpec;
        private MobileClientConfig fullConfig;
        private ImageRef imageRef;
        private String keyProfileName;
        private String settingsVersion;
        private UpdateState state;

        public Builder(UpdateState state) {
            Intrinsics.checkNotNullParameter(state, "state");
            this.state = state;
        }

        /* JADX INFO: renamed from: getState$readerupdate_release, reason: from getter */
        public final UpdateState getState() {
            return this.state;
        }

        public final void setState$readerupdate_release(UpdateState updateState) {
            Intrinsics.checkNotNullParameter(updateState, "<set-?>");
            this.state = updateState;
        }

        /* JADX INFO: renamed from: getFullConfig$readerupdate_release, reason: from getter */
        public final MobileClientConfig getFullConfig() {
            return this.fullConfig;
        }

        public final void setFullConfig$readerupdate_release(MobileClientConfig mobileClientConfig) {
            this.fullConfig = mobileClientConfig;
        }

        /* JADX INFO: renamed from: getConfigSpec$readerupdate_release, reason: from getter */
        public final ClientVersionSpecPb getConfigSpec() {
            return this.configSpec;
        }

        public final void setConfigSpec$readerupdate_release(ClientVersionSpecPb clientVersionSpecPb) {
            this.configSpec = clientVersionSpecPb;
        }

        /* JADX INFO: renamed from: getFirmwareSpec$readerupdate_release, reason: from getter */
        public final ClientVersionSpecPb getFirmwareSpec() {
            return this.firmwareSpec;
        }

        public final void setFirmwareSpec$readerupdate_release(ClientVersionSpecPb clientVersionSpecPb) {
            this.firmwareSpec = clientVersionSpecPb;
        }

        /* JADX INFO: renamed from: getKeyProfileName$readerupdate_release, reason: from getter */
        public final String getKeyProfileName() {
            return this.keyProfileName;
        }

        public final void setKeyProfileName$readerupdate_release(String str) {
            this.keyProfileName = str;
        }

        /* JADX INFO: renamed from: getSettingsVersion$readerupdate_release, reason: from getter */
        public final String getSettingsVersion() {
            return this.settingsVersion;
        }

        public final void setSettingsVersion$readerupdate_release(String str) {
            this.settingsVersion = str;
        }

        /* JADX INFO: renamed from: getImageRef$readerupdate_release, reason: from getter */
        public final ImageRef getImageRef() {
            return this.imageRef;
        }

        public final void setImageRef$readerupdate_release(ImageRef imageRef) {
            this.imageRef = imageRef;
        }

        public final Builder setFullConfig(MobileClientConfig config) {
            this.fullConfig = config;
            return this;
        }

        public final Builder setConfigSpec(ClientVersionSpecPb spec) {
            this.configSpec = spec;
            return this;
        }

        public final Builder setFirmwareSpec(ClientVersionSpecPb spec) {
            this.firmwareSpec = spec;
            return this;
        }

        public final Builder setKeyProfileName(String keyProfileName) {
            this.keyProfileName = keyProfileName;
            return this;
        }

        public final Builder setSettingsVersion(String version) {
            this.settingsVersion = version;
            return this;
        }

        public final Builder setImageRef(ImageRef imageRef) {
            this.imageRef = imageRef;
            return this;
        }

        public final UpdateSummary build() {
            return new UpdateSummary(this, null);
        }
    }
}
