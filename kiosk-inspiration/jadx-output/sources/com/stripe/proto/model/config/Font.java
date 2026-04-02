package com.stripe.proto.model.config;

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

/* JADX INFO: compiled from: Font.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B-\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ.\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0006H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/model/config/Font;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/config/Font$Builder;", "font_name", "", "font_size", "", "hex_color", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;IJLokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Font extends Message<Font, Builder> {
    public static final ProtoAdapter<Font> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "fontName", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String font_name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "fontSize", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final int font_size;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT64", jsonName = "hexColor", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final long hex_color;

    public Font() {
        this(null, 0, 0L, null, 15, null);
    }

    public /* synthetic */ Font(String str, int i, long j, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? 0 : i, (i2 & 4) != 0 ? 0L : j, (i2 & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Font(String font_name, int i, long j, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(font_name, "font_name");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.font_name = font_name;
        this.font_size = i;
        this.hex_color = j;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.font_name = this.font_name;
        builder.font_size = this.font_size;
        builder.hex_color = this.hex_color;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof Font)) {
            return false;
        }
        Font font = (Font) other;
        return Intrinsics.areEqual(unknownFields(), font.unknownFields()) && Intrinsics.areEqual(this.font_name, font.font_name) && this.font_size == font.font_size && this.hex_color == font.hex_color;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((unknownFields().hashCode() * 37) + this.font_name.hashCode()) * 37) + Integer.hashCode(this.font_size)) * 37) + Long.hashCode(this.hex_color);
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("font_name=" + Internal.sanitize(this.font_name));
        arrayList2.add("font_size=" + this.font_size);
        arrayList2.add("hex_color=" + this.hex_color);
        return CollectionsKt.joinToString$default(arrayList, ", ", "Font{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ Font copy$default(Font font, String str, int i, long j, ByteString byteString, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = font.font_name;
        }
        if ((i2 & 2) != 0) {
            i = font.font_size;
        }
        if ((i2 & 4) != 0) {
            j = font.hex_color;
        }
        if ((i2 & 8) != 0) {
            byteString = font.unknownFields();
        }
        ByteString byteString2 = byteString;
        return font.copy(str, i, j, byteString2);
    }

    public final Font copy(String font_name, int font_size, long hex_color, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(font_name, "font_name");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new Font(font_name, font_size, hex_color, unknownFields);
    }

    /* JADX INFO: compiled from: Font.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/config/Font$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/config/Font;", "()V", "font_name", "", "font_size", "", "hex_color", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<Font, Builder> {
        public String font_name = "";
        public int font_size;
        public long hex_color;

        public final Builder font_name(String font_name) {
            Intrinsics.checkNotNullParameter(font_name, "font_name");
            this.font_name = font_name;
            return this;
        }

        public final Builder font_size(int font_size) {
            this.font_size = font_size;
            return this;
        }

        public final Builder hex_color(long hex_color) {
            this.hex_color = hex_color;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public Font build() {
            return new Font(this.font_name, this.font_size, this.hex_color, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: Font.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/config/Font$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/Font;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/config/Font$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ Font build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Font.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<Font>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.config.Font$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(Font value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.font_name, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.font_name);
                }
                if (value.font_size != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(2, Integer.valueOf(value.font_size));
                }
                return value.hex_color != 0 ? size + ProtoAdapter.UINT64.encodedSizeWithTag(3, Long.valueOf(value.hex_color)) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, Font value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.font_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.font_name);
                }
                if (value.font_size != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 2, Integer.valueOf(value.font_size));
                }
                if (value.hex_color != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 3, Long.valueOf(value.hex_color));
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, Font value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.hex_color != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 3, Long.valueOf(value.hex_color));
                }
                if (value.font_size != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 2, Integer.valueOf(value.font_size));
                }
                if (Intrinsics.areEqual(value.font_name, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.font_name);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public Font redact(Font value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return Font.copy$default(value, null, 0, 0L, ByteString.EMPTY, 7, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public Font decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                int iIntValue = 0;
                long jLongValue = 0;
                while (true) {
                    int i = iIntValue;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new Font(strDecode, i, jLongValue, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag != 2) {
                            if (iNextTag == 3) {
                                jLongValue = ProtoAdapter.UINT64.decode(reader).longValue();
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }
                    iIntValue = ProtoAdapter.INT32.decode(reader).intValue();
                }
            }
        };
    }
}
