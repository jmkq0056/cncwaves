package com.stripe.proto.model.rest;

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

/* JADX INFO: compiled from: LastSetupError.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00192\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0018\u0019Bc\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJd\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\f\u001a\u00020\rJ\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0096\u0002J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0002H\u0016J\b\u0010\u0017\u001a\u00020\u0004H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/stripe/proto/model/rest/LastSetupError;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/LastSetupError$Builder;", "code", "", "decline_code", "doc_url", "message", "param_", "payment_method", "Lcom/stripe/proto/model/rest/PaymentMethod;", "type", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethod;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class LastSetupError extends Message<LastSetupError, Builder> {
    public static final ProtoAdapter<LastSetupError> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 0, tag = 1)
    public final String code;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "declineCode", schemaIndex = 1, tag = 2)
    public final String decline_code;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "docUrl", schemaIndex = 2, tag = 3)
    public final String doc_url;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 3, tag = 4)
    public final String message;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", declaredName = "param", schemaIndex = 4, tag = 5)
    public final String param_;

    @WireField(adapter = "com.stripe.proto.model.rest.PaymentMethod#ADAPTER", jsonName = "paymentMethod", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final PaymentMethod payment_method;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 6, tag = 7)
    public final String type;

    public LastSetupError() {
        this(null, null, null, null, null, null, null, null, 255, null);
    }

    public /* synthetic */ LastSetupError(String str, String str2, String str3, String str4, String str5, PaymentMethod paymentMethod, String str6, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : str5, (i & 32) != 0 ? null : paymentMethod, (i & 64) != 0 ? null : str6, (i & 128) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LastSetupError(String str, String str2, String str3, String str4, String str5, PaymentMethod paymentMethod, String str6, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.code = str;
        this.decline_code = str2;
        this.doc_url = str3;
        this.message = str4;
        this.param_ = str5;
        this.payment_method = paymentMethod;
        this.type = str6;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.code = this.code;
        builder.decline_code = this.decline_code;
        builder.doc_url = this.doc_url;
        builder.message = this.message;
        builder.param_ = this.param_;
        builder.payment_method = this.payment_method;
        builder.type = this.type;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof LastSetupError)) {
            return false;
        }
        LastSetupError lastSetupError = (LastSetupError) other;
        return Intrinsics.areEqual(unknownFields(), lastSetupError.unknownFields()) && Intrinsics.areEqual(this.code, lastSetupError.code) && Intrinsics.areEqual(this.decline_code, lastSetupError.decline_code) && Intrinsics.areEqual(this.doc_url, lastSetupError.doc_url) && Intrinsics.areEqual(this.message, lastSetupError.message) && Intrinsics.areEqual(this.param_, lastSetupError.param_) && Intrinsics.areEqual(this.payment_method, lastSetupError.payment_method) && Intrinsics.areEqual(this.type, lastSetupError.type);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.code;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.decline_code;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
        String str3 = this.doc_url;
        int iHashCode4 = (iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 37;
        String str4 = this.message;
        int iHashCode5 = (iHashCode4 + (str4 != null ? str4.hashCode() : 0)) * 37;
        String str5 = this.param_;
        int iHashCode6 = (iHashCode5 + (str5 != null ? str5.hashCode() : 0)) * 37;
        PaymentMethod paymentMethod = this.payment_method;
        int iHashCode7 = (iHashCode6 + (paymentMethod != null ? paymentMethod.hashCode() : 0)) * 37;
        String str6 = this.type;
        int iHashCode8 = iHashCode7 + (str6 != null ? str6.hashCode() : 0);
        this.hashCode = iHashCode8;
        return iHashCode8;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.code != null) {
            arrayList.add("code=" + this.code);
        }
        if (this.decline_code != null) {
            arrayList.add("decline_code=" + this.decline_code);
        }
        if (this.doc_url != null) {
            arrayList.add("doc_url=" + this.doc_url);
        }
        if (this.message != null) {
            arrayList.add("message=" + this.message);
        }
        if (this.param_ != null) {
            arrayList.add("param_=" + this.param_);
        }
        if (this.payment_method != null) {
            arrayList.add("payment_method=" + this.payment_method);
        }
        if (this.type != null) {
            arrayList.add("type=" + this.type);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "LastSetupError{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ LastSetupError copy$default(LastSetupError lastSetupError, String str, String str2, String str3, String str4, String str5, PaymentMethod paymentMethod, String str6, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = lastSetupError.code;
        }
        if ((i & 2) != 0) {
            str2 = lastSetupError.decline_code;
        }
        if ((i & 4) != 0) {
            str3 = lastSetupError.doc_url;
        }
        if ((i & 8) != 0) {
            str4 = lastSetupError.message;
        }
        if ((i & 16) != 0) {
            str5 = lastSetupError.param_;
        }
        if ((i & 32) != 0) {
            paymentMethod = lastSetupError.payment_method;
        }
        if ((i & 64) != 0) {
            str6 = lastSetupError.type;
        }
        if ((i & 128) != 0) {
            byteString = lastSetupError.unknownFields();
        }
        String str7 = str6;
        ByteString byteString2 = byteString;
        String str8 = str5;
        PaymentMethod paymentMethod2 = paymentMethod;
        return lastSetupError.copy(str, str2, str3, str4, str8, paymentMethod2, str7, byteString2);
    }

    public final LastSetupError copy(String code, String decline_code, String doc_url, String message, String param_, PaymentMethod payment_method, String type, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new LastSetupError(code, decline_code, doc_url, message, param_, payment_method, type, unknownFields);
    }

    /* JADX INFO: compiled from: LastSetupError.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/LastSetupError$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/LastSetupError;", "()V", "code", "", "decline_code", "doc_url", "message", "param_", "payment_method", "Lcom/stripe/proto/model/rest/PaymentMethod;", "type", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<LastSetupError, Builder> {
        public String code;
        public String decline_code;
        public String doc_url;
        public String message;
        public String param_;
        public PaymentMethod payment_method;
        public String type;

        public final Builder code(String code) {
            this.code = code;
            return this;
        }

        public final Builder decline_code(String decline_code) {
            this.decline_code = decline_code;
            return this;
        }

        public final Builder doc_url(String doc_url) {
            this.doc_url = doc_url;
            return this;
        }

        public final Builder message(String message) {
            this.message = message;
            return this;
        }

        public final Builder param_(String param_) {
            this.param_ = param_;
            return this;
        }

        public final Builder payment_method(PaymentMethod payment_method) {
            this.payment_method = payment_method;
            return this;
        }

        public final Builder type(String type) {
            this.type = type;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public LastSetupError build() {
            return new LastSetupError(this.code, this.decline_code, this.doc_url, this.message, this.param_, this.payment_method, this.type, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: LastSetupError.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/LastSetupError$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/LastSetupError;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/LastSetupError$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ LastSetupError build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(LastSetupError.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<LastSetupError>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.LastSetupError$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(LastSetupError value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.code != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.code);
                }
                if (value.decline_code != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.decline_code);
                }
                if (value.doc_url != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.doc_url);
                }
                if (value.message != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(4, value.message);
                }
                if (value.param_ != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(5, value.param_);
                }
                if (value.payment_method != null) {
                    size += PaymentMethod.ADAPTER.encodedSizeWithTag(6, value.payment_method);
                }
                return value.type != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(7, value.type) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, LastSetupError value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.code != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.code);
                }
                if (value.decline_code != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.decline_code);
                }
                if (value.doc_url != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.doc_url);
                }
                if (value.message != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.message);
                }
                if (value.param_ != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.param_);
                }
                if (value.payment_method != null) {
                    PaymentMethod.ADAPTER.encodeWithTag(writer, 6, value.payment_method);
                }
                if (value.type != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 7, value.type);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, LastSetupError value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.type != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 7, value.type);
                }
                if (value.payment_method != null) {
                    PaymentMethod.ADAPTER.encodeWithTag(writer, 6, value.payment_method);
                }
                if (value.param_ != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.param_);
                }
                if (value.message != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.message);
                }
                if (value.doc_url != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.doc_url);
                }
                if (value.decline_code != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.decline_code);
                }
                if (value.code != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.code);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public LastSetupError redact(LastSetupError value) {
                Intrinsics.checkNotNullParameter(value, "value");
                String str = value.code;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                String str2 = value.decline_code;
                String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                String str3 = value.doc_url;
                String strRedact3 = str3 != null ? ProtoAdapter.STRING_VALUE.redact(str3) : null;
                String str4 = value.message;
                String strRedact4 = str4 != null ? ProtoAdapter.STRING_VALUE.redact(str4) : null;
                String str5 = value.param_;
                String strRedact5 = str5 != null ? ProtoAdapter.STRING_VALUE.redact(str5) : null;
                PaymentMethod paymentMethod = value.payment_method;
                PaymentMethod paymentMethodRedact = paymentMethod != null ? PaymentMethod.ADAPTER.redact(paymentMethod) : null;
                String str6 = value.type;
                return value.copy(strRedact, strRedact2, strRedact3, strRedact4, strRedact5, paymentMethodRedact, str6 != null ? ProtoAdapter.STRING_VALUE.redact(str6) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public LastSetupError decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = null;
                String strDecode2 = null;
                String strDecode3 = null;
                String strDecode4 = null;
                String strDecode5 = null;
                PaymentMethod paymentMethodDecode = null;
                String strDecode6 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 2:
                                strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 3:
                                strDecode3 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 4:
                                strDecode4 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 5:
                                strDecode5 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 6:
                                paymentMethodDecode = PaymentMethod.ADAPTER.decode(reader);
                                break;
                            case 7:
                                strDecode6 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new LastSetupError(strDecode, strDecode2, strDecode3, strDecode4, strDecode5, paymentMethodDecode, strDecode6, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
