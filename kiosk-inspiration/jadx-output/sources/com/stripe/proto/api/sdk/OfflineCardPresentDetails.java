package com.stripe.proto.api.sdk;

import androidx.core.graphics.TypefaceCompat;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.sun.jna.platform.win32.WinError;
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

/* JADX INFO: compiled from: OfflineCardPresentDetails.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u0000 \u001b2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001a\u001bBo\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\u000e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010¢\u0006\u0002\u0010\u0011Jp\u0010\u0012\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u0010J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\b\u0010\u0017\u001a\u00020\u0006H\u0016J\b\u0010\u0018\u001a\u00020\u0002H\u0016J\b\u0010\u0019\u001a\u00020\u0004H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails$Builder;", "brand", "", "exp_month", "", "exp_year", "last4", "read_method", "cardholder_name", "receipt_details", "Lcom/stripe/proto/api/sdk/ReceiptDetails;", "preferred_locales", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/sdk/ReceiptDetails;Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OfflineCardPresentDetails extends Message<OfflineCardPresentDetails, Builder> {
    public static final ProtoAdapter<OfflineCardPresentDetails> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 0, tag = 1)
    public final String brand;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "cardholderName", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 5, tag = 6)
    public final String cardholder_name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "expMonth", label = WireField.Label.OMIT_IDENTITY, redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 1, tag = 2)
    public final int exp_month;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "expYear", label = WireField.Label.OMIT_IDENTITY, redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 2, tag = 3)
    public final int exp_year;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 3, tag = 4)
    public final String last4;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "preferredLocales", label = WireField.Label.REPEATED, schemaIndex = 7, tag = 8)
    public final List<String> preferred_locales;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "readMethod", schemaIndex = 4, tag = 5)
    public final String read_method;

    @WireField(adapter = "com.stripe.proto.api.sdk.ReceiptDetails#ADAPTER", jsonName = "receipt", schemaIndex = 6, tag = 7)
    public final ReceiptDetails receipt_details;

    public OfflineCardPresentDetails() {
        this(null, 0, 0, null, null, null, null, null, null, 511, null);
    }

    public /* synthetic */ OfflineCardPresentDetails(String str, int i, int i2, String str2, String str3, String str4, ReceiptDetails receiptDetails, List list, ByteString byteString, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? null : str, (i3 & 2) != 0 ? 0 : i, (i3 & 4) != 0 ? 0 : i2, (i3 & 8) != 0 ? null : str2, (i3 & 16) != 0 ? null : str3, (i3 & 32) != 0 ? null : str4, (i3 & 64) != 0 ? null : receiptDetails, (i3 & 128) != 0 ? CollectionsKt.emptyList() : list, (i3 & 256) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OfflineCardPresentDetails(String str, int i, int i2, String str2, String str3, String str4, ReceiptDetails receiptDetails, List<String> preferred_locales, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(preferred_locales, "preferred_locales");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.brand = str;
        this.exp_month = i;
        this.exp_year = i2;
        this.last4 = str2;
        this.read_method = str3;
        this.cardholder_name = str4;
        this.receipt_details = receiptDetails;
        this.preferred_locales = Internal.immutableCopyOf("preferred_locales", preferred_locales);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.brand = this.brand;
        builder.exp_month = this.exp_month;
        builder.exp_year = this.exp_year;
        builder.last4 = this.last4;
        builder.read_method = this.read_method;
        builder.cardholder_name = this.cardholder_name;
        builder.receipt_details = this.receipt_details;
        builder.preferred_locales = this.preferred_locales;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof OfflineCardPresentDetails)) {
            return false;
        }
        OfflineCardPresentDetails offlineCardPresentDetails = (OfflineCardPresentDetails) other;
        return Intrinsics.areEqual(unknownFields(), offlineCardPresentDetails.unknownFields()) && Intrinsics.areEqual(this.brand, offlineCardPresentDetails.brand) && this.exp_month == offlineCardPresentDetails.exp_month && this.exp_year == offlineCardPresentDetails.exp_year && Intrinsics.areEqual(this.last4, offlineCardPresentDetails.last4) && Intrinsics.areEqual(this.read_method, offlineCardPresentDetails.read_method) && Intrinsics.areEqual(this.cardholder_name, offlineCardPresentDetails.cardholder_name) && Intrinsics.areEqual(this.receipt_details, offlineCardPresentDetails.receipt_details) && Intrinsics.areEqual(this.preferred_locales, offlineCardPresentDetails.preferred_locales);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.brand;
        int iHashCode2 = (((((iHashCode + (str != null ? str.hashCode() : 0)) * 37) + Integer.hashCode(this.exp_month)) * 37) + Integer.hashCode(this.exp_year)) * 37;
        String str2 = this.last4;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
        String str3 = this.read_method;
        int iHashCode4 = (iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 37;
        String str4 = this.cardholder_name;
        int iHashCode5 = (iHashCode4 + (str4 != null ? str4.hashCode() : 0)) * 37;
        ReceiptDetails receiptDetails = this.receipt_details;
        int iHashCode6 = ((iHashCode5 + (receiptDetails != null ? receiptDetails.hashCode() : 0)) * 37) + this.preferred_locales.hashCode();
        this.hashCode = iHashCode6;
        return iHashCode6;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.brand != null) {
            arrayList.add("brand=" + Internal.sanitize(this.brand));
        }
        ArrayList arrayList2 = arrayList;
        arrayList2.add("exp_month=██");
        arrayList2.add("exp_year=██");
        if (this.last4 != null) {
            arrayList2.add("last4=" + Internal.sanitize(this.last4));
        }
        if (this.read_method != null) {
            arrayList2.add("read_method=" + Internal.sanitize(this.read_method));
        }
        if (this.cardholder_name != null) {
            arrayList2.add("cardholder_name=██");
        }
        if (this.receipt_details != null) {
            arrayList2.add("receipt_details=" + this.receipt_details);
        }
        if (!this.preferred_locales.isEmpty()) {
            arrayList2.add("preferred_locales=" + Internal.sanitize(this.preferred_locales));
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "OfflineCardPresentDetails{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ OfflineCardPresentDetails copy$default(OfflineCardPresentDetails offlineCardPresentDetails, String str, int i, int i2, String str2, String str3, String str4, ReceiptDetails receiptDetails, List list, ByteString byteString, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = offlineCardPresentDetails.brand;
        }
        if ((i3 & 2) != 0) {
            i = offlineCardPresentDetails.exp_month;
        }
        if ((i3 & 4) != 0) {
            i2 = offlineCardPresentDetails.exp_year;
        }
        if ((i3 & 8) != 0) {
            str2 = offlineCardPresentDetails.last4;
        }
        if ((i3 & 16) != 0) {
            str3 = offlineCardPresentDetails.read_method;
        }
        if ((i3 & 32) != 0) {
            str4 = offlineCardPresentDetails.cardholder_name;
        }
        if ((i3 & 64) != 0) {
            receiptDetails = offlineCardPresentDetails.receipt_details;
        }
        if ((i3 & 128) != 0) {
            list = offlineCardPresentDetails.preferred_locales;
        }
        if ((i3 & 256) != 0) {
            byteString = offlineCardPresentDetails.unknownFields();
        }
        List list2 = list;
        ByteString byteString2 = byteString;
        String str5 = str4;
        ReceiptDetails receiptDetails2 = receiptDetails;
        String str6 = str3;
        int i4 = i2;
        return offlineCardPresentDetails.copy(str, i, i4, str2, str6, str5, receiptDetails2, list2, byteString2);
    }

    public final OfflineCardPresentDetails copy(String brand, int exp_month, int exp_year, String last4, String read_method, String cardholder_name, ReceiptDetails receipt_details, List<String> preferred_locales, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(preferred_locales, "preferred_locales");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new OfflineCardPresentDetails(brand, exp_month, exp_year, last4, read_method, cardholder_name, receipt_details, preferred_locales, unknownFields);
    }

    /* JADX INFO: compiled from: OfflineCardPresentDetails.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\bJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0014\u0010\u000b\u001a\u00020\u00002\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\fJ\u0010\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails;", "()V", "brand", "", "cardholder_name", "exp_month", "", "exp_year", "last4", "preferred_locales", "", "read_method", "receipt_details", "Lcom/stripe/proto/api/sdk/ReceiptDetails;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<OfflineCardPresentDetails, Builder> {
        public String brand;
        public String cardholder_name;
        public int exp_month;
        public int exp_year;
        public String last4;
        public List<String> preferred_locales = CollectionsKt.emptyList();
        public String read_method;
        public ReceiptDetails receipt_details;

        public final Builder brand(String brand) {
            this.brand = brand;
            return this;
        }

        public final Builder exp_month(int exp_month) {
            this.exp_month = exp_month;
            return this;
        }

        public final Builder exp_year(int exp_year) {
            this.exp_year = exp_year;
            return this;
        }

        public final Builder last4(String last4) {
            this.last4 = last4;
            return this;
        }

        public final Builder read_method(String read_method) {
            this.read_method = read_method;
            return this;
        }

        public final Builder cardholder_name(String cardholder_name) {
            this.cardholder_name = cardholder_name;
            return this;
        }

        public final Builder receipt_details(ReceiptDetails receipt_details) {
            this.receipt_details = receipt_details;
            return this;
        }

        public final Builder preferred_locales(List<String> preferred_locales) {
            Intrinsics.checkNotNullParameter(preferred_locales, "preferred_locales");
            Internal.checkElementsNotNull(preferred_locales);
            this.preferred_locales = preferred_locales;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public OfflineCardPresentDetails build() {
            return new OfflineCardPresentDetails(this.brand, this.exp_month, this.exp_year, this.last4, this.read_method, this.cardholder_name, this.receipt_details, this.preferred_locales, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: OfflineCardPresentDetails.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ OfflineCardPresentDetails build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(OfflineCardPresentDetails.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<OfflineCardPresentDetails>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.OfflineCardPresentDetails$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(OfflineCardPresentDetails value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size() + ProtoAdapter.STRING.encodedSizeWithTag(1, value.brand);
                if (value.exp_month != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(2, Integer.valueOf(value.exp_month));
                }
                if (value.exp_year != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(3, Integer.valueOf(value.exp_year));
                }
                return size + ProtoAdapter.STRING.encodedSizeWithTag(4, value.last4) + ProtoAdapter.STRING.encodedSizeWithTag(5, value.read_method) + ProtoAdapter.STRING.encodedSizeWithTag(6, value.cardholder_name) + ReceiptDetails.ADAPTER.encodedSizeWithTag(7, value.receipt_details) + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(8, value.preferred_locales);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, OfflineCardPresentDetails value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.brand);
                if (value.exp_month != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 2, Integer.valueOf(value.exp_month));
                }
                if (value.exp_year != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 3, Integer.valueOf(value.exp_year));
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 4, value.last4);
                ProtoAdapter.STRING.encodeWithTag(writer, 5, value.read_method);
                ProtoAdapter.STRING.encodeWithTag(writer, 6, value.cardholder_name);
                ReceiptDetails.ADAPTER.encodeWithTag(writer, 7, value.receipt_details);
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 8, value.preferred_locales);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, OfflineCardPresentDetails value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 8, value.preferred_locales);
                ReceiptDetails.ADAPTER.encodeWithTag(writer, 7, value.receipt_details);
                ProtoAdapter.STRING.encodeWithTag(writer, 6, value.cardholder_name);
                ProtoAdapter.STRING.encodeWithTag(writer, 5, value.read_method);
                ProtoAdapter.STRING.encodeWithTag(writer, 4, value.last4);
                if (value.exp_year != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 3, Integer.valueOf(value.exp_year));
                }
                if (value.exp_month != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 2, Integer.valueOf(value.exp_month));
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.brand);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public OfflineCardPresentDetails decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                String strDecode = null;
                String strDecode2 = null;
                String strDecode3 = null;
                ReceiptDetails receiptDetailsDecode = null;
                int iIntValue = 0;
                int iIntValue2 = 0;
                String strDecode4 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 2:
                                iIntValue = ProtoAdapter.INT32.decode(reader).intValue();
                                break;
                            case 3:
                                iIntValue2 = ProtoAdapter.INT32.decode(reader).intValue();
                                break;
                            case 4:
                                strDecode4 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 5:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 6:
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 7:
                                receiptDetailsDecode = ReceiptDetails.ADAPTER.decode(reader);
                                break;
                            case 8:
                                arrayList.add(ProtoAdapter.STRING.decode(reader));
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new OfflineCardPresentDetails(strDecode, iIntValue, iIntValue2, strDecode4, strDecode2, strDecode3, receiptDetailsDecode, arrayList, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public OfflineCardPresentDetails redact(OfflineCardPresentDetails value) {
                Intrinsics.checkNotNullParameter(value, "value");
                ReceiptDetails receiptDetails = value.receipt_details;
                return OfflineCardPresentDetails.copy$default(value, null, 0, 0, null, null, null, receiptDetails != null ? ReceiptDetails.ADAPTER.redact(receiptDetails) : null, null, ByteString.EMPTY, WinError.ERROR_INVALID_LIST_FORMAT, null);
            }
        };
    }
}
