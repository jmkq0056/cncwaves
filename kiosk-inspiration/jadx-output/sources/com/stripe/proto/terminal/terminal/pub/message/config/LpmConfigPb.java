package com.stripe.proto.terminal.terminal.pub.message.config;

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
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: LpmConfigPb.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B)\u0012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ*\u0010\n\u001a\u00020\u00002\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0005H\u0016R\u0010\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb$Builder;", "enabled_payment_method_types", "", "", "default_return_url", "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class LpmConfigPb extends Message<LpmConfigPb, Builder> {
    public static final ProtoAdapter<LpmConfigPb> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "defaultReturnUrl", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String default_return_url;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "enabledPaymentMethodTypes", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 1)
    public final List<String> enabled_payment_method_types;

    public LpmConfigPb() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ LpmConfigPb(List list, String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LpmConfigPb(List<String> enabled_payment_method_types, String default_return_url, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(enabled_payment_method_types, "enabled_payment_method_types");
        Intrinsics.checkNotNullParameter(default_return_url, "default_return_url");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.default_return_url = default_return_url;
        this.enabled_payment_method_types = Internal.immutableCopyOf("enabled_payment_method_types", enabled_payment_method_types);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.enabled_payment_method_types = this.enabled_payment_method_types;
        builder.default_return_url = this.default_return_url;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof LpmConfigPb)) {
            return false;
        }
        LpmConfigPb lpmConfigPb = (LpmConfigPb) other;
        return Intrinsics.areEqual(unknownFields(), lpmConfigPb.unknownFields()) && Intrinsics.areEqual(this.enabled_payment_method_types, lpmConfigPb.enabled_payment_method_types) && Intrinsics.areEqual(this.default_return_url, lpmConfigPb.default_return_url);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((unknownFields().hashCode() * 37) + this.enabled_payment_method_types.hashCode()) * 37) + this.default_return_url.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (!this.enabled_payment_method_types.isEmpty()) {
            arrayList.add("enabled_payment_method_types=" + Internal.sanitize(this.enabled_payment_method_types));
        }
        arrayList.add("default_return_url=" + Internal.sanitize(this.default_return_url));
        return CollectionsKt.joinToString$default(arrayList, ", ", "LpmConfigPb{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ LpmConfigPb copy$default(LpmConfigPb lpmConfigPb, List list, String str, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            list = lpmConfigPb.enabled_payment_method_types;
        }
        if ((i & 2) != 0) {
            str = lpmConfigPb.default_return_url;
        }
        if ((i & 4) != 0) {
            byteString = lpmConfigPb.unknownFields();
        }
        return lpmConfigPb.copy(list, str, byteString);
    }

    public final LpmConfigPb copy(List<String> enabled_payment_method_types, String default_return_url, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(enabled_payment_method_types, "enabled_payment_method_types");
        Intrinsics.checkNotNullParameter(default_return_url, "default_return_url");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new LpmConfigPb(enabled_payment_method_types, default_return_url, unknownFields);
    }

    /* JADX INFO: compiled from: LpmConfigPb.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0014\u0010\u0006\u001a\u00020\u00002\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;", "()V", "default_return_url", "", "enabled_payment_method_types", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<LpmConfigPb, Builder> {
        public List<String> enabled_payment_method_types = CollectionsKt.emptyList();
        public String default_return_url = "";

        public final Builder enabled_payment_method_types(List<String> enabled_payment_method_types) {
            Intrinsics.checkNotNullParameter(enabled_payment_method_types, "enabled_payment_method_types");
            Internal.checkElementsNotNull(enabled_payment_method_types);
            this.enabled_payment_method_types = enabled_payment_method_types;
            return this;
        }

        public final Builder default_return_url(String default_return_url) {
            Intrinsics.checkNotNullParameter(default_return_url, "default_return_url");
            this.default_return_url = default_return_url;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public LpmConfigPb build() {
            return new LpmConfigPb(this.enabled_payment_method_types, this.default_return_url, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: LpmConfigPb.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ LpmConfigPb build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(LpmConfigPb.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<LpmConfigPb>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.terminal.pub.message.config.LpmConfigPb$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(LpmConfigPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size() + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(1, value.enabled_payment_method_types);
                return !Intrinsics.areEqual(value.default_return_url, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(2, value.default_return_url) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, LpmConfigPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 1, value.enabled_payment_method_types);
                if (!Intrinsics.areEqual(value.default_return_url, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.default_return_url);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, LpmConfigPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.default_return_url, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.default_return_url);
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 1, value.enabled_payment_method_types);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public LpmConfigPb decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new LpmConfigPb(arrayList, strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        arrayList.add(ProtoAdapter.STRING.decode(reader));
                    } else if (iNextTag == 2) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public LpmConfigPb redact(LpmConfigPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return LpmConfigPb.copy$default(value, null, null, ByteString.EMPTY, 3, null);
            }
        };
    }
}
