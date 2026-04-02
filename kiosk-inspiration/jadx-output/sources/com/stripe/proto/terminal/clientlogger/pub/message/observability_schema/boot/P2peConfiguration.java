package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.boot;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.boot.P2peConfiguration;
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

/* JADX INFO: compiled from: P2peConfiguration.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0013\u0014\u0015B%\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ&\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0004H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/P2peConfiguration;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/P2peConfiguration$Builder;", "key_profile_id", "", "bbpos_properties", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/P2peConfiguration$BbposProperties;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/P2peConfiguration$BbposProperties;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "BbposProperties", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class P2peConfiguration extends Message<P2peConfiguration, Builder> {
    public static final ProtoAdapter<P2peConfiguration> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.boot.P2peConfiguration$BbposProperties#ADAPTER", jsonName = "bbposProperties", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final BbposProperties bbpos_properties;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "keyProfileId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String key_profile_id;

    public P2peConfiguration() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ P2peConfiguration(String str, BbposProperties bbposProperties, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? null : bbposProperties, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public P2peConfiguration(String key_profile_id, BbposProperties bbposProperties, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(key_profile_id, "key_profile_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.key_profile_id = key_profile_id;
        this.bbpos_properties = bbposProperties;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.key_profile_id = this.key_profile_id;
        builder.bbpos_properties = this.bbpos_properties;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof P2peConfiguration)) {
            return false;
        }
        P2peConfiguration p2peConfiguration = (P2peConfiguration) other;
        return Intrinsics.areEqual(unknownFields(), p2peConfiguration.unknownFields()) && Intrinsics.areEqual(this.key_profile_id, p2peConfiguration.key_profile_id) && Intrinsics.areEqual(this.bbpos_properties, p2peConfiguration.bbpos_properties);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + this.key_profile_id.hashCode()) * 37;
        BbposProperties bbposProperties = this.bbpos_properties;
        int iHashCode2 = iHashCode + (bbposProperties != null ? bbposProperties.hashCode() : 0);
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("key_profile_id=" + Internal.sanitize(this.key_profile_id));
        if (this.bbpos_properties != null) {
            arrayList2.add("bbpos_properties=" + this.bbpos_properties);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "P2peConfiguration{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ P2peConfiguration copy$default(P2peConfiguration p2peConfiguration, String str, BbposProperties bbposProperties, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = p2peConfiguration.key_profile_id;
        }
        if ((i & 2) != 0) {
            bbposProperties = p2peConfiguration.bbpos_properties;
        }
        if ((i & 4) != 0) {
            byteString = p2peConfiguration.unknownFields();
        }
        return p2peConfiguration.copy(str, bbposProperties, byteString);
    }

    public final P2peConfiguration copy(String key_profile_id, BbposProperties bbpos_properties, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(key_profile_id, "key_profile_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new P2peConfiguration(key_profile_id, bbpos_properties, unknownFields);
    }

    /* JADX INFO: compiled from: P2peConfiguration.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/P2peConfiguration$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/P2peConfiguration;", "()V", "bbpos_properties", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/P2peConfiguration$BbposProperties;", "key_profile_id", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<P2peConfiguration, Builder> {
        public BbposProperties bbpos_properties;
        public String key_profile_id = "";

        public final Builder key_profile_id(String key_profile_id) {
            Intrinsics.checkNotNullParameter(key_profile_id, "key_profile_id");
            this.key_profile_id = key_profile_id;
            return this;
        }

        public final Builder bbpos_properties(BbposProperties bbpos_properties) {
            this.bbpos_properties = bbpos_properties;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public P2peConfiguration build() {
            return new P2peConfiguration(this.key_profile_id, this.bbpos_properties, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: P2peConfiguration.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/P2peConfiguration$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/P2peConfiguration;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/P2peConfiguration$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ P2peConfiguration build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(P2peConfiguration.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<P2peConfiguration>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.boot.P2peConfiguration$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(P2peConfiguration value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.key_profile_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.key_profile_id);
                }
                return value.bbpos_properties != null ? size + P2peConfiguration.BbposProperties.ADAPTER.encodedSizeWithTag(2, value.bbpos_properties) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, P2peConfiguration value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.key_profile_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.key_profile_id);
                }
                if (value.bbpos_properties != null) {
                    P2peConfiguration.BbposProperties.ADAPTER.encodeWithTag(writer, 2, value.bbpos_properties);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, P2peConfiguration value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.bbpos_properties != null) {
                    P2peConfiguration.BbposProperties.ADAPTER.encodeWithTag(writer, 2, value.bbpos_properties);
                }
                if (Intrinsics.areEqual(value.key_profile_id, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.key_profile_id);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public P2peConfiguration redact(P2peConfiguration value) {
                Intrinsics.checkNotNullParameter(value, "value");
                P2peConfiguration.BbposProperties bbposProperties = value.bbpos_properties;
                return P2peConfiguration.copy$default(value, null, bbposProperties != null ? P2peConfiguration.BbposProperties.ADAPTER.redact(bbposProperties) : null, ByteString.EMPTY, 1, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public P2peConfiguration decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                P2peConfiguration.BbposProperties bbposPropertiesDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new P2peConfiguration(strDecode, bbposPropertiesDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 2) {
                        bbposPropertiesDecode = P2peConfiguration.BbposProperties.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }

    /* JADX INFO: compiled from: P2peConfiguration.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ$\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/P2peConfiguration$BbposProperties;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/P2peConfiguration$BbposProperties$Builder;", "p2pe_rom_verify", "", "p2pe_apk_verify", "unknownFields", "Lokio/ByteString;", "(ZZLokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class BbposProperties extends Message<BbposProperties, Builder> {
        public static final ProtoAdapter<BbposProperties> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "p2peApkVerify", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 3)
        public final boolean p2pe_apk_verify;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "p2peRomVerify", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final boolean p2pe_rom_verify;

        public BbposProperties() {
            this(false, false, null, 7, null);
        }

        public /* synthetic */ BbposProperties(boolean z, boolean z2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? false : z, (i & 2) != 0 ? false : z2, (i & 4) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BbposProperties(boolean z, boolean z2, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.p2pe_rom_verify = z;
            this.p2pe_apk_verify = z2;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.p2pe_rom_verify = this.p2pe_rom_verify;
            builder.p2pe_apk_verify = this.p2pe_apk_verify;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof BbposProperties)) {
                return false;
            }
            BbposProperties bbposProperties = (BbposProperties) other;
            return Intrinsics.areEqual(unknownFields(), bbposProperties.unknownFields()) && this.p2pe_rom_verify == bbposProperties.p2pe_rom_verify && this.p2pe_apk_verify == bbposProperties.p2pe_apk_verify;
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((unknownFields().hashCode() * 37) + Boolean.hashCode(this.p2pe_rom_verify)) * 37) + Boolean.hashCode(this.p2pe_apk_verify);
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("p2pe_rom_verify=" + this.p2pe_rom_verify);
            arrayList2.add("p2pe_apk_verify=" + this.p2pe_apk_verify);
            return CollectionsKt.joinToString$default(arrayList, ", ", "BbposProperties{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ BbposProperties copy$default(BbposProperties bbposProperties, boolean z, boolean z2, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                z = bbposProperties.p2pe_rom_verify;
            }
            if ((i & 2) != 0) {
                z2 = bbposProperties.p2pe_apk_verify;
            }
            if ((i & 4) != 0) {
                byteString = bbposProperties.unknownFields();
            }
            return bbposProperties.copy(z, z2, byteString);
        }

        public final BbposProperties copy(boolean p2pe_rom_verify, boolean p2pe_apk_verify, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new BbposProperties(p2pe_rom_verify, p2pe_apk_verify, unknownFields);
        }

        /* JADX INFO: compiled from: P2peConfiguration.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/P2peConfiguration$BbposProperties$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/P2peConfiguration$BbposProperties;", "()V", "p2pe_apk_verify", "", "p2pe_rom_verify", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<BbposProperties, Builder> {
            public boolean p2pe_apk_verify;
            public boolean p2pe_rom_verify;

            public final Builder p2pe_rom_verify(boolean p2pe_rom_verify) {
                this.p2pe_rom_verify = p2pe_rom_verify;
                return this;
            }

            public final Builder p2pe_apk_verify(boolean p2pe_apk_verify) {
                this.p2pe_apk_verify = p2pe_apk_verify;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public BbposProperties build() {
                return new BbposProperties(this.p2pe_rom_verify, this.p2pe_apk_verify, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: P2peConfiguration.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/P2peConfiguration$BbposProperties$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/P2peConfiguration$BbposProperties;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/P2peConfiguration$BbposProperties$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ BbposProperties build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(BbposProperties.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<BbposProperties>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.boot.P2peConfiguration$BbposProperties$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(P2peConfiguration.BbposProperties value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.p2pe_rom_verify) {
                        size += ProtoAdapter.BOOL.encodedSizeWithTag(1, Boolean.valueOf(value.p2pe_rom_verify));
                    }
                    return value.p2pe_apk_verify ? size + ProtoAdapter.BOOL.encodedSizeWithTag(3, Boolean.valueOf(value.p2pe_apk_verify)) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, P2peConfiguration.BbposProperties value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.p2pe_rom_verify) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 1, Boolean.valueOf(value.p2pe_rom_verify));
                    }
                    if (value.p2pe_apk_verify) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 3, Boolean.valueOf(value.p2pe_apk_verify));
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, P2peConfiguration.BbposProperties value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.p2pe_apk_verify) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 3, Boolean.valueOf(value.p2pe_apk_verify));
                    }
                    if (value.p2pe_rom_verify) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 1, Boolean.valueOf(value.p2pe_rom_verify));
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public P2peConfiguration.BbposProperties redact(P2peConfiguration.BbposProperties value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return P2peConfiguration.BbposProperties.copy$default(value, false, false, ByteString.EMPTY, 3, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public P2peConfiguration.BbposProperties decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    boolean zBooleanValue = false;
                    boolean zBooleanValue2 = false;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new P2peConfiguration.BbposProperties(zBooleanValue, zBooleanValue2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                        } else if (iNextTag == 3) {
                            zBooleanValue2 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }
}
