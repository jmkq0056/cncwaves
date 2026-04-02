package com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos;

import androidx.core.app.NotificationCompat;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Gauge;
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

/* JADX INFO: compiled from: PaymentsScope.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 #2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\"#BÏ\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0016¢\u0006\u0002\u0010\u0017JÐ\u0001\u0010\u0018\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0015\u001a\u00020\u0016J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0096\u0002J\b\u0010\u001d\u001a\u00020\u001eH\u0016J\b\u0010\u001f\u001a\u00020\u0002H\u0016J\b\u0010 \u001a\u00020!H\u0016R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;", "on_return_check_card_result", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;", "on_request_select_application", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;", "select_application", "on_request_select_account_type", "select_account_type", "on_request_final_confirm", "final_confirm", "on_request_pin_entry", "on_pin_entry_result", "on_request_online_process", "handle_authorisation_response", "on_return_reversal_data", "on_return_transaction_result", "on_request_display_text", "on_return_batch_data", "start_reader", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PaymentsScope extends Message<PaymentsScope, Builder> {
    public static final ProtoAdapter<PaymentsScope> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "finalConfirm", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 6, tag = 7)
    public final Counter final_confirm;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "handleAuthorisationResponse", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 10, tag = 11)
    public final Counter handle_authorisation_response;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "onPinEntryResult", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 8, tag = 9)
    public final Counter on_pin_entry_result;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "onRequestDisplayText", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 13, tag = 14)
    public final Counter on_request_display_text;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "onRequestFinalConfirm", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 5, tag = 6)
    public final Counter on_request_final_confirm;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "onRequestOnlineProcess", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 9, tag = 10)
    public final Counter on_request_online_process;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "onRequestPinEntry", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 7, tag = 8)
    public final Counter on_request_pin_entry;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "onRequestSelectAccountType", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 3, tag = 4)
    public final Counter on_request_select_account_type;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Gauge#ADAPTER", jsonName = "onRequestSelectApplication", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 1, tag = 2)
    public final Gauge on_request_select_application;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "onReturnBatchData", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 14, tag = 15)
    public final Counter on_return_batch_data;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "onReturnCheckCardResult", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 0, tag = 1)
    public final Counter on_return_check_card_result;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "onReturnReversalData", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 11, tag = 12)
    public final Counter on_return_reversal_data;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "onReturnTransactionResult", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 12, tag = 13)
    public final Counter on_return_transaction_result;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "selectAccountType", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 4, tag = 5)
    public final Counter select_account_type;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "selectApplication", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 2, tag = 3)
    public final Counter select_application;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "startReader", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 15, tag = 16)
    public final Counter start_reader;

    public PaymentsScope() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 131071, null);
    }

    public /* synthetic */ PaymentsScope(Counter counter, Gauge gauge, Counter counter2, Counter counter3, Counter counter4, Counter counter5, Counter counter6, Counter counter7, Counter counter8, Counter counter9, Counter counter10, Counter counter11, Counter counter12, Counter counter13, Counter counter14, Counter counter15, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : counter, (i & 2) != 0 ? null : gauge, (i & 4) != 0 ? null : counter2, (i & 8) != 0 ? null : counter3, (i & 16) != 0 ? null : counter4, (i & 32) != 0 ? null : counter5, (i & 64) != 0 ? null : counter6, (i & 128) != 0 ? null : counter7, (i & 256) != 0 ? null : counter8, (i & 512) != 0 ? null : counter9, (i & 1024) != 0 ? null : counter10, (i & 2048) != 0 ? null : counter11, (i & 4096) != 0 ? null : counter12, (i & 8192) != 0 ? null : counter13, (i & 16384) != 0 ? null : counter14, (i & 32768) != 0 ? null : counter15, (i & 65536) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PaymentsScope(Counter counter, Gauge gauge, Counter counter2, Counter counter3, Counter counter4, Counter counter5, Counter counter6, Counter counter7, Counter counter8, Counter counter9, Counter counter10, Counter counter11, Counter counter12, Counter counter13, Counter counter14, Counter counter15, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.on_return_check_card_result = counter;
        this.on_request_select_application = gauge;
        this.select_application = counter2;
        this.on_request_select_account_type = counter3;
        this.select_account_type = counter4;
        this.on_request_final_confirm = counter5;
        this.final_confirm = counter6;
        this.on_request_pin_entry = counter7;
        this.on_pin_entry_result = counter8;
        this.on_request_online_process = counter9;
        this.handle_authorisation_response = counter10;
        this.on_return_reversal_data = counter11;
        this.on_return_transaction_result = counter12;
        this.on_request_display_text = counter13;
        this.on_return_batch_data = counter14;
        this.start_reader = counter15;
        if (Internal.countNonNull(counter, gauge, counter2, counter3, counter4, counter5, counter6, counter7, counter8, counter9, counter10, counter11, counter12, counter13, counter14, counter15) > 1) {
            throw new IllegalArgumentException("At most one of on_return_check_card_result, on_request_select_application, select_application, on_request_select_account_type, select_account_type, on_request_final_confirm, final_confirm, on_request_pin_entry, on_pin_entry_result, on_request_online_process, handle_authorisation_response, on_return_reversal_data, on_return_transaction_result, on_request_display_text, on_return_batch_data, start_reader may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.on_return_check_card_result = this.on_return_check_card_result;
        builder.on_request_select_application = this.on_request_select_application;
        builder.select_application = this.select_application;
        builder.on_request_select_account_type = this.on_request_select_account_type;
        builder.select_account_type = this.select_account_type;
        builder.on_request_final_confirm = this.on_request_final_confirm;
        builder.final_confirm = this.final_confirm;
        builder.on_request_pin_entry = this.on_request_pin_entry;
        builder.on_pin_entry_result = this.on_pin_entry_result;
        builder.on_request_online_process = this.on_request_online_process;
        builder.handle_authorisation_response = this.handle_authorisation_response;
        builder.on_return_reversal_data = this.on_return_reversal_data;
        builder.on_return_transaction_result = this.on_return_transaction_result;
        builder.on_request_display_text = this.on_request_display_text;
        builder.on_return_batch_data = this.on_return_batch_data;
        builder.start_reader = this.start_reader;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof PaymentsScope)) {
            return false;
        }
        PaymentsScope paymentsScope = (PaymentsScope) other;
        return Intrinsics.areEqual(unknownFields(), paymentsScope.unknownFields()) && Intrinsics.areEqual(this.on_return_check_card_result, paymentsScope.on_return_check_card_result) && Intrinsics.areEqual(this.on_request_select_application, paymentsScope.on_request_select_application) && Intrinsics.areEqual(this.select_application, paymentsScope.select_application) && Intrinsics.areEqual(this.on_request_select_account_type, paymentsScope.on_request_select_account_type) && Intrinsics.areEqual(this.select_account_type, paymentsScope.select_account_type) && Intrinsics.areEqual(this.on_request_final_confirm, paymentsScope.on_request_final_confirm) && Intrinsics.areEqual(this.final_confirm, paymentsScope.final_confirm) && Intrinsics.areEqual(this.on_request_pin_entry, paymentsScope.on_request_pin_entry) && Intrinsics.areEqual(this.on_pin_entry_result, paymentsScope.on_pin_entry_result) && Intrinsics.areEqual(this.on_request_online_process, paymentsScope.on_request_online_process) && Intrinsics.areEqual(this.handle_authorisation_response, paymentsScope.handle_authorisation_response) && Intrinsics.areEqual(this.on_return_reversal_data, paymentsScope.on_return_reversal_data) && Intrinsics.areEqual(this.on_return_transaction_result, paymentsScope.on_return_transaction_result) && Intrinsics.areEqual(this.on_request_display_text, paymentsScope.on_request_display_text) && Intrinsics.areEqual(this.on_return_batch_data, paymentsScope.on_return_batch_data) && Intrinsics.areEqual(this.start_reader, paymentsScope.start_reader);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Counter counter = this.on_return_check_card_result;
        int iHashCode2 = (iHashCode + (counter != null ? counter.hashCode() : 0)) * 37;
        Gauge gauge = this.on_request_select_application;
        int iHashCode3 = (iHashCode2 + (gauge != null ? gauge.hashCode() : 0)) * 37;
        Counter counter2 = this.select_application;
        int iHashCode4 = (iHashCode3 + (counter2 != null ? counter2.hashCode() : 0)) * 37;
        Counter counter3 = this.on_request_select_account_type;
        int iHashCode5 = (iHashCode4 + (counter3 != null ? counter3.hashCode() : 0)) * 37;
        Counter counter4 = this.select_account_type;
        int iHashCode6 = (iHashCode5 + (counter4 != null ? counter4.hashCode() : 0)) * 37;
        Counter counter5 = this.on_request_final_confirm;
        int iHashCode7 = (iHashCode6 + (counter5 != null ? counter5.hashCode() : 0)) * 37;
        Counter counter6 = this.final_confirm;
        int iHashCode8 = (iHashCode7 + (counter6 != null ? counter6.hashCode() : 0)) * 37;
        Counter counter7 = this.on_request_pin_entry;
        int iHashCode9 = (iHashCode8 + (counter7 != null ? counter7.hashCode() : 0)) * 37;
        Counter counter8 = this.on_pin_entry_result;
        int iHashCode10 = (iHashCode9 + (counter8 != null ? counter8.hashCode() : 0)) * 37;
        Counter counter9 = this.on_request_online_process;
        int iHashCode11 = (iHashCode10 + (counter9 != null ? counter9.hashCode() : 0)) * 37;
        Counter counter10 = this.handle_authorisation_response;
        int iHashCode12 = (iHashCode11 + (counter10 != null ? counter10.hashCode() : 0)) * 37;
        Counter counter11 = this.on_return_reversal_data;
        int iHashCode13 = (iHashCode12 + (counter11 != null ? counter11.hashCode() : 0)) * 37;
        Counter counter12 = this.on_return_transaction_result;
        int iHashCode14 = (iHashCode13 + (counter12 != null ? counter12.hashCode() : 0)) * 37;
        Counter counter13 = this.on_request_display_text;
        int iHashCode15 = (iHashCode14 + (counter13 != null ? counter13.hashCode() : 0)) * 37;
        Counter counter14 = this.on_return_batch_data;
        int iHashCode16 = (iHashCode15 + (counter14 != null ? counter14.hashCode() : 0)) * 37;
        Counter counter15 = this.start_reader;
        int iHashCode17 = iHashCode16 + (counter15 != null ? counter15.hashCode() : 0);
        this.hashCode = iHashCode17;
        return iHashCode17;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.on_return_check_card_result != null) {
            arrayList.add("on_return_check_card_result=" + this.on_return_check_card_result);
        }
        if (this.on_request_select_application != null) {
            arrayList.add("on_request_select_application=" + this.on_request_select_application);
        }
        if (this.select_application != null) {
            arrayList.add("select_application=" + this.select_application);
        }
        if (this.on_request_select_account_type != null) {
            arrayList.add("on_request_select_account_type=" + this.on_request_select_account_type);
        }
        if (this.select_account_type != null) {
            arrayList.add("select_account_type=" + this.select_account_type);
        }
        if (this.on_request_final_confirm != null) {
            arrayList.add("on_request_final_confirm=" + this.on_request_final_confirm);
        }
        if (this.final_confirm != null) {
            arrayList.add("final_confirm=" + this.final_confirm);
        }
        if (this.on_request_pin_entry != null) {
            arrayList.add("on_request_pin_entry=" + this.on_request_pin_entry);
        }
        if (this.on_pin_entry_result != null) {
            arrayList.add("on_pin_entry_result=" + this.on_pin_entry_result);
        }
        if (this.on_request_online_process != null) {
            arrayList.add("on_request_online_process=" + this.on_request_online_process);
        }
        if (this.handle_authorisation_response != null) {
            arrayList.add("handle_authorisation_response=" + this.handle_authorisation_response);
        }
        if (this.on_return_reversal_data != null) {
            arrayList.add("on_return_reversal_data=" + this.on_return_reversal_data);
        }
        if (this.on_return_transaction_result != null) {
            arrayList.add("on_return_transaction_result=" + this.on_return_transaction_result);
        }
        if (this.on_request_display_text != null) {
            arrayList.add("on_request_display_text=" + this.on_request_display_text);
        }
        if (this.on_return_batch_data != null) {
            arrayList.add("on_return_batch_data=" + this.on_return_batch_data);
        }
        if (this.start_reader != null) {
            arrayList.add("start_reader=" + this.start_reader);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "PaymentsScope{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ PaymentsScope copy$default(PaymentsScope paymentsScope, Counter counter, Gauge gauge, Counter counter2, Counter counter3, Counter counter4, Counter counter5, Counter counter6, Counter counter7, Counter counter8, Counter counter9, Counter counter10, Counter counter11, Counter counter12, Counter counter13, Counter counter14, Counter counter15, ByteString byteString, int i, Object obj) {
        Counter counter16 = (i & 1) != 0 ? paymentsScope.on_return_check_card_result : counter;
        return paymentsScope.copy(counter16, (i & 2) != 0 ? paymentsScope.on_request_select_application : gauge, (i & 4) != 0 ? paymentsScope.select_application : counter2, (i & 8) != 0 ? paymentsScope.on_request_select_account_type : counter3, (i & 16) != 0 ? paymentsScope.select_account_type : counter4, (i & 32) != 0 ? paymentsScope.on_request_final_confirm : counter5, (i & 64) != 0 ? paymentsScope.final_confirm : counter6, (i & 128) != 0 ? paymentsScope.on_request_pin_entry : counter7, (i & 256) != 0 ? paymentsScope.on_pin_entry_result : counter8, (i & 512) != 0 ? paymentsScope.on_request_online_process : counter9, (i & 1024) != 0 ? paymentsScope.handle_authorisation_response : counter10, (i & 2048) != 0 ? paymentsScope.on_return_reversal_data : counter11, (i & 4096) != 0 ? paymentsScope.on_return_transaction_result : counter12, (i & 8192) != 0 ? paymentsScope.on_request_display_text : counter13, (i & 16384) != 0 ? paymentsScope.on_return_batch_data : counter14, (i & 32768) != 0 ? paymentsScope.start_reader : counter15, (i & 65536) != 0 ? paymentsScope.unknownFields() : byteString);
    }

    public final PaymentsScope copy(Counter on_return_check_card_result, Gauge on_request_select_application, Counter select_application, Counter on_request_select_account_type, Counter select_account_type, Counter on_request_final_confirm, Counter final_confirm, Counter on_request_pin_entry, Counter on_pin_entry_result, Counter on_request_online_process, Counter handle_authorisation_response, Counter on_return_reversal_data, Counter on_return_transaction_result, Counter on_request_display_text, Counter on_return_batch_data, Counter start_reader, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new PaymentsScope(on_return_check_card_result, on_request_select_application, select_application, on_request_select_account_type, select_account_type, on_request_final_confirm, final_confirm, on_request_pin_entry, on_pin_entry_result, on_request_online_process, handle_authorisation_response, on_return_reversal_data, on_return_transaction_result, on_request_display_text, on_return_batch_data, start_reader, unknownFields);
    }

    /* JADX INFO: compiled from: PaymentsScope.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0016\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0012\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0013\u001a\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0014\u001a\u00020\u00002\b\u0010\u0014\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0015\u001a\u00020\u00002\b\u0010\u0015\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope;", "()V", "final_confirm", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;", "handle_authorisation_response", "on_pin_entry_result", "on_request_display_text", "on_request_final_confirm", "on_request_online_process", "on_request_pin_entry", "on_request_select_account_type", "on_request_select_application", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Gauge;", "on_return_batch_data", "on_return_check_card_result", "on_return_reversal_data", "on_return_transaction_result", "select_account_type", "select_application", "start_reader", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<PaymentsScope, Builder> {
        public Counter final_confirm;
        public Counter handle_authorisation_response;
        public Counter on_pin_entry_result;
        public Counter on_request_display_text;
        public Counter on_request_final_confirm;
        public Counter on_request_online_process;
        public Counter on_request_pin_entry;
        public Counter on_request_select_account_type;
        public Gauge on_request_select_application;
        public Counter on_return_batch_data;
        public Counter on_return_check_card_result;
        public Counter on_return_reversal_data;
        public Counter on_return_transaction_result;
        public Counter select_account_type;
        public Counter select_application;
        public Counter start_reader;

        public final Builder on_return_check_card_result(Counter on_return_check_card_result) {
            this.on_return_check_card_result = on_return_check_card_result;
            this.on_request_select_application = null;
            this.select_application = null;
            this.on_request_select_account_type = null;
            this.select_account_type = null;
            this.on_request_final_confirm = null;
            this.final_confirm = null;
            this.on_request_pin_entry = null;
            this.on_pin_entry_result = null;
            this.on_request_online_process = null;
            this.handle_authorisation_response = null;
            this.on_return_reversal_data = null;
            this.on_return_transaction_result = null;
            this.on_request_display_text = null;
            this.on_return_batch_data = null;
            this.start_reader = null;
            return this;
        }

        public final Builder on_request_select_application(Gauge on_request_select_application) {
            this.on_request_select_application = on_request_select_application;
            this.on_return_check_card_result = null;
            this.select_application = null;
            this.on_request_select_account_type = null;
            this.select_account_type = null;
            this.on_request_final_confirm = null;
            this.final_confirm = null;
            this.on_request_pin_entry = null;
            this.on_pin_entry_result = null;
            this.on_request_online_process = null;
            this.handle_authorisation_response = null;
            this.on_return_reversal_data = null;
            this.on_return_transaction_result = null;
            this.on_request_display_text = null;
            this.on_return_batch_data = null;
            this.start_reader = null;
            return this;
        }

        public final Builder select_application(Counter select_application) {
            this.select_application = select_application;
            this.on_return_check_card_result = null;
            this.on_request_select_application = null;
            this.on_request_select_account_type = null;
            this.select_account_type = null;
            this.on_request_final_confirm = null;
            this.final_confirm = null;
            this.on_request_pin_entry = null;
            this.on_pin_entry_result = null;
            this.on_request_online_process = null;
            this.handle_authorisation_response = null;
            this.on_return_reversal_data = null;
            this.on_return_transaction_result = null;
            this.on_request_display_text = null;
            this.on_return_batch_data = null;
            this.start_reader = null;
            return this;
        }

        public final Builder on_request_select_account_type(Counter on_request_select_account_type) {
            this.on_request_select_account_type = on_request_select_account_type;
            this.on_return_check_card_result = null;
            this.on_request_select_application = null;
            this.select_application = null;
            this.select_account_type = null;
            this.on_request_final_confirm = null;
            this.final_confirm = null;
            this.on_request_pin_entry = null;
            this.on_pin_entry_result = null;
            this.on_request_online_process = null;
            this.handle_authorisation_response = null;
            this.on_return_reversal_data = null;
            this.on_return_transaction_result = null;
            this.on_request_display_text = null;
            this.on_return_batch_data = null;
            this.start_reader = null;
            return this;
        }

        public final Builder select_account_type(Counter select_account_type) {
            this.select_account_type = select_account_type;
            this.on_return_check_card_result = null;
            this.on_request_select_application = null;
            this.select_application = null;
            this.on_request_select_account_type = null;
            this.on_request_final_confirm = null;
            this.final_confirm = null;
            this.on_request_pin_entry = null;
            this.on_pin_entry_result = null;
            this.on_request_online_process = null;
            this.handle_authorisation_response = null;
            this.on_return_reversal_data = null;
            this.on_return_transaction_result = null;
            this.on_request_display_text = null;
            this.on_return_batch_data = null;
            this.start_reader = null;
            return this;
        }

        public final Builder on_request_final_confirm(Counter on_request_final_confirm) {
            this.on_request_final_confirm = on_request_final_confirm;
            this.on_return_check_card_result = null;
            this.on_request_select_application = null;
            this.select_application = null;
            this.on_request_select_account_type = null;
            this.select_account_type = null;
            this.final_confirm = null;
            this.on_request_pin_entry = null;
            this.on_pin_entry_result = null;
            this.on_request_online_process = null;
            this.handle_authorisation_response = null;
            this.on_return_reversal_data = null;
            this.on_return_transaction_result = null;
            this.on_request_display_text = null;
            this.on_return_batch_data = null;
            this.start_reader = null;
            return this;
        }

        public final Builder final_confirm(Counter final_confirm) {
            this.final_confirm = final_confirm;
            this.on_return_check_card_result = null;
            this.on_request_select_application = null;
            this.select_application = null;
            this.on_request_select_account_type = null;
            this.select_account_type = null;
            this.on_request_final_confirm = null;
            this.on_request_pin_entry = null;
            this.on_pin_entry_result = null;
            this.on_request_online_process = null;
            this.handle_authorisation_response = null;
            this.on_return_reversal_data = null;
            this.on_return_transaction_result = null;
            this.on_request_display_text = null;
            this.on_return_batch_data = null;
            this.start_reader = null;
            return this;
        }

        public final Builder on_request_pin_entry(Counter on_request_pin_entry) {
            this.on_request_pin_entry = on_request_pin_entry;
            this.on_return_check_card_result = null;
            this.on_request_select_application = null;
            this.select_application = null;
            this.on_request_select_account_type = null;
            this.select_account_type = null;
            this.on_request_final_confirm = null;
            this.final_confirm = null;
            this.on_pin_entry_result = null;
            this.on_request_online_process = null;
            this.handle_authorisation_response = null;
            this.on_return_reversal_data = null;
            this.on_return_transaction_result = null;
            this.on_request_display_text = null;
            this.on_return_batch_data = null;
            this.start_reader = null;
            return this;
        }

        public final Builder on_pin_entry_result(Counter on_pin_entry_result) {
            this.on_pin_entry_result = on_pin_entry_result;
            this.on_return_check_card_result = null;
            this.on_request_select_application = null;
            this.select_application = null;
            this.on_request_select_account_type = null;
            this.select_account_type = null;
            this.on_request_final_confirm = null;
            this.final_confirm = null;
            this.on_request_pin_entry = null;
            this.on_request_online_process = null;
            this.handle_authorisation_response = null;
            this.on_return_reversal_data = null;
            this.on_return_transaction_result = null;
            this.on_request_display_text = null;
            this.on_return_batch_data = null;
            this.start_reader = null;
            return this;
        }

        public final Builder on_request_online_process(Counter on_request_online_process) {
            this.on_request_online_process = on_request_online_process;
            this.on_return_check_card_result = null;
            this.on_request_select_application = null;
            this.select_application = null;
            this.on_request_select_account_type = null;
            this.select_account_type = null;
            this.on_request_final_confirm = null;
            this.final_confirm = null;
            this.on_request_pin_entry = null;
            this.on_pin_entry_result = null;
            this.handle_authorisation_response = null;
            this.on_return_reversal_data = null;
            this.on_return_transaction_result = null;
            this.on_request_display_text = null;
            this.on_return_batch_data = null;
            this.start_reader = null;
            return this;
        }

        public final Builder handle_authorisation_response(Counter handle_authorisation_response) {
            this.handle_authorisation_response = handle_authorisation_response;
            this.on_return_check_card_result = null;
            this.on_request_select_application = null;
            this.select_application = null;
            this.on_request_select_account_type = null;
            this.select_account_type = null;
            this.on_request_final_confirm = null;
            this.final_confirm = null;
            this.on_request_pin_entry = null;
            this.on_pin_entry_result = null;
            this.on_request_online_process = null;
            this.on_return_reversal_data = null;
            this.on_return_transaction_result = null;
            this.on_request_display_text = null;
            this.on_return_batch_data = null;
            this.start_reader = null;
            return this;
        }

        public final Builder on_return_reversal_data(Counter on_return_reversal_data) {
            this.on_return_reversal_data = on_return_reversal_data;
            this.on_return_check_card_result = null;
            this.on_request_select_application = null;
            this.select_application = null;
            this.on_request_select_account_type = null;
            this.select_account_type = null;
            this.on_request_final_confirm = null;
            this.final_confirm = null;
            this.on_request_pin_entry = null;
            this.on_pin_entry_result = null;
            this.on_request_online_process = null;
            this.handle_authorisation_response = null;
            this.on_return_transaction_result = null;
            this.on_request_display_text = null;
            this.on_return_batch_data = null;
            this.start_reader = null;
            return this;
        }

        public final Builder on_return_transaction_result(Counter on_return_transaction_result) {
            this.on_return_transaction_result = on_return_transaction_result;
            this.on_return_check_card_result = null;
            this.on_request_select_application = null;
            this.select_application = null;
            this.on_request_select_account_type = null;
            this.select_account_type = null;
            this.on_request_final_confirm = null;
            this.final_confirm = null;
            this.on_request_pin_entry = null;
            this.on_pin_entry_result = null;
            this.on_request_online_process = null;
            this.handle_authorisation_response = null;
            this.on_return_reversal_data = null;
            this.on_request_display_text = null;
            this.on_return_batch_data = null;
            this.start_reader = null;
            return this;
        }

        public final Builder on_request_display_text(Counter on_request_display_text) {
            this.on_request_display_text = on_request_display_text;
            this.on_return_check_card_result = null;
            this.on_request_select_application = null;
            this.select_application = null;
            this.on_request_select_account_type = null;
            this.select_account_type = null;
            this.on_request_final_confirm = null;
            this.final_confirm = null;
            this.on_request_pin_entry = null;
            this.on_pin_entry_result = null;
            this.on_request_online_process = null;
            this.handle_authorisation_response = null;
            this.on_return_reversal_data = null;
            this.on_return_transaction_result = null;
            this.on_return_batch_data = null;
            this.start_reader = null;
            return this;
        }

        public final Builder on_return_batch_data(Counter on_return_batch_data) {
            this.on_return_batch_data = on_return_batch_data;
            this.on_return_check_card_result = null;
            this.on_request_select_application = null;
            this.select_application = null;
            this.on_request_select_account_type = null;
            this.select_account_type = null;
            this.on_request_final_confirm = null;
            this.final_confirm = null;
            this.on_request_pin_entry = null;
            this.on_pin_entry_result = null;
            this.on_request_online_process = null;
            this.handle_authorisation_response = null;
            this.on_return_reversal_data = null;
            this.on_return_transaction_result = null;
            this.on_request_display_text = null;
            this.start_reader = null;
            return this;
        }

        public final Builder start_reader(Counter start_reader) {
            this.start_reader = start_reader;
            this.on_return_check_card_result = null;
            this.on_request_select_application = null;
            this.select_application = null;
            this.on_request_select_account_type = null;
            this.select_account_type = null;
            this.on_request_final_confirm = null;
            this.final_confirm = null;
            this.on_request_pin_entry = null;
            this.on_pin_entry_result = null;
            this.on_request_online_process = null;
            this.handle_authorisation_response = null;
            this.on_return_reversal_data = null;
            this.on_return_transaction_result = null;
            this.on_request_display_text = null;
            this.on_return_batch_data = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public PaymentsScope build() {
            return new PaymentsScope(this.on_return_check_card_result, this.on_request_select_application, this.select_application, this.on_request_select_account_type, this.select_account_type, this.on_request_final_confirm, this.final_confirm, this.on_request_pin_entry, this.on_pin_entry_result, this.on_request_online_process, this.handle_authorisation_response, this.on_return_reversal_data, this.on_return_transaction_result, this.on_request_display_text, this.on_return_batch_data, this.start_reader, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: PaymentsScope.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/PaymentsScope$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ PaymentsScope build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(PaymentsScope.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<PaymentsScope>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.PaymentsScope$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(PaymentsScope value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + Counter.ADAPTER.encodedSizeWithTag(1, value.on_return_check_card_result) + Gauge.ADAPTER.encodedSizeWithTag(2, value.on_request_select_application) + Counter.ADAPTER.encodedSizeWithTag(3, value.select_application) + Counter.ADAPTER.encodedSizeWithTag(4, value.on_request_select_account_type) + Counter.ADAPTER.encodedSizeWithTag(5, value.select_account_type) + Counter.ADAPTER.encodedSizeWithTag(6, value.on_request_final_confirm) + Counter.ADAPTER.encodedSizeWithTag(7, value.final_confirm) + Counter.ADAPTER.encodedSizeWithTag(8, value.on_request_pin_entry) + Counter.ADAPTER.encodedSizeWithTag(9, value.on_pin_entry_result) + Counter.ADAPTER.encodedSizeWithTag(10, value.on_request_online_process) + Counter.ADAPTER.encodedSizeWithTag(11, value.handle_authorisation_response) + Counter.ADAPTER.encodedSizeWithTag(12, value.on_return_reversal_data) + Counter.ADAPTER.encodedSizeWithTag(13, value.on_return_transaction_result) + Counter.ADAPTER.encodedSizeWithTag(14, value.on_request_display_text) + Counter.ADAPTER.encodedSizeWithTag(15, value.on_return_batch_data) + Counter.ADAPTER.encodedSizeWithTag(16, value.start_reader);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, PaymentsScope value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                Counter.ADAPTER.encodeWithTag(writer, 1, value.on_return_check_card_result);
                Gauge.ADAPTER.encodeWithTag(writer, 2, value.on_request_select_application);
                Counter.ADAPTER.encodeWithTag(writer, 3, value.select_application);
                Counter.ADAPTER.encodeWithTag(writer, 4, value.on_request_select_account_type);
                Counter.ADAPTER.encodeWithTag(writer, 5, value.select_account_type);
                Counter.ADAPTER.encodeWithTag(writer, 6, value.on_request_final_confirm);
                Counter.ADAPTER.encodeWithTag(writer, 7, value.final_confirm);
                Counter.ADAPTER.encodeWithTag(writer, 8, value.on_request_pin_entry);
                Counter.ADAPTER.encodeWithTag(writer, 9, value.on_pin_entry_result);
                Counter.ADAPTER.encodeWithTag(writer, 10, value.on_request_online_process);
                Counter.ADAPTER.encodeWithTag(writer, 11, value.handle_authorisation_response);
                Counter.ADAPTER.encodeWithTag(writer, 12, value.on_return_reversal_data);
                Counter.ADAPTER.encodeWithTag(writer, 13, value.on_return_transaction_result);
                Counter.ADAPTER.encodeWithTag(writer, 14, value.on_request_display_text);
                Counter.ADAPTER.encodeWithTag(writer, 15, value.on_return_batch_data);
                Counter.ADAPTER.encodeWithTag(writer, 16, value.start_reader);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, PaymentsScope value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                Counter.ADAPTER.encodeWithTag(writer, 16, value.start_reader);
                Counter.ADAPTER.encodeWithTag(writer, 15, value.on_return_batch_data);
                Counter.ADAPTER.encodeWithTag(writer, 14, value.on_request_display_text);
                Counter.ADAPTER.encodeWithTag(writer, 13, value.on_return_transaction_result);
                Counter.ADAPTER.encodeWithTag(writer, 12, value.on_return_reversal_data);
                Counter.ADAPTER.encodeWithTag(writer, 11, value.handle_authorisation_response);
                Counter.ADAPTER.encodeWithTag(writer, 10, value.on_request_online_process);
                Counter.ADAPTER.encodeWithTag(writer, 9, value.on_pin_entry_result);
                Counter.ADAPTER.encodeWithTag(writer, 8, value.on_request_pin_entry);
                Counter.ADAPTER.encodeWithTag(writer, 7, value.final_confirm);
                Counter.ADAPTER.encodeWithTag(writer, 6, value.on_request_final_confirm);
                Counter.ADAPTER.encodeWithTag(writer, 5, value.select_account_type);
                Counter.ADAPTER.encodeWithTag(writer, 4, value.on_request_select_account_type);
                Counter.ADAPTER.encodeWithTag(writer, 3, value.select_application);
                Gauge.ADAPTER.encodeWithTag(writer, 2, value.on_request_select_application);
                Counter.ADAPTER.encodeWithTag(writer, 1, value.on_return_check_card_result);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public PaymentsScope redact(PaymentsScope value) {
                Counter counter;
                Counter counterRedact;
                Intrinsics.checkNotNullParameter(value, "value");
                Counter counter2 = value.on_return_check_card_result;
                Counter counterRedact2 = counter2 != null ? Counter.ADAPTER.redact(counter2) : null;
                Gauge gauge = value.on_request_select_application;
                Gauge gaugeRedact = gauge != null ? Gauge.ADAPTER.redact(gauge) : null;
                Counter counter3 = value.select_application;
                Counter counterRedact3 = counter3 != null ? Counter.ADAPTER.redact(counter3) : null;
                Counter counter4 = value.on_request_select_account_type;
                Counter counterRedact4 = counter4 != null ? Counter.ADAPTER.redact(counter4) : null;
                Counter counter5 = value.select_account_type;
                Counter counterRedact5 = counter5 != null ? Counter.ADAPTER.redact(counter5) : null;
                Counter counter6 = value.on_request_final_confirm;
                Counter counterRedact6 = counter6 != null ? Counter.ADAPTER.redact(counter6) : null;
                Counter counter7 = value.final_confirm;
                Counter counterRedact7 = counter7 != null ? Counter.ADAPTER.redact(counter7) : null;
                Counter counter8 = value.on_request_pin_entry;
                Counter counterRedact8 = counter8 != null ? Counter.ADAPTER.redact(counter8) : null;
                Counter counter9 = value.on_pin_entry_result;
                Counter counterRedact9 = counter9 != null ? Counter.ADAPTER.redact(counter9) : null;
                Counter counter10 = value.on_request_online_process;
                Counter counterRedact10 = counter10 != null ? Counter.ADAPTER.redact(counter10) : null;
                Counter counter11 = value.handle_authorisation_response;
                Counter counterRedact11 = counter11 != null ? Counter.ADAPTER.redact(counter11) : null;
                Counter counter12 = value.on_return_reversal_data;
                Counter counterRedact12 = counter12 != null ? Counter.ADAPTER.redact(counter12) : null;
                Counter counter13 = value.on_return_transaction_result;
                Counter counterRedact13 = counter13 != null ? Counter.ADAPTER.redact(counter13) : null;
                Counter counter14 = value.on_request_display_text;
                Counter counterRedact14 = counter14 != null ? Counter.ADAPTER.redact(counter14) : null;
                Counter counter15 = value.on_return_batch_data;
                Counter counter16 = counterRedact2;
                Counter counterRedact15 = counter15 != null ? Counter.ADAPTER.redact(counter15) : null;
                Counter counter17 = value.start_reader;
                if (counter17 != null) {
                    counterRedact = Counter.ADAPTER.redact(counter17);
                    counter = counterRedact15;
                } else {
                    counter = counterRedact15;
                    counterRedact = null;
                }
                return value.copy(counter16, gaugeRedact, counterRedact3, counterRedact4, counterRedact5, counterRedact6, counterRedact7, counterRedact8, counterRedact9, counterRedact10, counterRedact11, counterRedact12, counterRedact13, counterRedact14, counter, counterRedact, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public PaymentsScope decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                Gauge gaugeDecode = null;
                Counter counterDecode = null;
                Counter counterDecode2 = null;
                Counter counterDecode3 = null;
                Counter counterDecode4 = null;
                Counter counterDecode5 = null;
                Counter counterDecode6 = null;
                Counter counterDecode7 = null;
                Counter counterDecode8 = null;
                Counter counterDecode9 = null;
                Counter counterDecode10 = null;
                Counter counterDecode11 = null;
                Counter counterDecode12 = null;
                Counter counterDecode13 = null;
                Counter counterDecode14 = null;
                Counter counterDecode15 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    Gauge gauge = gaugeDecode;
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                counterDecode15 = Counter.ADAPTER.decode(reader);
                                break;
                            case 2:
                                gaugeDecode = Gauge.ADAPTER.decode(reader);
                                continue;
                            case 3:
                                counterDecode = Counter.ADAPTER.decode(reader);
                                break;
                            case 4:
                                counterDecode2 = Counter.ADAPTER.decode(reader);
                                break;
                            case 5:
                                counterDecode3 = Counter.ADAPTER.decode(reader);
                                break;
                            case 6:
                                counterDecode4 = Counter.ADAPTER.decode(reader);
                                break;
                            case 7:
                                counterDecode5 = Counter.ADAPTER.decode(reader);
                                break;
                            case 8:
                                counterDecode6 = Counter.ADAPTER.decode(reader);
                                break;
                            case 9:
                                counterDecode7 = Counter.ADAPTER.decode(reader);
                                break;
                            case 10:
                                counterDecode8 = Counter.ADAPTER.decode(reader);
                                break;
                            case 11:
                                counterDecode9 = Counter.ADAPTER.decode(reader);
                                break;
                            case 12:
                                counterDecode10 = Counter.ADAPTER.decode(reader);
                                break;
                            case 13:
                                counterDecode11 = Counter.ADAPTER.decode(reader);
                                break;
                            case 14:
                                counterDecode12 = Counter.ADAPTER.decode(reader);
                                break;
                            case 15:
                                counterDecode13 = Counter.ADAPTER.decode(reader);
                                break;
                            case 16:
                                counterDecode14 = Counter.ADAPTER.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                        gaugeDecode = gauge;
                    } else {
                        return new PaymentsScope(counterDecode15, gauge, counterDecode, counterDecode2, counterDecode3, counterDecode4, counterDecode5, counterDecode6, counterDecode7, counterDecode8, counterDecode9, counterDecode10, counterDecode11, counterDecode12, counterDecode13, counterDecode14, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
