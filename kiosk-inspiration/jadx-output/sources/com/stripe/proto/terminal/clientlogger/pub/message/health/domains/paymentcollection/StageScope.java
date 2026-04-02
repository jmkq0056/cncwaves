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
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer;
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

/* JADX INFO: compiled from: StageScope.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 !2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002 !BÃ\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0014¢\u0006\u0002\u0010\u0015JÄ\u0001\u0010\u0016\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0013\u001a\u00020\u0014J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0096\u0002J\b\u0010\u001b\u001a\u00020\u001cH\u0016J\b\u0010\u001d\u001a\u00020\u0002H\u0016J\b\u0010\u001e\u001a\u00020\u001fH\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;", "application_selection", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;", "account_selection", "pin_entry", "tipping_selection", "online_auth", "display_cart", "remove_card", "kernel_processing", "pos_app_processing", "language_selection", "card_present", "manual_entry", "dcc_selection", "non_card_payment_method_selection", "non_card_payment_method_action_required", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class StageScope extends Message<StageScope, Builder> {
    public static final ProtoAdapter<StageScope> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER", jsonName = "accountSelection", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 1, tag = 2)
    public final Timer account_selection;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER", jsonName = "applicationSelection", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 0, tag = 1)
    public final Timer application_selection;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER", jsonName = "cardPresent", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 10, tag = 11)
    public final Timer card_present;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER", jsonName = "dccSelection", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 12, tag = 13)
    public final Timer dcc_selection;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER", jsonName = "displayCart", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 5, tag = 6)
    public final Timer display_cart;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER", jsonName = "kernelProcessing", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 7, tag = 8)
    public final Timer kernel_processing;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER", jsonName = "languageSelection", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 9, tag = 10)
    public final Timer language_selection;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER", jsonName = "manualEntry", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 11, tag = 12)
    public final Timer manual_entry;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER", jsonName = "nonCardPaymentMethodActionRequired", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 14, tag = 15)
    public final Timer non_card_payment_method_action_required;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER", jsonName = "nonCardPaymentMethodSelection", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 13, tag = 14)
    public final Timer non_card_payment_method_selection;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER", jsonName = "onlineAuth", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 4, tag = 5)
    public final Timer online_auth;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER", jsonName = "pinEntry", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 2, tag = 3)
    public final Timer pin_entry;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER", jsonName = "posAppProcessing", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 8, tag = 9)
    public final Timer pos_app_processing;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER", jsonName = "removeCard", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 6, tag = 7)
    public final Timer remove_card;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER", jsonName = "tippingSelection", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 3, tag = 4)
    public final Timer tipping_selection;

    public StageScope() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 65535, null);
    }

    public /* synthetic */ StageScope(Timer timer, Timer timer2, Timer timer3, Timer timer4, Timer timer5, Timer timer6, Timer timer7, Timer timer8, Timer timer9, Timer timer10, Timer timer11, Timer timer12, Timer timer13, Timer timer14, Timer timer15, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : timer, (i & 2) != 0 ? null : timer2, (i & 4) != 0 ? null : timer3, (i & 8) != 0 ? null : timer4, (i & 16) != 0 ? null : timer5, (i & 32) != 0 ? null : timer6, (i & 64) != 0 ? null : timer7, (i & 128) != 0 ? null : timer8, (i & 256) != 0 ? null : timer9, (i & 512) != 0 ? null : timer10, (i & 1024) != 0 ? null : timer11, (i & 2048) != 0 ? null : timer12, (i & 4096) != 0 ? null : timer13, (i & 8192) != 0 ? null : timer14, (i & 16384) != 0 ? null : timer15, (i & 32768) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StageScope(Timer timer, Timer timer2, Timer timer3, Timer timer4, Timer timer5, Timer timer6, Timer timer7, Timer timer8, Timer timer9, Timer timer10, Timer timer11, Timer timer12, Timer timer13, Timer timer14, Timer timer15, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.application_selection = timer;
        this.account_selection = timer2;
        this.pin_entry = timer3;
        this.tipping_selection = timer4;
        this.online_auth = timer5;
        this.display_cart = timer6;
        this.remove_card = timer7;
        this.kernel_processing = timer8;
        this.pos_app_processing = timer9;
        this.language_selection = timer10;
        this.card_present = timer11;
        this.manual_entry = timer12;
        this.dcc_selection = timer13;
        this.non_card_payment_method_selection = timer14;
        this.non_card_payment_method_action_required = timer15;
        if (Internal.countNonNull(timer, timer2, timer3, timer4, timer5, timer6, timer7, timer8, timer9, timer10, timer11, timer12, timer13, timer14, timer15) > 1) {
            throw new IllegalArgumentException("At most one of application_selection, account_selection, pin_entry, tipping_selection, online_auth, display_cart, remove_card, kernel_processing, pos_app_processing, language_selection, card_present, manual_entry, dcc_selection, non_card_payment_method_selection, non_card_payment_method_action_required may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.application_selection = this.application_selection;
        builder.account_selection = this.account_selection;
        builder.pin_entry = this.pin_entry;
        builder.tipping_selection = this.tipping_selection;
        builder.online_auth = this.online_auth;
        builder.display_cart = this.display_cart;
        builder.remove_card = this.remove_card;
        builder.kernel_processing = this.kernel_processing;
        builder.pos_app_processing = this.pos_app_processing;
        builder.language_selection = this.language_selection;
        builder.card_present = this.card_present;
        builder.manual_entry = this.manual_entry;
        builder.dcc_selection = this.dcc_selection;
        builder.non_card_payment_method_selection = this.non_card_payment_method_selection;
        builder.non_card_payment_method_action_required = this.non_card_payment_method_action_required;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof StageScope)) {
            return false;
        }
        StageScope stageScope = (StageScope) other;
        return Intrinsics.areEqual(unknownFields(), stageScope.unknownFields()) && Intrinsics.areEqual(this.application_selection, stageScope.application_selection) && Intrinsics.areEqual(this.account_selection, stageScope.account_selection) && Intrinsics.areEqual(this.pin_entry, stageScope.pin_entry) && Intrinsics.areEqual(this.tipping_selection, stageScope.tipping_selection) && Intrinsics.areEqual(this.online_auth, stageScope.online_auth) && Intrinsics.areEqual(this.display_cart, stageScope.display_cart) && Intrinsics.areEqual(this.remove_card, stageScope.remove_card) && Intrinsics.areEqual(this.kernel_processing, stageScope.kernel_processing) && Intrinsics.areEqual(this.pos_app_processing, stageScope.pos_app_processing) && Intrinsics.areEqual(this.language_selection, stageScope.language_selection) && Intrinsics.areEqual(this.card_present, stageScope.card_present) && Intrinsics.areEqual(this.manual_entry, stageScope.manual_entry) && Intrinsics.areEqual(this.dcc_selection, stageScope.dcc_selection) && Intrinsics.areEqual(this.non_card_payment_method_selection, stageScope.non_card_payment_method_selection) && Intrinsics.areEqual(this.non_card_payment_method_action_required, stageScope.non_card_payment_method_action_required);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Timer timer = this.application_selection;
        int iHashCode2 = (iHashCode + (timer != null ? timer.hashCode() : 0)) * 37;
        Timer timer2 = this.account_selection;
        int iHashCode3 = (iHashCode2 + (timer2 != null ? timer2.hashCode() : 0)) * 37;
        Timer timer3 = this.pin_entry;
        int iHashCode4 = (iHashCode3 + (timer3 != null ? timer3.hashCode() : 0)) * 37;
        Timer timer4 = this.tipping_selection;
        int iHashCode5 = (iHashCode4 + (timer4 != null ? timer4.hashCode() : 0)) * 37;
        Timer timer5 = this.online_auth;
        int iHashCode6 = (iHashCode5 + (timer5 != null ? timer5.hashCode() : 0)) * 37;
        Timer timer6 = this.display_cart;
        int iHashCode7 = (iHashCode6 + (timer6 != null ? timer6.hashCode() : 0)) * 37;
        Timer timer7 = this.remove_card;
        int iHashCode8 = (iHashCode7 + (timer7 != null ? timer7.hashCode() : 0)) * 37;
        Timer timer8 = this.kernel_processing;
        int iHashCode9 = (iHashCode8 + (timer8 != null ? timer8.hashCode() : 0)) * 37;
        Timer timer9 = this.pos_app_processing;
        int iHashCode10 = (iHashCode9 + (timer9 != null ? timer9.hashCode() : 0)) * 37;
        Timer timer10 = this.language_selection;
        int iHashCode11 = (iHashCode10 + (timer10 != null ? timer10.hashCode() : 0)) * 37;
        Timer timer11 = this.card_present;
        int iHashCode12 = (iHashCode11 + (timer11 != null ? timer11.hashCode() : 0)) * 37;
        Timer timer12 = this.manual_entry;
        int iHashCode13 = (iHashCode12 + (timer12 != null ? timer12.hashCode() : 0)) * 37;
        Timer timer13 = this.dcc_selection;
        int iHashCode14 = (iHashCode13 + (timer13 != null ? timer13.hashCode() : 0)) * 37;
        Timer timer14 = this.non_card_payment_method_selection;
        int iHashCode15 = (iHashCode14 + (timer14 != null ? timer14.hashCode() : 0)) * 37;
        Timer timer15 = this.non_card_payment_method_action_required;
        int iHashCode16 = iHashCode15 + (timer15 != null ? timer15.hashCode() : 0);
        this.hashCode = iHashCode16;
        return iHashCode16;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.application_selection != null) {
            arrayList.add("application_selection=" + this.application_selection);
        }
        if (this.account_selection != null) {
            arrayList.add("account_selection=" + this.account_selection);
        }
        if (this.pin_entry != null) {
            arrayList.add("pin_entry=" + this.pin_entry);
        }
        if (this.tipping_selection != null) {
            arrayList.add("tipping_selection=" + this.tipping_selection);
        }
        if (this.online_auth != null) {
            arrayList.add("online_auth=" + this.online_auth);
        }
        if (this.display_cart != null) {
            arrayList.add("display_cart=" + this.display_cart);
        }
        if (this.remove_card != null) {
            arrayList.add("remove_card=" + this.remove_card);
        }
        if (this.kernel_processing != null) {
            arrayList.add("kernel_processing=" + this.kernel_processing);
        }
        if (this.pos_app_processing != null) {
            arrayList.add("pos_app_processing=" + this.pos_app_processing);
        }
        if (this.language_selection != null) {
            arrayList.add("language_selection=" + this.language_selection);
        }
        if (this.card_present != null) {
            arrayList.add("card_present=" + this.card_present);
        }
        if (this.manual_entry != null) {
            arrayList.add("manual_entry=" + this.manual_entry);
        }
        if (this.dcc_selection != null) {
            arrayList.add("dcc_selection=" + this.dcc_selection);
        }
        if (this.non_card_payment_method_selection != null) {
            arrayList.add("non_card_payment_method_selection=" + this.non_card_payment_method_selection);
        }
        if (this.non_card_payment_method_action_required != null) {
            arrayList.add("non_card_payment_method_action_required=" + this.non_card_payment_method_action_required);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "StageScope{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ StageScope copy$default(StageScope stageScope, Timer timer, Timer timer2, Timer timer3, Timer timer4, Timer timer5, Timer timer6, Timer timer7, Timer timer8, Timer timer9, Timer timer10, Timer timer11, Timer timer12, Timer timer13, Timer timer14, Timer timer15, ByteString byteString, int i, Object obj) {
        Timer timer16 = (i & 1) != 0 ? stageScope.application_selection : timer;
        return stageScope.copy(timer16, (i & 2) != 0 ? stageScope.account_selection : timer2, (i & 4) != 0 ? stageScope.pin_entry : timer3, (i & 8) != 0 ? stageScope.tipping_selection : timer4, (i & 16) != 0 ? stageScope.online_auth : timer5, (i & 32) != 0 ? stageScope.display_cart : timer6, (i & 64) != 0 ? stageScope.remove_card : timer7, (i & 128) != 0 ? stageScope.kernel_processing : timer8, (i & 256) != 0 ? stageScope.pos_app_processing : timer9, (i & 512) != 0 ? stageScope.language_selection : timer10, (i & 1024) != 0 ? stageScope.card_present : timer11, (i & 2048) != 0 ? stageScope.manual_entry : timer12, (i & 4096) != 0 ? stageScope.dcc_selection : timer13, (i & 8192) != 0 ? stageScope.non_card_payment_method_selection : timer14, (i & 16384) != 0 ? stageScope.non_card_payment_method_action_required : timer15, (i & 32768) != 0 ? stageScope.unknownFields() : byteString);
    }

    public final StageScope copy(Timer application_selection, Timer account_selection, Timer pin_entry, Timer tipping_selection, Timer online_auth, Timer display_cart, Timer remove_card, Timer kernel_processing, Timer pos_app_processing, Timer language_selection, Timer card_present, Timer manual_entry, Timer dcc_selection, Timer non_card_payment_method_selection, Timer non_card_payment_method_action_required, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new StageScope(application_selection, account_selection, pin_entry, tipping_selection, online_auth, display_cart, remove_card, kernel_processing, pos_app_processing, language_selection, card_present, manual_entry, dcc_selection, non_card_payment_method_selection, non_card_payment_method_action_required, unknownFields);
    }

    /* JADX INFO: compiled from: StageScope.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0012\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0013\u001a\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;", "()V", "account_selection", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;", "application_selection", "card_present", "dcc_selection", "display_cart", "kernel_processing", "language_selection", "manual_entry", "non_card_payment_method_action_required", "non_card_payment_method_selection", "online_auth", "pin_entry", "pos_app_processing", "remove_card", "tipping_selection", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<StageScope, Builder> {
        public Timer account_selection;
        public Timer application_selection;
        public Timer card_present;
        public Timer dcc_selection;
        public Timer display_cart;
        public Timer kernel_processing;
        public Timer language_selection;
        public Timer manual_entry;
        public Timer non_card_payment_method_action_required;
        public Timer non_card_payment_method_selection;
        public Timer online_auth;
        public Timer pin_entry;
        public Timer pos_app_processing;
        public Timer remove_card;
        public Timer tipping_selection;

        public final Builder application_selection(Timer application_selection) {
            this.application_selection = application_selection;
            this.account_selection = null;
            this.pin_entry = null;
            this.tipping_selection = null;
            this.online_auth = null;
            this.display_cart = null;
            this.remove_card = null;
            this.kernel_processing = null;
            this.pos_app_processing = null;
            this.language_selection = null;
            this.card_present = null;
            this.manual_entry = null;
            this.dcc_selection = null;
            this.non_card_payment_method_selection = null;
            this.non_card_payment_method_action_required = null;
            return this;
        }

        public final Builder account_selection(Timer account_selection) {
            this.account_selection = account_selection;
            this.application_selection = null;
            this.pin_entry = null;
            this.tipping_selection = null;
            this.online_auth = null;
            this.display_cart = null;
            this.remove_card = null;
            this.kernel_processing = null;
            this.pos_app_processing = null;
            this.language_selection = null;
            this.card_present = null;
            this.manual_entry = null;
            this.dcc_selection = null;
            this.non_card_payment_method_selection = null;
            this.non_card_payment_method_action_required = null;
            return this;
        }

        public final Builder pin_entry(Timer pin_entry) {
            this.pin_entry = pin_entry;
            this.application_selection = null;
            this.account_selection = null;
            this.tipping_selection = null;
            this.online_auth = null;
            this.display_cart = null;
            this.remove_card = null;
            this.kernel_processing = null;
            this.pos_app_processing = null;
            this.language_selection = null;
            this.card_present = null;
            this.manual_entry = null;
            this.dcc_selection = null;
            this.non_card_payment_method_selection = null;
            this.non_card_payment_method_action_required = null;
            return this;
        }

        public final Builder tipping_selection(Timer tipping_selection) {
            this.tipping_selection = tipping_selection;
            this.application_selection = null;
            this.account_selection = null;
            this.pin_entry = null;
            this.online_auth = null;
            this.display_cart = null;
            this.remove_card = null;
            this.kernel_processing = null;
            this.pos_app_processing = null;
            this.language_selection = null;
            this.card_present = null;
            this.manual_entry = null;
            this.dcc_selection = null;
            this.non_card_payment_method_selection = null;
            this.non_card_payment_method_action_required = null;
            return this;
        }

        public final Builder online_auth(Timer online_auth) {
            this.online_auth = online_auth;
            this.application_selection = null;
            this.account_selection = null;
            this.pin_entry = null;
            this.tipping_selection = null;
            this.display_cart = null;
            this.remove_card = null;
            this.kernel_processing = null;
            this.pos_app_processing = null;
            this.language_selection = null;
            this.card_present = null;
            this.manual_entry = null;
            this.dcc_selection = null;
            this.non_card_payment_method_selection = null;
            this.non_card_payment_method_action_required = null;
            return this;
        }

        public final Builder display_cart(Timer display_cart) {
            this.display_cart = display_cart;
            this.application_selection = null;
            this.account_selection = null;
            this.pin_entry = null;
            this.tipping_selection = null;
            this.online_auth = null;
            this.remove_card = null;
            this.kernel_processing = null;
            this.pos_app_processing = null;
            this.language_selection = null;
            this.card_present = null;
            this.manual_entry = null;
            this.dcc_selection = null;
            this.non_card_payment_method_selection = null;
            this.non_card_payment_method_action_required = null;
            return this;
        }

        public final Builder remove_card(Timer remove_card) {
            this.remove_card = remove_card;
            this.application_selection = null;
            this.account_selection = null;
            this.pin_entry = null;
            this.tipping_selection = null;
            this.online_auth = null;
            this.display_cart = null;
            this.kernel_processing = null;
            this.pos_app_processing = null;
            this.language_selection = null;
            this.card_present = null;
            this.manual_entry = null;
            this.dcc_selection = null;
            this.non_card_payment_method_selection = null;
            this.non_card_payment_method_action_required = null;
            return this;
        }

        public final Builder kernel_processing(Timer kernel_processing) {
            this.kernel_processing = kernel_processing;
            this.application_selection = null;
            this.account_selection = null;
            this.pin_entry = null;
            this.tipping_selection = null;
            this.online_auth = null;
            this.display_cart = null;
            this.remove_card = null;
            this.pos_app_processing = null;
            this.language_selection = null;
            this.card_present = null;
            this.manual_entry = null;
            this.dcc_selection = null;
            this.non_card_payment_method_selection = null;
            this.non_card_payment_method_action_required = null;
            return this;
        }

        public final Builder pos_app_processing(Timer pos_app_processing) {
            this.pos_app_processing = pos_app_processing;
            this.application_selection = null;
            this.account_selection = null;
            this.pin_entry = null;
            this.tipping_selection = null;
            this.online_auth = null;
            this.display_cart = null;
            this.remove_card = null;
            this.kernel_processing = null;
            this.language_selection = null;
            this.card_present = null;
            this.manual_entry = null;
            this.dcc_selection = null;
            this.non_card_payment_method_selection = null;
            this.non_card_payment_method_action_required = null;
            return this;
        }

        public final Builder language_selection(Timer language_selection) {
            this.language_selection = language_selection;
            this.application_selection = null;
            this.account_selection = null;
            this.pin_entry = null;
            this.tipping_selection = null;
            this.online_auth = null;
            this.display_cart = null;
            this.remove_card = null;
            this.kernel_processing = null;
            this.pos_app_processing = null;
            this.card_present = null;
            this.manual_entry = null;
            this.dcc_selection = null;
            this.non_card_payment_method_selection = null;
            this.non_card_payment_method_action_required = null;
            return this;
        }

        public final Builder card_present(Timer card_present) {
            this.card_present = card_present;
            this.application_selection = null;
            this.account_selection = null;
            this.pin_entry = null;
            this.tipping_selection = null;
            this.online_auth = null;
            this.display_cart = null;
            this.remove_card = null;
            this.kernel_processing = null;
            this.pos_app_processing = null;
            this.language_selection = null;
            this.manual_entry = null;
            this.dcc_selection = null;
            this.non_card_payment_method_selection = null;
            this.non_card_payment_method_action_required = null;
            return this;
        }

        public final Builder manual_entry(Timer manual_entry) {
            this.manual_entry = manual_entry;
            this.application_selection = null;
            this.account_selection = null;
            this.pin_entry = null;
            this.tipping_selection = null;
            this.online_auth = null;
            this.display_cart = null;
            this.remove_card = null;
            this.kernel_processing = null;
            this.pos_app_processing = null;
            this.language_selection = null;
            this.card_present = null;
            this.dcc_selection = null;
            this.non_card_payment_method_selection = null;
            this.non_card_payment_method_action_required = null;
            return this;
        }

        public final Builder dcc_selection(Timer dcc_selection) {
            this.dcc_selection = dcc_selection;
            this.application_selection = null;
            this.account_selection = null;
            this.pin_entry = null;
            this.tipping_selection = null;
            this.online_auth = null;
            this.display_cart = null;
            this.remove_card = null;
            this.kernel_processing = null;
            this.pos_app_processing = null;
            this.language_selection = null;
            this.card_present = null;
            this.manual_entry = null;
            this.non_card_payment_method_selection = null;
            this.non_card_payment_method_action_required = null;
            return this;
        }

        public final Builder non_card_payment_method_selection(Timer non_card_payment_method_selection) {
            this.non_card_payment_method_selection = non_card_payment_method_selection;
            this.application_selection = null;
            this.account_selection = null;
            this.pin_entry = null;
            this.tipping_selection = null;
            this.online_auth = null;
            this.display_cart = null;
            this.remove_card = null;
            this.kernel_processing = null;
            this.pos_app_processing = null;
            this.language_selection = null;
            this.card_present = null;
            this.manual_entry = null;
            this.dcc_selection = null;
            this.non_card_payment_method_action_required = null;
            return this;
        }

        public final Builder non_card_payment_method_action_required(Timer non_card_payment_method_action_required) {
            this.non_card_payment_method_action_required = non_card_payment_method_action_required;
            this.application_selection = null;
            this.account_selection = null;
            this.pin_entry = null;
            this.tipping_selection = null;
            this.online_auth = null;
            this.display_cart = null;
            this.remove_card = null;
            this.kernel_processing = null;
            this.pos_app_processing = null;
            this.language_selection = null;
            this.card_present = null;
            this.manual_entry = null;
            this.dcc_selection = null;
            this.non_card_payment_method_selection = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public StageScope build() {
            return new StageScope(this.application_selection, this.account_selection, this.pin_entry, this.tipping_selection, this.online_auth, this.display_cart, this.remove_card, this.kernel_processing, this.pos_app_processing, this.language_selection, this.card_present, this.manual_entry, this.dcc_selection, this.non_card_payment_method_selection, this.non_card_payment_method_action_required, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: StageScope.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ StageScope build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(StageScope.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<StageScope>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.health.domains.paymentcollection.StageScope$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(StageScope value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + Timer.ADAPTER.encodedSizeWithTag(1, value.application_selection) + Timer.ADAPTER.encodedSizeWithTag(2, value.account_selection) + Timer.ADAPTER.encodedSizeWithTag(3, value.pin_entry) + Timer.ADAPTER.encodedSizeWithTag(4, value.tipping_selection) + Timer.ADAPTER.encodedSizeWithTag(5, value.online_auth) + Timer.ADAPTER.encodedSizeWithTag(6, value.display_cart) + Timer.ADAPTER.encodedSizeWithTag(7, value.remove_card) + Timer.ADAPTER.encodedSizeWithTag(8, value.kernel_processing) + Timer.ADAPTER.encodedSizeWithTag(9, value.pos_app_processing) + Timer.ADAPTER.encodedSizeWithTag(10, value.language_selection) + Timer.ADAPTER.encodedSizeWithTag(11, value.card_present) + Timer.ADAPTER.encodedSizeWithTag(12, value.manual_entry) + Timer.ADAPTER.encodedSizeWithTag(13, value.dcc_selection) + Timer.ADAPTER.encodedSizeWithTag(14, value.non_card_payment_method_selection) + Timer.ADAPTER.encodedSizeWithTag(15, value.non_card_payment_method_action_required);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, StageScope value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                Timer.ADAPTER.encodeWithTag(writer, 1, value.application_selection);
                Timer.ADAPTER.encodeWithTag(writer, 2, value.account_selection);
                Timer.ADAPTER.encodeWithTag(writer, 3, value.pin_entry);
                Timer.ADAPTER.encodeWithTag(writer, 4, value.tipping_selection);
                Timer.ADAPTER.encodeWithTag(writer, 5, value.online_auth);
                Timer.ADAPTER.encodeWithTag(writer, 6, value.display_cart);
                Timer.ADAPTER.encodeWithTag(writer, 7, value.remove_card);
                Timer.ADAPTER.encodeWithTag(writer, 8, value.kernel_processing);
                Timer.ADAPTER.encodeWithTag(writer, 9, value.pos_app_processing);
                Timer.ADAPTER.encodeWithTag(writer, 10, value.language_selection);
                Timer.ADAPTER.encodeWithTag(writer, 11, value.card_present);
                Timer.ADAPTER.encodeWithTag(writer, 12, value.manual_entry);
                Timer.ADAPTER.encodeWithTag(writer, 13, value.dcc_selection);
                Timer.ADAPTER.encodeWithTag(writer, 14, value.non_card_payment_method_selection);
                Timer.ADAPTER.encodeWithTag(writer, 15, value.non_card_payment_method_action_required);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, StageScope value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                Timer.ADAPTER.encodeWithTag(writer, 15, value.non_card_payment_method_action_required);
                Timer.ADAPTER.encodeWithTag(writer, 14, value.non_card_payment_method_selection);
                Timer.ADAPTER.encodeWithTag(writer, 13, value.dcc_selection);
                Timer.ADAPTER.encodeWithTag(writer, 12, value.manual_entry);
                Timer.ADAPTER.encodeWithTag(writer, 11, value.card_present);
                Timer.ADAPTER.encodeWithTag(writer, 10, value.language_selection);
                Timer.ADAPTER.encodeWithTag(writer, 9, value.pos_app_processing);
                Timer.ADAPTER.encodeWithTag(writer, 8, value.kernel_processing);
                Timer.ADAPTER.encodeWithTag(writer, 7, value.remove_card);
                Timer.ADAPTER.encodeWithTag(writer, 6, value.display_cart);
                Timer.ADAPTER.encodeWithTag(writer, 5, value.online_auth);
                Timer.ADAPTER.encodeWithTag(writer, 4, value.tipping_selection);
                Timer.ADAPTER.encodeWithTag(writer, 3, value.pin_entry);
                Timer.ADAPTER.encodeWithTag(writer, 2, value.account_selection);
                Timer.ADAPTER.encodeWithTag(writer, 1, value.application_selection);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public StageScope redact(StageScope value) {
                Timer timer;
                Timer timerRedact;
                Intrinsics.checkNotNullParameter(value, "value");
                Timer timer2 = value.application_selection;
                Timer timerRedact2 = timer2 != null ? Timer.ADAPTER.redact(timer2) : null;
                Timer timer3 = value.account_selection;
                Timer timerRedact3 = timer3 != null ? Timer.ADAPTER.redact(timer3) : null;
                Timer timer4 = value.pin_entry;
                Timer timerRedact4 = timer4 != null ? Timer.ADAPTER.redact(timer4) : null;
                Timer timer5 = value.tipping_selection;
                Timer timerRedact5 = timer5 != null ? Timer.ADAPTER.redact(timer5) : null;
                Timer timer6 = value.online_auth;
                Timer timerRedact6 = timer6 != null ? Timer.ADAPTER.redact(timer6) : null;
                Timer timer7 = value.display_cart;
                Timer timerRedact7 = timer7 != null ? Timer.ADAPTER.redact(timer7) : null;
                Timer timer8 = value.remove_card;
                Timer timerRedact8 = timer8 != null ? Timer.ADAPTER.redact(timer8) : null;
                Timer timer9 = value.kernel_processing;
                Timer timerRedact9 = timer9 != null ? Timer.ADAPTER.redact(timer9) : null;
                Timer timer10 = value.pos_app_processing;
                Timer timerRedact10 = timer10 != null ? Timer.ADAPTER.redact(timer10) : null;
                Timer timer11 = value.language_selection;
                Timer timerRedact11 = timer11 != null ? Timer.ADAPTER.redact(timer11) : null;
                Timer timer12 = value.card_present;
                Timer timerRedact12 = timer12 != null ? Timer.ADAPTER.redact(timer12) : null;
                Timer timer13 = value.manual_entry;
                Timer timerRedact13 = timer13 != null ? Timer.ADAPTER.redact(timer13) : null;
                Timer timer14 = value.dcc_selection;
                Timer timerRedact14 = timer14 != null ? Timer.ADAPTER.redact(timer14) : null;
                Timer timer15 = value.non_card_payment_method_selection;
                Timer timerRedact15 = timer15 != null ? Timer.ADAPTER.redact(timer15) : null;
                Timer timer16 = value.non_card_payment_method_action_required;
                if (timer16 != null) {
                    timerRedact = Timer.ADAPTER.redact(timer16);
                    timer = timerRedact2;
                } else {
                    timer = timerRedact2;
                    timerRedact = null;
                }
                return value.copy(timer, timerRedact3, timerRedact4, timerRedact5, timerRedact6, timerRedact7, timerRedact8, timerRedact9, timerRedact10, timerRedact11, timerRedact12, timerRedact13, timerRedact14, timerRedact15, timerRedact, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public StageScope decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                Timer timerDecode = null;
                Timer timerDecode2 = null;
                Timer timerDecode3 = null;
                Timer timerDecode4 = null;
                Timer timerDecode5 = null;
                Timer timerDecode6 = null;
                Timer timerDecode7 = null;
                Timer timerDecode8 = null;
                Timer timerDecode9 = null;
                Timer timerDecode10 = null;
                Timer timerDecode11 = null;
                Timer timerDecode12 = null;
                Timer timerDecode13 = null;
                Timer timerDecode14 = null;
                Timer timerDecode15 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    Timer timer = timerDecode;
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                timerDecode15 = Timer.ADAPTER.decode(reader);
                                break;
                            case 2:
                                timerDecode = Timer.ADAPTER.decode(reader);
                                continue;
                            case 3:
                                timerDecode2 = Timer.ADAPTER.decode(reader);
                                break;
                            case 4:
                                timerDecode3 = Timer.ADAPTER.decode(reader);
                                break;
                            case 5:
                                timerDecode4 = Timer.ADAPTER.decode(reader);
                                break;
                            case 6:
                                timerDecode5 = Timer.ADAPTER.decode(reader);
                                break;
                            case 7:
                                timerDecode6 = Timer.ADAPTER.decode(reader);
                                break;
                            case 8:
                                timerDecode7 = Timer.ADAPTER.decode(reader);
                                break;
                            case 9:
                                timerDecode8 = Timer.ADAPTER.decode(reader);
                                break;
                            case 10:
                                timerDecode9 = Timer.ADAPTER.decode(reader);
                                break;
                            case 11:
                                timerDecode10 = Timer.ADAPTER.decode(reader);
                                break;
                            case 12:
                                timerDecode11 = Timer.ADAPTER.decode(reader);
                                break;
                            case 13:
                                timerDecode12 = Timer.ADAPTER.decode(reader);
                                break;
                            case 14:
                                timerDecode13 = Timer.ADAPTER.decode(reader);
                                break;
                            case 15:
                                timerDecode14 = Timer.ADAPTER.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                        timerDecode = timer;
                    } else {
                        return new StageScope(timerDecode15, timer, timerDecode2, timerDecode3, timerDecode4, timerDecode5, timerDecode6, timerDecode7, timerDecode8, timerDecode9, timerDecode10, timerDecode11, timerDecode12, timerDecode13, timerDecode14, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
