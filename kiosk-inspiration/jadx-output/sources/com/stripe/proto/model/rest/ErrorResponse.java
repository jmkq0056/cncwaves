package com.stripe.proto.model.rest;

import com.google.firebase.analytics.FirebaseAnalytics;
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
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: ErrorResponse.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000  2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001f B\u0087\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012¢\u0006\u0002\u0010\u0013J\u0088\u0001\u0010\u0016\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u0012J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0096\u0002J\b\u0010\u001b\u001a\u00020\u001cH\u0016J\b\u0010\u001d\u001a\u00020\u0002H\u0016J\b\u0010\u001e\u001a\u00020\u0004H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0014\u0010\u0015R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/stripe/proto/model/rest/ErrorResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/ErrorResponse$Builder;", "type", "", "charge", "code", "decline_code", "doc_url", "message", "param_", FirebaseAnalytics.Param.SOURCE, "Lcom/stripe/proto/model/rest/Source;", "payment_intent", "Lcom/stripe/proto/model/rest/PaymentIntent;", "setup_intent", "Lcom/stripe/proto/model/rest/ErrorSetupIntent;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Source;Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/proto/model/rest/ErrorSetupIntent;Lokio/ByteString;)V", "getSource$annotations", "()V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ErrorResponse extends Message<ErrorResponse, Builder> {
    public static final ProtoAdapter<ErrorResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 1, tag = 2)
    public final String charge;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 2, tag = 3)
    public final String code;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "declineCode", schemaIndex = 3, tag = 4)
    public final String decline_code;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "docUrl", schemaIndex = 4, tag = 5)
    public final String doc_url;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 5, tag = 6)
    public final String message;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", declaredName = "param", schemaIndex = 6, tag = 7)
    public final String param_;

    @WireField(adapter = "com.stripe.proto.model.rest.PaymentIntent#ADAPTER", jsonName = "paymentIntent", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 9)
    public final PaymentIntent payment_intent;

    @WireField(adapter = "com.stripe.proto.model.rest.ErrorSetupIntent#ADAPTER", jsonName = "setupIntent", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 9, tag = 10)
    public final ErrorSetupIntent setup_intent;

    @WireField(adapter = "com.stripe.proto.model.rest.Source#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 8)
    public final Source source;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 0, tag = 1)
    public final String type;

    public ErrorResponse() {
        this(null, null, null, null, null, null, null, null, null, null, null, 2047, null);
    }

    @Deprecated(message = "source is deprecated")
    public static /* synthetic */ void getSource$annotations() {
    }

    public /* synthetic */ ErrorResponse(String str, String str2, String str3, String str4, String str5, String str6, String str7, Source source, PaymentIntent paymentIntent, ErrorSetupIntent errorSetupIntent, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : str5, (i & 32) != 0 ? null : str6, (i & 64) != 0 ? null : str7, (i & 128) != 0 ? null : source, (i & 256) != 0 ? null : paymentIntent, (i & 512) != 0 ? null : errorSetupIntent, (i & 1024) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ErrorResponse(String str, String str2, String str3, String str4, String str5, String str6, String str7, Source source, PaymentIntent paymentIntent, ErrorSetupIntent errorSetupIntent, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.type = str;
        this.charge = str2;
        this.code = str3;
        this.decline_code = str4;
        this.doc_url = str5;
        this.message = str6;
        this.param_ = str7;
        this.source = source;
        this.payment_intent = paymentIntent;
        this.setup_intent = errorSetupIntent;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.type = this.type;
        builder.charge = this.charge;
        builder.code = this.code;
        builder.decline_code = this.decline_code;
        builder.doc_url = this.doc_url;
        builder.message = this.message;
        builder.param_ = this.param_;
        builder.source = this.source;
        builder.payment_intent = this.payment_intent;
        builder.setup_intent = this.setup_intent;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ErrorResponse)) {
            return false;
        }
        ErrorResponse errorResponse = (ErrorResponse) other;
        return Intrinsics.areEqual(unknownFields(), errorResponse.unknownFields()) && Intrinsics.areEqual(this.type, errorResponse.type) && Intrinsics.areEqual(this.charge, errorResponse.charge) && Intrinsics.areEqual(this.code, errorResponse.code) && Intrinsics.areEqual(this.decline_code, errorResponse.decline_code) && Intrinsics.areEqual(this.doc_url, errorResponse.doc_url) && Intrinsics.areEqual(this.message, errorResponse.message) && Intrinsics.areEqual(this.param_, errorResponse.param_) && Intrinsics.areEqual(this.source, errorResponse.source) && Intrinsics.areEqual(this.payment_intent, errorResponse.payment_intent) && Intrinsics.areEqual(this.setup_intent, errorResponse.setup_intent);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.type;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.charge;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
        String str3 = this.code;
        int iHashCode4 = (iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 37;
        String str4 = this.decline_code;
        int iHashCode5 = (iHashCode4 + (str4 != null ? str4.hashCode() : 0)) * 37;
        String str5 = this.doc_url;
        int iHashCode6 = (iHashCode5 + (str5 != null ? str5.hashCode() : 0)) * 37;
        String str6 = this.message;
        int iHashCode7 = (iHashCode6 + (str6 != null ? str6.hashCode() : 0)) * 37;
        String str7 = this.param_;
        int iHashCode8 = (iHashCode7 + (str7 != null ? str7.hashCode() : 0)) * 37;
        Source source = this.source;
        int iHashCode9 = (iHashCode8 + (source != null ? source.hashCode() : 0)) * 37;
        PaymentIntent paymentIntent = this.payment_intent;
        int iHashCode10 = (iHashCode9 + (paymentIntent != null ? paymentIntent.hashCode() : 0)) * 37;
        ErrorSetupIntent errorSetupIntent = this.setup_intent;
        int iHashCode11 = iHashCode10 + (errorSetupIntent != null ? errorSetupIntent.hashCode() : 0);
        this.hashCode = iHashCode11;
        return iHashCode11;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.type != null) {
            arrayList.add("type=" + this.type);
        }
        if (this.charge != null) {
            arrayList.add("charge=" + this.charge);
        }
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
        if (this.source != null) {
            arrayList.add("source=" + this.source);
        }
        if (this.payment_intent != null) {
            arrayList.add("payment_intent=" + this.payment_intent);
        }
        if (this.setup_intent != null) {
            arrayList.add("setup_intent=" + this.setup_intent);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ErrorResponse{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ErrorResponse copy$default(ErrorResponse errorResponse, String str, String str2, String str3, String str4, String str5, String str6, String str7, Source source, PaymentIntent paymentIntent, ErrorSetupIntent errorSetupIntent, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = errorResponse.type;
        }
        if ((i & 2) != 0) {
            str2 = errorResponse.charge;
        }
        if ((i & 4) != 0) {
            str3 = errorResponse.code;
        }
        if ((i & 8) != 0) {
            str4 = errorResponse.decline_code;
        }
        if ((i & 16) != 0) {
            str5 = errorResponse.doc_url;
        }
        if ((i & 32) != 0) {
            str6 = errorResponse.message;
        }
        if ((i & 64) != 0) {
            str7 = errorResponse.param_;
        }
        if ((i & 128) != 0) {
            source = errorResponse.source;
        }
        if ((i & 256) != 0) {
            paymentIntent = errorResponse.payment_intent;
        }
        if ((i & 512) != 0) {
            errorSetupIntent = errorResponse.setup_intent;
        }
        if ((i & 1024) != 0) {
            byteString = errorResponse.unknownFields();
        }
        ErrorSetupIntent errorSetupIntent2 = errorSetupIntent;
        ByteString byteString2 = byteString;
        Source source2 = source;
        PaymentIntent paymentIntent2 = paymentIntent;
        String str8 = str6;
        String str9 = str7;
        String str10 = str5;
        String str11 = str3;
        return errorResponse.copy(str, str2, str11, str4, str10, str8, str9, source2, paymentIntent2, errorSetupIntent2, byteString2);
    }

    public final ErrorResponse copy(String type, String charge, String code, String decline_code, String doc_url, String message, String param_, Source source, PaymentIntent payment_intent, ErrorSetupIntent setup_intent, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ErrorResponse(type, charge, code, decline_code, doc_url, message, param_, source, payment_intent, setup_intent, unknownFields);
    }

    /* JADX INFO: compiled from: ErrorResponse.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\fJ\u0010\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0012\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0007J\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/model/rest/ErrorResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/ErrorResponse;", "()V", "charge", "", "code", "decline_code", "doc_url", "message", "param_", "payment_intent", "Lcom/stripe/proto/model/rest/PaymentIntent;", "setup_intent", "Lcom/stripe/proto/model/rest/ErrorSetupIntent;", FirebaseAnalytics.Param.SOURCE, "Lcom/stripe/proto/model/rest/Source;", "type", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ErrorResponse, Builder> {
        public String charge;
        public String code;
        public String decline_code;
        public String doc_url;
        public String message;
        public String param_;
        public PaymentIntent payment_intent;
        public ErrorSetupIntent setup_intent;
        public Source source;
        public String type;

        public final Builder type(String type) {
            this.type = type;
            return this;
        }

        public final Builder charge(String charge) {
            this.charge = charge;
            return this;
        }

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

        @Deprecated(message = "source is deprecated")
        public final Builder source(Source source) {
            this.source = source;
            return this;
        }

        public final Builder payment_intent(PaymentIntent payment_intent) {
            this.payment_intent = payment_intent;
            return this;
        }

        public final Builder setup_intent(ErrorSetupIntent setup_intent) {
            this.setup_intent = setup_intent;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ErrorResponse build() {
            return new ErrorResponse(this.type, this.charge, this.code, this.decline_code, this.doc_url, this.message, this.param_, this.source, this.payment_intent, this.setup_intent, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ErrorResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/ErrorResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/ErrorResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/ErrorResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ErrorResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ErrorResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ErrorResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.ErrorResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ErrorResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.type != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.type);
                }
                if (value.charge != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.charge);
                }
                if (value.code != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.code);
                }
                if (value.decline_code != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(4, value.decline_code);
                }
                if (value.doc_url != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(5, value.doc_url);
                }
                if (value.message != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(6, value.message);
                }
                if (value.param_ != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(7, value.param_);
                }
                if (value.source != null) {
                    size += Source.ADAPTER.encodedSizeWithTag(8, value.source);
                }
                if (value.payment_intent != null) {
                    size += PaymentIntent.ADAPTER.encodedSizeWithTag(9, value.payment_intent);
                }
                return value.setup_intent != null ? size + ErrorSetupIntent.ADAPTER.encodedSizeWithTag(10, value.setup_intent) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ErrorResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.type != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.type);
                }
                if (value.charge != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.charge);
                }
                if (value.code != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.code);
                }
                if (value.decline_code != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.decline_code);
                }
                if (value.doc_url != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.doc_url);
                }
                if (value.message != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 6, value.message);
                }
                if (value.param_ != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 7, value.param_);
                }
                if (value.source != null) {
                    Source.ADAPTER.encodeWithTag(writer, 8, value.source);
                }
                if (value.payment_intent != null) {
                    PaymentIntent.ADAPTER.encodeWithTag(writer, 9, value.payment_intent);
                }
                if (value.setup_intent != null) {
                    ErrorSetupIntent.ADAPTER.encodeWithTag(writer, 10, value.setup_intent);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ErrorResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.setup_intent != null) {
                    ErrorSetupIntent.ADAPTER.encodeWithTag(writer, 10, value.setup_intent);
                }
                if (value.payment_intent != null) {
                    PaymentIntent.ADAPTER.encodeWithTag(writer, 9, value.payment_intent);
                }
                if (value.source != null) {
                    Source.ADAPTER.encodeWithTag(writer, 8, value.source);
                }
                if (value.param_ != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 7, value.param_);
                }
                if (value.message != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 6, value.message);
                }
                if (value.doc_url != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.doc_url);
                }
                if (value.decline_code != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.decline_code);
                }
                if (value.code != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.code);
                }
                if (value.charge != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.charge);
                }
                if (value.type != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.type);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ErrorResponse redact(ErrorResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                String str = value.type;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                String str2 = value.charge;
                String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                String str3 = value.code;
                String strRedact3 = str3 != null ? ProtoAdapter.STRING_VALUE.redact(str3) : null;
                String str4 = value.decline_code;
                String strRedact4 = str4 != null ? ProtoAdapter.STRING_VALUE.redact(str4) : null;
                String str5 = value.doc_url;
                String strRedact5 = str5 != null ? ProtoAdapter.STRING_VALUE.redact(str5) : null;
                String str6 = value.message;
                String strRedact6 = str6 != null ? ProtoAdapter.STRING_VALUE.redact(str6) : null;
                String str7 = value.param_;
                String strRedact7 = str7 != null ? ProtoAdapter.STRING_VALUE.redact(str7) : null;
                Source source = value.source;
                Source sourceRedact = source != null ? Source.ADAPTER.redact(source) : null;
                PaymentIntent paymentIntent = value.payment_intent;
                PaymentIntent paymentIntentRedact = paymentIntent != null ? PaymentIntent.ADAPTER.redact(paymentIntent) : null;
                ErrorSetupIntent errorSetupIntent = value.setup_intent;
                return value.copy(strRedact, strRedact2, strRedact3, strRedact4, strRedact5, strRedact6, strRedact7, sourceRedact, paymentIntentRedact, errorSetupIntent != null ? ErrorSetupIntent.ADAPTER.redact(errorSetupIntent) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ErrorResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = null;
                String strDecode2 = null;
                String strDecode3 = null;
                String strDecode4 = null;
                String strDecode5 = null;
                String strDecode6 = null;
                String strDecode7 = null;
                Source sourceDecode = null;
                PaymentIntent paymentIntentDecode = null;
                ErrorSetupIntent errorSetupIntentDecode = null;
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
                                strDecode6 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 7:
                                strDecode7 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 8:
                                sourceDecode = Source.ADAPTER.decode(reader);
                                break;
                            case 9:
                                paymentIntentDecode = PaymentIntent.ADAPTER.decode(reader);
                                break;
                            case 10:
                                errorSetupIntentDecode = ErrorSetupIntent.ADAPTER.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new ErrorResponse(strDecode, strDecode2, strDecode3, strDecode4, strDecode5, strDecode6, strDecode7, sourceDecode, paymentIntentDecode, errorSetupIntentDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
