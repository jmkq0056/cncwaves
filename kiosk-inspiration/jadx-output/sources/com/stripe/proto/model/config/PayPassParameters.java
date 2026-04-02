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

/* JADX INFO: compiled from: PayPassParameters.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001c2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001b\u001cB}\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\r\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010¢\u0006\u0002\u0010\u0011J~\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u00042\b\b\u0002\u0010\r\u001a\u00020\u00042\b\b\u0002\u0010\u000e\u001a\u00020\u00042\b\b\u0002\u0010\u000f\u001a\u00020\u0010J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u0002H\u0016J\b\u0010\u001a\u001a\u00020\u0004H\u0016R\u0010\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/stripe/proto/model/config/PayPassParameters;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/config/PayPassParameters$Builder;", "kernel_id", "", "magstripe_cvm_capability_required", "magstripe_cvm_capability_not_required", "cvm_capability_required", "cvm_capability_not_required", "contactless_floor_limit", "contactless_cvm_required_limit", "contactless_transaction_limit_no_on_device_cvm", "contactless_transaction_limit_on_device_cvm", "message_hold_time", "time_out_value", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PayPassParameters extends Message<PayPassParameters, Builder> {
    public static final ProtoAdapter<PayPassParameters> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "contactlessCvmRequiredLimit", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final String contactless_cvm_required_limit;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "contactlessFloorLimit", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final String contactless_floor_limit;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "contactlessTransactionLimitNoOnDeviceCvm", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 8)
    public final String contactless_transaction_limit_no_on_device_cvm;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "contactlessTransactionLimitOnDeviceCvm", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 9)
    public final String contactless_transaction_limit_on_device_cvm;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "cvmCapabilityNotRequired", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final String cvm_capability_not_required;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "cvmCapabilityRequired", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String cvm_capability_required;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "kernelId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String kernel_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "magstripeCvmCapabilityNotRequired", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String magstripe_cvm_capability_not_required;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "magstripeCvmCapabilityRequired", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String magstripe_cvm_capability_required;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "messageHoldTime", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 9, tag = 10)
    public final String message_hold_time;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "timeOutValue", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 10, tag = 11)
    public final String time_out_value;

    public PayPassParameters() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, 4095, null);
    }

    public /* synthetic */ PayPassParameters(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? "" : str4, (i & 16) != 0 ? "" : str5, (i & 32) != 0 ? "" : str6, (i & 64) != 0 ? "" : str7, (i & 128) != 0 ? "" : str8, (i & 256) != 0 ? "" : str9, (i & 512) != 0 ? "" : str10, (i & 1024) != 0 ? "" : str11, (i & 2048) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PayPassParameters(String kernel_id, String magstripe_cvm_capability_required, String magstripe_cvm_capability_not_required, String cvm_capability_required, String cvm_capability_not_required, String contactless_floor_limit, String contactless_cvm_required_limit, String contactless_transaction_limit_no_on_device_cvm, String contactless_transaction_limit_on_device_cvm, String message_hold_time, String time_out_value, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(kernel_id, "kernel_id");
        Intrinsics.checkNotNullParameter(magstripe_cvm_capability_required, "magstripe_cvm_capability_required");
        Intrinsics.checkNotNullParameter(magstripe_cvm_capability_not_required, "magstripe_cvm_capability_not_required");
        Intrinsics.checkNotNullParameter(cvm_capability_required, "cvm_capability_required");
        Intrinsics.checkNotNullParameter(cvm_capability_not_required, "cvm_capability_not_required");
        Intrinsics.checkNotNullParameter(contactless_floor_limit, "contactless_floor_limit");
        Intrinsics.checkNotNullParameter(contactless_cvm_required_limit, "contactless_cvm_required_limit");
        Intrinsics.checkNotNullParameter(contactless_transaction_limit_no_on_device_cvm, "contactless_transaction_limit_no_on_device_cvm");
        Intrinsics.checkNotNullParameter(contactless_transaction_limit_on_device_cvm, "contactless_transaction_limit_on_device_cvm");
        Intrinsics.checkNotNullParameter(message_hold_time, "message_hold_time");
        Intrinsics.checkNotNullParameter(time_out_value, "time_out_value");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.kernel_id = kernel_id;
        this.magstripe_cvm_capability_required = magstripe_cvm_capability_required;
        this.magstripe_cvm_capability_not_required = magstripe_cvm_capability_not_required;
        this.cvm_capability_required = cvm_capability_required;
        this.cvm_capability_not_required = cvm_capability_not_required;
        this.contactless_floor_limit = contactless_floor_limit;
        this.contactless_cvm_required_limit = contactless_cvm_required_limit;
        this.contactless_transaction_limit_no_on_device_cvm = contactless_transaction_limit_no_on_device_cvm;
        this.contactless_transaction_limit_on_device_cvm = contactless_transaction_limit_on_device_cvm;
        this.message_hold_time = message_hold_time;
        this.time_out_value = time_out_value;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.kernel_id = this.kernel_id;
        builder.magstripe_cvm_capability_required = this.magstripe_cvm_capability_required;
        builder.magstripe_cvm_capability_not_required = this.magstripe_cvm_capability_not_required;
        builder.cvm_capability_required = this.cvm_capability_required;
        builder.cvm_capability_not_required = this.cvm_capability_not_required;
        builder.contactless_floor_limit = this.contactless_floor_limit;
        builder.contactless_cvm_required_limit = this.contactless_cvm_required_limit;
        builder.contactless_transaction_limit_no_on_device_cvm = this.contactless_transaction_limit_no_on_device_cvm;
        builder.contactless_transaction_limit_on_device_cvm = this.contactless_transaction_limit_on_device_cvm;
        builder.message_hold_time = this.message_hold_time;
        builder.time_out_value = this.time_out_value;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof PayPassParameters)) {
            return false;
        }
        PayPassParameters payPassParameters = (PayPassParameters) other;
        return Intrinsics.areEqual(unknownFields(), payPassParameters.unknownFields()) && Intrinsics.areEqual(this.kernel_id, payPassParameters.kernel_id) && Intrinsics.areEqual(this.magstripe_cvm_capability_required, payPassParameters.magstripe_cvm_capability_required) && Intrinsics.areEqual(this.magstripe_cvm_capability_not_required, payPassParameters.magstripe_cvm_capability_not_required) && Intrinsics.areEqual(this.cvm_capability_required, payPassParameters.cvm_capability_required) && Intrinsics.areEqual(this.cvm_capability_not_required, payPassParameters.cvm_capability_not_required) && Intrinsics.areEqual(this.contactless_floor_limit, payPassParameters.contactless_floor_limit) && Intrinsics.areEqual(this.contactless_cvm_required_limit, payPassParameters.contactless_cvm_required_limit) && Intrinsics.areEqual(this.contactless_transaction_limit_no_on_device_cvm, payPassParameters.contactless_transaction_limit_no_on_device_cvm) && Intrinsics.areEqual(this.contactless_transaction_limit_on_device_cvm, payPassParameters.contactless_transaction_limit_on_device_cvm) && Intrinsics.areEqual(this.message_hold_time, payPassParameters.message_hold_time) && Intrinsics.areEqual(this.time_out_value, payPassParameters.time_out_value);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((((((((((((((((unknownFields().hashCode() * 37) + this.kernel_id.hashCode()) * 37) + this.magstripe_cvm_capability_required.hashCode()) * 37) + this.magstripe_cvm_capability_not_required.hashCode()) * 37) + this.cvm_capability_required.hashCode()) * 37) + this.cvm_capability_not_required.hashCode()) * 37) + this.contactless_floor_limit.hashCode()) * 37) + this.contactless_cvm_required_limit.hashCode()) * 37) + this.contactless_transaction_limit_no_on_device_cvm.hashCode()) * 37) + this.contactless_transaction_limit_on_device_cvm.hashCode()) * 37) + this.message_hold_time.hashCode()) * 37) + this.time_out_value.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("kernel_id=" + Internal.sanitize(this.kernel_id));
        arrayList2.add("magstripe_cvm_capability_required=" + Internal.sanitize(this.magstripe_cvm_capability_required));
        arrayList2.add("magstripe_cvm_capability_not_required=" + Internal.sanitize(this.magstripe_cvm_capability_not_required));
        arrayList2.add("cvm_capability_required=" + Internal.sanitize(this.cvm_capability_required));
        arrayList2.add("cvm_capability_not_required=" + Internal.sanitize(this.cvm_capability_not_required));
        arrayList2.add("contactless_floor_limit=" + Internal.sanitize(this.contactless_floor_limit));
        arrayList2.add("contactless_cvm_required_limit=" + Internal.sanitize(this.contactless_cvm_required_limit));
        arrayList2.add("contactless_transaction_limit_no_on_device_cvm=" + Internal.sanitize(this.contactless_transaction_limit_no_on_device_cvm));
        arrayList2.add("contactless_transaction_limit_on_device_cvm=" + Internal.sanitize(this.contactless_transaction_limit_on_device_cvm));
        arrayList2.add("message_hold_time=" + Internal.sanitize(this.message_hold_time));
        arrayList2.add("time_out_value=" + Internal.sanitize(this.time_out_value));
        return CollectionsKt.joinToString$default(arrayList, ", ", "PayPassParameters{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ PayPassParameters copy$default(PayPassParameters payPassParameters, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = payPassParameters.kernel_id;
        }
        if ((i & 2) != 0) {
            str2 = payPassParameters.magstripe_cvm_capability_required;
        }
        if ((i & 4) != 0) {
            str3 = payPassParameters.magstripe_cvm_capability_not_required;
        }
        if ((i & 8) != 0) {
            str4 = payPassParameters.cvm_capability_required;
        }
        if ((i & 16) != 0) {
            str5 = payPassParameters.cvm_capability_not_required;
        }
        if ((i & 32) != 0) {
            str6 = payPassParameters.contactless_floor_limit;
        }
        if ((i & 64) != 0) {
            str7 = payPassParameters.contactless_cvm_required_limit;
        }
        if ((i & 128) != 0) {
            str8 = payPassParameters.contactless_transaction_limit_no_on_device_cvm;
        }
        if ((i & 256) != 0) {
            str9 = payPassParameters.contactless_transaction_limit_on_device_cvm;
        }
        if ((i & 512) != 0) {
            str10 = payPassParameters.message_hold_time;
        }
        if ((i & 1024) != 0) {
            str11 = payPassParameters.time_out_value;
        }
        if ((i & 2048) != 0) {
            byteString = payPassParameters.unknownFields();
        }
        String str12 = str11;
        ByteString byteString2 = byteString;
        String str13 = str9;
        String str14 = str10;
        String str15 = str7;
        String str16 = str8;
        String str17 = str5;
        String str18 = str6;
        return payPassParameters.copy(str, str2, str3, str4, str17, str18, str15, str16, str13, str14, str12, byteString2);
    }

    public final PayPassParameters copy(String kernel_id, String magstripe_cvm_capability_required, String magstripe_cvm_capability_not_required, String cvm_capability_required, String cvm_capability_not_required, String contactless_floor_limit, String contactless_cvm_required_limit, String contactless_transaction_limit_no_on_device_cvm, String contactless_transaction_limit_on_device_cvm, String message_hold_time, String time_out_value, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(kernel_id, "kernel_id");
        Intrinsics.checkNotNullParameter(magstripe_cvm_capability_required, "magstripe_cvm_capability_required");
        Intrinsics.checkNotNullParameter(magstripe_cvm_capability_not_required, "magstripe_cvm_capability_not_required");
        Intrinsics.checkNotNullParameter(cvm_capability_required, "cvm_capability_required");
        Intrinsics.checkNotNullParameter(cvm_capability_not_required, "cvm_capability_not_required");
        Intrinsics.checkNotNullParameter(contactless_floor_limit, "contactless_floor_limit");
        Intrinsics.checkNotNullParameter(contactless_cvm_required_limit, "contactless_cvm_required_limit");
        Intrinsics.checkNotNullParameter(contactless_transaction_limit_no_on_device_cvm, "contactless_transaction_limit_no_on_device_cvm");
        Intrinsics.checkNotNullParameter(contactless_transaction_limit_on_device_cvm, "contactless_transaction_limit_on_device_cvm");
        Intrinsics.checkNotNullParameter(message_hold_time, "message_hold_time");
        Intrinsics.checkNotNullParameter(time_out_value, "time_out_value");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new PayPassParameters(kernel_id, magstripe_cvm_capability_required, magstripe_cvm_capability_not_required, cvm_capability_required, cvm_capability_not_required, contactless_floor_limit, contactless_cvm_required_limit, contactless_transaction_limit_no_on_device_cvm, contactless_transaction_limit_on_device_cvm, message_hold_time, time_out_value, unknownFields);
    }

    /* JADX INFO: compiled from: PayPassParameters.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0005J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/stripe/proto/model/config/PayPassParameters$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/config/PayPassParameters;", "()V", "contactless_cvm_required_limit", "", "contactless_floor_limit", "contactless_transaction_limit_no_on_device_cvm", "contactless_transaction_limit_on_device_cvm", "cvm_capability_not_required", "cvm_capability_required", "kernel_id", "magstripe_cvm_capability_not_required", "magstripe_cvm_capability_required", "message_hold_time", "time_out_value", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<PayPassParameters, Builder> {
        public String kernel_id = "";
        public String magstripe_cvm_capability_required = "";
        public String magstripe_cvm_capability_not_required = "";
        public String cvm_capability_required = "";
        public String cvm_capability_not_required = "";
        public String contactless_floor_limit = "";
        public String contactless_cvm_required_limit = "";
        public String contactless_transaction_limit_no_on_device_cvm = "";
        public String contactless_transaction_limit_on_device_cvm = "";
        public String message_hold_time = "";
        public String time_out_value = "";

        public final Builder kernel_id(String kernel_id) {
            Intrinsics.checkNotNullParameter(kernel_id, "kernel_id");
            this.kernel_id = kernel_id;
            return this;
        }

        public final Builder magstripe_cvm_capability_required(String magstripe_cvm_capability_required) {
            Intrinsics.checkNotNullParameter(magstripe_cvm_capability_required, "magstripe_cvm_capability_required");
            this.magstripe_cvm_capability_required = magstripe_cvm_capability_required;
            return this;
        }

        public final Builder magstripe_cvm_capability_not_required(String magstripe_cvm_capability_not_required) {
            Intrinsics.checkNotNullParameter(magstripe_cvm_capability_not_required, "magstripe_cvm_capability_not_required");
            this.magstripe_cvm_capability_not_required = magstripe_cvm_capability_not_required;
            return this;
        }

        public final Builder cvm_capability_required(String cvm_capability_required) {
            Intrinsics.checkNotNullParameter(cvm_capability_required, "cvm_capability_required");
            this.cvm_capability_required = cvm_capability_required;
            return this;
        }

        public final Builder cvm_capability_not_required(String cvm_capability_not_required) {
            Intrinsics.checkNotNullParameter(cvm_capability_not_required, "cvm_capability_not_required");
            this.cvm_capability_not_required = cvm_capability_not_required;
            return this;
        }

        public final Builder contactless_floor_limit(String contactless_floor_limit) {
            Intrinsics.checkNotNullParameter(contactless_floor_limit, "contactless_floor_limit");
            this.contactless_floor_limit = contactless_floor_limit;
            return this;
        }

        public final Builder contactless_cvm_required_limit(String contactless_cvm_required_limit) {
            Intrinsics.checkNotNullParameter(contactless_cvm_required_limit, "contactless_cvm_required_limit");
            this.contactless_cvm_required_limit = contactless_cvm_required_limit;
            return this;
        }

        public final Builder contactless_transaction_limit_no_on_device_cvm(String contactless_transaction_limit_no_on_device_cvm) {
            Intrinsics.checkNotNullParameter(contactless_transaction_limit_no_on_device_cvm, "contactless_transaction_limit_no_on_device_cvm");
            this.contactless_transaction_limit_no_on_device_cvm = contactless_transaction_limit_no_on_device_cvm;
            return this;
        }

        public final Builder contactless_transaction_limit_on_device_cvm(String contactless_transaction_limit_on_device_cvm) {
            Intrinsics.checkNotNullParameter(contactless_transaction_limit_on_device_cvm, "contactless_transaction_limit_on_device_cvm");
            this.contactless_transaction_limit_on_device_cvm = contactless_transaction_limit_on_device_cvm;
            return this;
        }

        public final Builder message_hold_time(String message_hold_time) {
            Intrinsics.checkNotNullParameter(message_hold_time, "message_hold_time");
            this.message_hold_time = message_hold_time;
            return this;
        }

        public final Builder time_out_value(String time_out_value) {
            Intrinsics.checkNotNullParameter(time_out_value, "time_out_value");
            this.time_out_value = time_out_value;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public PayPassParameters build() {
            return new PayPassParameters(this.kernel_id, this.magstripe_cvm_capability_required, this.magstripe_cvm_capability_not_required, this.cvm_capability_required, this.cvm_capability_not_required, this.contactless_floor_limit, this.contactless_cvm_required_limit, this.contactless_transaction_limit_no_on_device_cvm, this.contactless_transaction_limit_on_device_cvm, this.message_hold_time, this.time_out_value, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: PayPassParameters.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/config/PayPassParameters$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/PayPassParameters;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/config/PayPassParameters$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ PayPassParameters build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(PayPassParameters.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<PayPassParameters>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.config.PayPassParameters$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(PayPassParameters value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.kernel_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.kernel_id);
                }
                if (!Intrinsics.areEqual(value.magstripe_cvm_capability_required, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.magstripe_cvm_capability_required);
                }
                if (!Intrinsics.areEqual(value.magstripe_cvm_capability_not_required, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.magstripe_cvm_capability_not_required);
                }
                if (!Intrinsics.areEqual(value.cvm_capability_required, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(4, value.cvm_capability_required);
                }
                if (!Intrinsics.areEqual(value.cvm_capability_not_required, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(5, value.cvm_capability_not_required);
                }
                if (!Intrinsics.areEqual(value.contactless_floor_limit, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(6, value.contactless_floor_limit);
                }
                if (!Intrinsics.areEqual(value.contactless_cvm_required_limit, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(7, value.contactless_cvm_required_limit);
                }
                if (!Intrinsics.areEqual(value.contactless_transaction_limit_no_on_device_cvm, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(8, value.contactless_transaction_limit_no_on_device_cvm);
                }
                if (!Intrinsics.areEqual(value.contactless_transaction_limit_on_device_cvm, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(9, value.contactless_transaction_limit_on_device_cvm);
                }
                if (!Intrinsics.areEqual(value.message_hold_time, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(10, value.message_hold_time);
                }
                return !Intrinsics.areEqual(value.time_out_value, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(11, value.time_out_value) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, PayPassParameters value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.kernel_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.kernel_id);
                }
                if (!Intrinsics.areEqual(value.magstripe_cvm_capability_required, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.magstripe_cvm_capability_required);
                }
                if (!Intrinsics.areEqual(value.magstripe_cvm_capability_not_required, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.magstripe_cvm_capability_not_required);
                }
                if (!Intrinsics.areEqual(value.cvm_capability_required, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.cvm_capability_required);
                }
                if (!Intrinsics.areEqual(value.cvm_capability_not_required, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.cvm_capability_not_required);
                }
                if (!Intrinsics.areEqual(value.contactless_floor_limit, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.contactless_floor_limit);
                }
                if (!Intrinsics.areEqual(value.contactless_cvm_required_limit, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.contactless_cvm_required_limit);
                }
                if (!Intrinsics.areEqual(value.contactless_transaction_limit_no_on_device_cvm, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 8, value.contactless_transaction_limit_no_on_device_cvm);
                }
                if (!Intrinsics.areEqual(value.contactless_transaction_limit_on_device_cvm, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 9, value.contactless_transaction_limit_on_device_cvm);
                }
                if (!Intrinsics.areEqual(value.message_hold_time, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 10, value.message_hold_time);
                }
                if (!Intrinsics.areEqual(value.time_out_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 11, value.time_out_value);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, PayPassParameters value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.time_out_value, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 11, value.time_out_value);
                }
                if (!Intrinsics.areEqual(value.message_hold_time, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 10, value.message_hold_time);
                }
                if (!Intrinsics.areEqual(value.contactless_transaction_limit_on_device_cvm, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 9, value.contactless_transaction_limit_on_device_cvm);
                }
                if (!Intrinsics.areEqual(value.contactless_transaction_limit_no_on_device_cvm, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 8, value.contactless_transaction_limit_no_on_device_cvm);
                }
                if (!Intrinsics.areEqual(value.contactless_cvm_required_limit, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.contactless_cvm_required_limit);
                }
                if (!Intrinsics.areEqual(value.contactless_floor_limit, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.contactless_floor_limit);
                }
                if (!Intrinsics.areEqual(value.cvm_capability_not_required, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.cvm_capability_not_required);
                }
                if (!Intrinsics.areEqual(value.cvm_capability_required, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.cvm_capability_required);
                }
                if (!Intrinsics.areEqual(value.magstripe_cvm_capability_not_required, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.magstripe_cvm_capability_not_required);
                }
                if (!Intrinsics.areEqual(value.magstripe_cvm_capability_required, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.magstripe_cvm_capability_required);
                }
                if (Intrinsics.areEqual(value.kernel_id, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.kernel_id);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public PayPassParameters redact(PayPassParameters value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return PayPassParameters.copy$default(value, null, null, null, null, null, null, null, null, null, null, null, ByteString.EMPTY, 2047, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public PayPassParameters decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = "";
                String strDecode3 = strDecode2;
                String strDecode4 = strDecode3;
                String strDecode5 = strDecode4;
                String strDecode6 = strDecode5;
                String strDecode7 = strDecode6;
                String strDecode8 = strDecode7;
                String strDecode9 = strDecode8;
                String strDecode10 = strDecode9;
                String strDecode11 = strDecode10;
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
                                strDecode8 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 9:
                                strDecode9 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 10:
                                strDecode10 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 11:
                                strDecode11 = ProtoAdapter.STRING.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new PayPassParameters(strDecode, strDecode2, strDecode3, strDecode4, strDecode5, strDecode6, strDecode7, strDecode8, strDecode9, strDecode10, strDecode11, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
