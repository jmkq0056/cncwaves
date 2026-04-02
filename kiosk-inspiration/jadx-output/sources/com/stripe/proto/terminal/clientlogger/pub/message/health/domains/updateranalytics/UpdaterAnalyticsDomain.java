package com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updateranalytics;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
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

/* JADX INFO: compiled from: UpdaterAnalyticsDomain.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain$Builder;", "settings", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;", "deep_link", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/DeepLinkScope;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/DeepLinkScope;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UpdaterAnalyticsDomain extends Message<UpdaterAnalyticsDomain, Builder> {
    public static final ProtoAdapter<UpdaterAnalyticsDomain> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updateranalytics.DeepLinkScope#ADAPTER", jsonName = "deepLink", oneofName = "scope", schemaIndex = 1, tag = 2)
    public final DeepLinkScope deep_link;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updateranalytics.SettingsScope#ADAPTER", oneofName = "scope", schemaIndex = 0, tag = 1)
    public final SettingsScope settings;

    public UpdaterAnalyticsDomain() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ UpdaterAnalyticsDomain(SettingsScope settingsScope, DeepLinkScope deepLinkScope, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : settingsScope, (i & 2) != 0 ? null : deepLinkScope, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdaterAnalyticsDomain(SettingsScope settingsScope, DeepLinkScope deepLinkScope, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.settings = settingsScope;
        this.deep_link = deepLinkScope;
        if (Internal.countNonNull(settingsScope, deepLinkScope) > 1) {
            throw new IllegalArgumentException("At most one of settings, deep_link may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.settings = this.settings;
        builder.deep_link = this.deep_link;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof UpdaterAnalyticsDomain)) {
            return false;
        }
        UpdaterAnalyticsDomain updaterAnalyticsDomain = (UpdaterAnalyticsDomain) other;
        return Intrinsics.areEqual(unknownFields(), updaterAnalyticsDomain.unknownFields()) && Intrinsics.areEqual(this.settings, updaterAnalyticsDomain.settings) && Intrinsics.areEqual(this.deep_link, updaterAnalyticsDomain.deep_link);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        SettingsScope settingsScope = this.settings;
        int iHashCode2 = (iHashCode + (settingsScope != null ? settingsScope.hashCode() : 0)) * 37;
        DeepLinkScope deepLinkScope = this.deep_link;
        int iHashCode3 = iHashCode2 + (deepLinkScope != null ? deepLinkScope.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.settings != null) {
            arrayList.add("settings=" + this.settings);
        }
        if (this.deep_link != null) {
            arrayList.add("deep_link=" + this.deep_link);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "UpdaterAnalyticsDomain{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ UpdaterAnalyticsDomain copy$default(UpdaterAnalyticsDomain updaterAnalyticsDomain, SettingsScope settingsScope, DeepLinkScope deepLinkScope, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            settingsScope = updaterAnalyticsDomain.settings;
        }
        if ((i & 2) != 0) {
            deepLinkScope = updaterAnalyticsDomain.deep_link;
        }
        if ((i & 4) != 0) {
            byteString = updaterAnalyticsDomain.unknownFields();
        }
        return updaterAnalyticsDomain.copy(settingsScope, deepLinkScope, byteString);
    }

    public final UpdaterAnalyticsDomain copy(SettingsScope settings, DeepLinkScope deep_link, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new UpdaterAnalyticsDomain(settings, deep_link, unknownFields);
    }

    /* JADX INFO: compiled from: UpdaterAnalyticsDomain.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;", "()V", "deep_link", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/DeepLinkScope;", "settings", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/SettingsScope;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<UpdaterAnalyticsDomain, Builder> {
        public DeepLinkScope deep_link;
        public SettingsScope settings;

        public final Builder settings(SettingsScope settings) {
            this.settings = settings;
            this.deep_link = null;
            return this;
        }

        public final Builder deep_link(DeepLinkScope deep_link) {
            this.deep_link = deep_link;
            this.settings = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public UpdaterAnalyticsDomain build() {
            return new UpdaterAnalyticsDomain(this.settings, this.deep_link, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: UpdaterAnalyticsDomain.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updateranalytics/UpdaterAnalyticsDomain$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ UpdaterAnalyticsDomain build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(UpdaterAnalyticsDomain.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<UpdaterAnalyticsDomain>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updateranalytics.UpdaterAnalyticsDomain$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(UpdaterAnalyticsDomain value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + SettingsScope.ADAPTER.encodedSizeWithTag(1, value.settings) + DeepLinkScope.ADAPTER.encodedSizeWithTag(2, value.deep_link);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, UpdaterAnalyticsDomain value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                SettingsScope.ADAPTER.encodeWithTag(writer, 1, value.settings);
                DeepLinkScope.ADAPTER.encodeWithTag(writer, 2, value.deep_link);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, UpdaterAnalyticsDomain value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                DeepLinkScope.ADAPTER.encodeWithTag(writer, 2, value.deep_link);
                SettingsScope.ADAPTER.encodeWithTag(writer, 1, value.settings);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public UpdaterAnalyticsDomain redact(UpdaterAnalyticsDomain value) {
                Intrinsics.checkNotNullParameter(value, "value");
                SettingsScope settingsScope = value.settings;
                SettingsScope settingsScopeRedact = settingsScope != null ? SettingsScope.ADAPTER.redact(settingsScope) : null;
                DeepLinkScope deepLinkScope = value.deep_link;
                return value.copy(settingsScopeRedact, deepLinkScope != null ? DeepLinkScope.ADAPTER.redact(deepLinkScope) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public UpdaterAnalyticsDomain decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                SettingsScope settingsScopeDecode = null;
                DeepLinkScope deepLinkScopeDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new UpdaterAnalyticsDomain(settingsScopeDecode, deepLinkScopeDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        settingsScopeDecode = SettingsScope.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        deepLinkScopeDecode = DeepLinkScope.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
