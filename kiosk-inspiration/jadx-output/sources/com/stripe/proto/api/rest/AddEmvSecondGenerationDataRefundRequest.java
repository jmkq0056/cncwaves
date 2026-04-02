package com.stripe.proto.api.rest;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
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

/* JADX INFO: compiled from: AddEmvSecondGenerationDataRefundRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001b2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001a\u001bBg\u0012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fJm\u0010\u0011\u001a\u00020\u00002\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u0012J\u0013\u0010\u0013\u001a\u00020\u00072\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0002H\u0016J\b\u0010\u0019\u001a\u00020\u0005H\u0016R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0010R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0010R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0010R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest$Builder;", "expand", "", "", "is_approved", "", "second_generation_data", "rejection_reason", OfflineStorageConstantsKt.ID, "refund_application_fee", "reverse_transfer", "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lokio/ByteString;)V", "Ljava/lang/Boolean;", "copy", "(Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lokio/ByteString;)Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest;", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AddEmvSecondGenerationDataRefundRequest extends Message<AddEmvSecondGenerationDataRefundRequest, Builder> {
    public static final ProtoAdapter<AddEmvSecondGenerationDataRefundRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 1)
    public final List<String> expand;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 4, tag = 5)
    public final String id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "isApproved", schemaIndex = 1, tag = 2)
    public final Boolean is_approved;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "refundApplicationFee", schemaIndex = 5, tag = 6)
    public final Boolean refund_application_fee;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "rejectionReason", schemaIndex = 3, tag = 4)
    public final String rejection_reason;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "reverseTransfer", schemaIndex = 6, tag = 7)
    public final Boolean reverse_transfer;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "secondGenerationData", schemaIndex = 2, tag = 3)
    public final String second_generation_data;

    public AddEmvSecondGenerationDataRefundRequest() {
        this(null, null, null, null, null, null, null, null, 255, null);
    }

    public /* synthetic */ AddEmvSecondGenerationDataRefundRequest(List list, Boolean bool, String str, String str2, String str3, Boolean bool2, Boolean bool3, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? null : bool, (i & 4) != 0 ? null : str, (i & 8) != 0 ? null : str2, (i & 16) != 0 ? null : str3, (i & 32) != 0 ? null : bool2, (i & 64) != 0 ? null : bool3, (i & 128) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddEmvSecondGenerationDataRefundRequest(List<String> expand, Boolean bool, String str, String str2, String str3, Boolean bool2, Boolean bool3, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(expand, "expand");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.is_approved = bool;
        this.second_generation_data = str;
        this.rejection_reason = str2;
        this.id = str3;
        this.refund_application_fee = bool2;
        this.reverse_transfer = bool3;
        this.expand = Internal.immutableCopyOf("expand", expand);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.expand = this.expand;
        builder.is_approved = this.is_approved;
        builder.second_generation_data = this.second_generation_data;
        builder.rejection_reason = this.rejection_reason;
        builder.id = this.id;
        builder.refund_application_fee = this.refund_application_fee;
        builder.reverse_transfer = this.reverse_transfer;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof AddEmvSecondGenerationDataRefundRequest)) {
            return false;
        }
        AddEmvSecondGenerationDataRefundRequest addEmvSecondGenerationDataRefundRequest = (AddEmvSecondGenerationDataRefundRequest) other;
        return Intrinsics.areEqual(unknownFields(), addEmvSecondGenerationDataRefundRequest.unknownFields()) && Intrinsics.areEqual(this.expand, addEmvSecondGenerationDataRefundRequest.expand) && Intrinsics.areEqual(this.is_approved, addEmvSecondGenerationDataRefundRequest.is_approved) && Intrinsics.areEqual(this.second_generation_data, addEmvSecondGenerationDataRefundRequest.second_generation_data) && Intrinsics.areEqual(this.rejection_reason, addEmvSecondGenerationDataRefundRequest.rejection_reason) && Intrinsics.areEqual(this.id, addEmvSecondGenerationDataRefundRequest.id) && Intrinsics.areEqual(this.refund_application_fee, addEmvSecondGenerationDataRefundRequest.refund_application_fee) && Intrinsics.areEqual(this.reverse_transfer, addEmvSecondGenerationDataRefundRequest.reverse_transfer);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + this.expand.hashCode()) * 37;
        Boolean bool = this.is_approved;
        int iHashCode2 = (iHashCode + (bool != null ? bool.hashCode() : 0)) * 37;
        String str = this.second_generation_data;
        int iHashCode3 = (iHashCode2 + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.rejection_reason;
        int iHashCode4 = (iHashCode3 + (str2 != null ? str2.hashCode() : 0)) * 37;
        String str3 = this.id;
        int iHashCode5 = (iHashCode4 + (str3 != null ? str3.hashCode() : 0)) * 37;
        Boolean bool2 = this.refund_application_fee;
        int iHashCode6 = (iHashCode5 + (bool2 != null ? bool2.hashCode() : 0)) * 37;
        Boolean bool3 = this.reverse_transfer;
        int iHashCode7 = iHashCode6 + (bool3 != null ? bool3.hashCode() : 0);
        this.hashCode = iHashCode7;
        return iHashCode7;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (!this.expand.isEmpty()) {
            arrayList.add("expand=" + Internal.sanitize(this.expand));
        }
        if (this.is_approved != null) {
            arrayList.add("is_approved=" + this.is_approved);
        }
        if (this.second_generation_data != null) {
            arrayList.add("second_generation_data=" + this.second_generation_data);
        }
        if (this.rejection_reason != null) {
            arrayList.add("rejection_reason=" + this.rejection_reason);
        }
        if (this.id != null) {
            arrayList.add("id=" + this.id);
        }
        if (this.refund_application_fee != null) {
            arrayList.add("refund_application_fee=" + this.refund_application_fee);
        }
        if (this.reverse_transfer != null) {
            arrayList.add("reverse_transfer=" + this.reverse_transfer);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "AddEmvSecondGenerationDataRefundRequest{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AddEmvSecondGenerationDataRefundRequest copy$default(AddEmvSecondGenerationDataRefundRequest addEmvSecondGenerationDataRefundRequest, List list, Boolean bool, String str, String str2, String str3, Boolean bool2, Boolean bool3, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            list = addEmvSecondGenerationDataRefundRequest.expand;
        }
        if ((i & 2) != 0) {
            bool = addEmvSecondGenerationDataRefundRequest.is_approved;
        }
        if ((i & 4) != 0) {
            str = addEmvSecondGenerationDataRefundRequest.second_generation_data;
        }
        if ((i & 8) != 0) {
            str2 = addEmvSecondGenerationDataRefundRequest.rejection_reason;
        }
        if ((i & 16) != 0) {
            str3 = addEmvSecondGenerationDataRefundRequest.id;
        }
        if ((i & 32) != 0) {
            bool2 = addEmvSecondGenerationDataRefundRequest.refund_application_fee;
        }
        if ((i & 64) != 0) {
            bool3 = addEmvSecondGenerationDataRefundRequest.reverse_transfer;
        }
        if ((i & 128) != 0) {
            byteString = addEmvSecondGenerationDataRefundRequest.unknownFields();
        }
        Boolean bool4 = bool3;
        ByteString byteString2 = byteString;
        String str4 = str3;
        Boolean bool5 = bool2;
        return addEmvSecondGenerationDataRefundRequest.copy(list, bool, str, str2, str4, bool5, bool4, byteString2);
    }

    public final AddEmvSecondGenerationDataRefundRequest copy(List<String> expand, Boolean is_approved, String second_generation_data, String rejection_reason, String id, Boolean refund_application_fee, Boolean reverse_transfer, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(expand, "expand");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new AddEmvSecondGenerationDataRefundRequest(expand, is_approved, second_generation_data, rejection_reason, id, refund_application_fee, reverse_transfer, unknownFields);
    }

    /* JADX INFO: compiled from: AddEmvSecondGenerationDataRefundRequest.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u0015\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\u0010J\u0015\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\u0010J\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0006J\u0015\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\u0010J\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006R\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\nR\u0016\u0010\u000b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\nR\u0014\u0010\f\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\nR\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest;", "()V", "expand", "", "", OfflineStorageConstantsKt.ID, "is_approved", "", "Ljava/lang/Boolean;", "refund_application_fee", "rejection_reason", "reverse_transfer", "second_generation_data", "build", "(Ljava/lang/Boolean;)Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest$Builder;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<AddEmvSecondGenerationDataRefundRequest, Builder> {
        public List<String> expand = CollectionsKt.emptyList();
        public String id;
        public Boolean is_approved;
        public Boolean refund_application_fee;
        public String rejection_reason;
        public Boolean reverse_transfer;
        public String second_generation_data;

        public final Builder expand(List<String> expand) {
            Intrinsics.checkNotNullParameter(expand, "expand");
            Internal.checkElementsNotNull(expand);
            this.expand = expand;
            return this;
        }

        public final Builder is_approved(Boolean is_approved) {
            this.is_approved = is_approved;
            return this;
        }

        public final Builder second_generation_data(String second_generation_data) {
            this.second_generation_data = second_generation_data;
            return this;
        }

        public final Builder rejection_reason(String rejection_reason) {
            this.rejection_reason = rejection_reason;
            return this;
        }

        public final Builder id(String id) {
            this.id = id;
            return this;
        }

        public final Builder refund_application_fee(Boolean refund_application_fee) {
            this.refund_application_fee = refund_application_fee;
            return this;
        }

        public final Builder reverse_transfer(Boolean reverse_transfer) {
            this.reverse_transfer = reverse_transfer;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public AddEmvSecondGenerationDataRefundRequest build() {
            return new AddEmvSecondGenerationDataRefundRequest(this.expand, this.is_approved, this.second_generation_data, this.rejection_reason, this.id, this.refund_application_fee, this.reverse_transfer, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: AddEmvSecondGenerationDataRefundRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ AddEmvSecondGenerationDataRefundRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AddEmvSecondGenerationDataRefundRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<AddEmvSecondGenerationDataRefundRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.AddEmvSecondGenerationDataRefundRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(AddEmvSecondGenerationDataRefundRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size() + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(1, value.expand);
                if (value.is_approved != null) {
                    size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(2, value.is_approved);
                }
                if (value.second_generation_data != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.second_generation_data);
                }
                if (value.rejection_reason != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(4, value.rejection_reason);
                }
                if (value.id != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(5, value.id);
                }
                if (value.refund_application_fee != null) {
                    size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(6, value.refund_application_fee);
                }
                return value.reverse_transfer != null ? size + ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(7, value.reverse_transfer) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, AddEmvSecondGenerationDataRefundRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 1, value.expand);
                if (value.is_approved != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 2, value.is_approved);
                }
                if (value.second_generation_data != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.second_generation_data);
                }
                if (value.rejection_reason != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.rejection_reason);
                }
                if (value.id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.id);
                }
                if (value.refund_application_fee != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 6, value.refund_application_fee);
                }
                if (value.reverse_transfer != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 7, value.reverse_transfer);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, AddEmvSecondGenerationDataRefundRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.reverse_transfer != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 7, value.reverse_transfer);
                }
                if (value.refund_application_fee != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 6, value.refund_application_fee);
                }
                if (value.id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.id);
                }
                if (value.rejection_reason != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.rejection_reason);
                }
                if (value.second_generation_data != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.second_generation_data);
                }
                if (value.is_approved != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 2, value.is_approved);
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 1, value.expand);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public AddEmvSecondGenerationDataRefundRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                Boolean boolDecode = null;
                String strDecode = null;
                String strDecode2 = null;
                String strDecode3 = null;
                Boolean boolDecode2 = null;
                Boolean boolDecode3 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                arrayList.add(ProtoAdapter.STRING.decode(reader));
                                break;
                            case 2:
                                boolDecode = ProtoAdapter.BOOL_VALUE.decode(reader);
                                break;
                            case 3:
                                strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 4:
                                strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 5:
                                strDecode3 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 6:
                                boolDecode2 = ProtoAdapter.BOOL_VALUE.decode(reader);
                                break;
                            case 7:
                                boolDecode3 = ProtoAdapter.BOOL_VALUE.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new AddEmvSecondGenerationDataRefundRequest(arrayList, boolDecode, strDecode, strDecode2, strDecode3, boolDecode2, boolDecode3, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public AddEmvSecondGenerationDataRefundRequest redact(AddEmvSecondGenerationDataRefundRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                Boolean bool = value.is_approved;
                Boolean boolRedact = bool != null ? ProtoAdapter.BOOL_VALUE.redact(bool) : null;
                String str = value.second_generation_data;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                String str2 = value.rejection_reason;
                String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                String str3 = value.id;
                String strRedact3 = str3 != null ? ProtoAdapter.STRING_VALUE.redact(str3) : null;
                Boolean bool2 = value.refund_application_fee;
                Boolean boolRedact2 = bool2 != null ? ProtoAdapter.BOOL_VALUE.redact(bool2) : null;
                Boolean bool3 = value.reverse_transfer;
                return AddEmvSecondGenerationDataRefundRequest.copy$default(value, null, boolRedact, strRedact, strRedact2, strRedact3, boolRedact2, bool3 != null ? ProtoAdapter.BOOL_VALUE.redact(bool3) : null, ByteString.EMPTY, 1, null);
            }
        };
    }
}
