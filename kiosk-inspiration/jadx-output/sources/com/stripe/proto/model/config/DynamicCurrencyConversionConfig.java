package com.stripe.proto.model.config;

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

/* JADX INFO: compiled from: DynamicCurrencyConversionConfig.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J!\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\nJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\b¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig$Builder;", "markup_percent", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/Float;Lokio/ByteString;)V", "Ljava/lang/Float;", "copy", "(Ljava/lang/Float;Lokio/ByteString;)Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DynamicCurrencyConversionConfig extends Message<DynamicCurrencyConversionConfig, Builder> {
    public static final ProtoAdapter<DynamicCurrencyConversionConfig> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT_VALUE", jsonName = "markupPercent", schemaIndex = 0, tag = 1)
    public final Float markup_percent;

    /* JADX WARN: Multi-variable type inference failed */
    public DynamicCurrencyConversionConfig() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ DynamicCurrencyConversionConfig(Float f, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : f, (i & 2) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DynamicCurrencyConversionConfig(Float f, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.markup_percent = f;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.markup_percent = this.markup_percent;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof DynamicCurrencyConversionConfig)) {
            return false;
        }
        DynamicCurrencyConversionConfig dynamicCurrencyConversionConfig = (DynamicCurrencyConversionConfig) other;
        return Intrinsics.areEqual(unknownFields(), dynamicCurrencyConversionConfig.unknownFields()) && Intrinsics.areEqual(this.markup_percent, dynamicCurrencyConversionConfig.markup_percent);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Float f = this.markup_percent;
        int iHashCode2 = iHashCode + (f != null ? f.hashCode() : 0);
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.markup_percent != null) {
            arrayList.add("markup_percent=" + this.markup_percent);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "DynamicCurrencyConversionConfig{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ DynamicCurrencyConversionConfig copy$default(DynamicCurrencyConversionConfig dynamicCurrencyConversionConfig, Float f, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            f = dynamicCurrencyConversionConfig.markup_percent;
        }
        if ((i & 2) != 0) {
            byteString = dynamicCurrencyConversionConfig.unknownFields();
        }
        return dynamicCurrencyConversionConfig.copy(f, byteString);
    }

    public final DynamicCurrencyConversionConfig copy(Float markup_percent, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new DynamicCurrencyConversionConfig(markup_percent, unknownFields);
    }

    /* JADX INFO: compiled from: DynamicCurrencyConversionConfig.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u0015\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\bR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;", "()V", "markup_percent", "", "Ljava/lang/Float;", "build", "(Ljava/lang/Float;)Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig$Builder;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<DynamicCurrencyConversionConfig, Builder> {
        public Float markup_percent;

        public final Builder markup_percent(Float markup_percent) {
            this.markup_percent = markup_percent;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public DynamicCurrencyConversionConfig build() {
            return new DynamicCurrencyConversionConfig(this.markup_percent, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: DynamicCurrencyConversionConfig.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/config/DynamicCurrencyConversionConfig$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ DynamicCurrencyConversionConfig build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DynamicCurrencyConversionConfig.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<DynamicCurrencyConversionConfig>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.config.DynamicCurrencyConversionConfig$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(DynamicCurrencyConversionConfig value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                return value.markup_percent != null ? size + ProtoAdapter.FLOAT_VALUE.encodedSizeWithTag(1, value.markup_percent) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, DynamicCurrencyConversionConfig value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.markup_percent != null) {
                    ProtoAdapter.FLOAT_VALUE.encodeWithTag(writer, 1, value.markup_percent);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, DynamicCurrencyConversionConfig value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.markup_percent != null) {
                    ProtoAdapter.FLOAT_VALUE.encodeWithTag(writer, 1, value.markup_percent);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public DynamicCurrencyConversionConfig redact(DynamicCurrencyConversionConfig value) {
                Intrinsics.checkNotNullParameter(value, "value");
                Float f = value.markup_percent;
                return value.copy(f != null ? ProtoAdapter.FLOAT_VALUE.redact(f) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public DynamicCurrencyConversionConfig decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                Float fDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new DynamicCurrencyConversionConfig(fDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        fDecode = ProtoAdapter.FLOAT_VALUE.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
