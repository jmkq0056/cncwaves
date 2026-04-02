package com.stripe.proto.api.sdk;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
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

/* JADX INFO: compiled from: ReceiptDetails.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001a2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0019\u001aB{\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fJ|\u0010\u0010\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\r\u001a\u00020\u000eJ\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0002H\u0016J\b\u0010\u0018\u001a\u00020\u0004H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/stripe/proto/api/sdk/ReceiptDetails;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/ReceiptDetails$Builder;", "account_type", "", "authorization_code", "authorization_response_code", "dedicated_file_name", "application_preferred_name", "application_cryptogram", "cardholder_verification_method", "transaction_status_information", "terminal_verification_results", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReceiptDetails extends Message<ReceiptDetails, Builder> {
    public static final ProtoAdapter<ReceiptDetails> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "accountType", schemaIndex = 0, tag = 1)
    public final String account_type;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "applicationCryptogram", schemaIndex = 5, tag = 6)
    public final String application_cryptogram;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "applicationPreferredName", schemaIndex = 4, tag = 5)
    public final String application_preferred_name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "authorizationCode", schemaIndex = 1, tag = 2)
    public final String authorization_code;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "authorizationResponseCode", schemaIndex = 2, tag = 3)
    public final String authorization_response_code;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "cardholderVerificationMethod", schemaIndex = 6, tag = 7)
    public final String cardholder_verification_method;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "dedicatedFileName", schemaIndex = 3, tag = 4)
    public final String dedicated_file_name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "terminalVerificationResults", schemaIndex = 8, tag = 10)
    public final String terminal_verification_results;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "transactionStatusInformation", schemaIndex = 7, tag = 9)
    public final String transaction_status_information;

    public ReceiptDetails() {
        this(null, null, null, null, null, null, null, null, null, null, WinUser.CF_GDIOBJLAST, null);
    }

    public /* synthetic */ ReceiptDetails(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : str5, (i & 32) != 0 ? null : str6, (i & 64) != 0 ? null : str7, (i & 128) != 0 ? null : str8, (i & 256) != 0 ? null : str9, (i & 512) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReceiptDetails(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.account_type = str;
        this.authorization_code = str2;
        this.authorization_response_code = str3;
        this.dedicated_file_name = str4;
        this.application_preferred_name = str5;
        this.application_cryptogram = str6;
        this.cardholder_verification_method = str7;
        this.transaction_status_information = str8;
        this.terminal_verification_results = str9;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.account_type = this.account_type;
        builder.authorization_code = this.authorization_code;
        builder.authorization_response_code = this.authorization_response_code;
        builder.dedicated_file_name = this.dedicated_file_name;
        builder.application_preferred_name = this.application_preferred_name;
        builder.application_cryptogram = this.application_cryptogram;
        builder.cardholder_verification_method = this.cardholder_verification_method;
        builder.transaction_status_information = this.transaction_status_information;
        builder.terminal_verification_results = this.terminal_verification_results;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ReceiptDetails)) {
            return false;
        }
        ReceiptDetails receiptDetails = (ReceiptDetails) other;
        return Intrinsics.areEqual(unknownFields(), receiptDetails.unknownFields()) && Intrinsics.areEqual(this.account_type, receiptDetails.account_type) && Intrinsics.areEqual(this.authorization_code, receiptDetails.authorization_code) && Intrinsics.areEqual(this.authorization_response_code, receiptDetails.authorization_response_code) && Intrinsics.areEqual(this.dedicated_file_name, receiptDetails.dedicated_file_name) && Intrinsics.areEqual(this.application_preferred_name, receiptDetails.application_preferred_name) && Intrinsics.areEqual(this.application_cryptogram, receiptDetails.application_cryptogram) && Intrinsics.areEqual(this.cardholder_verification_method, receiptDetails.cardholder_verification_method) && Intrinsics.areEqual(this.transaction_status_information, receiptDetails.transaction_status_information) && Intrinsics.areEqual(this.terminal_verification_results, receiptDetails.terminal_verification_results);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.account_type;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.authorization_code;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
        String str3 = this.authorization_response_code;
        int iHashCode4 = (iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 37;
        String str4 = this.dedicated_file_name;
        int iHashCode5 = (iHashCode4 + (str4 != null ? str4.hashCode() : 0)) * 37;
        String str5 = this.application_preferred_name;
        int iHashCode6 = (iHashCode5 + (str5 != null ? str5.hashCode() : 0)) * 37;
        String str6 = this.application_cryptogram;
        int iHashCode7 = (iHashCode6 + (str6 != null ? str6.hashCode() : 0)) * 37;
        String str7 = this.cardholder_verification_method;
        int iHashCode8 = (iHashCode7 + (str7 != null ? str7.hashCode() : 0)) * 37;
        String str8 = this.transaction_status_information;
        int iHashCode9 = (iHashCode8 + (str8 != null ? str8.hashCode() : 0)) * 37;
        String str9 = this.terminal_verification_results;
        int iHashCode10 = iHashCode9 + (str9 != null ? str9.hashCode() : 0);
        this.hashCode = iHashCode10;
        return iHashCode10;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.account_type != null) {
            arrayList.add("account_type=" + Internal.sanitize(this.account_type));
        }
        if (this.authorization_code != null) {
            arrayList.add("authorization_code=" + Internal.sanitize(this.authorization_code));
        }
        if (this.authorization_response_code != null) {
            arrayList.add("authorization_response_code=" + Internal.sanitize(this.authorization_response_code));
        }
        if (this.dedicated_file_name != null) {
            arrayList.add("dedicated_file_name=" + Internal.sanitize(this.dedicated_file_name));
        }
        if (this.application_preferred_name != null) {
            arrayList.add("application_preferred_name=" + Internal.sanitize(this.application_preferred_name));
        }
        if (this.application_cryptogram != null) {
            arrayList.add("application_cryptogram=" + Internal.sanitize(this.application_cryptogram));
        }
        if (this.cardholder_verification_method != null) {
            arrayList.add("cardholder_verification_method=" + Internal.sanitize(this.cardholder_verification_method));
        }
        if (this.transaction_status_information != null) {
            arrayList.add("transaction_status_information=" + Internal.sanitize(this.transaction_status_information));
        }
        if (this.terminal_verification_results != null) {
            arrayList.add("terminal_verification_results=" + Internal.sanitize(this.terminal_verification_results));
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ReceiptDetails{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ReceiptDetails copy$default(ReceiptDetails receiptDetails, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = receiptDetails.account_type;
        }
        if ((i & 2) != 0) {
            str2 = receiptDetails.authorization_code;
        }
        if ((i & 4) != 0) {
            str3 = receiptDetails.authorization_response_code;
        }
        if ((i & 8) != 0) {
            str4 = receiptDetails.dedicated_file_name;
        }
        if ((i & 16) != 0) {
            str5 = receiptDetails.application_preferred_name;
        }
        if ((i & 32) != 0) {
            str6 = receiptDetails.application_cryptogram;
        }
        if ((i & 64) != 0) {
            str7 = receiptDetails.cardholder_verification_method;
        }
        if ((i & 128) != 0) {
            str8 = receiptDetails.transaction_status_information;
        }
        if ((i & 256) != 0) {
            str9 = receiptDetails.terminal_verification_results;
        }
        if ((i & 512) != 0) {
            byteString = receiptDetails.unknownFields();
        }
        String str10 = str9;
        ByteString byteString2 = byteString;
        String str11 = str7;
        String str12 = str8;
        String str13 = str5;
        String str14 = str6;
        return receiptDetails.copy(str, str2, str3, str4, str13, str14, str11, str12, str10, byteString2);
    }

    public final ReceiptDetails copy(String account_type, String authorization_code, String authorization_response_code, String dedicated_file_name, String application_preferred_name, String application_cryptogram, String cardholder_verification_method, String transaction_status_information, String terminal_verification_results, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ReceiptDetails(account_type, authorization_code, authorization_response_code, dedicated_file_name, application_preferred_name, application_cryptogram, cardholder_verification_method, transaction_status_information, terminal_verification_results, unknownFields);
    }

    /* JADX INFO: compiled from: ReceiptDetails.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0005J\b\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/proto/api/sdk/ReceiptDetails$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/ReceiptDetails;", "()V", "account_type", "", "application_cryptogram", "application_preferred_name", "authorization_code", "authorization_response_code", "cardholder_verification_method", "dedicated_file_name", "terminal_verification_results", "transaction_status_information", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ReceiptDetails, Builder> {
        public String account_type;
        public String application_cryptogram;
        public String application_preferred_name;
        public String authorization_code;
        public String authorization_response_code;
        public String cardholder_verification_method;
        public String dedicated_file_name;
        public String terminal_verification_results;
        public String transaction_status_information;

        public final Builder account_type(String account_type) {
            this.account_type = account_type;
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

        public final Builder dedicated_file_name(String dedicated_file_name) {
            this.dedicated_file_name = dedicated_file_name;
            return this;
        }

        public final Builder application_preferred_name(String application_preferred_name) {
            this.application_preferred_name = application_preferred_name;
            return this;
        }

        public final Builder application_cryptogram(String application_cryptogram) {
            this.application_cryptogram = application_cryptogram;
            return this;
        }

        public final Builder cardholder_verification_method(String cardholder_verification_method) {
            this.cardholder_verification_method = cardholder_verification_method;
            return this;
        }

        public final Builder transaction_status_information(String transaction_status_information) {
            this.transaction_status_information = transaction_status_information;
            return this;
        }

        public final Builder terminal_verification_results(String terminal_verification_results) {
            this.terminal_verification_results = terminal_verification_results;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ReceiptDetails build() {
            return new ReceiptDetails(this.account_type, this.authorization_code, this.authorization_response_code, this.dedicated_file_name, this.application_preferred_name, this.application_cryptogram, this.cardholder_verification_method, this.transaction_status_information, this.terminal_verification_results, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ReceiptDetails.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/ReceiptDetails$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/ReceiptDetails;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/ReceiptDetails$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ReceiptDetails build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ReceiptDetails.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ReceiptDetails>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.ReceiptDetails$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ReceiptDetails value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + ProtoAdapter.STRING.encodedSizeWithTag(1, value.account_type) + ProtoAdapter.STRING.encodedSizeWithTag(2, value.authorization_code) + ProtoAdapter.STRING.encodedSizeWithTag(3, value.authorization_response_code) + ProtoAdapter.STRING.encodedSizeWithTag(4, value.dedicated_file_name) + ProtoAdapter.STRING.encodedSizeWithTag(5, value.application_preferred_name) + ProtoAdapter.STRING.encodedSizeWithTag(6, value.application_cryptogram) + ProtoAdapter.STRING.encodedSizeWithTag(7, value.cardholder_verification_method) + ProtoAdapter.STRING.encodedSizeWithTag(9, value.transaction_status_information) + ProtoAdapter.STRING.encodedSizeWithTag(10, value.terminal_verification_results);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ReceiptDetails value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.account_type);
                ProtoAdapter.STRING.encodeWithTag(writer, 2, value.authorization_code);
                ProtoAdapter.STRING.encodeWithTag(writer, 3, value.authorization_response_code);
                ProtoAdapter.STRING.encodeWithTag(writer, 4, value.dedicated_file_name);
                ProtoAdapter.STRING.encodeWithTag(writer, 5, value.application_preferred_name);
                ProtoAdapter.STRING.encodeWithTag(writer, 6, value.application_cryptogram);
                ProtoAdapter.STRING.encodeWithTag(writer, 7, value.cardholder_verification_method);
                ProtoAdapter.STRING.encodeWithTag(writer, 9, value.transaction_status_information);
                ProtoAdapter.STRING.encodeWithTag(writer, 10, value.terminal_verification_results);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ReceiptDetails value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                ProtoAdapter.STRING.encodeWithTag(writer, 10, value.terminal_verification_results);
                ProtoAdapter.STRING.encodeWithTag(writer, 9, value.transaction_status_information);
                ProtoAdapter.STRING.encodeWithTag(writer, 7, value.cardholder_verification_method);
                ProtoAdapter.STRING.encodeWithTag(writer, 6, value.application_cryptogram);
                ProtoAdapter.STRING.encodeWithTag(writer, 5, value.application_preferred_name);
                ProtoAdapter.STRING.encodeWithTag(writer, 4, value.dedicated_file_name);
                ProtoAdapter.STRING.encodeWithTag(writer, 3, value.authorization_response_code);
                ProtoAdapter.STRING.encodeWithTag(writer, 2, value.authorization_code);
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.account_type);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ReceiptDetails redact(ReceiptDetails value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return ReceiptDetails.copy$default(value, null, null, null, null, null, null, null, null, null, ByteString.EMPTY, 511, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ReceiptDetails decode(ProtoReader reader) throws IOException {
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
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 2:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 3:
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 4:
                                strDecode4 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 5:
                                strDecode5 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 6:
                                strDecode6 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 7:
                                strDecode7 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 8:
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                            case 9:
                                strDecode8 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 10:
                                strDecode9 = ProtoAdapter.STRING.decode(reader);
                                break;
                        }
                    } else {
                        return new ReceiptDetails(strDecode, strDecode2, strDecode3, strDecode4, strDecode5, strDecode6, strDecode7, strDecode8, strDecode9, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
