package com.stripe.proto.api.rest;

import androidx.core.app.NotificationCompat;
import androidx.core.graphics.TypefaceCompat;
import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.squareup.wire.EnumAdapter;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.api.rest.UpdateSdiActionRequest;
import io.ktor.http.LinkHeader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u0000 \u001e2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0004\u001d\u001e\u001f B\u008b\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012¢\u0006\u0002\u0010\u0013J\u008c\u0001\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u0012J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u0002H\u0016J\b\u0010\u001c\u001a\u00020\u0004H\u0016R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;", OfflineStorageConstantsKt.ID, "", NotificationCompat.CATEGORY_STATUS, "failure_code", "failure_message", "generated_card", "refund_id", "payment_method_id", "inputs", "", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;", "routing_info", "surcharge", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "Input", "Surcharge", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UpdateSdiActionRequest extends Message<UpdateSdiActionRequest, Builder> {
    public static final ProtoAdapter<UpdateSdiActionRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "failureCode", schemaIndex = 2, tag = 3)
    public final String failure_code;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "failureMessage", schemaIndex = 3, tag = 4)
    public final String failure_message;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "generatedCard", schemaIndex = 4, tag = 5)
    public final String generated_card;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 0, tag = 1)
    public final String id;

    @WireField(adapter = "com.stripe.proto.api.rest.UpdateSdiActionRequest$Input#ADAPTER", label = WireField.Label.REPEATED, schemaIndex = 7, tag = 8)
    public final List<Input> inputs;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "paymentMethodId", schemaIndex = 6, tag = 7)
    public final String payment_method_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "refundId", schemaIndex = 5, tag = 6)
    public final String refund_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "routingInfo", schemaIndex = 8, tag = 9)
    public final String routing_info;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 1, tag = 2)
    public final String status;

    @WireField(adapter = "com.stripe.proto.api.rest.UpdateSdiActionRequest$Surcharge#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 9, tag = 10)
    public final Surcharge surcharge;

    public UpdateSdiActionRequest() {
        this(null, null, null, null, null, null, null, null, null, null, null, 2047, null);
    }

    public /* synthetic */ UpdateSdiActionRequest(String str, String str2, String str3, String str4, String str5, String str6, String str7, List list, String str8, Surcharge surcharge, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : str5, (i & 32) != 0 ? null : str6, (i & 64) != 0 ? null : str7, (i & 128) != 0 ? CollectionsKt.emptyList() : list, (i & 256) != 0 ? null : str8, (i & 512) != 0 ? null : surcharge, (i & 1024) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateSdiActionRequest(String str, String str2, String str3, String str4, String str5, String str6, String str7, List<Input> inputs, String str8, Surcharge surcharge, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(inputs, "inputs");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.id = str;
        this.status = str2;
        this.failure_code = str3;
        this.failure_message = str4;
        this.generated_card = str5;
        this.refund_id = str6;
        this.payment_method_id = str7;
        this.routing_info = str8;
        this.surcharge = surcharge;
        this.inputs = Internal.immutableCopyOf("inputs", inputs);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.id = this.id;
        builder.status = this.status;
        builder.failure_code = this.failure_code;
        builder.failure_message = this.failure_message;
        builder.generated_card = this.generated_card;
        builder.refund_id = this.refund_id;
        builder.payment_method_id = this.payment_method_id;
        builder.inputs = this.inputs;
        builder.routing_info = this.routing_info;
        builder.surcharge = this.surcharge;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof UpdateSdiActionRequest)) {
            return false;
        }
        UpdateSdiActionRequest updateSdiActionRequest = (UpdateSdiActionRequest) other;
        return Intrinsics.areEqual(unknownFields(), updateSdiActionRequest.unknownFields()) && Intrinsics.areEqual(this.id, updateSdiActionRequest.id) && Intrinsics.areEqual(this.status, updateSdiActionRequest.status) && Intrinsics.areEqual(this.failure_code, updateSdiActionRequest.failure_code) && Intrinsics.areEqual(this.failure_message, updateSdiActionRequest.failure_message) && Intrinsics.areEqual(this.generated_card, updateSdiActionRequest.generated_card) && Intrinsics.areEqual(this.refund_id, updateSdiActionRequest.refund_id) && Intrinsics.areEqual(this.payment_method_id, updateSdiActionRequest.payment_method_id) && Intrinsics.areEqual(this.inputs, updateSdiActionRequest.inputs) && Intrinsics.areEqual(this.routing_info, updateSdiActionRequest.routing_info) && Intrinsics.areEqual(this.surcharge, updateSdiActionRequest.surcharge);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.id;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.status;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
        String str3 = this.failure_code;
        int iHashCode4 = (iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 37;
        String str4 = this.failure_message;
        int iHashCode5 = (iHashCode4 + (str4 != null ? str4.hashCode() : 0)) * 37;
        String str5 = this.generated_card;
        int iHashCode6 = (iHashCode5 + (str5 != null ? str5.hashCode() : 0)) * 37;
        String str6 = this.refund_id;
        int iHashCode7 = (iHashCode6 + (str6 != null ? str6.hashCode() : 0)) * 37;
        String str7 = this.payment_method_id;
        int iHashCode8 = (((iHashCode7 + (str7 != null ? str7.hashCode() : 0)) * 37) + this.inputs.hashCode()) * 37;
        String str8 = this.routing_info;
        int iHashCode9 = (iHashCode8 + (str8 != null ? str8.hashCode() : 0)) * 37;
        Surcharge surcharge = this.surcharge;
        int iHashCode10 = iHashCode9 + (surcharge != null ? surcharge.hashCode() : 0);
        this.hashCode = iHashCode10;
        return iHashCode10;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.id != null) {
            arrayList.add("id=" + this.id);
        }
        if (this.status != null) {
            arrayList.add("status=" + this.status);
        }
        if (this.failure_code != null) {
            arrayList.add("failure_code=" + this.failure_code);
        }
        if (this.failure_message != null) {
            arrayList.add("failure_message=" + this.failure_message);
        }
        if (this.generated_card != null) {
            arrayList.add("generated_card=" + this.generated_card);
        }
        if (this.refund_id != null) {
            arrayList.add("refund_id=" + this.refund_id);
        }
        if (this.payment_method_id != null) {
            arrayList.add("payment_method_id=" + this.payment_method_id);
        }
        if (!this.inputs.isEmpty()) {
            arrayList.add("inputs=" + this.inputs);
        }
        if (this.routing_info != null) {
            arrayList.add("routing_info=" + this.routing_info);
        }
        if (this.surcharge != null) {
            arrayList.add("surcharge=" + this.surcharge);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "UpdateSdiActionRequest{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ UpdateSdiActionRequest copy$default(UpdateSdiActionRequest updateSdiActionRequest, String str, String str2, String str3, String str4, String str5, String str6, String str7, List list, String str8, Surcharge surcharge, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = updateSdiActionRequest.id;
        }
        if ((i & 2) != 0) {
            str2 = updateSdiActionRequest.status;
        }
        if ((i & 4) != 0) {
            str3 = updateSdiActionRequest.failure_code;
        }
        if ((i & 8) != 0) {
            str4 = updateSdiActionRequest.failure_message;
        }
        if ((i & 16) != 0) {
            str5 = updateSdiActionRequest.generated_card;
        }
        if ((i & 32) != 0) {
            str6 = updateSdiActionRequest.refund_id;
        }
        if ((i & 64) != 0) {
            str7 = updateSdiActionRequest.payment_method_id;
        }
        if ((i & 128) != 0) {
            list = updateSdiActionRequest.inputs;
        }
        if ((i & 256) != 0) {
            str8 = updateSdiActionRequest.routing_info;
        }
        if ((i & 512) != 0) {
            surcharge = updateSdiActionRequest.surcharge;
        }
        if ((i & 1024) != 0) {
            byteString = updateSdiActionRequest.unknownFields();
        }
        Surcharge surcharge2 = surcharge;
        ByteString byteString2 = byteString;
        List list2 = list;
        String str9 = str8;
        String str10 = str6;
        String str11 = str7;
        String str12 = str5;
        String str13 = str3;
        return updateSdiActionRequest.copy(str, str2, str13, str4, str12, str10, str11, list2, str9, surcharge2, byteString2);
    }

    public final UpdateSdiActionRequest copy(String id, String status, String failure_code, String failure_message, String generated_card, String refund_id, String payment_method_id, List<Input> inputs, String routing_info, Surcharge surcharge, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(inputs, "inputs");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new UpdateSdiActionRequest(id, status, failure_code, failure_message, generated_card, refund_id, payment_method_id, inputs, routing_info, surcharge, unknownFields);
    }

    /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0005J\u0014\u0010\t\u001a\u00020\u00002\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;", "()V", "failure_code", "", "failure_message", "generated_card", OfflineStorageConstantsKt.ID, "inputs", "", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;", "payment_method_id", "refund_id", "routing_info", NotificationCompat.CATEGORY_STATUS, "surcharge", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<UpdateSdiActionRequest, Builder> {
        public String failure_code;
        public String failure_message;
        public String generated_card;
        public String id;
        public List<Input> inputs = CollectionsKt.emptyList();
        public String payment_method_id;
        public String refund_id;
        public String routing_info;
        public String status;
        public Surcharge surcharge;

        public final Builder id(String id) {
            this.id = id;
            return this;
        }

        public final Builder status(String status) {
            this.status = status;
            return this;
        }

        public final Builder failure_code(String failure_code) {
            this.failure_code = failure_code;
            return this;
        }

        public final Builder failure_message(String failure_message) {
            this.failure_message = failure_message;
            return this;
        }

        public final Builder generated_card(String generated_card) {
            this.generated_card = generated_card;
            return this;
        }

        public final Builder refund_id(String refund_id) {
            this.refund_id = refund_id;
            return this;
        }

        public final Builder payment_method_id(String payment_method_id) {
            this.payment_method_id = payment_method_id;
            return this;
        }

        public final Builder inputs(List<Input> inputs) {
            Intrinsics.checkNotNullParameter(inputs, "inputs");
            Internal.checkElementsNotNull(inputs);
            this.inputs = inputs;
            return this;
        }

        public final Builder routing_info(String routing_info) {
            this.routing_info = routing_info;
            return this;
        }

        public final Builder surcharge(Surcharge surcharge) {
            this.surcharge = surcharge;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public UpdateSdiActionRequest build() {
            return new UpdateSdiActionRequest(this.id, this.status, this.failure_code, this.failure_message, this.generated_card, this.refund_id, this.payment_method_id, this.inputs, this.routing_info, this.surcharge, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ UpdateSdiActionRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(UpdateSdiActionRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<UpdateSdiActionRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.UpdateSdiActionRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(UpdateSdiActionRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.id != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.id);
                }
                if (value.status != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.status);
                }
                if (value.failure_code != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.failure_code);
                }
                if (value.failure_message != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(4, value.failure_message);
                }
                if (value.generated_card != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(5, value.generated_card);
                }
                if (value.refund_id != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(6, value.refund_id);
                }
                if (value.payment_method_id != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(7, value.payment_method_id);
                }
                int iEncodedSizeWithTag = size + UpdateSdiActionRequest.Input.ADAPTER.asRepeated().encodedSizeWithTag(8, value.inputs);
                if (value.routing_info != null) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(9, value.routing_info);
                }
                return value.surcharge != null ? iEncodedSizeWithTag + UpdateSdiActionRequest.Surcharge.ADAPTER.encodedSizeWithTag(10, value.surcharge) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, UpdateSdiActionRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.id);
                }
                if (value.status != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.status);
                }
                if (value.failure_code != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.failure_code);
                }
                if (value.failure_message != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.failure_message);
                }
                if (value.generated_card != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.generated_card);
                }
                if (value.refund_id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 6, value.refund_id);
                }
                if (value.payment_method_id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 7, value.payment_method_id);
                }
                UpdateSdiActionRequest.Input.ADAPTER.asRepeated().encodeWithTag(writer, 8, value.inputs);
                if (value.routing_info != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 9, value.routing_info);
                }
                if (value.surcharge != null) {
                    UpdateSdiActionRequest.Surcharge.ADAPTER.encodeWithTag(writer, 10, value.surcharge);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, UpdateSdiActionRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.surcharge != null) {
                    UpdateSdiActionRequest.Surcharge.ADAPTER.encodeWithTag(writer, 10, value.surcharge);
                }
                if (value.routing_info != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 9, value.routing_info);
                }
                UpdateSdiActionRequest.Input.ADAPTER.asRepeated().encodeWithTag(writer, 8, value.inputs);
                if (value.payment_method_id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 7, value.payment_method_id);
                }
                if (value.refund_id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 6, value.refund_id);
                }
                if (value.generated_card != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.generated_card);
                }
                if (value.failure_message != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.failure_message);
                }
                if (value.failure_code != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.failure_code);
                }
                if (value.status != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.status);
                }
                if (value.id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.id);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public UpdateSdiActionRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                String strDecode = null;
                String strDecode2 = null;
                String strDecode3 = null;
                String strDecode4 = null;
                String strDecode5 = null;
                String strDecode6 = null;
                String strDecode7 = null;
                String strDecode8 = null;
                UpdateSdiActionRequest.Surcharge surchargeDecode = null;
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
                                arrayList.add(UpdateSdiActionRequest.Input.ADAPTER.decode(reader));
                                break;
                            case 9:
                                strDecode8 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 10:
                                surchargeDecode = UpdateSdiActionRequest.Surcharge.ADAPTER.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new UpdateSdiActionRequest(strDecode, strDecode2, strDecode3, strDecode4, strDecode5, strDecode6, strDecode7, arrayList, strDecode8, surchargeDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public UpdateSdiActionRequest redact(UpdateSdiActionRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                String str = value.id;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                String str2 = value.status;
                String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                String str3 = value.failure_code;
                String strRedact3 = str3 != null ? ProtoAdapter.STRING_VALUE.redact(str3) : null;
                String str4 = value.failure_message;
                String strRedact4 = str4 != null ? ProtoAdapter.STRING_VALUE.redact(str4) : null;
                String str5 = value.generated_card;
                String strRedact5 = str5 != null ? ProtoAdapter.STRING_VALUE.redact(str5) : null;
                String str6 = value.refund_id;
                String strRedact6 = str6 != null ? ProtoAdapter.STRING_VALUE.redact(str6) : null;
                String str7 = value.payment_method_id;
                String strRedact7 = str7 != null ? ProtoAdapter.STRING_VALUE.redact(str7) : null;
                List<UpdateSdiActionRequest.Input> listM361redactElements = Internal.m361redactElements(value.inputs, UpdateSdiActionRequest.Input.ADAPTER);
                String str8 = value.routing_info;
                String strRedact8 = str8 != null ? ProtoAdapter.STRING_VALUE.redact(str8) : null;
                UpdateSdiActionRequest.Surcharge surcharge = value.surcharge;
                return value.copy(strRedact, strRedact2, strRedact3, strRedact4, strRedact5, strRedact6, strRedact7, listM361redactElements, strRedact8, surcharge != null ? UpdateSdiActionRequest.Surcharge.ADAPTER.redact(surcharge) : null, ByteString.EMPTY);
            }
        };
    }

    /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
    @Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\u0018\u0000 &2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u000b%&'()*+,-./B\u0091\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\u000e\b\u0002\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u001a¢\u0006\u0002\u0010\u001bJ\u0092\u0001\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u000e\b\u0002\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\b\b\u0002\u0010\u0019\u001a\u00020\u001aJ\u0013\u0010\u001d\u001a\u00020\b2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0096\u0002J\b\u0010 \u001a\u00020!H\u0016J\b\u0010\"\u001a\u00020\u0002H\u0016J\b\u0010#\u001a\u00020$H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00180\u00178\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u00060"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;", "type", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;", "custom_text", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;", "required", "", "skipped", "selection", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;", "signature", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;", "email", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;", PrinterTextParser.ATTR_BARCODE_TEXT_POSITION, "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;", "numeric", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;", "phone", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;", "toggles", "", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;ZZLcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "CustomText", "Email", "InputType", "Numeric", "Phone", "Selection", "Signature", "Text", "Toggle", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Input extends Message<Input, Builder> {
        public static final ProtoAdapter<Input> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.proto.api.rest.UpdateSdiActionRequest$Input$CustomText#ADAPTER", jsonName = "customText", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final CustomText custom_text;

        @WireField(adapter = "com.stripe.proto.api.rest.UpdateSdiActionRequest$Input$Email#ADAPTER", oneofName = "type_specific_fields", schemaIndex = 6, tag = 7)
        public final Email email;

        @WireField(adapter = "com.stripe.proto.api.rest.UpdateSdiActionRequest$Input$Numeric#ADAPTER", oneofName = "type_specific_fields", schemaIndex = 8, tag = 9)
        public final Numeric numeric;

        @WireField(adapter = "com.stripe.proto.api.rest.UpdateSdiActionRequest$Input$Phone#ADAPTER", oneofName = "type_specific_fields", schemaIndex = 9, tag = 10)
        public final Phone phone;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
        public final boolean required;

        @WireField(adapter = "com.stripe.proto.api.rest.UpdateSdiActionRequest$Input$Selection#ADAPTER", oneofName = "type_specific_fields", schemaIndex = 4, tag = 5)
        public final Selection selection;

        @WireField(adapter = "com.stripe.proto.api.rest.UpdateSdiActionRequest$Input$Signature#ADAPTER", oneofName = "type_specific_fields", schemaIndex = 5, tag = 6)
        public final Signature signature;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
        public final boolean skipped;

        @WireField(adapter = "com.stripe.proto.api.rest.UpdateSdiActionRequest$Input$Text#ADAPTER", oneofName = "type_specific_fields", schemaIndex = 7, tag = 8)
        public final Text text;

        @WireField(adapter = "com.stripe.proto.api.rest.UpdateSdiActionRequest$Input$Toggle#ADAPTER", label = WireField.Label.REPEATED, schemaIndex = 10, tag = 11)
        public final List<Toggle> toggles;

        @WireField(adapter = "com.stripe.proto.api.rest.UpdateSdiActionRequest$Input$InputType#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final InputType type;

        public Input() {
            this(null, null, false, false, null, null, null, null, null, null, null, null, 4095, null);
        }

        public /* synthetic */ Input(InputType inputType, CustomText customText, boolean z, boolean z2, Selection selection, Signature signature, Email email, Text text, Numeric numeric, Phone phone, List list, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? InputType.INPUT_TYPE_INVALID : inputType, (i & 2) != 0 ? null : customText, (i & 4) != 0 ? false : z, (i & 8) == 0 ? z2 : false, (i & 16) != 0 ? null : selection, (i & 32) != 0 ? null : signature, (i & 64) != 0 ? null : email, (i & 128) != 0 ? null : text, (i & 256) != 0 ? null : numeric, (i & 512) == 0 ? phone : null, (i & 1024) != 0 ? CollectionsKt.emptyList() : list, (i & 2048) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Input(InputType type, CustomText customText, boolean z, boolean z2, Selection selection, Signature signature, Email email, Text text, Numeric numeric, Phone phone, List<Toggle> toggles, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(toggles, "toggles");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.type = type;
            this.custom_text = customText;
            this.required = z;
            this.skipped = z2;
            this.selection = selection;
            this.signature = signature;
            this.email = email;
            this.text = text;
            this.numeric = numeric;
            this.phone = phone;
            this.toggles = Internal.immutableCopyOf("toggles", toggles);
            if (Internal.countNonNull(selection, signature, email, text, numeric, phone) > 1) {
                throw new IllegalArgumentException("At most one of selection, signature, email, text, numeric, phone may be non-null".toString());
            }
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.type = this.type;
            builder.custom_text = this.custom_text;
            builder.required = this.required;
            builder.skipped = this.skipped;
            builder.selection = this.selection;
            builder.signature = this.signature;
            builder.email = this.email;
            builder.text = this.text;
            builder.numeric = this.numeric;
            builder.phone = this.phone;
            builder.toggles = this.toggles;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof Input)) {
                return false;
            }
            Input input = (Input) other;
            return Intrinsics.areEqual(unknownFields(), input.unknownFields()) && this.type == input.type && Intrinsics.areEqual(this.custom_text, input.custom_text) && this.required == input.required && this.skipped == input.skipped && Intrinsics.areEqual(this.selection, input.selection) && Intrinsics.areEqual(this.signature, input.signature) && Intrinsics.areEqual(this.email, input.email) && Intrinsics.areEqual(this.text, input.text) && Intrinsics.areEqual(this.numeric, input.numeric) && Intrinsics.areEqual(this.phone, input.phone) && Intrinsics.areEqual(this.toggles, input.toggles);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = ((unknownFields().hashCode() * 37) + this.type.hashCode()) * 37;
            CustomText customText = this.custom_text;
            int iHashCode2 = (((((iHashCode + (customText != null ? customText.hashCode() : 0)) * 37) + Boolean.hashCode(this.required)) * 37) + Boolean.hashCode(this.skipped)) * 37;
            Selection selection = this.selection;
            int iHashCode3 = (iHashCode2 + (selection != null ? selection.hashCode() : 0)) * 37;
            Signature signature = this.signature;
            int iHashCode4 = (iHashCode3 + (signature != null ? signature.hashCode() : 0)) * 37;
            Email email = this.email;
            int iHashCode5 = (iHashCode4 + (email != null ? email.hashCode() : 0)) * 37;
            Text text = this.text;
            int iHashCode6 = (iHashCode5 + (text != null ? text.hashCode() : 0)) * 37;
            Numeric numeric = this.numeric;
            int iHashCode7 = (iHashCode6 + (numeric != null ? numeric.hashCode() : 0)) * 37;
            Phone phone = this.phone;
            int iHashCode8 = ((iHashCode7 + (phone != null ? phone.hashCode() : 0)) * 37) + this.toggles.hashCode();
            this.hashCode = iHashCode8;
            return iHashCode8;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("type=" + this.type);
            if (this.custom_text != null) {
                arrayList2.add("custom_text=" + this.custom_text);
            }
            arrayList2.add("required=" + this.required);
            arrayList2.add("skipped=" + this.skipped);
            if (this.selection != null) {
                arrayList2.add("selection=" + this.selection);
            }
            if (this.signature != null) {
                arrayList2.add("signature=" + this.signature);
            }
            if (this.email != null) {
                arrayList2.add("email=" + this.email);
            }
            if (this.text != null) {
                arrayList2.add("text=" + this.text);
            }
            if (this.numeric != null) {
                arrayList2.add("numeric=" + this.numeric);
            }
            if (this.phone != null) {
                arrayList2.add("phone=" + this.phone);
            }
            if (!this.toggles.isEmpty()) {
                arrayList2.add("toggles=" + this.toggles);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "Input{", "}", 0, null, null, 56, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Input copy$default(Input input, InputType inputType, CustomText customText, boolean z, boolean z2, Selection selection, Signature signature, Email email, Text text, Numeric numeric, Phone phone, List list, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                inputType = input.type;
            }
            if ((i & 2) != 0) {
                customText = input.custom_text;
            }
            if ((i & 4) != 0) {
                z = input.required;
            }
            if ((i & 8) != 0) {
                z2 = input.skipped;
            }
            if ((i & 16) != 0) {
                selection = input.selection;
            }
            if ((i & 32) != 0) {
                signature = input.signature;
            }
            if ((i & 64) != 0) {
                email = input.email;
            }
            if ((i & 128) != 0) {
                text = input.text;
            }
            if ((i & 256) != 0) {
                numeric = input.numeric;
            }
            if ((i & 512) != 0) {
                phone = input.phone;
            }
            if ((i & 1024) != 0) {
                list = input.toggles;
            }
            if ((i & 2048) != 0) {
                byteString = input.unknownFields();
            }
            List list2 = list;
            ByteString byteString2 = byteString;
            Numeric numeric2 = numeric;
            Phone phone2 = phone;
            Email email2 = email;
            Text text2 = text;
            Selection selection2 = selection;
            Signature signature2 = signature;
            return input.copy(inputType, customText, z, z2, selection2, signature2, email2, text2, numeric2, phone2, list2, byteString2);
        }

        public final Input copy(InputType type, CustomText custom_text, boolean required, boolean skipped, Selection selection, Signature signature, Email email, Text text, Numeric numeric, Phone phone, List<Toggle> toggles, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(toggles, "toggles");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new Input(type, custom_text, required, skipped, selection, signature, email, text, numeric, phone, toggles, unknownFields);
        }

        /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
        @Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u001a\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\rJ\u0010\u0010\u0013\u001a\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u0014\u0010\u0015\u001a\u00020\u00002\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0019R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u00020\u00198\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;", "()V", "custom_text", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;", "email", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;", "numeric", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;", "phone", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;", "required", "", "selection", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;", "signature", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;", "skipped", PrinterTextParser.ATTR_BARCODE_TEXT_POSITION, "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;", "toggles", "", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;", "type", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<Input, Builder> {
            public CustomText custom_text;
            public Email email;
            public Numeric numeric;
            public Phone phone;
            public boolean required;
            public Selection selection;
            public Signature signature;
            public boolean skipped;
            public Text text;
            public InputType type = InputType.INPUT_TYPE_INVALID;
            public List<Toggle> toggles = CollectionsKt.emptyList();

            public final Builder type(InputType type) {
                Intrinsics.checkNotNullParameter(type, "type");
                this.type = type;
                return this;
            }

            public final Builder custom_text(CustomText custom_text) {
                this.custom_text = custom_text;
                return this;
            }

            public final Builder required(boolean required) {
                this.required = required;
                return this;
            }

            public final Builder skipped(boolean skipped) {
                this.skipped = skipped;
                return this;
            }

            public final Builder toggles(List<Toggle> toggles) {
                Intrinsics.checkNotNullParameter(toggles, "toggles");
                Internal.checkElementsNotNull(toggles);
                this.toggles = toggles;
                return this;
            }

            public final Builder selection(Selection selection) {
                this.selection = selection;
                this.signature = null;
                this.email = null;
                this.text = null;
                this.numeric = null;
                this.phone = null;
                return this;
            }

            public final Builder signature(Signature signature) {
                this.signature = signature;
                this.selection = null;
                this.email = null;
                this.text = null;
                this.numeric = null;
                this.phone = null;
                return this;
            }

            public final Builder email(Email email) {
                this.email = email;
                this.selection = null;
                this.signature = null;
                this.text = null;
                this.numeric = null;
                this.phone = null;
                return this;
            }

            public final Builder text(Text text) {
                this.text = text;
                this.selection = null;
                this.signature = null;
                this.email = null;
                this.numeric = null;
                this.phone = null;
                return this;
            }

            public final Builder numeric(Numeric numeric) {
                this.numeric = numeric;
                this.selection = null;
                this.signature = null;
                this.email = null;
                this.text = null;
                this.phone = null;
                return this;
            }

            public final Builder phone(Phone phone) {
                this.phone = phone;
                this.selection = null;
                this.signature = null;
                this.email = null;
                this.text = null;
                this.numeric = null;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public Input build() {
                return new Input(this.type, this.custom_text, this.required, this.skipped, this.selection, this.signature, this.email, this.text, this.numeric, this.phone, this.toggles, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Input build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Input.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<Input>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.UpdateSdiActionRequest$Input$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(UpdateSdiActionRequest.Input value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.type != UpdateSdiActionRequest.Input.InputType.INPUT_TYPE_INVALID) {
                        size += UpdateSdiActionRequest.Input.InputType.ADAPTER.encodedSizeWithTag(1, value.type);
                    }
                    if (value.custom_text != null) {
                        size += UpdateSdiActionRequest.Input.CustomText.ADAPTER.encodedSizeWithTag(2, value.custom_text);
                    }
                    if (value.required) {
                        size += ProtoAdapter.BOOL.encodedSizeWithTag(3, Boolean.valueOf(value.required));
                    }
                    if (value.skipped) {
                        size += ProtoAdapter.BOOL.encodedSizeWithTag(4, Boolean.valueOf(value.skipped));
                    }
                    return size + UpdateSdiActionRequest.Input.Selection.ADAPTER.encodedSizeWithTag(5, value.selection) + UpdateSdiActionRequest.Input.Signature.ADAPTER.encodedSizeWithTag(6, value.signature) + UpdateSdiActionRequest.Input.Email.ADAPTER.encodedSizeWithTag(7, value.email) + UpdateSdiActionRequest.Input.Text.ADAPTER.encodedSizeWithTag(8, value.text) + UpdateSdiActionRequest.Input.Numeric.ADAPTER.encodedSizeWithTag(9, value.numeric) + UpdateSdiActionRequest.Input.Phone.ADAPTER.encodedSizeWithTag(10, value.phone) + UpdateSdiActionRequest.Input.Toggle.ADAPTER.asRepeated().encodedSizeWithTag(11, value.toggles);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, UpdateSdiActionRequest.Input value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.type != UpdateSdiActionRequest.Input.InputType.INPUT_TYPE_INVALID) {
                        UpdateSdiActionRequest.Input.InputType.ADAPTER.encodeWithTag(writer, 1, value.type);
                    }
                    if (value.custom_text != null) {
                        UpdateSdiActionRequest.Input.CustomText.ADAPTER.encodeWithTag(writer, 2, value.custom_text);
                    }
                    if (value.required) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 3, Boolean.valueOf(value.required));
                    }
                    if (value.skipped) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 4, Boolean.valueOf(value.skipped));
                    }
                    UpdateSdiActionRequest.Input.Toggle.ADAPTER.asRepeated().encodeWithTag(writer, 11, value.toggles);
                    UpdateSdiActionRequest.Input.Selection.ADAPTER.encodeWithTag(writer, 5, value.selection);
                    UpdateSdiActionRequest.Input.Signature.ADAPTER.encodeWithTag(writer, 6, value.signature);
                    UpdateSdiActionRequest.Input.Email.ADAPTER.encodeWithTag(writer, 7, value.email);
                    UpdateSdiActionRequest.Input.Text.ADAPTER.encodeWithTag(writer, 8, value.text);
                    UpdateSdiActionRequest.Input.Numeric.ADAPTER.encodeWithTag(writer, 9, value.numeric);
                    UpdateSdiActionRequest.Input.Phone.ADAPTER.encodeWithTag(writer, 10, value.phone);
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, UpdateSdiActionRequest.Input value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    UpdateSdiActionRequest.Input.Phone.ADAPTER.encodeWithTag(writer, 10, value.phone);
                    UpdateSdiActionRequest.Input.Numeric.ADAPTER.encodeWithTag(writer, 9, value.numeric);
                    UpdateSdiActionRequest.Input.Text.ADAPTER.encodeWithTag(writer, 8, value.text);
                    UpdateSdiActionRequest.Input.Email.ADAPTER.encodeWithTag(writer, 7, value.email);
                    UpdateSdiActionRequest.Input.Signature.ADAPTER.encodeWithTag(writer, 6, value.signature);
                    UpdateSdiActionRequest.Input.Selection.ADAPTER.encodeWithTag(writer, 5, value.selection);
                    UpdateSdiActionRequest.Input.Toggle.ADAPTER.asRepeated().encodeWithTag(writer, 11, value.toggles);
                    if (value.skipped) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 4, Boolean.valueOf(value.skipped));
                    }
                    if (value.required) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 3, Boolean.valueOf(value.required));
                    }
                    if (value.custom_text != null) {
                        UpdateSdiActionRequest.Input.CustomText.ADAPTER.encodeWithTag(writer, 2, value.custom_text);
                    }
                    if (value.type != UpdateSdiActionRequest.Input.InputType.INPUT_TYPE_INVALID) {
                        UpdateSdiActionRequest.Input.InputType.ADAPTER.encodeWithTag(writer, 1, value.type);
                    }
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public UpdateSdiActionRequest.Input decode(ProtoReader reader) throws IOException {
                    UpdateSdiActionRequest.Input.InputType inputType;
                    UpdateSdiActionRequest.Input.CustomText customText;
                    UpdateSdiActionRequest.Input.Selection selection;
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    UpdateSdiActionRequest.Input.InputType inputType2 = UpdateSdiActionRequest.Input.InputType.INPUT_TYPE_INVALID;
                    ArrayList arrayList = new ArrayList();
                    long jBeginMessage = reader.beginMessage();
                    UpdateSdiActionRequest.Input.Selection selectionDecode = null;
                    UpdateSdiActionRequest.Input.Signature signatureDecode = null;
                    UpdateSdiActionRequest.Input.Email emailDecode = null;
                    UpdateSdiActionRequest.Input.Text textDecode = null;
                    UpdateSdiActionRequest.Input.Numeric numericDecode = null;
                    UpdateSdiActionRequest.Input.Phone phoneDecode = null;
                    boolean zBooleanValue = false;
                    boolean zBooleanValue2 = false;
                    UpdateSdiActionRequest.Input.InputType inputTypeDecode = inputType2;
                    UpdateSdiActionRequest.Input.CustomText customTextDecode = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag != -1) {
                            switch (iNextTag) {
                                case 1:
                                    try {
                                        inputTypeDecode = UpdateSdiActionRequest.Input.InputType.ADAPTER.decode(reader);
                                        continue;
                                    } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                        inputType = inputTypeDecode;
                                        customText = customTextDecode;
                                        selection = selectionDecode;
                                        reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                        inputTypeDecode = inputType;
                                        selectionDecode = selection;
                                        customTextDecode = customText;
                                    }
                                    break;
                                case 2:
                                    customTextDecode = UpdateSdiActionRequest.Input.CustomText.ADAPTER.decode(reader);
                                    continue;
                                case 3:
                                    zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                    continue;
                                case 4:
                                    zBooleanValue2 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                    continue;
                                case 5:
                                    selectionDecode = UpdateSdiActionRequest.Input.Selection.ADAPTER.decode(reader);
                                    continue;
                                case 6:
                                    signatureDecode = UpdateSdiActionRequest.Input.Signature.ADAPTER.decode(reader);
                                    continue;
                                case 7:
                                    emailDecode = UpdateSdiActionRequest.Input.Email.ADAPTER.decode(reader);
                                    continue;
                                case 8:
                                    textDecode = UpdateSdiActionRequest.Input.Text.ADAPTER.decode(reader);
                                    continue;
                                case 9:
                                    numericDecode = UpdateSdiActionRequest.Input.Numeric.ADAPTER.decode(reader);
                                    continue;
                                case 10:
                                    phoneDecode = UpdateSdiActionRequest.Input.Phone.ADAPTER.decode(reader);
                                    continue;
                                case 11:
                                    arrayList.add(UpdateSdiActionRequest.Input.Toggle.ADAPTER.decode(reader));
                                    inputType = inputTypeDecode;
                                    customText = customTextDecode;
                                    selection = selectionDecode;
                                    break;
                                default:
                                    inputType = inputTypeDecode;
                                    customText = customTextDecode;
                                    selection = selectionDecode;
                                    reader.readUnknownField(iNextTag);
                                    break;
                            }
                            inputTypeDecode = inputType;
                            selectionDecode = selection;
                            customTextDecode = customText;
                        } else {
                            return new UpdateSdiActionRequest.Input(inputTypeDecode, customTextDecode, zBooleanValue, zBooleanValue2, selectionDecode, signatureDecode, emailDecode, textDecode, numericDecode, phoneDecode, arrayList, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public UpdateSdiActionRequest.Input redact(UpdateSdiActionRequest.Input value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    UpdateSdiActionRequest.Input.CustomText customText = value.custom_text;
                    UpdateSdiActionRequest.Input.CustomText customTextRedact = customText != null ? UpdateSdiActionRequest.Input.CustomText.ADAPTER.redact(customText) : null;
                    UpdateSdiActionRequest.Input.Selection selection = value.selection;
                    UpdateSdiActionRequest.Input.Selection selectionRedact = selection != null ? UpdateSdiActionRequest.Input.Selection.ADAPTER.redact(selection) : null;
                    UpdateSdiActionRequest.Input.Signature signature = value.signature;
                    UpdateSdiActionRequest.Input.Signature signatureRedact = signature != null ? UpdateSdiActionRequest.Input.Signature.ADAPTER.redact(signature) : null;
                    UpdateSdiActionRequest.Input.Email email = value.email;
                    UpdateSdiActionRequest.Input.Email emailRedact = email != null ? UpdateSdiActionRequest.Input.Email.ADAPTER.redact(email) : null;
                    UpdateSdiActionRequest.Input.Text text = value.text;
                    UpdateSdiActionRequest.Input.Text textRedact = text != null ? UpdateSdiActionRequest.Input.Text.ADAPTER.redact(text) : null;
                    UpdateSdiActionRequest.Input.Numeric numeric = value.numeric;
                    UpdateSdiActionRequest.Input.Numeric numericRedact = numeric != null ? UpdateSdiActionRequest.Input.Numeric.ADAPTER.redact(numeric) : null;
                    UpdateSdiActionRequest.Input.Phone phone = value.phone;
                    return UpdateSdiActionRequest.Input.copy$default(value, null, customTextRedact, false, false, selectionRedact, signatureRedact, emailRedact, textRedact, numericRedact, phone != null ? UpdateSdiActionRequest.Input.Phone.ADAPTER.redact(phone) : null, Internal.m361redactElements(value.toggles, UpdateSdiActionRequest.Input.Toggle.ADAPTER), ByteString.EMPTY, 13, null);
                }
            };
        }

        /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001c\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature$Builder;", "value_", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Signature extends Message<Signature, Builder> {
            public static final ProtoAdapter<Signature> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", declaredName = "value", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 0, tag = 1)
            public final String value_;

            /* JADX WARN: Multi-variable type inference failed */
            public Signature() {
                this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
            }

            public /* synthetic */ Signature(String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? null : str, (i & 2) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Signature(String str, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.value_ = str;
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.value_ = this.value_;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof Signature)) {
                    return false;
                }
                Signature signature = (Signature) other;
                return Intrinsics.areEqual(unknownFields(), signature.unknownFields()) && Intrinsics.areEqual(this.value_, signature.value_);
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = unknownFields().hashCode() * 37;
                String str = this.value_;
                int iHashCode2 = iHashCode + (str != null ? str.hashCode() : 0);
                this.hashCode = iHashCode2;
                return iHashCode2;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                if (this.value_ != null) {
                    arrayList.add("value_=██");
                }
                return CollectionsKt.joinToString$default(arrayList, ", ", "Signature{", "}", 0, null, null, 56, null);
            }

            public static /* synthetic */ Signature copy$default(Signature signature, String str, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = signature.value_;
                }
                if ((i & 2) != 0) {
                    byteString = signature.unknownFields();
                }
                return signature.copy(str, byteString);
            }

            public final Signature copy(String value_, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new Signature(value_, unknownFields);
            }

            /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
            @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;", "()V", "value_", "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<Signature, Builder> {
                public String value_;

                public final Builder value_(String value_) {
                    this.value_ = value_;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public Signature build() {
                    return new Signature(this.value_, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ Signature build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Signature.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<Signature>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.UpdateSdiActionRequest$Input$Signature$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(UpdateSdiActionRequest.Input.Signature value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        return value.value_ != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.value_) : size;
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, UpdateSdiActionRequest.Input.Signature value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (value.value_ != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.value_);
                        }
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, UpdateSdiActionRequest.Input.Signature value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        if (value.value_ != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.value_);
                        }
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public UpdateSdiActionRequest.Input.Signature redact(UpdateSdiActionRequest.Input.Signature value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return value.copy(null, ByteString.EMPTY);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public UpdateSdiActionRequest.Input.Signature decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        long jBeginMessage = reader.beginMessage();
                        String strDecode = null;
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new UpdateSdiActionRequest.Input.Signature(strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                            if (iNextTag == 1) {
                                strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }
                };
            }
        }

        /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
        @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0014\u0015\u0016B+\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ,\u0010\u000b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0004H\u0016R\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Builder;", "value_", "", "choices", "", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Choice", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Selection extends Message<Selection, Builder> {
            public static final ProtoAdapter<Selection> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.stripe.proto.api.rest.UpdateSdiActionRequest$Input$Selection$Choice#ADAPTER", label = WireField.Label.REPEATED, schemaIndex = 1, tag = 2)
            public final List<Choice> choices;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", declaredName = "value", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 0, tag = 1)
            public final String value_;

            public Selection() {
                this(null, null, null, 7, null);
            }

            public /* synthetic */ Selection(String str, List list, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? null : str, (i & 2) != 0 ? CollectionsKt.emptyList() : list, (i & 4) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Selection(String str, List<Choice> choices, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(choices, "choices");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.value_ = str;
                this.choices = Internal.immutableCopyOf("choices", choices);
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.value_ = this.value_;
                builder.choices = this.choices;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof Selection)) {
                    return false;
                }
                Selection selection = (Selection) other;
                return Intrinsics.areEqual(unknownFields(), selection.unknownFields()) && Intrinsics.areEqual(this.value_, selection.value_) && Intrinsics.areEqual(this.choices, selection.choices);
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = unknownFields().hashCode() * 37;
                String str = this.value_;
                int iHashCode2 = ((iHashCode + (str != null ? str.hashCode() : 0)) * 37) + this.choices.hashCode();
                this.hashCode = iHashCode2;
                return iHashCode2;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                if (this.value_ != null) {
                    arrayList.add("value_=██");
                }
                if (!this.choices.isEmpty()) {
                    arrayList.add("choices=" + this.choices);
                }
                return CollectionsKt.joinToString$default(arrayList, ", ", "Selection{", "}", 0, null, null, 56, null);
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static /* synthetic */ Selection copy$default(Selection selection, String str, List list, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = selection.value_;
                }
                if ((i & 2) != 0) {
                    list = selection.choices;
                }
                if ((i & 4) != 0) {
                    byteString = selection.unknownFields();
                }
                return selection.copy(str, list, byteString);
            }

            public final Selection copy(String value_, List<Choice> choices, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(choices, "choices");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new Selection(value_, choices, unknownFields);
            }

            /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
            @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\bR\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;", "()V", "choices", "", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice;", "value_", "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<Selection, Builder> {
                public List<Choice> choices = CollectionsKt.emptyList();
                public String value_;

                public final Builder value_(String value_) {
                    this.value_ = value_;
                    return this;
                }

                public final Builder choices(List<Choice> choices) {
                    Intrinsics.checkNotNullParameter(choices, "choices");
                    Internal.checkElementsNotNull(choices);
                    this.choices = choices;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public Selection build() {
                    return new Selection(this.value_, this.choices, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ Selection build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Selection.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<Selection>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.UpdateSdiActionRequest$Input$Selection$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(UpdateSdiActionRequest.Input.Selection value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        if (value.value_ != null) {
                            size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.value_);
                        }
                        return size + UpdateSdiActionRequest.Input.Selection.Choice.ADAPTER.asRepeated().encodedSizeWithTag(2, value.choices);
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, UpdateSdiActionRequest.Input.Selection value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (value.value_ != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.value_);
                        }
                        UpdateSdiActionRequest.Input.Selection.Choice.ADAPTER.asRepeated().encodeWithTag(writer, 2, value.choices);
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, UpdateSdiActionRequest.Input.Selection value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        UpdateSdiActionRequest.Input.Selection.Choice.ADAPTER.asRepeated().encodeWithTag(writer, 2, value.choices);
                        if (value.value_ != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.value_);
                        }
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public UpdateSdiActionRequest.Input.Selection decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        ArrayList arrayList = new ArrayList();
                        long jBeginMessage = reader.beginMessage();
                        String strDecode = null;
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new UpdateSdiActionRequest.Input.Selection(strDecode, arrayList, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                            if (iNextTag == 1) {
                                strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                            } else if (iNextTag == 2) {
                                arrayList.add(UpdateSdiActionRequest.Input.Selection.Choice.ADAPTER.decode(reader));
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public UpdateSdiActionRequest.Input.Selection redact(UpdateSdiActionRequest.Input.Selection value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return value.copy(null, Internal.m361redactElements(value.choices, UpdateSdiActionRequest.Input.Selection.Choice.ADAPTER), ByteString.EMPTY);
                    }
                };
            }

            /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
            @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0013\u0014\u0015B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ$\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0006H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice$Builder;", "style", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice$Style;", "value_", "", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice$Style;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "Style", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Choice extends Message<Choice, Builder> {
                public static final ProtoAdapter<Choice> ADAPTER;

                /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
                public static final Companion INSTANCE = new Companion(null);
                private static final long serialVersionUID = 0;

                @WireField(adapter = "com.stripe.proto.api.rest.UpdateSdiActionRequest$Input$Selection$Choice$Style#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
                public final Style style;

                @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", declaredName = "value", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
                public final String value_;

                public Choice() {
                    this(null, null, null, 7, null);
                }

                public /* synthetic */ Choice(Style style, String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                    this((i & 1) != 0 ? Style.STYLE_INVALID : style, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? ByteString.EMPTY : byteString);
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public Choice(Style style, String value_, ByteString unknownFields) {
                    super(ADAPTER, unknownFields);
                    Intrinsics.checkNotNullParameter(style, "style");
                    Intrinsics.checkNotNullParameter(value_, "value_");
                    Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                    this.style = style;
                    this.value_ = value_;
                }

                @Override // com.squareup.wire.Message
                public Builder newBuilder() {
                    Builder builder = new Builder();
                    builder.style = this.style;
                    builder.value_ = this.value_;
                    builder.addUnknownFields(unknownFields());
                    return builder;
                }

                public boolean equals(Object other) {
                    if (other == this) {
                        return true;
                    }
                    if (!(other instanceof Choice)) {
                        return false;
                    }
                    Choice choice = (Choice) other;
                    return Intrinsics.areEqual(unknownFields(), choice.unknownFields()) && this.style == choice.style && Intrinsics.areEqual(this.value_, choice.value_);
                }

                public int hashCode() {
                    int i = this.hashCode;
                    if (i != 0) {
                        return i;
                    }
                    int iHashCode = (((unknownFields().hashCode() * 37) + this.style.hashCode()) * 37) + this.value_.hashCode();
                    this.hashCode = iHashCode;
                    return iHashCode;
                }

                @Override // com.squareup.wire.Message
                public String toString() {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = arrayList;
                    arrayList2.add("style=" + this.style);
                    arrayList2.add("value_=" + Internal.sanitize(this.value_));
                    return CollectionsKt.joinToString$default(arrayList, ", ", "Choice{", "}", 0, null, null, 56, null);
                }

                public static /* synthetic */ Choice copy$default(Choice choice, Style style, String str, ByteString byteString, int i, Object obj) {
                    if ((i & 1) != 0) {
                        style = choice.style;
                    }
                    if ((i & 2) != 0) {
                        str = choice.value_;
                    }
                    if ((i & 4) != 0) {
                        byteString = choice.unknownFields();
                    }
                    return choice.copy(style, str, byteString);
                }

                public final Choice copy(Style style, String value_, ByteString unknownFields) {
                    Intrinsics.checkNotNullParameter(style, "style");
                    Intrinsics.checkNotNullParameter(value_, "value_");
                    Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                    return new Choice(style, value_, unknownFields);
                }

                /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
                @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice;", "()V", "style", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice$Style;", "value_", "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
                public static final class Builder extends Message.Builder<Choice, Builder> {
                    public Style style = Style.STYLE_INVALID;
                    public String value_ = "";

                    public final Builder style(Style style) {
                        Intrinsics.checkNotNullParameter(style, "style");
                        this.style = style;
                        return this;
                    }

                    public final Builder value_(String value_) {
                        Intrinsics.checkNotNullParameter(value_, "value_");
                        this.value_ = value_;
                        return this;
                    }

                    @Override // com.squareup.wire.Message.Builder
                    public Choice build() {
                        return new Choice(this.style, this.value_, buildUnknownFields());
                    }
                }

                /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
                @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
                public static final class Companion {
                    public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                        this();
                    }

                    private Companion() {
                    }

                    public final /* synthetic */ Choice build(Function1<? super Builder, Unit> body) {
                        Intrinsics.checkNotNullParameter(body, "body");
                        Builder builder = new Builder();
                        body.invoke(builder);
                        return builder.build();
                    }
                }

                static {
                    final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                    final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Choice.class);
                    final Syntax syntax = Syntax.PROTO_3;
                    ADAPTER = new ProtoAdapter<Choice>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.UpdateSdiActionRequest$Input$Selection$Choice$Companion$ADAPTER$1
                        @Override // com.squareup.wire.ProtoAdapter
                        public int encodedSize(UpdateSdiActionRequest.Input.Selection.Choice value) {
                            Intrinsics.checkNotNullParameter(value, "value");
                            int size = value.unknownFields().size();
                            if (value.style != UpdateSdiActionRequest.Input.Selection.Choice.Style.STYLE_INVALID) {
                                size += UpdateSdiActionRequest.Input.Selection.Choice.Style.ADAPTER.encodedSizeWithTag(1, value.style);
                            }
                            return !Intrinsics.areEqual(value.value_, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(2, value.value_) : size;
                        }

                        @Override // com.squareup.wire.ProtoAdapter
                        public void encode(ProtoWriter writer, UpdateSdiActionRequest.Input.Selection.Choice value) throws IOException {
                            Intrinsics.checkNotNullParameter(writer, "writer");
                            Intrinsics.checkNotNullParameter(value, "value");
                            if (value.style != UpdateSdiActionRequest.Input.Selection.Choice.Style.STYLE_INVALID) {
                                UpdateSdiActionRequest.Input.Selection.Choice.Style.ADAPTER.encodeWithTag(writer, 1, value.style);
                            }
                            if (!Intrinsics.areEqual(value.value_, "")) {
                                ProtoAdapter.STRING.encodeWithTag(writer, 2, value.value_);
                            }
                            writer.writeBytes(value.unknownFields());
                        }

                        @Override // com.squareup.wire.ProtoAdapter
                        public void encode(ReverseProtoWriter writer, UpdateSdiActionRequest.Input.Selection.Choice value) throws IOException {
                            Intrinsics.checkNotNullParameter(writer, "writer");
                            Intrinsics.checkNotNullParameter(value, "value");
                            writer.writeBytes(value.unknownFields());
                            if (!Intrinsics.areEqual(value.value_, "")) {
                                ProtoAdapter.STRING.encodeWithTag(writer, 2, value.value_);
                            }
                            if (value.style != UpdateSdiActionRequest.Input.Selection.Choice.Style.STYLE_INVALID) {
                                UpdateSdiActionRequest.Input.Selection.Choice.Style.ADAPTER.encodeWithTag(writer, 1, value.style);
                            }
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // com.squareup.wire.ProtoAdapter
                        public UpdateSdiActionRequest.Input.Selection.Choice decode(ProtoReader reader) throws IOException {
                            Intrinsics.checkNotNullParameter(reader, "reader");
                            UpdateSdiActionRequest.Input.Selection.Choice.Style styleDecode = UpdateSdiActionRequest.Input.Selection.Choice.Style.STYLE_INVALID;
                            long jBeginMessage = reader.beginMessage();
                            String strDecode = "";
                            while (true) {
                                int iNextTag = reader.nextTag();
                                if (iNextTag == -1) {
                                    return new UpdateSdiActionRequest.Input.Selection.Choice(styleDecode, strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                                }
                                if (iNextTag == 1) {
                                    try {
                                        styleDecode = UpdateSdiActionRequest.Input.Selection.Choice.Style.ADAPTER.decode(reader);
                                    } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                        reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                    }
                                } else if (iNextTag == 2) {
                                    strDecode = ProtoAdapter.STRING.decode(reader);
                                } else {
                                    reader.readUnknownField(iNextTag);
                                }
                            }
                        }

                        @Override // com.squareup.wire.ProtoAdapter
                        public UpdateSdiActionRequest.Input.Selection.Choice redact(UpdateSdiActionRequest.Input.Selection.Choice value) {
                            Intrinsics.checkNotNullParameter(value, "value");
                            return UpdateSdiActionRequest.Input.Selection.Choice.copy$default(value, null, null, ByteString.EMPTY, 3, null);
                        }
                    };
                }

                /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
                /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
                /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
                @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice$Style;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "STYLE_INVALID", "PRIMARY", "SECONDARY", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
                public static final class Style implements WireEnum {
                    private static final /* synthetic */ EnumEntries $ENTRIES;
                    private static final /* synthetic */ Style[] $VALUES;
                    public static final ProtoAdapter<Style> ADAPTER;

                    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
                    public static final Companion INSTANCE;
                    public static final Style PRIMARY;
                    public static final Style SECONDARY;
                    public static final Style STYLE_INVALID;
                    private final int value;

                    private static final /* synthetic */ Style[] $values() {
                        return new Style[]{STYLE_INVALID, PRIMARY, SECONDARY};
                    }

                    @JvmStatic
                    public static final Style fromValue(int i) {
                        return INSTANCE.fromValue(i);
                    }

                    public static EnumEntries<Style> getEntries() {
                        return $ENTRIES;
                    }

                    public static Style valueOf(String str) {
                        return (Style) Enum.valueOf(Style.class, str);
                    }

                    public static Style[] values() {
                        return (Style[]) $VALUES.clone();
                    }

                    private Style(String str, int i, int i2) {
                        this.value = i2;
                    }

                    @Override // com.squareup.wire.WireEnum
                    public int getValue() {
                        return this.value;
                    }

                    static {
                        final Style style = new Style("STYLE_INVALID", 0, 0);
                        STYLE_INVALID = style;
                        PRIMARY = new Style("PRIMARY", 1, 1);
                        SECONDARY = new Style("SECONDARY", 2, 2);
                        Style[] styleArr$values = $values();
                        $VALUES = styleArr$values;
                        $ENTRIES = EnumEntriesKt.enumEntries(styleArr$values);
                        INSTANCE = new Companion(null);
                        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Style.class);
                        final Syntax syntax = Syntax.PROTO_3;
                        ADAPTER = new EnumAdapter<Style>(orCreateKotlinClass, syntax, style) { // from class: com.stripe.proto.api.rest.UpdateSdiActionRequest$Input$Selection$Choice$Style$Companion$ADAPTER$1
                            {
                                UpdateSdiActionRequest.Input.Selection.Choice.Style style2 = style;
                            }

                            /* JADX INFO: Access modifiers changed from: protected */
                            @Override // com.squareup.wire.EnumAdapter
                            public UpdateSdiActionRequest.Input.Selection.Choice.Style fromValue(int value) {
                                return UpdateSdiActionRequest.Input.Selection.Choice.Style.INSTANCE.fromValue(value);
                            }
                        };
                    }

                    /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
                    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice$Style$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice$Style;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
                    public static final class Companion {
                        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                            this();
                        }

                        private Companion() {
                        }

                        @JvmStatic
                        public final Style fromValue(int value) {
                            if (value == 0) {
                                return Style.STYLE_INVALID;
                            }
                            if (value == 1) {
                                return Style.PRIMARY;
                            }
                            if (value != 2) {
                                return null;
                            }
                            return Style.SECONDARY;
                        }
                    }
                }
            }
        }

        /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001c\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email$Builder;", "value_", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Email extends Message<Email, Builder> {
            public static final ProtoAdapter<Email> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", declaredName = "value", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 0, tag = 1)
            public final String value_;

            /* JADX WARN: Multi-variable type inference failed */
            public Email() {
                this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
            }

            public /* synthetic */ Email(String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? null : str, (i & 2) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Email(String str, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.value_ = str;
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.value_ = this.value_;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof Email)) {
                    return false;
                }
                Email email = (Email) other;
                return Intrinsics.areEqual(unknownFields(), email.unknownFields()) && Intrinsics.areEqual(this.value_, email.value_);
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = unknownFields().hashCode() * 37;
                String str = this.value_;
                int iHashCode2 = iHashCode + (str != null ? str.hashCode() : 0);
                this.hashCode = iHashCode2;
                return iHashCode2;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                if (this.value_ != null) {
                    arrayList.add("value_=██");
                }
                return CollectionsKt.joinToString$default(arrayList, ", ", "Email{", "}", 0, null, null, 56, null);
            }

            public static /* synthetic */ Email copy$default(Email email, String str, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = email.value_;
                }
                if ((i & 2) != 0) {
                    byteString = email.unknownFields();
                }
                return email.copy(str, byteString);
            }

            public final Email copy(String value_, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new Email(value_, unknownFields);
            }

            /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
            @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;", "()V", "value_", "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<Email, Builder> {
                public String value_;

                public final Builder value_(String value_) {
                    this.value_ = value_;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public Email build() {
                    return new Email(this.value_, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ Email build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Email.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<Email>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.UpdateSdiActionRequest$Input$Email$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(UpdateSdiActionRequest.Input.Email value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        return value.value_ != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.value_) : size;
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, UpdateSdiActionRequest.Input.Email value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (value.value_ != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.value_);
                        }
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, UpdateSdiActionRequest.Input.Email value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        if (value.value_ != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.value_);
                        }
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public UpdateSdiActionRequest.Input.Email redact(UpdateSdiActionRequest.Input.Email value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return value.copy(null, ByteString.EMPTY);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public UpdateSdiActionRequest.Input.Email decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        long jBeginMessage = reader.beginMessage();
                        String strDecode = null;
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new UpdateSdiActionRequest.Input.Email(strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                            if (iNextTag == 1) {
                                strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }
                };
            }
        }

        /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001c\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text$Builder;", "value_", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Text extends Message<Text, Builder> {
            public static final ProtoAdapter<Text> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", declaredName = "value", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 0, tag = 1)
            public final String value_;

            /* JADX WARN: Multi-variable type inference failed */
            public Text() {
                this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
            }

            public /* synthetic */ Text(String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? null : str, (i & 2) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Text(String str, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.value_ = str;
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.value_ = this.value_;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof Text)) {
                    return false;
                }
                Text text = (Text) other;
                return Intrinsics.areEqual(unknownFields(), text.unknownFields()) && Intrinsics.areEqual(this.value_, text.value_);
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = unknownFields().hashCode() * 37;
                String str = this.value_;
                int iHashCode2 = iHashCode + (str != null ? str.hashCode() : 0);
                this.hashCode = iHashCode2;
                return iHashCode2;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                if (this.value_ != null) {
                    arrayList.add("value_=██");
                }
                return CollectionsKt.joinToString$default(arrayList, ", ", "Text{", "}", 0, null, null, 56, null);
            }

            public static /* synthetic */ Text copy$default(Text text, String str, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = text.value_;
                }
                if ((i & 2) != 0) {
                    byteString = text.unknownFields();
                }
                return text.copy(str, byteString);
            }

            public final Text copy(String value_, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new Text(value_, unknownFields);
            }

            /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
            @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;", "()V", "value_", "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<Text, Builder> {
                public String value_;

                public final Builder value_(String value_) {
                    this.value_ = value_;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public Text build() {
                    return new Text(this.value_, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ Text build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Text.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<Text>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.UpdateSdiActionRequest$Input$Text$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(UpdateSdiActionRequest.Input.Text value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        return value.value_ != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.value_) : size;
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, UpdateSdiActionRequest.Input.Text value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (value.value_ != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.value_);
                        }
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, UpdateSdiActionRequest.Input.Text value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        if (value.value_ != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.value_);
                        }
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public UpdateSdiActionRequest.Input.Text redact(UpdateSdiActionRequest.Input.Text value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return value.copy(null, ByteString.EMPTY);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public UpdateSdiActionRequest.Input.Text decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        long jBeginMessage = reader.beginMessage();
                        String strDecode = null;
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new UpdateSdiActionRequest.Input.Text(strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                            if (iNextTag == 1) {
                                strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }
                };
            }
        }

        /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001c\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric$Builder;", "value_", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Numeric extends Message<Numeric, Builder> {
            public static final ProtoAdapter<Numeric> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", declaredName = "value", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 0, tag = 1)
            public final String value_;

            /* JADX WARN: Multi-variable type inference failed */
            public Numeric() {
                this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
            }

            public /* synthetic */ Numeric(String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? null : str, (i & 2) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Numeric(String str, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.value_ = str;
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.value_ = this.value_;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof Numeric)) {
                    return false;
                }
                Numeric numeric = (Numeric) other;
                return Intrinsics.areEqual(unknownFields(), numeric.unknownFields()) && Intrinsics.areEqual(this.value_, numeric.value_);
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = unknownFields().hashCode() * 37;
                String str = this.value_;
                int iHashCode2 = iHashCode + (str != null ? str.hashCode() : 0);
                this.hashCode = iHashCode2;
                return iHashCode2;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                if (this.value_ != null) {
                    arrayList.add("value_=██");
                }
                return CollectionsKt.joinToString$default(arrayList, ", ", "Numeric{", "}", 0, null, null, 56, null);
            }

            public static /* synthetic */ Numeric copy$default(Numeric numeric, String str, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = numeric.value_;
                }
                if ((i & 2) != 0) {
                    byteString = numeric.unknownFields();
                }
                return numeric.copy(str, byteString);
            }

            public final Numeric copy(String value_, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new Numeric(value_, unknownFields);
            }

            /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
            @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;", "()V", "value_", "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<Numeric, Builder> {
                public String value_;

                public final Builder value_(String value_) {
                    this.value_ = value_;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public Numeric build() {
                    return new Numeric(this.value_, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ Numeric build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Numeric.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<Numeric>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.UpdateSdiActionRequest$Input$Numeric$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(UpdateSdiActionRequest.Input.Numeric value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        return value.value_ != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.value_) : size;
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, UpdateSdiActionRequest.Input.Numeric value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (value.value_ != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.value_);
                        }
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, UpdateSdiActionRequest.Input.Numeric value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        if (value.value_ != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.value_);
                        }
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public UpdateSdiActionRequest.Input.Numeric redact(UpdateSdiActionRequest.Input.Numeric value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return value.copy(null, ByteString.EMPTY);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public UpdateSdiActionRequest.Input.Numeric decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        long jBeginMessage = reader.beginMessage();
                        String strDecode = null;
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new UpdateSdiActionRequest.Input.Numeric(strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                            if (iNextTag == 1) {
                                strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }
                };
            }
        }

        /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001c\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone$Builder;", "value_", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Phone extends Message<Phone, Builder> {
            public static final ProtoAdapter<Phone> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", declaredName = "value", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 0, tag = 1)
            public final String value_;

            /* JADX WARN: Multi-variable type inference failed */
            public Phone() {
                this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
            }

            public /* synthetic */ Phone(String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? null : str, (i & 2) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Phone(String str, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.value_ = str;
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.value_ = this.value_;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof Phone)) {
                    return false;
                }
                Phone phone = (Phone) other;
                return Intrinsics.areEqual(unknownFields(), phone.unknownFields()) && Intrinsics.areEqual(this.value_, phone.value_);
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = unknownFields().hashCode() * 37;
                String str = this.value_;
                int iHashCode2 = iHashCode + (str != null ? str.hashCode() : 0);
                this.hashCode = iHashCode2;
                return iHashCode2;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                if (this.value_ != null) {
                    arrayList.add("value_=██");
                }
                return CollectionsKt.joinToString$default(arrayList, ", ", "Phone{", "}", 0, null, null, 56, null);
            }

            public static /* synthetic */ Phone copy$default(Phone phone, String str, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = phone.value_;
                }
                if ((i & 2) != 0) {
                    byteString = phone.unknownFields();
                }
                return phone.copy(str, byteString);
            }

            public final Phone copy(String value_, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new Phone(value_, unknownFields);
            }

            /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
            @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;", "()V", "value_", "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<Phone, Builder> {
                public String value_;

                public final Builder value_(String value_) {
                    this.value_ = value_;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public Phone build() {
                    return new Phone(this.value_, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ Phone build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Phone.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<Phone>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.UpdateSdiActionRequest$Input$Phone$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(UpdateSdiActionRequest.Input.Phone value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        return value.value_ != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.value_) : size;
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, UpdateSdiActionRequest.Input.Phone value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (value.value_ != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.value_);
                        }
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, UpdateSdiActionRequest.Input.Phone value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        if (value.value_ != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.value_);
                        }
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public UpdateSdiActionRequest.Input.Phone redact(UpdateSdiActionRequest.Input.Phone value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return value.copy(null, ByteString.EMPTY);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public UpdateSdiActionRequest.Input.Phone decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        long jBeginMessage = reader.beginMessage();
                        String strDecode = null;
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new UpdateSdiActionRequest.Input.Phone(strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                            if (iNextTag == 1) {
                                strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }
                };
            }
        }

        /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
        @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B=\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ>\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0004H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText$Builder;", LinkHeader.Parameters.Title, "", "description", "submit_button", "skip_button", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class CustomText extends Message<CustomText, Builder> {
            public static final ProtoAdapter<CustomText> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 1, tag = 2)
            public final String description;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "skipButton", schemaIndex = 3, tag = 4)
            public final String skip_button;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "submitButton", schemaIndex = 2, tag = 3)
            public final String submit_button;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
            public final String title;

            public CustomText() {
                this(null, null, null, null, null, 31, null);
            }

            public /* synthetic */ CustomText(String str, String str2, String str3, String str4, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public CustomText(String title, String str, String str2, String str3, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(title, "title");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.title = title;
                this.description = str;
                this.submit_button = str2;
                this.skip_button = str3;
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.title = this.title;
                builder.description = this.description;
                builder.submit_button = this.submit_button;
                builder.skip_button = this.skip_button;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof CustomText)) {
                    return false;
                }
                CustomText customText = (CustomText) other;
                return Intrinsics.areEqual(unknownFields(), customText.unknownFields()) && Intrinsics.areEqual(this.title, customText.title) && Intrinsics.areEqual(this.description, customText.description) && Intrinsics.areEqual(this.submit_button, customText.submit_button) && Intrinsics.areEqual(this.skip_button, customText.skip_button);
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = ((unknownFields().hashCode() * 37) + this.title.hashCode()) * 37;
                String str = this.description;
                int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
                String str2 = this.submit_button;
                int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
                String str3 = this.skip_button;
                int iHashCode4 = iHashCode3 + (str3 != null ? str3.hashCode() : 0);
                this.hashCode = iHashCode4;
                return iHashCode4;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = arrayList;
                arrayList2.add("title=" + Internal.sanitize(this.title));
                if (this.description != null) {
                    arrayList2.add("description=" + this.description);
                }
                if (this.submit_button != null) {
                    arrayList2.add("submit_button=" + this.submit_button);
                }
                if (this.skip_button != null) {
                    arrayList2.add("skip_button=" + this.skip_button);
                }
                return CollectionsKt.joinToString$default(arrayList, ", ", "CustomText{", "}", 0, null, null, 56, null);
            }

            public static /* synthetic */ CustomText copy$default(CustomText customText, String str, String str2, String str3, String str4, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = customText.title;
                }
                if ((i & 2) != 0) {
                    str2 = customText.description;
                }
                if ((i & 4) != 0) {
                    str3 = customText.submit_button;
                }
                if ((i & 8) != 0) {
                    str4 = customText.skip_button;
                }
                if ((i & 16) != 0) {
                    byteString = customText.unknownFields();
                }
                ByteString byteString2 = byteString;
                String str5 = str3;
                return customText.copy(str, str2, str5, str4, byteString2);
            }

            public final CustomText copy(String title, String description, String submit_button, String skip_button, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(title, "title");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new CustomText(title, description, submit_button, skip_button, unknownFields);
            }

            /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
            @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;", "()V", "description", "", "skip_button", "submit_button", LinkHeader.Parameters.Title, "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<CustomText, Builder> {
                public String description;
                public String skip_button;
                public String submit_button;
                public String title = "";

                public final Builder title(String title) {
                    Intrinsics.checkNotNullParameter(title, "title");
                    this.title = title;
                    return this;
                }

                public final Builder description(String description) {
                    this.description = description;
                    return this;
                }

                public final Builder submit_button(String submit_button) {
                    this.submit_button = submit_button;
                    return this;
                }

                public final Builder skip_button(String skip_button) {
                    this.skip_button = skip_button;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public CustomText build() {
                    return new CustomText(this.title, this.description, this.submit_button, this.skip_button, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ CustomText build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CustomText.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<CustomText>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.UpdateSdiActionRequest$Input$CustomText$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(UpdateSdiActionRequest.Input.CustomText value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        if (!Intrinsics.areEqual(value.title, "")) {
                            size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.title);
                        }
                        if (value.description != null) {
                            size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.description);
                        }
                        if (value.submit_button != null) {
                            size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.submit_button);
                        }
                        return value.skip_button != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(4, value.skip_button) : size;
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, UpdateSdiActionRequest.Input.CustomText value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (!Intrinsics.areEqual(value.title, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 1, value.title);
                        }
                        if (value.description != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.description);
                        }
                        if (value.submit_button != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.submit_button);
                        }
                        if (value.skip_button != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.skip_button);
                        }
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, UpdateSdiActionRequest.Input.CustomText value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        if (value.skip_button != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.skip_button);
                        }
                        if (value.submit_button != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.submit_button);
                        }
                        if (value.description != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.description);
                        }
                        if (Intrinsics.areEqual(value.title, "")) {
                            return;
                        }
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.title);
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public UpdateSdiActionRequest.Input.CustomText redact(UpdateSdiActionRequest.Input.CustomText value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        String str = value.description;
                        String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                        String str2 = value.submit_button;
                        String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                        String str3 = value.skip_button;
                        return UpdateSdiActionRequest.Input.CustomText.copy$default(value, null, strRedact, strRedact2, str3 != null ? ProtoAdapter.STRING_VALUE.redact(str3) : null, ByteString.EMPTY, 1, null);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public UpdateSdiActionRequest.Input.CustomText decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        long jBeginMessage = reader.beginMessage();
                        String strDecode = "";
                        String strDecode2 = null;
                        String strDecode3 = null;
                        String strDecode4 = null;
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new UpdateSdiActionRequest.Input.CustomText(strDecode, strDecode2, strDecode3, strDecode4, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                            if (iNextTag == 1) {
                                strDecode = ProtoAdapter.STRING.decode(reader);
                            } else if (iNextTag == 2) {
                                strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                            } else if (iNextTag == 3) {
                                strDecode3 = ProtoAdapter.STRING_VALUE.decode(reader);
                            } else if (iNextTag == 4) {
                                strDecode4 = ProtoAdapter.STRING_VALUE.decode(reader);
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }
                };
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\f\b\u0086\u0081\u0002\u0018\u0000 \u000f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u0010"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "INPUT_TYPE_INVALID", "SIGNATURE", "SELECTION", "EMAIL", "TEXT", "NUMERIC", "PHONE", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class InputType implements WireEnum {
            private static final /* synthetic */ EnumEntries $ENTRIES;
            private static final /* synthetic */ InputType[] $VALUES;
            public static final ProtoAdapter<InputType> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE;
            public static final InputType EMAIL;
            public static final InputType INPUT_TYPE_INVALID;
            public static final InputType NUMERIC;
            public static final InputType PHONE;
            public static final InputType SELECTION;
            public static final InputType SIGNATURE;
            public static final InputType TEXT;
            private final int value;

            private static final /* synthetic */ InputType[] $values() {
                return new InputType[]{INPUT_TYPE_INVALID, SIGNATURE, SELECTION, EMAIL, TEXT, NUMERIC, PHONE};
            }

            @JvmStatic
            public static final InputType fromValue(int i) {
                return INSTANCE.fromValue(i);
            }

            public static EnumEntries<InputType> getEntries() {
                return $ENTRIES;
            }

            public static InputType valueOf(String str) {
                return (InputType) Enum.valueOf(InputType.class, str);
            }

            public static InputType[] values() {
                return (InputType[]) $VALUES.clone();
            }

            private InputType(String str, int i, int i2) {
                this.value = i2;
            }

            @Override // com.squareup.wire.WireEnum
            public int getValue() {
                return this.value;
            }

            static {
                final InputType inputType = new InputType("INPUT_TYPE_INVALID", 0, 0);
                INPUT_TYPE_INVALID = inputType;
                SIGNATURE = new InputType("SIGNATURE", 1, 1);
                SELECTION = new InputType("SELECTION", 2, 2);
                EMAIL = new InputType("EMAIL", 3, 3);
                TEXT = new InputType("TEXT", 4, 4);
                NUMERIC = new InputType("NUMERIC", 5, 5);
                PHONE = new InputType("PHONE", 6, 6);
                InputType[] inputTypeArr$values = $values();
                $VALUES = inputTypeArr$values;
                $ENTRIES = EnumEntriesKt.enumEntries(inputTypeArr$values);
                INSTANCE = new Companion(null);
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(InputType.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new EnumAdapter<InputType>(orCreateKotlinClass, syntax, inputType) { // from class: com.stripe.proto.api.rest.UpdateSdiActionRequest$Input$InputType$Companion$ADAPTER$1
                    {
                        UpdateSdiActionRequest.Input.InputType inputType2 = inputType;
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // com.squareup.wire.EnumAdapter
                    public UpdateSdiActionRequest.Input.InputType fromValue(int value) {
                        return UpdateSdiActionRequest.Input.InputType.INSTANCE.fromValue(value);
                    }
                };
            }

            /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
            @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                @JvmStatic
                public final InputType fromValue(int value) {
                    switch (value) {
                        case 0:
                            return InputType.INPUT_TYPE_INVALID;
                        case 1:
                            return InputType.SIGNATURE;
                        case 2:
                            return InputType.SELECTION;
                        case 3:
                            return InputType.EMAIL;
                        case 4:
                            return InputType.TEXT;
                        case 5:
                            return InputType.NUMERIC;
                        case 6:
                            return InputType.PHONE;
                        default:
                            return null;
                    }
                }
            }
        }

        /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
        @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0015\u0016\u0017B?\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ@\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0004H\u0016R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Builder;", LinkHeader.Parameters.Title, "", "description", "default_value", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Value;", "value_", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Value;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Value;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "Value", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Toggle extends Message<Toggle, Builder> {
            public static final ProtoAdapter<Toggle> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.stripe.proto.api.rest.UpdateSdiActionRequest$Input$Toggle$Value#ADAPTER", jsonName = "defaultValue", schemaIndex = 2, tag = 3)
            public final Value default_value;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 1, tag = 2)
            public final String description;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 0, tag = 1)
            public final String title;

            @WireField(adapter = "com.stripe.proto.api.rest.UpdateSdiActionRequest$Input$Toggle$Value#ADAPTER", declaredName = "value", schemaIndex = 3, tag = 4)
            public final Value value_;

            public Toggle() {
                this(null, null, null, null, null, 31, null);
            }

            public /* synthetic */ Toggle(String str, String str2, Value value, Value value2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : value, (i & 8) != 0 ? null : value2, (i & 16) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Toggle(String str, String str2, Value value, Value value2, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.title = str;
                this.description = str2;
                this.default_value = value;
                this.value_ = value2;
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.title = this.title;
                builder.description = this.description;
                builder.default_value = this.default_value;
                builder.value_ = this.value_;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof Toggle)) {
                    return false;
                }
                Toggle toggle = (Toggle) other;
                return Intrinsics.areEqual(unknownFields(), toggle.unknownFields()) && Intrinsics.areEqual(this.title, toggle.title) && Intrinsics.areEqual(this.description, toggle.description) && this.default_value == toggle.default_value && this.value_ == toggle.value_;
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = unknownFields().hashCode() * 37;
                String str = this.title;
                int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
                String str2 = this.description;
                int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
                Value value = this.default_value;
                int iHashCode4 = (iHashCode3 + (value != null ? value.hashCode() : 0)) * 37;
                Value value2 = this.value_;
                int iHashCode5 = iHashCode4 + (value2 != null ? value2.hashCode() : 0);
                this.hashCode = iHashCode5;
                return iHashCode5;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                if (this.title != null) {
                    arrayList.add("title=" + this.title);
                }
                if (this.description != null) {
                    arrayList.add("description=" + this.description);
                }
                if (this.default_value != null) {
                    arrayList.add("default_value=" + this.default_value);
                }
                if (this.value_ != null) {
                    arrayList.add("value_=" + this.value_);
                }
                return CollectionsKt.joinToString$default(arrayList, ", ", "Toggle{", "}", 0, null, null, 56, null);
            }

            public static /* synthetic */ Toggle copy$default(Toggle toggle, String str, String str2, Value value, Value value2, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = toggle.title;
                }
                if ((i & 2) != 0) {
                    str2 = toggle.description;
                }
                if ((i & 4) != 0) {
                    value = toggle.default_value;
                }
                if ((i & 8) != 0) {
                    value2 = toggle.value_;
                }
                if ((i & 16) != 0) {
                    byteString = toggle.unknownFields();
                }
                ByteString byteString2 = byteString;
                Value value3 = value;
                return toggle.copy(str, str2, value3, value2, byteString2);
            }

            public final Toggle copy(String title, String description, Value default_value, Value value_, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new Toggle(title, description, default_value, value_, unknownFields);
            }

            /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
            @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;", "()V", "default_value", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Value;", "description", "", LinkHeader.Parameters.Title, "value_", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<Toggle, Builder> {
                public Value default_value;
                public String description;
                public String title;
                public Value value_;

                public final Builder title(String title) {
                    this.title = title;
                    return this;
                }

                public final Builder description(String description) {
                    this.description = description;
                    return this;
                }

                public final Builder default_value(Value default_value) {
                    this.default_value = default_value;
                    return this;
                }

                public final Builder value_(Value value_) {
                    this.value_ = value_;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public Toggle build() {
                    return new Toggle(this.title, this.description, this.default_value, this.value_, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ Toggle build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Toggle.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<Toggle>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.UpdateSdiActionRequest$Input$Toggle$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(UpdateSdiActionRequest.Input.Toggle value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        if (value.title != null) {
                            size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.title);
                        }
                        if (value.description != null) {
                            size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.description);
                        }
                        return size + UpdateSdiActionRequest.Input.Toggle.Value.ADAPTER.encodedSizeWithTag(3, value.default_value) + UpdateSdiActionRequest.Input.Toggle.Value.ADAPTER.encodedSizeWithTag(4, value.value_);
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, UpdateSdiActionRequest.Input.Toggle value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (value.title != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.title);
                        }
                        if (value.description != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.description);
                        }
                        UpdateSdiActionRequest.Input.Toggle.Value.ADAPTER.encodeWithTag(writer, 3, value.default_value);
                        UpdateSdiActionRequest.Input.Toggle.Value.ADAPTER.encodeWithTag(writer, 4, value.value_);
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, UpdateSdiActionRequest.Input.Toggle value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        UpdateSdiActionRequest.Input.Toggle.Value.ADAPTER.encodeWithTag(writer, 4, value.value_);
                        UpdateSdiActionRequest.Input.Toggle.Value.ADAPTER.encodeWithTag(writer, 3, value.default_value);
                        if (value.description != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.description);
                        }
                        if (value.title != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.title);
                        }
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public UpdateSdiActionRequest.Input.Toggle redact(UpdateSdiActionRequest.Input.Toggle value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        String str = value.title;
                        String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                        String str2 = value.description;
                        return UpdateSdiActionRequest.Input.Toggle.copy$default(value, strRedact, str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null, null, null, ByteString.EMPTY, 12, null);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public UpdateSdiActionRequest.Input.Toggle decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        long jBeginMessage = reader.beginMessage();
                        String strDecode = null;
                        String strDecode2 = null;
                        UpdateSdiActionRequest.Input.Toggle.Value valueDecode = null;
                        UpdateSdiActionRequest.Input.Toggle.Value valueDecode2 = null;
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new UpdateSdiActionRequest.Input.Toggle(strDecode, strDecode2, valueDecode, valueDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                            if (iNextTag == 1) {
                                strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                            } else if (iNextTag == 2) {
                                strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                            } else if (iNextTag == 3) {
                                try {
                                    valueDecode = UpdateSdiActionRequest.Input.Toggle.Value.ADAPTER.decode(reader);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                }
                            } else if (iNextTag == 4) {
                                try {
                                    valueDecode2 = UpdateSdiActionRequest.Input.Toggle.Value.ADAPTER.decode(reader);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e2) {
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e2.value));
                                }
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }
                };
            }

            /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
            /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
            /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Value;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "VALUE_INVALID", "ENABLED", "DISABLED", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Value implements WireEnum {
                private static final /* synthetic */ EnumEntries $ENTRIES;
                private static final /* synthetic */ Value[] $VALUES;
                public static final ProtoAdapter<Value> ADAPTER;

                /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
                public static final Companion INSTANCE;
                public static final Value DISABLED;
                public static final Value ENABLED;
                public static final Value VALUE_INVALID;
                private final int value;

                private static final /* synthetic */ Value[] $values() {
                    return new Value[]{VALUE_INVALID, ENABLED, DISABLED};
                }

                @JvmStatic
                public static final Value fromValue(int i) {
                    return INSTANCE.fromValue(i);
                }

                public static EnumEntries<Value> getEntries() {
                    return $ENTRIES;
                }

                public static Value valueOf(String str) {
                    return (Value) Enum.valueOf(Value.class, str);
                }

                public static Value[] values() {
                    return (Value[]) $VALUES.clone();
                }

                private Value(String str, int i, int i2) {
                    this.value = i2;
                }

                @Override // com.squareup.wire.WireEnum
                public int getValue() {
                    return this.value;
                }

                static {
                    final Value value = new Value("VALUE_INVALID", 0, 0);
                    VALUE_INVALID = value;
                    ENABLED = new Value("ENABLED", 1, 1);
                    DISABLED = new Value("DISABLED", 2, 2);
                    Value[] valueArr$values = $values();
                    $VALUES = valueArr$values;
                    $ENTRIES = EnumEntriesKt.enumEntries(valueArr$values);
                    INSTANCE = new Companion(null);
                    final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Value.class);
                    final Syntax syntax = Syntax.PROTO_3;
                    ADAPTER = new EnumAdapter<Value>(orCreateKotlinClass, syntax, value) { // from class: com.stripe.proto.api.rest.UpdateSdiActionRequest$Input$Toggle$Value$Companion$ADAPTER$1
                        {
                            UpdateSdiActionRequest.Input.Toggle.Value value2 = value;
                        }

                        /* JADX INFO: Access modifiers changed from: protected */
                        @Override // com.squareup.wire.EnumAdapter
                        public UpdateSdiActionRequest.Input.Toggle.Value fromValue(int value2) {
                            return UpdateSdiActionRequest.Input.Toggle.Value.INSTANCE.fromValue(value2);
                        }
                    };
                }

                /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
                @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Value$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Value;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
                public static final class Companion {
                    public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                        this();
                    }

                    private Companion() {
                    }

                    @JvmStatic
                    public final Value fromValue(int value) {
                        if (value == 0) {
                            return Value.VALUE_INVALID;
                        }
                        if (value == 1) {
                            return Value.ENABLED;
                        }
                        if (value != 2) {
                            return null;
                        }
                        return Value.DISABLED;
                    }
                }
            }
        }
    }

    /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ-\u0010\u000b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\fJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0006H\u0016R\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\nR\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge$Builder;", "maximum_amount", "", NotificationCompat.CATEGORY_STATUS, "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/Long;Ljava/lang/String;Lokio/ByteString;)V", "Ljava/lang/Long;", "copy", "(Ljava/lang/Long;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Surcharge extends Message<Surcharge, Builder> {
        public static final ProtoAdapter<Surcharge> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", jsonName = "maximumAmount", schemaIndex = 0, tag = 1)
        public final Long maximum_amount;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 1, tag = 2)
        public final String status;

        public Surcharge() {
            this(null, null, null, 7, null);
        }

        public /* synthetic */ Surcharge(Long l, String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : l, (i & 2) != 0 ? null : str, (i & 4) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Surcharge(Long l, String str, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.maximum_amount = l;
            this.status = str;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.maximum_amount = this.maximum_amount;
            builder.status = this.status;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof Surcharge)) {
                return false;
            }
            Surcharge surcharge = (Surcharge) other;
            return Intrinsics.areEqual(unknownFields(), surcharge.unknownFields()) && Intrinsics.areEqual(this.maximum_amount, surcharge.maximum_amount) && Intrinsics.areEqual(this.status, surcharge.status);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = unknownFields().hashCode() * 37;
            Long l = this.maximum_amount;
            int iHashCode2 = (iHashCode + (l != null ? l.hashCode() : 0)) * 37;
            String str = this.status;
            int iHashCode3 = iHashCode2 + (str != null ? str.hashCode() : 0);
            this.hashCode = iHashCode3;
            return iHashCode3;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (this.maximum_amount != null) {
                arrayList.add("maximum_amount=" + this.maximum_amount);
            }
            if (this.status != null) {
                arrayList.add("status=" + this.status);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "Surcharge{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ Surcharge copy$default(Surcharge surcharge, Long l, String str, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                l = surcharge.maximum_amount;
            }
            if ((i & 2) != 0) {
                str = surcharge.status;
            }
            if ((i & 4) != 0) {
                byteString = surcharge.unknownFields();
            }
            return surcharge.copy(l, str, byteString);
        }

        public final Surcharge copy(Long maximum_amount, String status, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new Surcharge(maximum_amount, status, unknownFields);
        }

        /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
        @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u0015\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\nJ\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\bR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;", "()V", "maximum_amount", "", "Ljava/lang/Long;", NotificationCompat.CATEGORY_STATUS, "", "build", "(Ljava/lang/Long;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge$Builder;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<Surcharge, Builder> {
            public Long maximum_amount;
            public String status;

            public final Builder maximum_amount(Long maximum_amount) {
                this.maximum_amount = maximum_amount;
                return this;
            }

            public final Builder status(String status) {
                this.status = status;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public Surcharge build() {
                return new Surcharge(this.maximum_amount, this.status, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: UpdateSdiActionRequest.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Surcharge build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Surcharge.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<Surcharge>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.UpdateSdiActionRequest$Surcharge$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(UpdateSdiActionRequest.Surcharge value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.maximum_amount != null) {
                        size += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(1, value.maximum_amount);
                    }
                    return value.status != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.status) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, UpdateSdiActionRequest.Surcharge value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.maximum_amount != null) {
                        ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 1, value.maximum_amount);
                    }
                    if (value.status != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.status);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, UpdateSdiActionRequest.Surcharge value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.status != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.status);
                    }
                    if (value.maximum_amount != null) {
                        ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 1, value.maximum_amount);
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public UpdateSdiActionRequest.Surcharge redact(UpdateSdiActionRequest.Surcharge value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    Long l = value.maximum_amount;
                    Long lRedact = l != null ? ProtoAdapter.INT64_VALUE.redact(l) : null;
                    String str = value.status;
                    return value.copy(lRedact, str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null, ByteString.EMPTY);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public UpdateSdiActionRequest.Surcharge decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    Long lDecode = null;
                    String strDecode = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new UpdateSdiActionRequest.Surcharge(lDecode, strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            lDecode = ProtoAdapter.INT64_VALUE.decode(reader);
                        } else if (iNextTag == 2) {
                            strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }
}
