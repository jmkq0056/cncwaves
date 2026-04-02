package com.stripe.proto.model.config;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.stripe.proto.terminal.terminal.pub.message.common.RgbPb;
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

/* JADX INFO: compiled from: ClientVisualConfig.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B3\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ4\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/model/config/ClientVisualConfig;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/config/ClientVisualConfig$Builder;", "accent_color", "Lcom/stripe/proto/terminal/terminal/pub/message/common/RgbPb;", "background_color", "header_color", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/terminal/pub/message/common/RgbPb;Lcom/stripe/proto/terminal/terminal/pub/message/common/RgbPb;Lcom/stripe/proto/terminal/terminal/pub/message/common/RgbPb;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ClientVisualConfig extends Message<ClientVisualConfig, Builder> {
    public static final ProtoAdapter<ClientVisualConfig> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.common.RgbPb#ADAPTER", jsonName = "accentColor", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final RgbPb accent_color;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.common.RgbPb#ADAPTER", jsonName = "backgroundColor", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final RgbPb background_color;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.common.RgbPb#ADAPTER", jsonName = "headerColor", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final RgbPb header_color;

    public ClientVisualConfig() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ ClientVisualConfig(RgbPb rgbPb, RgbPb rgbPb2, RgbPb rgbPb3, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : rgbPb, (i & 2) != 0 ? null : rgbPb2, (i & 4) != 0 ? null : rgbPb3, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClientVisualConfig(RgbPb rgbPb, RgbPb rgbPb2, RgbPb rgbPb3, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.accent_color = rgbPb;
        this.background_color = rgbPb2;
        this.header_color = rgbPb3;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.accent_color = this.accent_color;
        builder.background_color = this.background_color;
        builder.header_color = this.header_color;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ClientVisualConfig)) {
            return false;
        }
        ClientVisualConfig clientVisualConfig = (ClientVisualConfig) other;
        return Intrinsics.areEqual(unknownFields(), clientVisualConfig.unknownFields()) && Intrinsics.areEqual(this.accent_color, clientVisualConfig.accent_color) && Intrinsics.areEqual(this.background_color, clientVisualConfig.background_color) && Intrinsics.areEqual(this.header_color, clientVisualConfig.header_color);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        RgbPb rgbPb = this.accent_color;
        int iHashCode2 = (iHashCode + (rgbPb != null ? rgbPb.hashCode() : 0)) * 37;
        RgbPb rgbPb2 = this.background_color;
        int iHashCode3 = (iHashCode2 + (rgbPb2 != null ? rgbPb2.hashCode() : 0)) * 37;
        RgbPb rgbPb3 = this.header_color;
        int iHashCode4 = iHashCode3 + (rgbPb3 != null ? rgbPb3.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.accent_color != null) {
            arrayList.add("accent_color=" + this.accent_color);
        }
        if (this.background_color != null) {
            arrayList.add("background_color=" + this.background_color);
        }
        if (this.header_color != null) {
            arrayList.add("header_color=" + this.header_color);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ClientVisualConfig{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ClientVisualConfig copy$default(ClientVisualConfig clientVisualConfig, RgbPb rgbPb, RgbPb rgbPb2, RgbPb rgbPb3, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            rgbPb = clientVisualConfig.accent_color;
        }
        if ((i & 2) != 0) {
            rgbPb2 = clientVisualConfig.background_color;
        }
        if ((i & 4) != 0) {
            rgbPb3 = clientVisualConfig.header_color;
        }
        if ((i & 8) != 0) {
            byteString = clientVisualConfig.unknownFields();
        }
        return clientVisualConfig.copy(rgbPb, rgbPb2, rgbPb3, byteString);
    }

    public final ClientVisualConfig copy(RgbPb accent_color, RgbPb background_color, RgbPb header_color, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ClientVisualConfig(accent_color, background_color, header_color, unknownFields);
    }

    /* JADX INFO: compiled from: ClientVisualConfig.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/config/ClientVisualConfig$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/config/ClientVisualConfig;", "()V", "accent_color", "Lcom/stripe/proto/terminal/terminal/pub/message/common/RgbPb;", "background_color", "header_color", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ClientVisualConfig, Builder> {
        public RgbPb accent_color;
        public RgbPb background_color;
        public RgbPb header_color;

        public final Builder accent_color(RgbPb accent_color) {
            this.accent_color = accent_color;
            return this;
        }

        public final Builder background_color(RgbPb background_color) {
            this.background_color = background_color;
            return this;
        }

        public final Builder header_color(RgbPb header_color) {
            this.header_color = header_color;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ClientVisualConfig build() {
            return new ClientVisualConfig(this.accent_color, this.background_color, this.header_color, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ClientVisualConfig.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/config/ClientVisualConfig$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/ClientVisualConfig;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/config/ClientVisualConfig$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ClientVisualConfig build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ClientVisualConfig.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ClientVisualConfig>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.config.ClientVisualConfig$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ClientVisualConfig value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.accent_color != null) {
                    size += RgbPb.ADAPTER.encodedSizeWithTag(1, value.accent_color);
                }
                if (value.background_color != null) {
                    size += RgbPb.ADAPTER.encodedSizeWithTag(2, value.background_color);
                }
                return value.header_color != null ? size + RgbPb.ADAPTER.encodedSizeWithTag(3, value.header_color) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ClientVisualConfig value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.accent_color != null) {
                    RgbPb.ADAPTER.encodeWithTag(writer, 1, value.accent_color);
                }
                if (value.background_color != null) {
                    RgbPb.ADAPTER.encodeWithTag(writer, 2, value.background_color);
                }
                if (value.header_color != null) {
                    RgbPb.ADAPTER.encodeWithTag(writer, 3, value.header_color);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ClientVisualConfig value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.header_color != null) {
                    RgbPb.ADAPTER.encodeWithTag(writer, 3, value.header_color);
                }
                if (value.background_color != null) {
                    RgbPb.ADAPTER.encodeWithTag(writer, 2, value.background_color);
                }
                if (value.accent_color != null) {
                    RgbPb.ADAPTER.encodeWithTag(writer, 1, value.accent_color);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ClientVisualConfig redact(ClientVisualConfig value) {
                Intrinsics.checkNotNullParameter(value, "value");
                RgbPb rgbPb = value.accent_color;
                RgbPb rgbPbRedact = rgbPb != null ? RgbPb.ADAPTER.redact(rgbPb) : null;
                RgbPb rgbPb2 = value.background_color;
                RgbPb rgbPbRedact2 = rgbPb2 != null ? RgbPb.ADAPTER.redact(rgbPb2) : null;
                RgbPb rgbPb3 = value.header_color;
                return value.copy(rgbPbRedact, rgbPbRedact2, rgbPb3 != null ? RgbPb.ADAPTER.redact(rgbPb3) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ClientVisualConfig decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                RgbPb rgbPbDecode = null;
                RgbPb rgbPbDecode2 = null;
                RgbPb rgbPbDecode3 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ClientVisualConfig(rgbPbDecode, rgbPbDecode2, rgbPbDecode3, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        rgbPbDecode = RgbPb.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        rgbPbDecode2 = RgbPb.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        rgbPbDecode3 = RgbPb.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
