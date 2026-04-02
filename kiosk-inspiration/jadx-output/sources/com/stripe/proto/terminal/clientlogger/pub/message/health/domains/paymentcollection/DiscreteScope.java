package com.stripe.proto.terminal.clientlogger.pub.message.health.domains.paymentcollection;

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

/* JADX INFO: compiled from: DiscreteScope.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 !2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002 !BÃ\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0014¢\u0006\u0002\u0010\u0015JÄ\u0001\u0010\u0016\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0013\u001a\u00020\u0014J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0096\u0002J\b\u0010\u001b\u001a\u00020\u001cH\u0016J\b\u0010\u001d\u001a\u00020\u0002H\u0016J\b\u0010\u001e\u001a\u00020\u001fH\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;", "allowing_mag_stripe", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;", "premature_card_removal", "reader_interface_changed", "quit_custom_tipping", "reselect_tipping", "online_confirmation_result", "skip_tipping", "currency_mismatch_tipping_config", "hardware_transaction_result", "manual_entry_invalid_input", "surcharge", "non_card_payment_method_confirmation_result", "non_card_payment_method_qr_code_refreshed", "magstripe_swipe_attempted", "partial_auth_approved", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DiscreteScope extends Message<DiscreteScope, Builder> {
    public static final ProtoAdapter<DiscreteScope> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "allowingMagStripe", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 0, tag = 1)
    public final Counter allowing_mag_stripe;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "currencyMismatchTippingConfig", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 7, tag = 8)
    public final Counter currency_mismatch_tipping_config;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "hardwareTransactionResult", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 8, tag = 9)
    public final Counter hardware_transaction_result;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "magstripeSwipeAttempted", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 13, tag = 14)
    public final Counter magstripe_swipe_attempted;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "manualEntryInvalidInput", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 9, tag = 10)
    public final Counter manual_entry_invalid_input;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "nonCardPaymentMethodConfirmationResult", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 11, tag = 12)
    public final Counter non_card_payment_method_confirmation_result;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "nonCardPaymentMethodQrCodeRefreshed", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 12, tag = 13)
    public final Counter non_card_payment_method_qr_code_refreshed;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "onlineConfirmationResult", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 5, tag = 6)
    public final Counter online_confirmation_result;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "partialAuthApproved", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 14, tag = 15)
    public final Counter partial_auth_approved;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "prematureCardRemoval", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 1, tag = 2)
    public final Counter premature_card_removal;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "quitCustomTipping", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 3, tag = 4)
    public final Counter quit_custom_tipping;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "readerInterfaceChanged", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 2, tag = 3)
    public final Counter reader_interface_changed;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "reselectTipping", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 4, tag = 5)
    public final Counter reselect_tipping;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "skipTipping", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 6, tag = 7)
    public final Counter skip_tipping;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 10, tag = 11)
    public final Counter surcharge;

    public DiscreteScope() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 65535, null);
    }

    public /* synthetic */ DiscreteScope(Counter counter, Counter counter2, Counter counter3, Counter counter4, Counter counter5, Counter counter6, Counter counter7, Counter counter8, Counter counter9, Counter counter10, Counter counter11, Counter counter12, Counter counter13, Counter counter14, Counter counter15, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : counter, (i & 2) != 0 ? null : counter2, (i & 4) != 0 ? null : counter3, (i & 8) != 0 ? null : counter4, (i & 16) != 0 ? null : counter5, (i & 32) != 0 ? null : counter6, (i & 64) != 0 ? null : counter7, (i & 128) != 0 ? null : counter8, (i & 256) != 0 ? null : counter9, (i & 512) != 0 ? null : counter10, (i & 1024) != 0 ? null : counter11, (i & 2048) != 0 ? null : counter12, (i & 4096) != 0 ? null : counter13, (i & 8192) != 0 ? null : counter14, (i & 16384) != 0 ? null : counter15, (i & 32768) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscreteScope(Counter counter, Counter counter2, Counter counter3, Counter counter4, Counter counter5, Counter counter6, Counter counter7, Counter counter8, Counter counter9, Counter counter10, Counter counter11, Counter counter12, Counter counter13, Counter counter14, Counter counter15, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.allowing_mag_stripe = counter;
        this.premature_card_removal = counter2;
        this.reader_interface_changed = counter3;
        this.quit_custom_tipping = counter4;
        this.reselect_tipping = counter5;
        this.online_confirmation_result = counter6;
        this.skip_tipping = counter7;
        this.currency_mismatch_tipping_config = counter8;
        this.hardware_transaction_result = counter9;
        this.manual_entry_invalid_input = counter10;
        this.surcharge = counter11;
        this.non_card_payment_method_confirmation_result = counter12;
        this.non_card_payment_method_qr_code_refreshed = counter13;
        this.magstripe_swipe_attempted = counter14;
        this.partial_auth_approved = counter15;
        if (Internal.countNonNull(counter, counter2, counter3, counter4, counter5, counter6, counter7, counter8, counter9, counter10, counter11, counter12, counter13, counter14, counter15) > 1) {
            throw new IllegalArgumentException("At most one of allowing_mag_stripe, premature_card_removal, reader_interface_changed, quit_custom_tipping, reselect_tipping, online_confirmation_result, skip_tipping, currency_mismatch_tipping_config, hardware_transaction_result, manual_entry_invalid_input, surcharge, non_card_payment_method_confirmation_result, non_card_payment_method_qr_code_refreshed, magstripe_swipe_attempted, partial_auth_approved may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.allowing_mag_stripe = this.allowing_mag_stripe;
        builder.premature_card_removal = this.premature_card_removal;
        builder.reader_interface_changed = this.reader_interface_changed;
        builder.quit_custom_tipping = this.quit_custom_tipping;
        builder.reselect_tipping = this.reselect_tipping;
        builder.online_confirmation_result = this.online_confirmation_result;
        builder.skip_tipping = this.skip_tipping;
        builder.currency_mismatch_tipping_config = this.currency_mismatch_tipping_config;
        builder.hardware_transaction_result = this.hardware_transaction_result;
        builder.manual_entry_invalid_input = this.manual_entry_invalid_input;
        builder.surcharge = this.surcharge;
        builder.non_card_payment_method_confirmation_result = this.non_card_payment_method_confirmation_result;
        builder.non_card_payment_method_qr_code_refreshed = this.non_card_payment_method_qr_code_refreshed;
        builder.magstripe_swipe_attempted = this.magstripe_swipe_attempted;
        builder.partial_auth_approved = this.partial_auth_approved;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof DiscreteScope)) {
            return false;
        }
        DiscreteScope discreteScope = (DiscreteScope) other;
        return Intrinsics.areEqual(unknownFields(), discreteScope.unknownFields()) && Intrinsics.areEqual(this.allowing_mag_stripe, discreteScope.allowing_mag_stripe) && Intrinsics.areEqual(this.premature_card_removal, discreteScope.premature_card_removal) && Intrinsics.areEqual(this.reader_interface_changed, discreteScope.reader_interface_changed) && Intrinsics.areEqual(this.quit_custom_tipping, discreteScope.quit_custom_tipping) && Intrinsics.areEqual(this.reselect_tipping, discreteScope.reselect_tipping) && Intrinsics.areEqual(this.online_confirmation_result, discreteScope.online_confirmation_result) && Intrinsics.areEqual(this.skip_tipping, discreteScope.skip_tipping) && Intrinsics.areEqual(this.currency_mismatch_tipping_config, discreteScope.currency_mismatch_tipping_config) && Intrinsics.areEqual(this.hardware_transaction_result, discreteScope.hardware_transaction_result) && Intrinsics.areEqual(this.manual_entry_invalid_input, discreteScope.manual_entry_invalid_input) && Intrinsics.areEqual(this.surcharge, discreteScope.surcharge) && Intrinsics.areEqual(this.non_card_payment_method_confirmation_result, discreteScope.non_card_payment_method_confirmation_result) && Intrinsics.areEqual(this.non_card_payment_method_qr_code_refreshed, discreteScope.non_card_payment_method_qr_code_refreshed) && Intrinsics.areEqual(this.magstripe_swipe_attempted, discreteScope.magstripe_swipe_attempted) && Intrinsics.areEqual(this.partial_auth_approved, discreteScope.partial_auth_approved);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Counter counter = this.allowing_mag_stripe;
        int iHashCode2 = (iHashCode + (counter != null ? counter.hashCode() : 0)) * 37;
        Counter counter2 = this.premature_card_removal;
        int iHashCode3 = (iHashCode2 + (counter2 != null ? counter2.hashCode() : 0)) * 37;
        Counter counter3 = this.reader_interface_changed;
        int iHashCode4 = (iHashCode3 + (counter3 != null ? counter3.hashCode() : 0)) * 37;
        Counter counter4 = this.quit_custom_tipping;
        int iHashCode5 = (iHashCode4 + (counter4 != null ? counter4.hashCode() : 0)) * 37;
        Counter counter5 = this.reselect_tipping;
        int iHashCode6 = (iHashCode5 + (counter5 != null ? counter5.hashCode() : 0)) * 37;
        Counter counter6 = this.online_confirmation_result;
        int iHashCode7 = (iHashCode6 + (counter6 != null ? counter6.hashCode() : 0)) * 37;
        Counter counter7 = this.skip_tipping;
        int iHashCode8 = (iHashCode7 + (counter7 != null ? counter7.hashCode() : 0)) * 37;
        Counter counter8 = this.currency_mismatch_tipping_config;
        int iHashCode9 = (iHashCode8 + (counter8 != null ? counter8.hashCode() : 0)) * 37;
        Counter counter9 = this.hardware_transaction_result;
        int iHashCode10 = (iHashCode9 + (counter9 != null ? counter9.hashCode() : 0)) * 37;
        Counter counter10 = this.manual_entry_invalid_input;
        int iHashCode11 = (iHashCode10 + (counter10 != null ? counter10.hashCode() : 0)) * 37;
        Counter counter11 = this.surcharge;
        int iHashCode12 = (iHashCode11 + (counter11 != null ? counter11.hashCode() : 0)) * 37;
        Counter counter12 = this.non_card_payment_method_confirmation_result;
        int iHashCode13 = (iHashCode12 + (counter12 != null ? counter12.hashCode() : 0)) * 37;
        Counter counter13 = this.non_card_payment_method_qr_code_refreshed;
        int iHashCode14 = (iHashCode13 + (counter13 != null ? counter13.hashCode() : 0)) * 37;
        Counter counter14 = this.magstripe_swipe_attempted;
        int iHashCode15 = (iHashCode14 + (counter14 != null ? counter14.hashCode() : 0)) * 37;
        Counter counter15 = this.partial_auth_approved;
        int iHashCode16 = iHashCode15 + (counter15 != null ? counter15.hashCode() : 0);
        this.hashCode = iHashCode16;
        return iHashCode16;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.allowing_mag_stripe != null) {
            arrayList.add("allowing_mag_stripe=" + this.allowing_mag_stripe);
        }
        if (this.premature_card_removal != null) {
            arrayList.add("premature_card_removal=" + this.premature_card_removal);
        }
        if (this.reader_interface_changed != null) {
            arrayList.add("reader_interface_changed=" + this.reader_interface_changed);
        }
        if (this.quit_custom_tipping != null) {
            arrayList.add("quit_custom_tipping=" + this.quit_custom_tipping);
        }
        if (this.reselect_tipping != null) {
            arrayList.add("reselect_tipping=" + this.reselect_tipping);
        }
        if (this.online_confirmation_result != null) {
            arrayList.add("online_confirmation_result=" + this.online_confirmation_result);
        }
        if (this.skip_tipping != null) {
            arrayList.add("skip_tipping=" + this.skip_tipping);
        }
        if (this.currency_mismatch_tipping_config != null) {
            arrayList.add("currency_mismatch_tipping_config=" + this.currency_mismatch_tipping_config);
        }
        if (this.hardware_transaction_result != null) {
            arrayList.add("hardware_transaction_result=" + this.hardware_transaction_result);
        }
        if (this.manual_entry_invalid_input != null) {
            arrayList.add("manual_entry_invalid_input=" + this.manual_entry_invalid_input);
        }
        if (this.surcharge != null) {
            arrayList.add("surcharge=" + this.surcharge);
        }
        if (this.non_card_payment_method_confirmation_result != null) {
            arrayList.add("non_card_payment_method_confirmation_result=" + this.non_card_payment_method_confirmation_result);
        }
        if (this.non_card_payment_method_qr_code_refreshed != null) {
            arrayList.add("non_card_payment_method_qr_code_refreshed=" + this.non_card_payment_method_qr_code_refreshed);
        }
        if (this.magstripe_swipe_attempted != null) {
            arrayList.add("magstripe_swipe_attempted=" + this.magstripe_swipe_attempted);
        }
        if (this.partial_auth_approved != null) {
            arrayList.add("partial_auth_approved=" + this.partial_auth_approved);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "DiscreteScope{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ DiscreteScope copy$default(DiscreteScope discreteScope, Counter counter, Counter counter2, Counter counter3, Counter counter4, Counter counter5, Counter counter6, Counter counter7, Counter counter8, Counter counter9, Counter counter10, Counter counter11, Counter counter12, Counter counter13, Counter counter14, Counter counter15, ByteString byteString, int i, Object obj) {
        Counter counter16 = (i & 1) != 0 ? discreteScope.allowing_mag_stripe : counter;
        return discreteScope.copy(counter16, (i & 2) != 0 ? discreteScope.premature_card_removal : counter2, (i & 4) != 0 ? discreteScope.reader_interface_changed : counter3, (i & 8) != 0 ? discreteScope.quit_custom_tipping : counter4, (i & 16) != 0 ? discreteScope.reselect_tipping : counter5, (i & 32) != 0 ? discreteScope.online_confirmation_result : counter6, (i & 64) != 0 ? discreteScope.skip_tipping : counter7, (i & 128) != 0 ? discreteScope.currency_mismatch_tipping_config : counter8, (i & 256) != 0 ? discreteScope.hardware_transaction_result : counter9, (i & 512) != 0 ? discreteScope.manual_entry_invalid_input : counter10, (i & 1024) != 0 ? discreteScope.surcharge : counter11, (i & 2048) != 0 ? discreteScope.non_card_payment_method_confirmation_result : counter12, (i & 4096) != 0 ? discreteScope.non_card_payment_method_qr_code_refreshed : counter13, (i & 8192) != 0 ? discreteScope.magstripe_swipe_attempted : counter14, (i & 16384) != 0 ? discreteScope.partial_auth_approved : counter15, (i & 32768) != 0 ? discreteScope.unknownFields() : byteString);
    }

    public final DiscreteScope copy(Counter allowing_mag_stripe, Counter premature_card_removal, Counter reader_interface_changed, Counter quit_custom_tipping, Counter reselect_tipping, Counter online_confirmation_result, Counter skip_tipping, Counter currency_mismatch_tipping_config, Counter hardware_transaction_result, Counter manual_entry_invalid_input, Counter surcharge, Counter non_card_payment_method_confirmation_result, Counter non_card_payment_method_qr_code_refreshed, Counter magstripe_swipe_attempted, Counter partial_auth_approved, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new DiscreteScope(allowing_mag_stripe, premature_card_removal, reader_interface_changed, quit_custom_tipping, reselect_tipping, online_confirmation_result, skip_tipping, currency_mismatch_tipping_config, hardware_transaction_result, manual_entry_invalid_input, surcharge, non_card_payment_method_confirmation_result, non_card_payment_method_qr_code_refreshed, magstripe_swipe_attempted, partial_auth_approved, unknownFields);
    }

    /* JADX INFO: compiled from: DiscreteScope.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0012\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0013\u001a\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope;", "()V", "allowing_mag_stripe", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;", "currency_mismatch_tipping_config", "hardware_transaction_result", "magstripe_swipe_attempted", "manual_entry_invalid_input", "non_card_payment_method_confirmation_result", "non_card_payment_method_qr_code_refreshed", "online_confirmation_result", "partial_auth_approved", "premature_card_removal", "quit_custom_tipping", "reader_interface_changed", "reselect_tipping", "skip_tipping", "surcharge", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<DiscreteScope, Builder> {
        public Counter allowing_mag_stripe;
        public Counter currency_mismatch_tipping_config;
        public Counter hardware_transaction_result;
        public Counter magstripe_swipe_attempted;
        public Counter manual_entry_invalid_input;
        public Counter non_card_payment_method_confirmation_result;
        public Counter non_card_payment_method_qr_code_refreshed;
        public Counter online_confirmation_result;
        public Counter partial_auth_approved;
        public Counter premature_card_removal;
        public Counter quit_custom_tipping;
        public Counter reader_interface_changed;
        public Counter reselect_tipping;
        public Counter skip_tipping;
        public Counter surcharge;

        public final Builder allowing_mag_stripe(Counter allowing_mag_stripe) {
            this.allowing_mag_stripe = allowing_mag_stripe;
            this.premature_card_removal = null;
            this.reader_interface_changed = null;
            this.quit_custom_tipping = null;
            this.reselect_tipping = null;
            this.online_confirmation_result = null;
            this.skip_tipping = null;
            this.currency_mismatch_tipping_config = null;
            this.hardware_transaction_result = null;
            this.manual_entry_invalid_input = null;
            this.surcharge = null;
            this.non_card_payment_method_confirmation_result = null;
            this.non_card_payment_method_qr_code_refreshed = null;
            this.magstripe_swipe_attempted = null;
            this.partial_auth_approved = null;
            return this;
        }

        public final Builder premature_card_removal(Counter premature_card_removal) {
            this.premature_card_removal = premature_card_removal;
            this.allowing_mag_stripe = null;
            this.reader_interface_changed = null;
            this.quit_custom_tipping = null;
            this.reselect_tipping = null;
            this.online_confirmation_result = null;
            this.skip_tipping = null;
            this.currency_mismatch_tipping_config = null;
            this.hardware_transaction_result = null;
            this.manual_entry_invalid_input = null;
            this.surcharge = null;
            this.non_card_payment_method_confirmation_result = null;
            this.non_card_payment_method_qr_code_refreshed = null;
            this.magstripe_swipe_attempted = null;
            this.partial_auth_approved = null;
            return this;
        }

        public final Builder reader_interface_changed(Counter reader_interface_changed) {
            this.reader_interface_changed = reader_interface_changed;
            this.allowing_mag_stripe = null;
            this.premature_card_removal = null;
            this.quit_custom_tipping = null;
            this.reselect_tipping = null;
            this.online_confirmation_result = null;
            this.skip_tipping = null;
            this.currency_mismatch_tipping_config = null;
            this.hardware_transaction_result = null;
            this.manual_entry_invalid_input = null;
            this.surcharge = null;
            this.non_card_payment_method_confirmation_result = null;
            this.non_card_payment_method_qr_code_refreshed = null;
            this.magstripe_swipe_attempted = null;
            this.partial_auth_approved = null;
            return this;
        }

        public final Builder quit_custom_tipping(Counter quit_custom_tipping) {
            this.quit_custom_tipping = quit_custom_tipping;
            this.allowing_mag_stripe = null;
            this.premature_card_removal = null;
            this.reader_interface_changed = null;
            this.reselect_tipping = null;
            this.online_confirmation_result = null;
            this.skip_tipping = null;
            this.currency_mismatch_tipping_config = null;
            this.hardware_transaction_result = null;
            this.manual_entry_invalid_input = null;
            this.surcharge = null;
            this.non_card_payment_method_confirmation_result = null;
            this.non_card_payment_method_qr_code_refreshed = null;
            this.magstripe_swipe_attempted = null;
            this.partial_auth_approved = null;
            return this;
        }

        public final Builder reselect_tipping(Counter reselect_tipping) {
            this.reselect_tipping = reselect_tipping;
            this.allowing_mag_stripe = null;
            this.premature_card_removal = null;
            this.reader_interface_changed = null;
            this.quit_custom_tipping = null;
            this.online_confirmation_result = null;
            this.skip_tipping = null;
            this.currency_mismatch_tipping_config = null;
            this.hardware_transaction_result = null;
            this.manual_entry_invalid_input = null;
            this.surcharge = null;
            this.non_card_payment_method_confirmation_result = null;
            this.non_card_payment_method_qr_code_refreshed = null;
            this.magstripe_swipe_attempted = null;
            this.partial_auth_approved = null;
            return this;
        }

        public final Builder online_confirmation_result(Counter online_confirmation_result) {
            this.online_confirmation_result = online_confirmation_result;
            this.allowing_mag_stripe = null;
            this.premature_card_removal = null;
            this.reader_interface_changed = null;
            this.quit_custom_tipping = null;
            this.reselect_tipping = null;
            this.skip_tipping = null;
            this.currency_mismatch_tipping_config = null;
            this.hardware_transaction_result = null;
            this.manual_entry_invalid_input = null;
            this.surcharge = null;
            this.non_card_payment_method_confirmation_result = null;
            this.non_card_payment_method_qr_code_refreshed = null;
            this.magstripe_swipe_attempted = null;
            this.partial_auth_approved = null;
            return this;
        }

        public final Builder skip_tipping(Counter skip_tipping) {
            this.skip_tipping = skip_tipping;
            this.allowing_mag_stripe = null;
            this.premature_card_removal = null;
            this.reader_interface_changed = null;
            this.quit_custom_tipping = null;
            this.reselect_tipping = null;
            this.online_confirmation_result = null;
            this.currency_mismatch_tipping_config = null;
            this.hardware_transaction_result = null;
            this.manual_entry_invalid_input = null;
            this.surcharge = null;
            this.non_card_payment_method_confirmation_result = null;
            this.non_card_payment_method_qr_code_refreshed = null;
            this.magstripe_swipe_attempted = null;
            this.partial_auth_approved = null;
            return this;
        }

        public final Builder currency_mismatch_tipping_config(Counter currency_mismatch_tipping_config) {
            this.currency_mismatch_tipping_config = currency_mismatch_tipping_config;
            this.allowing_mag_stripe = null;
            this.premature_card_removal = null;
            this.reader_interface_changed = null;
            this.quit_custom_tipping = null;
            this.reselect_tipping = null;
            this.online_confirmation_result = null;
            this.skip_tipping = null;
            this.hardware_transaction_result = null;
            this.manual_entry_invalid_input = null;
            this.surcharge = null;
            this.non_card_payment_method_confirmation_result = null;
            this.non_card_payment_method_qr_code_refreshed = null;
            this.magstripe_swipe_attempted = null;
            this.partial_auth_approved = null;
            return this;
        }

        public final Builder hardware_transaction_result(Counter hardware_transaction_result) {
            this.hardware_transaction_result = hardware_transaction_result;
            this.allowing_mag_stripe = null;
            this.premature_card_removal = null;
            this.reader_interface_changed = null;
            this.quit_custom_tipping = null;
            this.reselect_tipping = null;
            this.online_confirmation_result = null;
            this.skip_tipping = null;
            this.currency_mismatch_tipping_config = null;
            this.manual_entry_invalid_input = null;
            this.surcharge = null;
            this.non_card_payment_method_confirmation_result = null;
            this.non_card_payment_method_qr_code_refreshed = null;
            this.magstripe_swipe_attempted = null;
            this.partial_auth_approved = null;
            return this;
        }

        public final Builder manual_entry_invalid_input(Counter manual_entry_invalid_input) {
            this.manual_entry_invalid_input = manual_entry_invalid_input;
            this.allowing_mag_stripe = null;
            this.premature_card_removal = null;
            this.reader_interface_changed = null;
            this.quit_custom_tipping = null;
            this.reselect_tipping = null;
            this.online_confirmation_result = null;
            this.skip_tipping = null;
            this.currency_mismatch_tipping_config = null;
            this.hardware_transaction_result = null;
            this.surcharge = null;
            this.non_card_payment_method_confirmation_result = null;
            this.non_card_payment_method_qr_code_refreshed = null;
            this.magstripe_swipe_attempted = null;
            this.partial_auth_approved = null;
            return this;
        }

        public final Builder surcharge(Counter surcharge) {
            this.surcharge = surcharge;
            this.allowing_mag_stripe = null;
            this.premature_card_removal = null;
            this.reader_interface_changed = null;
            this.quit_custom_tipping = null;
            this.reselect_tipping = null;
            this.online_confirmation_result = null;
            this.skip_tipping = null;
            this.currency_mismatch_tipping_config = null;
            this.hardware_transaction_result = null;
            this.manual_entry_invalid_input = null;
            this.non_card_payment_method_confirmation_result = null;
            this.non_card_payment_method_qr_code_refreshed = null;
            this.magstripe_swipe_attempted = null;
            this.partial_auth_approved = null;
            return this;
        }

        public final Builder non_card_payment_method_confirmation_result(Counter non_card_payment_method_confirmation_result) {
            this.non_card_payment_method_confirmation_result = non_card_payment_method_confirmation_result;
            this.allowing_mag_stripe = null;
            this.premature_card_removal = null;
            this.reader_interface_changed = null;
            this.quit_custom_tipping = null;
            this.reselect_tipping = null;
            this.online_confirmation_result = null;
            this.skip_tipping = null;
            this.currency_mismatch_tipping_config = null;
            this.hardware_transaction_result = null;
            this.manual_entry_invalid_input = null;
            this.surcharge = null;
            this.non_card_payment_method_qr_code_refreshed = null;
            this.magstripe_swipe_attempted = null;
            this.partial_auth_approved = null;
            return this;
        }

        public final Builder non_card_payment_method_qr_code_refreshed(Counter non_card_payment_method_qr_code_refreshed) {
            this.non_card_payment_method_qr_code_refreshed = non_card_payment_method_qr_code_refreshed;
            this.allowing_mag_stripe = null;
            this.premature_card_removal = null;
            this.reader_interface_changed = null;
            this.quit_custom_tipping = null;
            this.reselect_tipping = null;
            this.online_confirmation_result = null;
            this.skip_tipping = null;
            this.currency_mismatch_tipping_config = null;
            this.hardware_transaction_result = null;
            this.manual_entry_invalid_input = null;
            this.surcharge = null;
            this.non_card_payment_method_confirmation_result = null;
            this.magstripe_swipe_attempted = null;
            this.partial_auth_approved = null;
            return this;
        }

        public final Builder magstripe_swipe_attempted(Counter magstripe_swipe_attempted) {
            this.magstripe_swipe_attempted = magstripe_swipe_attempted;
            this.allowing_mag_stripe = null;
            this.premature_card_removal = null;
            this.reader_interface_changed = null;
            this.quit_custom_tipping = null;
            this.reselect_tipping = null;
            this.online_confirmation_result = null;
            this.skip_tipping = null;
            this.currency_mismatch_tipping_config = null;
            this.hardware_transaction_result = null;
            this.manual_entry_invalid_input = null;
            this.surcharge = null;
            this.non_card_payment_method_confirmation_result = null;
            this.non_card_payment_method_qr_code_refreshed = null;
            this.partial_auth_approved = null;
            return this;
        }

        public final Builder partial_auth_approved(Counter partial_auth_approved) {
            this.partial_auth_approved = partial_auth_approved;
            this.allowing_mag_stripe = null;
            this.premature_card_removal = null;
            this.reader_interface_changed = null;
            this.quit_custom_tipping = null;
            this.reselect_tipping = null;
            this.online_confirmation_result = null;
            this.skip_tipping = null;
            this.currency_mismatch_tipping_config = null;
            this.hardware_transaction_result = null;
            this.manual_entry_invalid_input = null;
            this.surcharge = null;
            this.non_card_payment_method_confirmation_result = null;
            this.non_card_payment_method_qr_code_refreshed = null;
            this.magstripe_swipe_attempted = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public DiscreteScope build() {
            return new DiscreteScope(this.allowing_mag_stripe, this.premature_card_removal, this.reader_interface_changed, this.quit_custom_tipping, this.reselect_tipping, this.online_confirmation_result, this.skip_tipping, this.currency_mismatch_tipping_config, this.hardware_transaction_result, this.manual_entry_invalid_input, this.surcharge, this.non_card_payment_method_confirmation_result, this.non_card_payment_method_qr_code_refreshed, this.magstripe_swipe_attempted, this.partial_auth_approved, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: DiscreteScope.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ DiscreteScope build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DiscreteScope.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<DiscreteScope>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.health.domains.paymentcollection.DiscreteScope$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(DiscreteScope value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + Counter.ADAPTER.encodedSizeWithTag(1, value.allowing_mag_stripe) + Counter.ADAPTER.encodedSizeWithTag(2, value.premature_card_removal) + Counter.ADAPTER.encodedSizeWithTag(3, value.reader_interface_changed) + Counter.ADAPTER.encodedSizeWithTag(4, value.quit_custom_tipping) + Counter.ADAPTER.encodedSizeWithTag(5, value.reselect_tipping) + Counter.ADAPTER.encodedSizeWithTag(6, value.online_confirmation_result) + Counter.ADAPTER.encodedSizeWithTag(7, value.skip_tipping) + Counter.ADAPTER.encodedSizeWithTag(8, value.currency_mismatch_tipping_config) + Counter.ADAPTER.encodedSizeWithTag(9, value.hardware_transaction_result) + Counter.ADAPTER.encodedSizeWithTag(10, value.manual_entry_invalid_input) + Counter.ADAPTER.encodedSizeWithTag(11, value.surcharge) + Counter.ADAPTER.encodedSizeWithTag(12, value.non_card_payment_method_confirmation_result) + Counter.ADAPTER.encodedSizeWithTag(13, value.non_card_payment_method_qr_code_refreshed) + Counter.ADAPTER.encodedSizeWithTag(14, value.magstripe_swipe_attempted) + Counter.ADAPTER.encodedSizeWithTag(15, value.partial_auth_approved);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, DiscreteScope value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                Counter.ADAPTER.encodeWithTag(writer, 1, value.allowing_mag_stripe);
                Counter.ADAPTER.encodeWithTag(writer, 2, value.premature_card_removal);
                Counter.ADAPTER.encodeWithTag(writer, 3, value.reader_interface_changed);
                Counter.ADAPTER.encodeWithTag(writer, 4, value.quit_custom_tipping);
                Counter.ADAPTER.encodeWithTag(writer, 5, value.reselect_tipping);
                Counter.ADAPTER.encodeWithTag(writer, 6, value.online_confirmation_result);
                Counter.ADAPTER.encodeWithTag(writer, 7, value.skip_tipping);
                Counter.ADAPTER.encodeWithTag(writer, 8, value.currency_mismatch_tipping_config);
                Counter.ADAPTER.encodeWithTag(writer, 9, value.hardware_transaction_result);
                Counter.ADAPTER.encodeWithTag(writer, 10, value.manual_entry_invalid_input);
                Counter.ADAPTER.encodeWithTag(writer, 11, value.surcharge);
                Counter.ADAPTER.encodeWithTag(writer, 12, value.non_card_payment_method_confirmation_result);
                Counter.ADAPTER.encodeWithTag(writer, 13, value.non_card_payment_method_qr_code_refreshed);
                Counter.ADAPTER.encodeWithTag(writer, 14, value.magstripe_swipe_attempted);
                Counter.ADAPTER.encodeWithTag(writer, 15, value.partial_auth_approved);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, DiscreteScope value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                Counter.ADAPTER.encodeWithTag(writer, 15, value.partial_auth_approved);
                Counter.ADAPTER.encodeWithTag(writer, 14, value.magstripe_swipe_attempted);
                Counter.ADAPTER.encodeWithTag(writer, 13, value.non_card_payment_method_qr_code_refreshed);
                Counter.ADAPTER.encodeWithTag(writer, 12, value.non_card_payment_method_confirmation_result);
                Counter.ADAPTER.encodeWithTag(writer, 11, value.surcharge);
                Counter.ADAPTER.encodeWithTag(writer, 10, value.manual_entry_invalid_input);
                Counter.ADAPTER.encodeWithTag(writer, 9, value.hardware_transaction_result);
                Counter.ADAPTER.encodeWithTag(writer, 8, value.currency_mismatch_tipping_config);
                Counter.ADAPTER.encodeWithTag(writer, 7, value.skip_tipping);
                Counter.ADAPTER.encodeWithTag(writer, 6, value.online_confirmation_result);
                Counter.ADAPTER.encodeWithTag(writer, 5, value.reselect_tipping);
                Counter.ADAPTER.encodeWithTag(writer, 4, value.quit_custom_tipping);
                Counter.ADAPTER.encodeWithTag(writer, 3, value.reader_interface_changed);
                Counter.ADAPTER.encodeWithTag(writer, 2, value.premature_card_removal);
                Counter.ADAPTER.encodeWithTag(writer, 1, value.allowing_mag_stripe);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public DiscreteScope redact(DiscreteScope value) {
                Counter counter;
                Counter counterRedact;
                Intrinsics.checkNotNullParameter(value, "value");
                Counter counter2 = value.allowing_mag_stripe;
                Counter counterRedact2 = counter2 != null ? Counter.ADAPTER.redact(counter2) : null;
                Counter counter3 = value.premature_card_removal;
                Counter counterRedact3 = counter3 != null ? Counter.ADAPTER.redact(counter3) : null;
                Counter counter4 = value.reader_interface_changed;
                Counter counterRedact4 = counter4 != null ? Counter.ADAPTER.redact(counter4) : null;
                Counter counter5 = value.quit_custom_tipping;
                Counter counterRedact5 = counter5 != null ? Counter.ADAPTER.redact(counter5) : null;
                Counter counter6 = value.reselect_tipping;
                Counter counterRedact6 = counter6 != null ? Counter.ADAPTER.redact(counter6) : null;
                Counter counter7 = value.online_confirmation_result;
                Counter counterRedact7 = counter7 != null ? Counter.ADAPTER.redact(counter7) : null;
                Counter counter8 = value.skip_tipping;
                Counter counterRedact8 = counter8 != null ? Counter.ADAPTER.redact(counter8) : null;
                Counter counter9 = value.currency_mismatch_tipping_config;
                Counter counterRedact9 = counter9 != null ? Counter.ADAPTER.redact(counter9) : null;
                Counter counter10 = value.hardware_transaction_result;
                Counter counterRedact10 = counter10 != null ? Counter.ADAPTER.redact(counter10) : null;
                Counter counter11 = value.manual_entry_invalid_input;
                Counter counterRedact11 = counter11 != null ? Counter.ADAPTER.redact(counter11) : null;
                Counter counter12 = value.surcharge;
                Counter counterRedact12 = counter12 != null ? Counter.ADAPTER.redact(counter12) : null;
                Counter counter13 = value.non_card_payment_method_confirmation_result;
                Counter counterRedact13 = counter13 != null ? Counter.ADAPTER.redact(counter13) : null;
                Counter counter14 = value.non_card_payment_method_qr_code_refreshed;
                Counter counterRedact14 = counter14 != null ? Counter.ADAPTER.redact(counter14) : null;
                Counter counter15 = value.magstripe_swipe_attempted;
                Counter counterRedact15 = counter15 != null ? Counter.ADAPTER.redact(counter15) : null;
                Counter counter16 = value.partial_auth_approved;
                if (counter16 != null) {
                    counterRedact = Counter.ADAPTER.redact(counter16);
                    counter = counterRedact2;
                } else {
                    counter = counterRedact2;
                    counterRedact = null;
                }
                return value.copy(counter, counterRedact3, counterRedact4, counterRedact5, counterRedact6, counterRedact7, counterRedact8, counterRedact9, counterRedact10, counterRedact11, counterRedact12, counterRedact13, counterRedact14, counterRedact15, counterRedact, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public DiscreteScope decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
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
                    Counter counter = counterDecode;
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                counterDecode15 = Counter.ADAPTER.decode(reader);
                                break;
                            case 2:
                                counterDecode = Counter.ADAPTER.decode(reader);
                                continue;
                            case 3:
                                counterDecode2 = Counter.ADAPTER.decode(reader);
                                break;
                            case 4:
                                counterDecode3 = Counter.ADAPTER.decode(reader);
                                break;
                            case 5:
                                counterDecode4 = Counter.ADAPTER.decode(reader);
                                break;
                            case 6:
                                counterDecode5 = Counter.ADAPTER.decode(reader);
                                break;
                            case 7:
                                counterDecode6 = Counter.ADAPTER.decode(reader);
                                break;
                            case 8:
                                counterDecode7 = Counter.ADAPTER.decode(reader);
                                break;
                            case 9:
                                counterDecode8 = Counter.ADAPTER.decode(reader);
                                break;
                            case 10:
                                counterDecode9 = Counter.ADAPTER.decode(reader);
                                break;
                            case 11:
                                counterDecode10 = Counter.ADAPTER.decode(reader);
                                break;
                            case 12:
                                counterDecode11 = Counter.ADAPTER.decode(reader);
                                break;
                            case 13:
                                counterDecode12 = Counter.ADAPTER.decode(reader);
                                break;
                            case 14:
                                counterDecode13 = Counter.ADAPTER.decode(reader);
                                break;
                            case 15:
                                counterDecode14 = Counter.ADAPTER.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                        counterDecode = counter;
                    } else {
                        return new DiscreteScope(counterDecode15, counter, counterDecode2, counterDecode3, counterDecode4, counterDecode5, counterDecode6, counterDecode7, counterDecode8, counterDecode9, counterDecode10, counterDecode11, counterDecode12, counterDecode13, counterDecode14, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
