package com.stripe.proto.model.debugconfig;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: DebugConfig.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u001b2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001a\u001bBK\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fJL\u0010\u0010\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\r\u001a\u00020\u000eJ\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0002H\u0016J\b\u0010\u0018\u001a\u00020\u0019H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/stripe/proto/model/debugconfig/DebugConfig;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/debugconfig/DebugConfig$Builder;", "environment_config", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig;", "update_config", "Lcom/stripe/proto/model/debugconfig/UpdateConfig;", "navigation_config", "Lcom/stripe/proto/model/debugconfig/NavigationConfig;", "handoff_config", "Lcom/stripe/proto/model/debugconfig/HandoffConfig;", "settings_ui_config", "Lcom/stripe/proto/model/debugconfig/SettingsUiConfig;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/debugconfig/EnvironmentConfig;Lcom/stripe/proto/model/debugconfig/UpdateConfig;Lcom/stripe/proto/model/debugconfig/NavigationConfig;Lcom/stripe/proto/model/debugconfig/HandoffConfig;Lcom/stripe/proto/model/debugconfig/SettingsUiConfig;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DebugConfig extends Message<DebugConfig, Builder> {
    public static final ProtoAdapter<DebugConfig> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.debugconfig.EnvironmentConfig#ADAPTER", jsonName = "environmentConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final EnvironmentConfig environment_config;

    @WireField(adapter = "com.stripe.proto.model.debugconfig.HandoffConfig#ADAPTER", jsonName = "handoffConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final HandoffConfig handoff_config;

    @WireField(adapter = "com.stripe.proto.model.debugconfig.NavigationConfig#ADAPTER", jsonName = "navigationConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final NavigationConfig navigation_config;

    @WireField(adapter = "com.stripe.proto.model.debugconfig.SettingsUiConfig#ADAPTER", jsonName = "settingsUiConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final SettingsUiConfig settings_ui_config;

    @WireField(adapter = "com.stripe.proto.model.debugconfig.UpdateConfig#ADAPTER", jsonName = "updateConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final UpdateConfig update_config;

    public DebugConfig() {
        this(null, null, null, null, null, null, 63, null);
    }

    public /* synthetic */ DebugConfig(EnvironmentConfig environmentConfig, UpdateConfig updateConfig, NavigationConfig navigationConfig, HandoffConfig handoffConfig, SettingsUiConfig settingsUiConfig, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : environmentConfig, (i & 2) != 0 ? null : updateConfig, (i & 4) != 0 ? null : navigationConfig, (i & 8) != 0 ? null : handoffConfig, (i & 16) != 0 ? null : settingsUiConfig, (i & 32) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DebugConfig(EnvironmentConfig environmentConfig, UpdateConfig updateConfig, NavigationConfig navigationConfig, HandoffConfig handoffConfig, SettingsUiConfig settingsUiConfig, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.environment_config = environmentConfig;
        this.update_config = updateConfig;
        this.navigation_config = navigationConfig;
        this.handoff_config = handoffConfig;
        this.settings_ui_config = settingsUiConfig;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.environment_config = this.environment_config;
        builder.update_config = this.update_config;
        builder.navigation_config = this.navigation_config;
        builder.handoff_config = this.handoff_config;
        builder.settings_ui_config = this.settings_ui_config;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof DebugConfig)) {
            return false;
        }
        DebugConfig debugConfig = (DebugConfig) other;
        return Intrinsics.areEqual(unknownFields(), debugConfig.unknownFields()) && Intrinsics.areEqual(this.environment_config, debugConfig.environment_config) && Intrinsics.areEqual(this.update_config, debugConfig.update_config) && Intrinsics.areEqual(this.navigation_config, debugConfig.navigation_config) && Intrinsics.areEqual(this.handoff_config, debugConfig.handoff_config) && Intrinsics.areEqual(this.settings_ui_config, debugConfig.settings_ui_config);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        EnvironmentConfig environmentConfig = this.environment_config;
        int iHashCode2 = (iHashCode + (environmentConfig != null ? environmentConfig.hashCode() : 0)) * 37;
        UpdateConfig updateConfig = this.update_config;
        int iHashCode3 = (iHashCode2 + (updateConfig != null ? updateConfig.hashCode() : 0)) * 37;
        NavigationConfig navigationConfig = this.navigation_config;
        int iHashCode4 = (iHashCode3 + (navigationConfig != null ? navigationConfig.hashCode() : 0)) * 37;
        HandoffConfig handoffConfig = this.handoff_config;
        int iHashCode5 = (iHashCode4 + (handoffConfig != null ? handoffConfig.hashCode() : 0)) * 37;
        SettingsUiConfig settingsUiConfig = this.settings_ui_config;
        int iHashCode6 = iHashCode5 + (settingsUiConfig != null ? settingsUiConfig.hashCode() : 0);
        this.hashCode = iHashCode6;
        return iHashCode6;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.environment_config != null) {
            arrayList.add("environment_config=" + this.environment_config);
        }
        if (this.update_config != null) {
            arrayList.add("update_config=" + this.update_config);
        }
        if (this.navigation_config != null) {
            arrayList.add("navigation_config=" + this.navigation_config);
        }
        if (this.handoff_config != null) {
            arrayList.add("handoff_config=" + this.handoff_config);
        }
        if (this.settings_ui_config != null) {
            arrayList.add("settings_ui_config=" + this.settings_ui_config);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "DebugConfig{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ DebugConfig copy$default(DebugConfig debugConfig, EnvironmentConfig environmentConfig, UpdateConfig updateConfig, NavigationConfig navigationConfig, HandoffConfig handoffConfig, SettingsUiConfig settingsUiConfig, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            environmentConfig = debugConfig.environment_config;
        }
        if ((i & 2) != 0) {
            updateConfig = debugConfig.update_config;
        }
        if ((i & 4) != 0) {
            navigationConfig = debugConfig.navigation_config;
        }
        if ((i & 8) != 0) {
            handoffConfig = debugConfig.handoff_config;
        }
        if ((i & 16) != 0) {
            settingsUiConfig = debugConfig.settings_ui_config;
        }
        if ((i & 32) != 0) {
            byteString = debugConfig.unknownFields();
        }
        SettingsUiConfig settingsUiConfig2 = settingsUiConfig;
        ByteString byteString2 = byteString;
        return debugConfig.copy(environmentConfig, updateConfig, navigationConfig, handoffConfig, settingsUiConfig2, byteString2);
    }

    public final DebugConfig copy(EnvironmentConfig environment_config, UpdateConfig update_config, NavigationConfig navigation_config, HandoffConfig handoff_config, SettingsUiConfig settings_ui_config, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new DebugConfig(environment_config, update_config, navigation_config, handoff_config, settings_ui_config, unknownFields);
    }

    /* JADX INFO: compiled from: DebugConfig.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\rR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/proto/model/debugconfig/DebugConfig$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/debugconfig/DebugConfig;", "()V", "environment_config", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig;", "handoff_config", "Lcom/stripe/proto/model/debugconfig/HandoffConfig;", "navigation_config", "Lcom/stripe/proto/model/debugconfig/NavigationConfig;", "settings_ui_config", "Lcom/stripe/proto/model/debugconfig/SettingsUiConfig;", "update_config", "Lcom/stripe/proto/model/debugconfig/UpdateConfig;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<DebugConfig, Builder> {
        public EnvironmentConfig environment_config;
        public HandoffConfig handoff_config;
        public NavigationConfig navigation_config;
        public SettingsUiConfig settings_ui_config;
        public UpdateConfig update_config;

        public final Builder environment_config(EnvironmentConfig environment_config) {
            this.environment_config = environment_config;
            return this;
        }

        public final Builder update_config(UpdateConfig update_config) {
            this.update_config = update_config;
            return this;
        }

        public final Builder navigation_config(NavigationConfig navigation_config) {
            this.navigation_config = navigation_config;
            return this;
        }

        public final Builder handoff_config(HandoffConfig handoff_config) {
            this.handoff_config = handoff_config;
            return this;
        }

        public final Builder settings_ui_config(SettingsUiConfig settings_ui_config) {
            this.settings_ui_config = settings_ui_config;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public DebugConfig build() {
            return new DebugConfig(this.environment_config, this.update_config, this.navigation_config, this.handoff_config, this.settings_ui_config, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: DebugConfig.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/debugconfig/DebugConfig$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/debugconfig/DebugConfig;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/debugconfig/DebugConfig$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ DebugConfig build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DebugConfig.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<DebugConfig>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.debugconfig.DebugConfig$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(DebugConfig value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.environment_config != null) {
                    size += EnvironmentConfig.ADAPTER.encodedSizeWithTag(1, value.environment_config);
                }
                if (value.update_config != null) {
                    size += UpdateConfig.ADAPTER.encodedSizeWithTag(2, value.update_config);
                }
                if (value.navigation_config != null) {
                    size += NavigationConfig.ADAPTER.encodedSizeWithTag(3, value.navigation_config);
                }
                if (value.handoff_config != null) {
                    size += HandoffConfig.ADAPTER.encodedSizeWithTag(4, value.handoff_config);
                }
                return value.settings_ui_config != null ? size + SettingsUiConfig.ADAPTER.encodedSizeWithTag(5, value.settings_ui_config) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, DebugConfig value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.environment_config != null) {
                    EnvironmentConfig.ADAPTER.encodeWithTag(writer, 1, value.environment_config);
                }
                if (value.update_config != null) {
                    UpdateConfig.ADAPTER.encodeWithTag(writer, 2, value.update_config);
                }
                if (value.navigation_config != null) {
                    NavigationConfig.ADAPTER.encodeWithTag(writer, 3, value.navigation_config);
                }
                if (value.handoff_config != null) {
                    HandoffConfig.ADAPTER.encodeWithTag(writer, 4, value.handoff_config);
                }
                if (value.settings_ui_config != null) {
                    SettingsUiConfig.ADAPTER.encodeWithTag(writer, 5, value.settings_ui_config);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, DebugConfig value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.settings_ui_config != null) {
                    SettingsUiConfig.ADAPTER.encodeWithTag(writer, 5, value.settings_ui_config);
                }
                if (value.handoff_config != null) {
                    HandoffConfig.ADAPTER.encodeWithTag(writer, 4, value.handoff_config);
                }
                if (value.navigation_config != null) {
                    NavigationConfig.ADAPTER.encodeWithTag(writer, 3, value.navigation_config);
                }
                if (value.update_config != null) {
                    UpdateConfig.ADAPTER.encodeWithTag(writer, 2, value.update_config);
                }
                if (value.environment_config != null) {
                    EnvironmentConfig.ADAPTER.encodeWithTag(writer, 1, value.environment_config);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public DebugConfig redact(DebugConfig value) {
                Intrinsics.checkNotNullParameter(value, "value");
                EnvironmentConfig environmentConfig = value.environment_config;
                EnvironmentConfig environmentConfigRedact = environmentConfig != null ? EnvironmentConfig.ADAPTER.redact(environmentConfig) : null;
                UpdateConfig updateConfig = value.update_config;
                UpdateConfig updateConfigRedact = updateConfig != null ? UpdateConfig.ADAPTER.redact(updateConfig) : null;
                NavigationConfig navigationConfig = value.navigation_config;
                NavigationConfig navigationConfigRedact = navigationConfig != null ? NavigationConfig.ADAPTER.redact(navigationConfig) : null;
                HandoffConfig handoffConfig = value.handoff_config;
                HandoffConfig handoffConfigRedact = handoffConfig != null ? HandoffConfig.ADAPTER.redact(handoffConfig) : null;
                SettingsUiConfig settingsUiConfig = value.settings_ui_config;
                return value.copy(environmentConfigRedact, updateConfigRedact, navigationConfigRedact, handoffConfigRedact, settingsUiConfig != null ? SettingsUiConfig.ADAPTER.redact(settingsUiConfig) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public DebugConfig decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                EnvironmentConfig environmentConfigDecode = null;
                UpdateConfig updateConfigDecode = null;
                NavigationConfig navigationConfigDecode = null;
                HandoffConfig handoffConfigDecode = null;
                SettingsUiConfig settingsUiConfigDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new DebugConfig(environmentConfigDecode, updateConfigDecode, navigationConfigDecode, handoffConfigDecode, settingsUiConfigDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        environmentConfigDecode = EnvironmentConfig.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        updateConfigDecode = UpdateConfig.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        navigationConfigDecode = NavigationConfig.ADAPTER.decode(reader);
                    } else if (iNextTag == 4) {
                        handoffConfigDecode = HandoffConfig.ADAPTER.decode(reader);
                    } else if (iNextTag == 5) {
                        settingsUiConfigDecode = SettingsUiConfig.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
