package com.stripe.proto.event_channel.pub.message;

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
import com.stripe.proto.event_channel.pub.message.Command;
import com.sun.jna.platform.win32.Advapi32;
import java.io.IOException;
import java.util.ArrayList;
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

/* JADX INFO: compiled from: Command.kt */
/* JADX INFO: loaded from: classes3.dex */
@kotlin.Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 '2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003&'(B£\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u001b¢\u0006\u0002\u0010\u001cJ¤\u0001\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u00042\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u001bJ\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!H\u0096\u0002J\b\u0010\"\u001a\u00020#H\u0016J\b\u0010$\u001a\u00020\u0002H\u0016J\b\u0010%\u001a\u00020\u0004H\u0016R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00198\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/Command;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/event_channel/pub/message/Command$Builder;", "trace_id", "", "stripe_ephemeral_key", "stripe_account", "payment_intent_payload", "Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;", "cancel_payload", "Lcom/stripe/proto/event_channel/pub/message/CancelPayload;", "setup_intent_payload", "Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;", "display_payload", "Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;", "refund_payment_payload", "Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;", "collect_inputs_payload", "Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;", "confirm_payment_intent_payload", "Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;", "collect_payment_method_payload", "Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;", OfflineStorageConstantsKt.READER_ID, "metadata", "Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;Lcom/stripe/proto/event_channel/pub/message/CancelPayload;Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "Metadata", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Command extends Message<Command, Builder> {
    public static final ProtoAdapter<Command> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.event_channel.pub.message.CancelPayload#ADAPTER", jsonName = "cancelPayload", oneofName = "payload", schemaIndex = 4, tag = 4)
    public final CancelPayload cancel_payload;

    @WireField(adapter = "com.stripe.proto.event_channel.pub.message.CollectInputsPayload#ADAPTER", jsonName = "collectInputsPayload", oneofName = "payload", schemaIndex = 8, tag = 9)
    public final CollectInputsPayload collect_inputs_payload;

    @WireField(adapter = "com.stripe.proto.event_channel.pub.message.CollectPaymentMethodPayload#ADAPTER", jsonName = "collectPaymentMethodPayload", oneofName = "payload", schemaIndex = 10, tag = 12)
    public final CollectPaymentMethodPayload collect_payment_method_payload;

    @WireField(adapter = "com.stripe.proto.event_channel.pub.message.ConfirmPaymentIntentPayload#ADAPTER", jsonName = "confirmPaymentIntentPayload", oneofName = "payload", schemaIndex = 9, tag = 11)
    public final ConfirmPaymentIntentPayload confirm_payment_intent_payload;

    @WireField(adapter = "com.stripe.proto.event_channel.pub.message.DisplayPayload#ADAPTER", jsonName = "displayPayload", oneofName = "payload", schemaIndex = 6, tag = 6)
    public final DisplayPayload display_payload;

    @WireField(adapter = "com.stripe.proto.event_channel.pub.message.Command$Metadata#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 12, tag = 14)
    public final Metadata metadata;

    @WireField(adapter = "com.stripe.proto.event_channel.pub.message.PaymentIntentPayload#ADAPTER", jsonName = "paymentIntentPayload", oneofName = "payload", schemaIndex = 3, tag = 3)
    public final PaymentIntentPayload payment_intent_payload;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "readerId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 11, tag = 10)
    public final String reader_id;

    @WireField(adapter = "com.stripe.proto.event_channel.pub.message.RefundPaymentPayload#ADAPTER", jsonName = "refundPaymentPayload", oneofName = "payload", schemaIndex = 7, tag = 8)
    public final RefundPaymentPayload refund_payment_payload;

    @WireField(adapter = "com.stripe.proto.event_channel.pub.message.SetupIntentPayload#ADAPTER", jsonName = "setupIntentPayload", oneofName = "payload", schemaIndex = 5, tag = 5)
    public final SetupIntentPayload setup_intent_payload;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "stripeAccount", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 13)
    public final String stripe_account;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "stripeEphemeralKey", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String stripe_ephemeral_key;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "traceId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String trace_id;

    public Command() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, Advapi32.MAX_VALUE_NAME, null);
    }

    public /* synthetic */ Command(String str, String str2, String str3, PaymentIntentPayload paymentIntentPayload, CancelPayload cancelPayload, SetupIntentPayload setupIntentPayload, DisplayPayload displayPayload, RefundPaymentPayload refundPaymentPayload, CollectInputsPayload collectInputsPayload, ConfirmPaymentIntentPayload confirmPaymentIntentPayload, CollectPaymentMethodPayload collectPaymentMethodPayload, String str4, Metadata metadata, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? null : paymentIntentPayload, (i & 16) != 0 ? null : cancelPayload, (i & 32) != 0 ? null : setupIntentPayload, (i & 64) != 0 ? null : displayPayload, (i & 128) != 0 ? null : refundPaymentPayload, (i & 256) != 0 ? null : collectInputsPayload, (i & 512) != 0 ? null : confirmPaymentIntentPayload, (i & 1024) != 0 ? null : collectPaymentMethodPayload, (i & 2048) == 0 ? str4 : "", (i & 4096) == 0 ? metadata : null, (i & 8192) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Command(String trace_id, String stripe_ephemeral_key, String stripe_account, PaymentIntentPayload paymentIntentPayload, CancelPayload cancelPayload, SetupIntentPayload setupIntentPayload, DisplayPayload displayPayload, RefundPaymentPayload refundPaymentPayload, CollectInputsPayload collectInputsPayload, ConfirmPaymentIntentPayload confirmPaymentIntentPayload, CollectPaymentMethodPayload collectPaymentMethodPayload, String reader_id, Metadata metadata, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(trace_id, "trace_id");
        Intrinsics.checkNotNullParameter(stripe_ephemeral_key, "stripe_ephemeral_key");
        Intrinsics.checkNotNullParameter(stripe_account, "stripe_account");
        Intrinsics.checkNotNullParameter(reader_id, "reader_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.trace_id = trace_id;
        this.stripe_ephemeral_key = stripe_ephemeral_key;
        this.stripe_account = stripe_account;
        this.payment_intent_payload = paymentIntentPayload;
        this.cancel_payload = cancelPayload;
        this.setup_intent_payload = setupIntentPayload;
        this.display_payload = displayPayload;
        this.refund_payment_payload = refundPaymentPayload;
        this.collect_inputs_payload = collectInputsPayload;
        this.confirm_payment_intent_payload = confirmPaymentIntentPayload;
        this.collect_payment_method_payload = collectPaymentMethodPayload;
        this.reader_id = reader_id;
        this.metadata = metadata;
        if (Internal.countNonNull(paymentIntentPayload, cancelPayload, setupIntentPayload, displayPayload, refundPaymentPayload, collectInputsPayload, confirmPaymentIntentPayload, collectPaymentMethodPayload) > 1) {
            throw new IllegalArgumentException("At most one of payment_intent_payload, cancel_payload, setup_intent_payload, display_payload, refund_payment_payload, collect_inputs_payload, confirm_payment_intent_payload, collect_payment_method_payload may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.trace_id = this.trace_id;
        builder.stripe_ephemeral_key = this.stripe_ephemeral_key;
        builder.stripe_account = this.stripe_account;
        builder.payment_intent_payload = this.payment_intent_payload;
        builder.cancel_payload = this.cancel_payload;
        builder.setup_intent_payload = this.setup_intent_payload;
        builder.display_payload = this.display_payload;
        builder.refund_payment_payload = this.refund_payment_payload;
        builder.collect_inputs_payload = this.collect_inputs_payload;
        builder.confirm_payment_intent_payload = this.confirm_payment_intent_payload;
        builder.collect_payment_method_payload = this.collect_payment_method_payload;
        builder.reader_id = this.reader_id;
        builder.metadata = this.metadata;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof Command)) {
            return false;
        }
        Command command = (Command) other;
        return Intrinsics.areEqual(unknownFields(), command.unknownFields()) && Intrinsics.areEqual(this.trace_id, command.trace_id) && Intrinsics.areEqual(this.stripe_ephemeral_key, command.stripe_ephemeral_key) && Intrinsics.areEqual(this.stripe_account, command.stripe_account) && Intrinsics.areEqual(this.payment_intent_payload, command.payment_intent_payload) && Intrinsics.areEqual(this.cancel_payload, command.cancel_payload) && Intrinsics.areEqual(this.setup_intent_payload, command.setup_intent_payload) && Intrinsics.areEqual(this.display_payload, command.display_payload) && Intrinsics.areEqual(this.refund_payment_payload, command.refund_payment_payload) && Intrinsics.areEqual(this.collect_inputs_payload, command.collect_inputs_payload) && Intrinsics.areEqual(this.confirm_payment_intent_payload, command.confirm_payment_intent_payload) && Intrinsics.areEqual(this.collect_payment_method_payload, command.collect_payment_method_payload) && Intrinsics.areEqual(this.reader_id, command.reader_id) && Intrinsics.areEqual(this.metadata, command.metadata);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((unknownFields().hashCode() * 37) + this.trace_id.hashCode()) * 37) + this.stripe_ephemeral_key.hashCode()) * 37) + this.stripe_account.hashCode()) * 37;
        PaymentIntentPayload paymentIntentPayload = this.payment_intent_payload;
        int iHashCode2 = (iHashCode + (paymentIntentPayload != null ? paymentIntentPayload.hashCode() : 0)) * 37;
        CancelPayload cancelPayload = this.cancel_payload;
        int iHashCode3 = (iHashCode2 + (cancelPayload != null ? cancelPayload.hashCode() : 0)) * 37;
        SetupIntentPayload setupIntentPayload = this.setup_intent_payload;
        int iHashCode4 = (iHashCode3 + (setupIntentPayload != null ? setupIntentPayload.hashCode() : 0)) * 37;
        DisplayPayload displayPayload = this.display_payload;
        int iHashCode5 = (iHashCode4 + (displayPayload != null ? displayPayload.hashCode() : 0)) * 37;
        RefundPaymentPayload refundPaymentPayload = this.refund_payment_payload;
        int iHashCode6 = (iHashCode5 + (refundPaymentPayload != null ? refundPaymentPayload.hashCode() : 0)) * 37;
        CollectInputsPayload collectInputsPayload = this.collect_inputs_payload;
        int iHashCode7 = (iHashCode6 + (collectInputsPayload != null ? collectInputsPayload.hashCode() : 0)) * 37;
        ConfirmPaymentIntentPayload confirmPaymentIntentPayload = this.confirm_payment_intent_payload;
        int iHashCode8 = (iHashCode7 + (confirmPaymentIntentPayload != null ? confirmPaymentIntentPayload.hashCode() : 0)) * 37;
        CollectPaymentMethodPayload collectPaymentMethodPayload = this.collect_payment_method_payload;
        int iHashCode9 = (((iHashCode8 + (collectPaymentMethodPayload != null ? collectPaymentMethodPayload.hashCode() : 0)) * 37) + this.reader_id.hashCode()) * 37;
        Metadata metadata = this.metadata;
        int iHashCode10 = iHashCode9 + (metadata != null ? metadata.hashCode() : 0);
        this.hashCode = iHashCode10;
        return iHashCode10;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("trace_id=" + Internal.sanitize(this.trace_id));
        arrayList2.add("stripe_ephemeral_key=" + Internal.sanitize(this.stripe_ephemeral_key));
        arrayList2.add("stripe_account=" + Internal.sanitize(this.stripe_account));
        if (this.payment_intent_payload != null) {
            arrayList2.add("payment_intent_payload=" + this.payment_intent_payload);
        }
        if (this.cancel_payload != null) {
            arrayList2.add("cancel_payload=" + this.cancel_payload);
        }
        if (this.setup_intent_payload != null) {
            arrayList2.add("setup_intent_payload=" + this.setup_intent_payload);
        }
        if (this.display_payload != null) {
            arrayList2.add("display_payload=" + this.display_payload);
        }
        if (this.refund_payment_payload != null) {
            arrayList2.add("refund_payment_payload=" + this.refund_payment_payload);
        }
        if (this.collect_inputs_payload != null) {
            arrayList2.add("collect_inputs_payload=" + this.collect_inputs_payload);
        }
        if (this.confirm_payment_intent_payload != null) {
            arrayList2.add("confirm_payment_intent_payload=" + this.confirm_payment_intent_payload);
        }
        if (this.collect_payment_method_payload != null) {
            arrayList2.add("collect_payment_method_payload=" + this.collect_payment_method_payload);
        }
        arrayList2.add("reader_id=" + Internal.sanitize(this.reader_id));
        if (this.metadata != null) {
            arrayList2.add("metadata=" + this.metadata);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "Command{", "}", 0, null, null, 56, null);
    }

    public final Command copy(String trace_id, String stripe_ephemeral_key, String stripe_account, PaymentIntentPayload payment_intent_payload, CancelPayload cancel_payload, SetupIntentPayload setup_intent_payload, DisplayPayload display_payload, RefundPaymentPayload refund_payment_payload, CollectInputsPayload collect_inputs_payload, ConfirmPaymentIntentPayload confirm_payment_intent_payload, CollectPaymentMethodPayload collect_payment_method_payload, String reader_id, Metadata metadata, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(trace_id, "trace_id");
        Intrinsics.checkNotNullParameter(stripe_ephemeral_key, "stripe_ephemeral_key");
        Intrinsics.checkNotNullParameter(stripe_account, "stripe_account");
        Intrinsics.checkNotNullParameter(reader_id, "reader_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new Command(trace_id, stripe_ephemeral_key, stripe_account, payment_intent_payload, cancel_payload, setup_intent_payload, display_payload, refund_payment_payload, collect_inputs_payload, confirm_payment_intent_payload, collect_payment_method_payload, reader_id, metadata, unknownFields);
    }

    /* JADX INFO: compiled from: Command.kt */
    @kotlin.Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u001b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0013J\u0010\u0010\u0014\u001a\u00020\u00002\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u0010\u0010\u0016\u001a\u00020\u00002\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0013J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0013J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u0013R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001a\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/Command$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/event_channel/pub/message/Command;", "()V", "cancel_payload", "Lcom/stripe/proto/event_channel/pub/message/CancelPayload;", "collect_inputs_payload", "Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;", "collect_payment_method_payload", "Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;", "confirm_payment_intent_payload", "Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;", "display_payload", "Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;", "metadata", "Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;", "payment_intent_payload", "Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;", OfflineStorageConstantsKt.READER_ID, "", "refund_payment_payload", "Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;", "setup_intent_payload", "Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;", "stripe_account", "stripe_ephemeral_key", "trace_id", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<Command, Builder> {
        public CancelPayload cancel_payload;
        public CollectInputsPayload collect_inputs_payload;
        public CollectPaymentMethodPayload collect_payment_method_payload;
        public ConfirmPaymentIntentPayload confirm_payment_intent_payload;
        public DisplayPayload display_payload;
        public Metadata metadata;
        public PaymentIntentPayload payment_intent_payload;
        public RefundPaymentPayload refund_payment_payload;
        public SetupIntentPayload setup_intent_payload;
        public String trace_id = "";
        public String stripe_ephemeral_key = "";
        public String stripe_account = "";
        public String reader_id = "";

        public final Builder trace_id(String trace_id) {
            Intrinsics.checkNotNullParameter(trace_id, "trace_id");
            this.trace_id = trace_id;
            return this;
        }

        public final Builder stripe_ephemeral_key(String stripe_ephemeral_key) {
            Intrinsics.checkNotNullParameter(stripe_ephemeral_key, "stripe_ephemeral_key");
            this.stripe_ephemeral_key = stripe_ephemeral_key;
            return this;
        }

        public final Builder stripe_account(String stripe_account) {
            Intrinsics.checkNotNullParameter(stripe_account, "stripe_account");
            this.stripe_account = stripe_account;
            return this;
        }

        public final Builder reader_id(String reader_id) {
            Intrinsics.checkNotNullParameter(reader_id, "reader_id");
            this.reader_id = reader_id;
            return this;
        }

        public final Builder metadata(Metadata metadata) {
            this.metadata = metadata;
            return this;
        }

        public final Builder payment_intent_payload(PaymentIntentPayload payment_intent_payload) {
            this.payment_intent_payload = payment_intent_payload;
            this.cancel_payload = null;
            this.setup_intent_payload = null;
            this.display_payload = null;
            this.refund_payment_payload = null;
            this.collect_inputs_payload = null;
            this.confirm_payment_intent_payload = null;
            this.collect_payment_method_payload = null;
            return this;
        }

        public final Builder cancel_payload(CancelPayload cancel_payload) {
            this.cancel_payload = cancel_payload;
            this.payment_intent_payload = null;
            this.setup_intent_payload = null;
            this.display_payload = null;
            this.refund_payment_payload = null;
            this.collect_inputs_payload = null;
            this.confirm_payment_intent_payload = null;
            this.collect_payment_method_payload = null;
            return this;
        }

        public final Builder setup_intent_payload(SetupIntentPayload setup_intent_payload) {
            this.setup_intent_payload = setup_intent_payload;
            this.payment_intent_payload = null;
            this.cancel_payload = null;
            this.display_payload = null;
            this.refund_payment_payload = null;
            this.collect_inputs_payload = null;
            this.confirm_payment_intent_payload = null;
            this.collect_payment_method_payload = null;
            return this;
        }

        public final Builder display_payload(DisplayPayload display_payload) {
            this.display_payload = display_payload;
            this.payment_intent_payload = null;
            this.cancel_payload = null;
            this.setup_intent_payload = null;
            this.refund_payment_payload = null;
            this.collect_inputs_payload = null;
            this.confirm_payment_intent_payload = null;
            this.collect_payment_method_payload = null;
            return this;
        }

        public final Builder refund_payment_payload(RefundPaymentPayload refund_payment_payload) {
            this.refund_payment_payload = refund_payment_payload;
            this.payment_intent_payload = null;
            this.cancel_payload = null;
            this.setup_intent_payload = null;
            this.display_payload = null;
            this.collect_inputs_payload = null;
            this.confirm_payment_intent_payload = null;
            this.collect_payment_method_payload = null;
            return this;
        }

        public final Builder collect_inputs_payload(CollectInputsPayload collect_inputs_payload) {
            this.collect_inputs_payload = collect_inputs_payload;
            this.payment_intent_payload = null;
            this.cancel_payload = null;
            this.setup_intent_payload = null;
            this.display_payload = null;
            this.refund_payment_payload = null;
            this.confirm_payment_intent_payload = null;
            this.collect_payment_method_payload = null;
            return this;
        }

        public final Builder confirm_payment_intent_payload(ConfirmPaymentIntentPayload confirm_payment_intent_payload) {
            this.confirm_payment_intent_payload = confirm_payment_intent_payload;
            this.payment_intent_payload = null;
            this.cancel_payload = null;
            this.setup_intent_payload = null;
            this.display_payload = null;
            this.refund_payment_payload = null;
            this.collect_inputs_payload = null;
            this.collect_payment_method_payload = null;
            return this;
        }

        public final Builder collect_payment_method_payload(CollectPaymentMethodPayload collect_payment_method_payload) {
            this.collect_payment_method_payload = collect_payment_method_payload;
            this.payment_intent_payload = null;
            this.cancel_payload = null;
            this.setup_intent_payload = null;
            this.display_payload = null;
            this.refund_payment_payload = null;
            this.collect_inputs_payload = null;
            this.confirm_payment_intent_payload = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public Command build() {
            return new Command(this.trace_id, this.stripe_ephemeral_key, this.stripe_account, this.payment_intent_payload, this.cancel_payload, this.setup_intent_payload, this.display_payload, this.refund_payment_payload, this.collect_inputs_payload, this.confirm_payment_intent_payload, this.collect_payment_method_payload, this.reader_id, this.metadata, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: Command.kt */
    @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/Command$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/event_channel/pub/message/Command;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/event_channel/pub/message/Command$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ Command build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Command.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<Command>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.event_channel.pub.message.Command$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(Command value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.trace_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.trace_id);
                }
                if (!Intrinsics.areEqual(value.stripe_ephemeral_key, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.stripe_ephemeral_key);
                }
                if (!Intrinsics.areEqual(value.stripe_account, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(13, value.stripe_account);
                }
                int iEncodedSizeWithTag = size + PaymentIntentPayload.ADAPTER.encodedSizeWithTag(3, value.payment_intent_payload) + CancelPayload.ADAPTER.encodedSizeWithTag(4, value.cancel_payload) + SetupIntentPayload.ADAPTER.encodedSizeWithTag(5, value.setup_intent_payload) + DisplayPayload.ADAPTER.encodedSizeWithTag(6, value.display_payload) + RefundPaymentPayload.ADAPTER.encodedSizeWithTag(8, value.refund_payment_payload) + CollectInputsPayload.ADAPTER.encodedSizeWithTag(9, value.collect_inputs_payload) + ConfirmPaymentIntentPayload.ADAPTER.encodedSizeWithTag(11, value.confirm_payment_intent_payload) + CollectPaymentMethodPayload.ADAPTER.encodedSizeWithTag(12, value.collect_payment_method_payload);
                if (!Intrinsics.areEqual(value.reader_id, "")) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING.encodedSizeWithTag(10, value.reader_id);
                }
                return value.metadata != null ? iEncodedSizeWithTag + Command.Metadata.ADAPTER.encodedSizeWithTag(14, value.metadata) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, Command value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.trace_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.trace_id);
                }
                if (!Intrinsics.areEqual(value.stripe_ephemeral_key, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.stripe_ephemeral_key);
                }
                if (!Intrinsics.areEqual(value.stripe_account, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 13, value.stripe_account);
                }
                if (!Intrinsics.areEqual(value.reader_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 10, value.reader_id);
                }
                if (value.metadata != null) {
                    Command.Metadata.ADAPTER.encodeWithTag(writer, 14, value.metadata);
                }
                PaymentIntentPayload.ADAPTER.encodeWithTag(writer, 3, value.payment_intent_payload);
                CancelPayload.ADAPTER.encodeWithTag(writer, 4, value.cancel_payload);
                SetupIntentPayload.ADAPTER.encodeWithTag(writer, 5, value.setup_intent_payload);
                DisplayPayload.ADAPTER.encodeWithTag(writer, 6, value.display_payload);
                RefundPaymentPayload.ADAPTER.encodeWithTag(writer, 8, value.refund_payment_payload);
                CollectInputsPayload.ADAPTER.encodeWithTag(writer, 9, value.collect_inputs_payload);
                ConfirmPaymentIntentPayload.ADAPTER.encodeWithTag(writer, 11, value.confirm_payment_intent_payload);
                CollectPaymentMethodPayload.ADAPTER.encodeWithTag(writer, 12, value.collect_payment_method_payload);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, Command value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                CollectPaymentMethodPayload.ADAPTER.encodeWithTag(writer, 12, value.collect_payment_method_payload);
                ConfirmPaymentIntentPayload.ADAPTER.encodeWithTag(writer, 11, value.confirm_payment_intent_payload);
                CollectInputsPayload.ADAPTER.encodeWithTag(writer, 9, value.collect_inputs_payload);
                RefundPaymentPayload.ADAPTER.encodeWithTag(writer, 8, value.refund_payment_payload);
                DisplayPayload.ADAPTER.encodeWithTag(writer, 6, value.display_payload);
                SetupIntentPayload.ADAPTER.encodeWithTag(writer, 5, value.setup_intent_payload);
                CancelPayload.ADAPTER.encodeWithTag(writer, 4, value.cancel_payload);
                PaymentIntentPayload.ADAPTER.encodeWithTag(writer, 3, value.payment_intent_payload);
                if (value.metadata != null) {
                    Command.Metadata.ADAPTER.encodeWithTag(writer, 14, value.metadata);
                }
                if (!Intrinsics.areEqual(value.reader_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 10, value.reader_id);
                }
                if (!Intrinsics.areEqual(value.stripe_account, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 13, value.stripe_account);
                }
                if (!Intrinsics.areEqual(value.stripe_ephemeral_key, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.stripe_ephemeral_key);
                }
                if (Intrinsics.areEqual(value.trace_id, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.trace_id);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public Command redact(Command value) {
                Intrinsics.checkNotNullParameter(value, "value");
                PaymentIntentPayload paymentIntentPayload = value.payment_intent_payload;
                PaymentIntentPayload paymentIntentPayloadRedact = paymentIntentPayload != null ? PaymentIntentPayload.ADAPTER.redact(paymentIntentPayload) : null;
                CancelPayload cancelPayload = value.cancel_payload;
                CancelPayload cancelPayloadRedact = cancelPayload != null ? CancelPayload.ADAPTER.redact(cancelPayload) : null;
                SetupIntentPayload setupIntentPayload = value.setup_intent_payload;
                SetupIntentPayload setupIntentPayloadRedact = setupIntentPayload != null ? SetupIntentPayload.ADAPTER.redact(setupIntentPayload) : null;
                DisplayPayload displayPayload = value.display_payload;
                DisplayPayload displayPayloadRedact = displayPayload != null ? DisplayPayload.ADAPTER.redact(displayPayload) : null;
                RefundPaymentPayload refundPaymentPayload = value.refund_payment_payload;
                RefundPaymentPayload refundPaymentPayloadRedact = refundPaymentPayload != null ? RefundPaymentPayload.ADAPTER.redact(refundPaymentPayload) : null;
                CollectInputsPayload collectInputsPayload = value.collect_inputs_payload;
                CollectInputsPayload collectInputsPayloadRedact = collectInputsPayload != null ? CollectInputsPayload.ADAPTER.redact(collectInputsPayload) : null;
                ConfirmPaymentIntentPayload confirmPaymentIntentPayload = value.confirm_payment_intent_payload;
                ConfirmPaymentIntentPayload confirmPaymentIntentPayloadRedact = confirmPaymentIntentPayload != null ? ConfirmPaymentIntentPayload.ADAPTER.redact(confirmPaymentIntentPayload) : null;
                CollectPaymentMethodPayload collectPaymentMethodPayload = value.collect_payment_method_payload;
                CollectPaymentMethodPayload collectPaymentMethodPayloadRedact = collectPaymentMethodPayload != null ? CollectPaymentMethodPayload.ADAPTER.redact(collectPaymentMethodPayload) : null;
                Command.Metadata metadata = value.metadata;
                return value.copy((2055 & 1) != 0 ? value.trace_id : null, (2055 & 2) != 0 ? value.stripe_ephemeral_key : null, (2055 & 4) != 0 ? value.stripe_account : null, (2055 & 8) != 0 ? value.payment_intent_payload : paymentIntentPayloadRedact, (2055 & 16) != 0 ? value.cancel_payload : cancelPayloadRedact, (2055 & 32) != 0 ? value.setup_intent_payload : setupIntentPayloadRedact, (2055 & 64) != 0 ? value.display_payload : displayPayloadRedact, (2055 & 128) != 0 ? value.refund_payment_payload : refundPaymentPayloadRedact, (2055 & 256) != 0 ? value.collect_inputs_payload : collectInputsPayloadRedact, (2055 & 512) != 0 ? value.confirm_payment_intent_payload : confirmPaymentIntentPayloadRedact, (2055 & 1024) != 0 ? value.collect_payment_method_payload : collectPaymentMethodPayloadRedact, (2055 & 2048) != 0 ? value.reader_id : null, (2055 & 4096) != 0 ? value.metadata : metadata != null ? Command.Metadata.ADAPTER.redact(metadata) : null, (2055 & 8192) != 0 ? value.unknownFields() : ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public Command decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = strDecode;
                String strDecode3 = strDecode2;
                PaymentIntentPayload paymentIntentPayloadDecode = null;
                CancelPayload cancelPayloadDecode = null;
                SetupIntentPayload setupIntentPayloadDecode = null;
                DisplayPayload displayPayloadDecode = null;
                RefundPaymentPayload refundPaymentPayloadDecode = null;
                CollectInputsPayload collectInputsPayloadDecode = null;
                ConfirmPaymentIntentPayload confirmPaymentIntentPayloadDecode = null;
                CollectPaymentMethodPayload collectPaymentMethodPayloadDecode = null;
                Command.Metadata metadataDecode = null;
                String strDecode4 = strDecode3;
                while (true) {
                    int iNextTag = reader.nextTag();
                    String str = strDecode4;
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 2:
                                strDecode4 = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 3:
                                paymentIntentPayloadDecode = PaymentIntentPayload.ADAPTER.decode(reader);
                                break;
                            case 4:
                                cancelPayloadDecode = CancelPayload.ADAPTER.decode(reader);
                                break;
                            case 5:
                                setupIntentPayloadDecode = SetupIntentPayload.ADAPTER.decode(reader);
                                break;
                            case 6:
                                displayPayloadDecode = DisplayPayload.ADAPTER.decode(reader);
                                break;
                            case 7:
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                            case 8:
                                refundPaymentPayloadDecode = RefundPaymentPayload.ADAPTER.decode(reader);
                                break;
                            case 9:
                                collectInputsPayloadDecode = CollectInputsPayload.ADAPTER.decode(reader);
                                break;
                            case 10:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 11:
                                confirmPaymentIntentPayloadDecode = ConfirmPaymentIntentPayload.ADAPTER.decode(reader);
                                break;
                            case 12:
                                collectPaymentMethodPayloadDecode = CollectPaymentMethodPayload.ADAPTER.decode(reader);
                                break;
                            case 13:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 14:
                                metadataDecode = Command.Metadata.ADAPTER.decode(reader);
                                break;
                        }
                        strDecode4 = str;
                    } else {
                        return new Command(strDecode3, str, strDecode, paymentIntentPayloadDecode, cancelPayloadDecode, setupIntentPayloadDecode, displayPayloadDecode, refundPaymentPayloadDecode, collectInputsPayloadDecode, confirmPaymentIntentPayloadDecode, collectPaymentMethodPayloadDecode, strDecode2, metadataDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }

    /* JADX INFO: compiled from: Command.kt */
    @kotlin.Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0013\u0014\u0015B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ$\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0006H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Builder;", "request_source", "Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Requester;", "routing_info", "", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Requester;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "Requester", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Metadata extends Message<Metadata, Builder> {
        public static final ProtoAdapter<Metadata> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.proto.event_channel.pub.message.Command$Metadata$Requester#ADAPTER", jsonName = "requestSource", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final Requester request_source;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "routingInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final String routing_info;

        public Metadata() {
            this(null, null, null, 7, null);
        }

        public /* synthetic */ Metadata(Requester requester, String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? Requester.REQUESTER_INVALID : requester, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Metadata(Requester request_source, String routing_info, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(request_source, "request_source");
            Intrinsics.checkNotNullParameter(routing_info, "routing_info");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.request_source = request_source;
            this.routing_info = routing_info;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.request_source = this.request_source;
            builder.routing_info = this.routing_info;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof Metadata)) {
                return false;
            }
            Metadata metadata = (Metadata) other;
            return Intrinsics.areEqual(unknownFields(), metadata.unknownFields()) && this.request_source == metadata.request_source && Intrinsics.areEqual(this.routing_info, metadata.routing_info);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((unknownFields().hashCode() * 37) + this.request_source.hashCode()) * 37) + this.routing_info.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("request_source=" + this.request_source);
            arrayList2.add("routing_info=" + Internal.sanitize(this.routing_info));
            return CollectionsKt.joinToString$default(arrayList, ", ", "Metadata{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ Metadata copy$default(Metadata metadata, Requester requester, String str, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                requester = metadata.request_source;
            }
            if ((i & 2) != 0) {
                str = metadata.routing_info;
            }
            if ((i & 4) != 0) {
                byteString = metadata.unknownFields();
            }
            return metadata.copy(requester, str, byteString);
        }

        public final Metadata copy(Requester request_source, String routing_info, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(request_source, "request_source");
            Intrinsics.checkNotNullParameter(routing_info, "routing_info");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new Metadata(request_source, routing_info, unknownFields);
        }

        /* JADX INFO: compiled from: Command.kt */
        @kotlin.Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;", "()V", "request_source", "Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Requester;", "routing_info", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<Metadata, Builder> {
            public Requester request_source = Requester.REQUESTER_INVALID;
            public String routing_info = "";

            public final Builder request_source(Requester request_source) {
                Intrinsics.checkNotNullParameter(request_source, "request_source");
                this.request_source = request_source;
                return this;
            }

            public final Builder routing_info(String routing_info) {
                Intrinsics.checkNotNullParameter(routing_info, "routing_info");
                this.routing_info = routing_info;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public Metadata build() {
                return new Metadata(this.request_source, this.routing_info, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: Command.kt */
        @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Metadata build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Metadata.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<Metadata>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.event_channel.pub.message.Command$Metadata$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(Command.Metadata value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.request_source != Command.Metadata.Requester.REQUESTER_INVALID) {
                        size += Command.Metadata.Requester.ADAPTER.encodedSizeWithTag(1, value.request_source);
                    }
                    return !Intrinsics.areEqual(value.routing_info, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(2, value.routing_info) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, Command.Metadata value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.request_source != Command.Metadata.Requester.REQUESTER_INVALID) {
                        Command.Metadata.Requester.ADAPTER.encodeWithTag(writer, 1, value.request_source);
                    }
                    if (!Intrinsics.areEqual(value.routing_info, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.routing_info);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, Command.Metadata value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (!Intrinsics.areEqual(value.routing_info, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.routing_info);
                    }
                    if (value.request_source != Command.Metadata.Requester.REQUESTER_INVALID) {
                        Command.Metadata.Requester.ADAPTER.encodeWithTag(writer, 1, value.request_source);
                    }
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public Command.Metadata decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    Command.Metadata.Requester requesterDecode = Command.Metadata.Requester.REQUESTER_INVALID;
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = "";
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new Command.Metadata(requesterDecode, strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            try {
                                requesterDecode = Command.Metadata.Requester.ADAPTER.decode(reader);
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
                public Command.Metadata redact(Command.Metadata value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return Command.Metadata.copy$default(value, null, null, ByteString.EMPTY, 3, null);
                }
            };
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* JADX INFO: compiled from: Command.kt */
        @kotlin.Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Requester;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "REQUESTER_INVALID", "UNKNOWN", "IOT_RELAY", "EVENT_CHANNEL", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Requester implements WireEnum {
            private static final /* synthetic */ EnumEntries $ENTRIES;
            private static final /* synthetic */ Requester[] $VALUES;
            public static final ProtoAdapter<Requester> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE;
            public static final Requester EVENT_CHANNEL;
            public static final Requester IOT_RELAY;
            public static final Requester REQUESTER_INVALID;
            public static final Requester UNKNOWN;
            private final int value;

            private static final /* synthetic */ Requester[] $values() {
                return new Requester[]{REQUESTER_INVALID, UNKNOWN, IOT_RELAY, EVENT_CHANNEL};
            }

            @JvmStatic
            public static final Requester fromValue(int i) {
                return INSTANCE.fromValue(i);
            }

            public static EnumEntries<Requester> getEntries() {
                return $ENTRIES;
            }

            public static Requester valueOf(String str) {
                return (Requester) Enum.valueOf(Requester.class, str);
            }

            public static Requester[] values() {
                return (Requester[]) $VALUES.clone();
            }

            private Requester(String str, int i, int i2) {
                this.value = i2;
            }

            @Override // com.squareup.wire.WireEnum
            public int getValue() {
                return this.value;
            }

            static {
                final Requester requester = new Requester("REQUESTER_INVALID", 0, 0);
                REQUESTER_INVALID = requester;
                UNKNOWN = new Requester("UNKNOWN", 1, 1);
                IOT_RELAY = new Requester("IOT_RELAY", 2, 2);
                EVENT_CHANNEL = new Requester("EVENT_CHANNEL", 3, 3);
                Requester[] requesterArr$values = $values();
                $VALUES = requesterArr$values;
                $ENTRIES = EnumEntriesKt.enumEntries(requesterArr$values);
                INSTANCE = new Companion(null);
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Requester.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new EnumAdapter<Requester>(orCreateKotlinClass, syntax, requester) { // from class: com.stripe.proto.event_channel.pub.message.Command$Metadata$Requester$Companion$ADAPTER$1
                    {
                        Command.Metadata.Requester requester2 = requester;
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // com.squareup.wire.EnumAdapter
                    public Command.Metadata.Requester fromValue(int value) {
                        return Command.Metadata.Requester.INSTANCE.fromValue(value);
                    }
                };
            }

            /* JADX INFO: compiled from: Command.kt */
            @kotlin.Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Requester$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Requester;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                @JvmStatic
                public final Requester fromValue(int value) {
                    if (value == 0) {
                        return Requester.REQUESTER_INVALID;
                    }
                    if (value == 1) {
                        return Requester.UNKNOWN;
                    }
                    if (value == 2) {
                        return Requester.IOT_RELAY;
                    }
                    if (value != 3) {
                        return null;
                    }
                    return Requester.EVENT_CHANNEL;
                }
            }
        }
    }
}
