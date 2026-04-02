package com.stripe.proto.model.rest;

import androidx.core.graphics.TypefaceCompat;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.sun.jna.platform.win32.WinUser;
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

/* JADX INFO: compiled from: Receipt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001a2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0019\u001aB{\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fJ|\u0010\u0010\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\r\u001a\u00020\u000eJ\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0002H\u0016J\b\u0010\u0018\u001a\u00020\u0004H\u0016R\u0012\u0010\f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/stripe/proto/model/rest/Receipt;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/Receipt$Builder;", "application_cryptogram", "", "application_preferred_name", "authorization_code", "authorization_response_code", "cardholder_verification_method", "dedicated_file_name", "terminal_verification_results", "transaction_status_information", "account_type", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Receipt extends Message<Receipt, Builder> {
    public static final ProtoAdapter<Receipt> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "accountType", schemaIndex = 8, tag = 9)
    public final String account_type;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "applicationCryptogram", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 0, tag = 1)
    public final String application_cryptogram;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "applicationPreferredName", schemaIndex = 1, tag = 2)
    public final String application_preferred_name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "authorizationCode", schemaIndex = 2, tag = 3)
    public final String authorization_code;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "authorizationResponseCode", schemaIndex = 3, tag = 4)
    public final String authorization_response_code;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "cardholderVerificationMethod", schemaIndex = 4, tag = 5)
    public final String cardholder_verification_method;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "dedicatedFileName", schemaIndex = 5, tag = 6)
    public final String dedicated_file_name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "terminalVerificationResults", schemaIndex = 6, tag = 7)
    public final String terminal_verification_results;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "transactionStatusInformation", schemaIndex = 7, tag = 8)
    public final String transaction_status_information;

    public Receipt() {
        this(null, null, null, null, null, null, null, null, null, null, WinUser.CF_GDIOBJLAST, null);
    }

    public /* synthetic */ Receipt(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : str5, (i & 32) != 0 ? null : str6, (i & 64) != 0 ? null : str7, (i & 128) != 0 ? null : str8, (i & 256) != 0 ? null : str9, (i & 512) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Receipt(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.application_cryptogram = str;
        this.application_preferred_name = str2;
        this.authorization_code = str3;
        this.authorization_response_code = str4;
        this.cardholder_verification_method = str5;
        this.dedicated_file_name = str6;
        this.terminal_verification_results = str7;
        this.transaction_status_information = str8;
        this.account_type = str9;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.application_cryptogram = this.application_cryptogram;
        builder.application_preferred_name = this.application_preferred_name;
        builder.authorization_code = this.authorization_code;
        builder.authorization_response_code = this.authorization_response_code;
        builder.cardholder_verification_method = this.cardholder_verification_method;
        builder.dedicated_file_name = this.dedicated_file_name;
        builder.terminal_verification_results = this.terminal_verification_results;
        builder.transaction_status_information = this.transaction_status_information;
        builder.account_type = this.account_type;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof Receipt)) {
            return false;
        }
        Receipt receipt = (Receipt) other;
        return Intrinsics.areEqual(unknownFields(), receipt.unknownFields()) && Intrinsics.areEqual(this.application_cryptogram, receipt.application_cryptogram) && Intrinsics.areEqual(this.application_preferred_name, receipt.application_preferred_name) && Intrinsics.areEqual(this.authorization_code, receipt.authorization_code) && Intrinsics.areEqual(this.authorization_response_code, receipt.authorization_response_code) && Intrinsics.areEqual(this.cardholder_verification_method, receipt.cardholder_verification_method) && Intrinsics.areEqual(this.dedicated_file_name, receipt.dedicated_file_name) && Intrinsics.areEqual(this.terminal_verification_results, receipt.terminal_verification_results) && Intrinsics.areEqual(this.transaction_status_information, receipt.transaction_status_information) && Intrinsics.areEqual(this.account_type, receipt.account_type);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.application_cryptogram;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.application_preferred_name;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
        String str3 = this.authorization_code;
        int iHashCode4 = (iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 37;
        String str4 = this.authorization_response_code;
        int iHashCode5 = (iHashCode4 + (str4 != null ? str4.hashCode() : 0)) * 37;
        String str5 = this.cardholder_verification_method;
        int iHashCode6 = (iHashCode5 + (str5 != null ? str5.hashCode() : 0)) * 37;
        String str6 = this.dedicated_file_name;
        int iHashCode7 = (iHashCode6 + (str6 != null ? str6.hashCode() : 0)) * 37;
        String str7 = this.terminal_verification_results;
        int iHashCode8 = (iHashCode7 + (str7 != null ? str7.hashCode() : 0)) * 37;
        String str8 = this.transaction_status_information;
        int iHashCode9 = (iHashCode8 + (str8 != null ? str8.hashCode() : 0)) * 37;
        String str9 = this.account_type;
        int iHashCode10 = iHashCode9 + (str9 != null ? str9.hashCode() : 0);
        this.hashCode = iHashCode10;
        return iHashCode10;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.application_cryptogram != null) {
            arrayList.add("application_cryptogram=██");
        }
        if (this.application_preferred_name != null) {
            arrayList.add("application_preferred_name=" + this.application_preferred_name);
        }
        if (this.authorization_code != null) {
            arrayList.add("authorization_code=" + this.authorization_code);
        }
        if (this.authorization_response_code != null) {
            arrayList.add("authorization_response_code=" + this.authorization_response_code);
        }
        if (this.cardholder_verification_method != null) {
            arrayList.add("cardholder_verification_method=" + this.cardholder_verification_method);
        }
        if (this.dedicated_file_name != null) {
            arrayList.add("dedicated_file_name=" + this.dedicated_file_name);
        }
        if (this.terminal_verification_results != null) {
            arrayList.add("terminal_verification_results=" + this.terminal_verification_results);
        }
        if (this.transaction_status_information != null) {
            arrayList.add("transaction_status_information=" + this.transaction_status_information);
        }
        if (this.account_type != null) {
            arrayList.add("account_type=" + this.account_type);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "Receipt{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ Receipt copy$default(Receipt receipt, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = receipt.application_cryptogram;
        }
        if ((i & 2) != 0) {
            str2 = receipt.application_preferred_name;
        }
        if ((i & 4) != 0) {
            str3 = receipt.authorization_code;
        }
        if ((i & 8) != 0) {
            str4 = receipt.authorization_response_code;
        }
        if ((i & 16) != 0) {
            str5 = receipt.cardholder_verification_method;
        }
        if ((i & 32) != 0) {
            str6 = receipt.dedicated_file_name;
        }
        if ((i & 64) != 0) {
            str7 = receipt.terminal_verification_results;
        }
        if ((i & 128) != 0) {
            str8 = receipt.transaction_status_information;
        }
        if ((i & 256) != 0) {
            str9 = receipt.account_type;
        }
        if ((i & 512) != 0) {
            byteString = receipt.unknownFields();
        }
        String str10 = str9;
        ByteString byteString2 = byteString;
        String str11 = str7;
        String str12 = str8;
        String str13 = str5;
        String str14 = str6;
        return receipt.copy(str, str2, str3, str4, str13, str14, str11, str12, str10, byteString2);
    }

    public final Receipt copy(String application_cryptogram, String application_preferred_name, String authorization_code, String authorization_response_code, String cardholder_verification_method, String dedicated_file_name, String terminal_verification_results, String transaction_status_information, String account_type, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new Receipt(application_cryptogram, application_preferred_name, authorization_code, authorization_response_code, cardholder_verification_method, dedicated_file_name, terminal_verification_results, transaction_status_information, account_type, unknownFields);
    }

    /* JADX INFO: compiled from: Receipt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0005J\b\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/proto/model/rest/Receipt$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/Receipt;", "()V", "account_type", "", "application_cryptogram", "application_preferred_name", "authorization_code", "authorization_response_code", "cardholder_verification_method", "dedicated_file_name", "terminal_verification_results", "transaction_status_information", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<Receipt, Builder> {
        public String account_type;
        public String application_cryptogram;
        public String application_preferred_name;
        public String authorization_code;
        public String authorization_response_code;
        public String cardholder_verification_method;
        public String dedicated_file_name;
        public String terminal_verification_results;
        public String transaction_status_information;

        public final Builder application_cryptogram(String application_cryptogram) {
            this.application_cryptogram = application_cryptogram;
            return this;
        }

        public final Builder application_preferred_name(String application_preferred_name) {
            this.application_preferred_name = application_preferred_name;
            return this;
        }

        public final Builder authorization_code(String authorization_code) {
            this.authorization_code = authorization_code;
            return this;
        }

        public final Builder authorization_response_code(String authorization_response_code) {
            this.authorization_response_code = authorization_response_code;
            return this;
        }

        public final Builder cardholder_verification_method(String cardholder_verification_method) {
            this.cardholder_verification_method = cardholder_verification_method;
            return this;
        }

        public final Builder dedicated_file_name(String dedicated_file_name) {
            this.dedicated_file_name = dedicated_file_name;
            return this;
        }

        public final Builder terminal_verification_results(String terminal_verification_results) {
            this.terminal_verification_results = terminal_verification_results;
            return this;
        }

        public final Builder transaction_status_information(String transaction_status_information) {
            this.transaction_status_information = transaction_status_information;
            return this;
        }

        public final Builder account_type(String account_type) {
            this.account_type = account_type;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public Receipt build() {
            return new Receipt(this.application_cryptogram, this.application_preferred_name, this.authorization_code, this.authorization_response_code, this.cardholder_verification_method, this.dedicated_file_name, this.terminal_verification_results, this.transaction_status_information, this.account_type, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: Receipt.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/Receipt$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/Receipt;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/Receipt$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ Receipt build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Receipt.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<Receipt>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.Receipt$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(Receipt value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.application_cryptogram != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.application_cryptogram);
                }
                if (value.application_preferred_name != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.application_preferred_name);
                }
                if (value.authorization_code != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.authorization_code);
                }
                if (value.authorization_response_code != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(4, value.authorization_response_code);
                }
                if (value.cardholder_verification_method != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(5, value.cardholder_verification_method);
                }
                if (value.dedicated_file_name != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(6, value.dedicated_file_name);
                }
                if (value.terminal_verification_results != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(7, value.terminal_verification_results);
                }
                if (value.transaction_status_information != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(8, value.transaction_status_information);
                }
                return value.account_type != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(9, value.account_type) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, Receipt value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.application_cryptogram != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.application_cryptogram);
                }
                if (value.application_preferred_name != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.application_preferred_name);
                }
                if (value.authorization_code != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.authorization_code);
                }
                if (value.authorization_response_code != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.authorization_response_code);
                }
                if (value.cardholder_verification_method != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.cardholder_verification_method);
                }
                if (value.dedicated_file_name != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 6, value.dedicated_file_name);
                }
                if (value.terminal_verification_results != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 7, value.terminal_verification_results);
                }
                if (value.transaction_status_information != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 8, value.transaction_status_information);
                }
                if (value.account_type != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 9, value.account_type);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, Receipt value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.account_type != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 9, value.account_type);
                }
                if (value.transaction_status_information != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 8, value.transaction_status_information);
                }
                if (value.terminal_verification_results != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 7, value.terminal_verification_results);
                }
                if (value.dedicated_file_name != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 6, value.dedicated_file_name);
                }
                if (value.cardholder_verification_method != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.cardholder_verification_method);
                }
                if (value.authorization_response_code != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.authorization_response_code);
                }
                if (value.authorization_code != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.authorization_code);
                }
                if (value.application_preferred_name != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.application_preferred_name);
                }
                if (value.application_cryptogram != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.application_cryptogram);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public Receipt redact(Receipt value) {
                Intrinsics.checkNotNullParameter(value, "value");
                String str = value.application_preferred_name;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                String str2 = value.authorization_code;
                String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                String str3 = value.authorization_response_code;
                String strRedact3 = str3 != null ? ProtoAdapter.STRING_VALUE.redact(str3) : null;
                String str4 = value.cardholder_verification_method;
                String strRedact4 = str4 != null ? ProtoAdapter.STRING_VALUE.redact(str4) : null;
                String str5 = value.dedicated_file_name;
                String strRedact5 = str5 != null ? ProtoAdapter.STRING_VALUE.redact(str5) : null;
                String str6 = value.terminal_verification_results;
                String strRedact6 = str6 != null ? ProtoAdapter.STRING_VALUE.redact(str6) : null;
                String str7 = value.transaction_status_information;
                String strRedact7 = str7 != null ? ProtoAdapter.STRING_VALUE.redact(str7) : null;
                String str8 = value.account_type;
                return value.copy(null, strRedact, strRedact2, strRedact3, strRedact4, strRedact5, strRedact6, strRedact7, str8 != null ? ProtoAdapter.STRING_VALUE.redact(str8) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public Receipt decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = null;
                String strDecode2 = null;
                String strDecode3 = null;
                String strDecode4 = null;
                String strDecode5 = null;
                String strDecode6 = null;
                String strDecode7 = null;
                String strDecode8 = null;
                String strDecode9 = null;
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
                                strDecode8 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 9:
                                strDecode9 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new Receipt(strDecode, strDecode2, strDecode3, strDecode4, strDecode5, strDecode6, strDecode7, strDecode8, strDecode9, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
