package com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline;

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
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 !2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002 !BÃ\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0014¢\u0006\u0002\u0010\u0015JÄ\u0001\u0010\u0016\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0013\u001a\u00020\u0014J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0096\u0002J\b\u0010\u001b\u001a\u00020\u001cH\u0016J\b\u0010\u001d\u001a\u00020\u0002H\u0016J\b\u0010\u001e\u001a\u00020\u001fH\u0016R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;", "soft_deleted_record", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;", "decryption_error", "pi_without_records", "unknown_record_type", "database_error", "online_transient_network_error", "record_data_mismatch", "emv_data_missing_expiration_tags", "serial_number_record_mismatch", "offline_decline", "emv_second_gen_network_error", "missing_offline_arc_for_aid", "reader_paired", "discard_livemode_payment_in_testmode", "failed_to_redeem_for_offline_token", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DiscreteScope extends Message<DiscreteScope, Builder> {
    public static final ProtoAdapter<DiscreteScope> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "databaseError", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 4, tag = 5)
    public final Counter database_error;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "decryptionError", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 1, tag = 2)
    public final Counter decryption_error;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "discardLivemodePaymentInTestmode", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 13, tag = 14)
    public final Counter discard_livemode_payment_in_testmode;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "emvDataMissingExpirationTags", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 7, tag = 8)
    public final Counter emv_data_missing_expiration_tags;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "emvSecondGenNetworkError", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 10, tag = 11)
    public final Counter emv_second_gen_network_error;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "failedToRedeemForOfflineToken", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 14, tag = 15)
    public final Counter failed_to_redeem_for_offline_token;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "missingOfflineArcForAid", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 11, tag = 12)
    public final Counter missing_offline_arc_for_aid;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "offlineDecline", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 9, tag = 10)
    public final Counter offline_decline;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "onlineTransientNetworkError", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 5, tag = 6)
    public final Counter online_transient_network_error;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "piWithoutRecords", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 2, tag = 3)
    public final Counter pi_without_records;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "readerPaired", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 12, tag = 13)
    public final Counter reader_paired;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "recordDataMismatch", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 6, tag = 7)
    public final Counter record_data_mismatch;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "serialNumberRecordMismatch", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 8, tag = 9)
    public final Counter serial_number_record_mismatch;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "softDeletedRecord", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 0, tag = 1)
    public final Counter soft_deleted_record;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "unknownRecordType", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 3, tag = 4)
    public final Counter unknown_record_type;

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
        this.soft_deleted_record = counter;
        this.decryption_error = counter2;
        this.pi_without_records = counter3;
        this.unknown_record_type = counter4;
        this.database_error = counter5;
        this.online_transient_network_error = counter6;
        this.record_data_mismatch = counter7;
        this.emv_data_missing_expiration_tags = counter8;
        this.serial_number_record_mismatch = counter9;
        this.offline_decline = counter10;
        this.emv_second_gen_network_error = counter11;
        this.missing_offline_arc_for_aid = counter12;
        this.reader_paired = counter13;
        this.discard_livemode_payment_in_testmode = counter14;
        this.failed_to_redeem_for_offline_token = counter15;
        if (Internal.countNonNull(counter, counter2, counter3, counter4, counter5, counter6, counter7, counter8, counter9, counter10, counter11, counter12, counter13, counter14, counter15) > 1) {
            throw new IllegalArgumentException("At most one of soft_deleted_record, decryption_error, pi_without_records, unknown_record_type, database_error, online_transient_network_error, record_data_mismatch, emv_data_missing_expiration_tags, serial_number_record_mismatch, offline_decline, emv_second_gen_network_error, missing_offline_arc_for_aid, reader_paired, discard_livemode_payment_in_testmode, failed_to_redeem_for_offline_token may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.soft_deleted_record = this.soft_deleted_record;
        builder.decryption_error = this.decryption_error;
        builder.pi_without_records = this.pi_without_records;
        builder.unknown_record_type = this.unknown_record_type;
        builder.database_error = this.database_error;
        builder.online_transient_network_error = this.online_transient_network_error;
        builder.record_data_mismatch = this.record_data_mismatch;
        builder.emv_data_missing_expiration_tags = this.emv_data_missing_expiration_tags;
        builder.serial_number_record_mismatch = this.serial_number_record_mismatch;
        builder.offline_decline = this.offline_decline;
        builder.emv_second_gen_network_error = this.emv_second_gen_network_error;
        builder.missing_offline_arc_for_aid = this.missing_offline_arc_for_aid;
        builder.reader_paired = this.reader_paired;
        builder.discard_livemode_payment_in_testmode = this.discard_livemode_payment_in_testmode;
        builder.failed_to_redeem_for_offline_token = this.failed_to_redeem_for_offline_token;
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
        return Intrinsics.areEqual(unknownFields(), discreteScope.unknownFields()) && Intrinsics.areEqual(this.soft_deleted_record, discreteScope.soft_deleted_record) && Intrinsics.areEqual(this.decryption_error, discreteScope.decryption_error) && Intrinsics.areEqual(this.pi_without_records, discreteScope.pi_without_records) && Intrinsics.areEqual(this.unknown_record_type, discreteScope.unknown_record_type) && Intrinsics.areEqual(this.database_error, discreteScope.database_error) && Intrinsics.areEqual(this.online_transient_network_error, discreteScope.online_transient_network_error) && Intrinsics.areEqual(this.record_data_mismatch, discreteScope.record_data_mismatch) && Intrinsics.areEqual(this.emv_data_missing_expiration_tags, discreteScope.emv_data_missing_expiration_tags) && Intrinsics.areEqual(this.serial_number_record_mismatch, discreteScope.serial_number_record_mismatch) && Intrinsics.areEqual(this.offline_decline, discreteScope.offline_decline) && Intrinsics.areEqual(this.emv_second_gen_network_error, discreteScope.emv_second_gen_network_error) && Intrinsics.areEqual(this.missing_offline_arc_for_aid, discreteScope.missing_offline_arc_for_aid) && Intrinsics.areEqual(this.reader_paired, discreteScope.reader_paired) && Intrinsics.areEqual(this.discard_livemode_payment_in_testmode, discreteScope.discard_livemode_payment_in_testmode) && Intrinsics.areEqual(this.failed_to_redeem_for_offline_token, discreteScope.failed_to_redeem_for_offline_token);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Counter counter = this.soft_deleted_record;
        int iHashCode2 = (iHashCode + (counter != null ? counter.hashCode() : 0)) * 37;
        Counter counter2 = this.decryption_error;
        int iHashCode3 = (iHashCode2 + (counter2 != null ? counter2.hashCode() : 0)) * 37;
        Counter counter3 = this.pi_without_records;
        int iHashCode4 = (iHashCode3 + (counter3 != null ? counter3.hashCode() : 0)) * 37;
        Counter counter4 = this.unknown_record_type;
        int iHashCode5 = (iHashCode4 + (counter4 != null ? counter4.hashCode() : 0)) * 37;
        Counter counter5 = this.database_error;
        int iHashCode6 = (iHashCode5 + (counter5 != null ? counter5.hashCode() : 0)) * 37;
        Counter counter6 = this.online_transient_network_error;
        int iHashCode7 = (iHashCode6 + (counter6 != null ? counter6.hashCode() : 0)) * 37;
        Counter counter7 = this.record_data_mismatch;
        int iHashCode8 = (iHashCode7 + (counter7 != null ? counter7.hashCode() : 0)) * 37;
        Counter counter8 = this.emv_data_missing_expiration_tags;
        int iHashCode9 = (iHashCode8 + (counter8 != null ? counter8.hashCode() : 0)) * 37;
        Counter counter9 = this.serial_number_record_mismatch;
        int iHashCode10 = (iHashCode9 + (counter9 != null ? counter9.hashCode() : 0)) * 37;
        Counter counter10 = this.offline_decline;
        int iHashCode11 = (iHashCode10 + (counter10 != null ? counter10.hashCode() : 0)) * 37;
        Counter counter11 = this.emv_second_gen_network_error;
        int iHashCode12 = (iHashCode11 + (counter11 != null ? counter11.hashCode() : 0)) * 37;
        Counter counter12 = this.missing_offline_arc_for_aid;
        int iHashCode13 = (iHashCode12 + (counter12 != null ? counter12.hashCode() : 0)) * 37;
        Counter counter13 = this.reader_paired;
        int iHashCode14 = (iHashCode13 + (counter13 != null ? counter13.hashCode() : 0)) * 37;
        Counter counter14 = this.discard_livemode_payment_in_testmode;
        int iHashCode15 = (iHashCode14 + (counter14 != null ? counter14.hashCode() : 0)) * 37;
        Counter counter15 = this.failed_to_redeem_for_offline_token;
        int iHashCode16 = iHashCode15 + (counter15 != null ? counter15.hashCode() : 0);
        this.hashCode = iHashCode16;
        return iHashCode16;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.soft_deleted_record != null) {
            arrayList.add("soft_deleted_record=" + this.soft_deleted_record);
        }
        if (this.decryption_error != null) {
            arrayList.add("decryption_error=" + this.decryption_error);
        }
        if (this.pi_without_records != null) {
            arrayList.add("pi_without_records=" + this.pi_without_records);
        }
        if (this.unknown_record_type != null) {
            arrayList.add("unknown_record_type=" + this.unknown_record_type);
        }
        if (this.database_error != null) {
            arrayList.add("database_error=" + this.database_error);
        }
        if (this.online_transient_network_error != null) {
            arrayList.add("online_transient_network_error=" + this.online_transient_network_error);
        }
        if (this.record_data_mismatch != null) {
            arrayList.add("record_data_mismatch=" + this.record_data_mismatch);
        }
        if (this.emv_data_missing_expiration_tags != null) {
            arrayList.add("emv_data_missing_expiration_tags=" + this.emv_data_missing_expiration_tags);
        }
        if (this.serial_number_record_mismatch != null) {
            arrayList.add("serial_number_record_mismatch=" + this.serial_number_record_mismatch);
        }
        if (this.offline_decline != null) {
            arrayList.add("offline_decline=" + this.offline_decline);
        }
        if (this.emv_second_gen_network_error != null) {
            arrayList.add("emv_second_gen_network_error=" + this.emv_second_gen_network_error);
        }
        if (this.missing_offline_arc_for_aid != null) {
            arrayList.add("missing_offline_arc_for_aid=" + this.missing_offline_arc_for_aid);
        }
        if (this.reader_paired != null) {
            arrayList.add("reader_paired=" + this.reader_paired);
        }
        if (this.discard_livemode_payment_in_testmode != null) {
            arrayList.add("discard_livemode_payment_in_testmode=" + this.discard_livemode_payment_in_testmode);
        }
        if (this.failed_to_redeem_for_offline_token != null) {
            arrayList.add("failed_to_redeem_for_offline_token=" + this.failed_to_redeem_for_offline_token);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "DiscreteScope{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ DiscreteScope copy$default(DiscreteScope discreteScope, Counter counter, Counter counter2, Counter counter3, Counter counter4, Counter counter5, Counter counter6, Counter counter7, Counter counter8, Counter counter9, Counter counter10, Counter counter11, Counter counter12, Counter counter13, Counter counter14, Counter counter15, ByteString byteString, int i, Object obj) {
        Counter counter16 = (i & 1) != 0 ? discreteScope.soft_deleted_record : counter;
        return discreteScope.copy(counter16, (i & 2) != 0 ? discreteScope.decryption_error : counter2, (i & 4) != 0 ? discreteScope.pi_without_records : counter3, (i & 8) != 0 ? discreteScope.unknown_record_type : counter4, (i & 16) != 0 ? discreteScope.database_error : counter5, (i & 32) != 0 ? discreteScope.online_transient_network_error : counter6, (i & 64) != 0 ? discreteScope.record_data_mismatch : counter7, (i & 128) != 0 ? discreteScope.emv_data_missing_expiration_tags : counter8, (i & 256) != 0 ? discreteScope.serial_number_record_mismatch : counter9, (i & 512) != 0 ? discreteScope.offline_decline : counter10, (i & 1024) != 0 ? discreteScope.emv_second_gen_network_error : counter11, (i & 2048) != 0 ? discreteScope.missing_offline_arc_for_aid : counter12, (i & 4096) != 0 ? discreteScope.reader_paired : counter13, (i & 8192) != 0 ? discreteScope.discard_livemode_payment_in_testmode : counter14, (i & 16384) != 0 ? discreteScope.failed_to_redeem_for_offline_token : counter15, (i & 32768) != 0 ? discreteScope.unknownFields() : byteString);
    }

    public final DiscreteScope copy(Counter soft_deleted_record, Counter decryption_error, Counter pi_without_records, Counter unknown_record_type, Counter database_error, Counter online_transient_network_error, Counter record_data_mismatch, Counter emv_data_missing_expiration_tags, Counter serial_number_record_mismatch, Counter offline_decline, Counter emv_second_gen_network_error, Counter missing_offline_arc_for_aid, Counter reader_paired, Counter discard_livemode_payment_in_testmode, Counter failed_to_redeem_for_offline_token, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new DiscreteScope(soft_deleted_record, decryption_error, pi_without_records, unknown_record_type, database_error, online_transient_network_error, record_data_mismatch, emv_data_missing_expiration_tags, serial_number_record_mismatch, offline_decline, emv_second_gen_network_error, missing_offline_arc_for_aid, reader_paired, discard_livemode_payment_in_testmode, failed_to_redeem_for_offline_token, unknownFields);
    }

    /* JADX INFO: compiled from: DiscreteScope.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0012\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0013\u001a\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;", "()V", "database_error", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;", "decryption_error", "discard_livemode_payment_in_testmode", "emv_data_missing_expiration_tags", "emv_second_gen_network_error", "failed_to_redeem_for_offline_token", "missing_offline_arc_for_aid", "offline_decline", "online_transient_network_error", "pi_without_records", "reader_paired", "record_data_mismatch", "serial_number_record_mismatch", "soft_deleted_record", "unknown_record_type", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<DiscreteScope, Builder> {
        public Counter database_error;
        public Counter decryption_error;
        public Counter discard_livemode_payment_in_testmode;
        public Counter emv_data_missing_expiration_tags;
        public Counter emv_second_gen_network_error;
        public Counter failed_to_redeem_for_offline_token;
        public Counter missing_offline_arc_for_aid;
        public Counter offline_decline;
        public Counter online_transient_network_error;
        public Counter pi_without_records;
        public Counter reader_paired;
        public Counter record_data_mismatch;
        public Counter serial_number_record_mismatch;
        public Counter soft_deleted_record;
        public Counter unknown_record_type;

        public final Builder soft_deleted_record(Counter soft_deleted_record) {
            this.soft_deleted_record = soft_deleted_record;
            this.decryption_error = null;
            this.pi_without_records = null;
            this.unknown_record_type = null;
            this.database_error = null;
            this.online_transient_network_error = null;
            this.record_data_mismatch = null;
            this.emv_data_missing_expiration_tags = null;
            this.serial_number_record_mismatch = null;
            this.offline_decline = null;
            this.emv_second_gen_network_error = null;
            this.missing_offline_arc_for_aid = null;
            this.reader_paired = null;
            this.discard_livemode_payment_in_testmode = null;
            this.failed_to_redeem_for_offline_token = null;
            return this;
        }

        public final Builder decryption_error(Counter decryption_error) {
            this.decryption_error = decryption_error;
            this.soft_deleted_record = null;
            this.pi_without_records = null;
            this.unknown_record_type = null;
            this.database_error = null;
            this.online_transient_network_error = null;
            this.record_data_mismatch = null;
            this.emv_data_missing_expiration_tags = null;
            this.serial_number_record_mismatch = null;
            this.offline_decline = null;
            this.emv_second_gen_network_error = null;
            this.missing_offline_arc_for_aid = null;
            this.reader_paired = null;
            this.discard_livemode_payment_in_testmode = null;
            this.failed_to_redeem_for_offline_token = null;
            return this;
        }

        public final Builder pi_without_records(Counter pi_without_records) {
            this.pi_without_records = pi_without_records;
            this.soft_deleted_record = null;
            this.decryption_error = null;
            this.unknown_record_type = null;
            this.database_error = null;
            this.online_transient_network_error = null;
            this.record_data_mismatch = null;
            this.emv_data_missing_expiration_tags = null;
            this.serial_number_record_mismatch = null;
            this.offline_decline = null;
            this.emv_second_gen_network_error = null;
            this.missing_offline_arc_for_aid = null;
            this.reader_paired = null;
            this.discard_livemode_payment_in_testmode = null;
            this.failed_to_redeem_for_offline_token = null;
            return this;
        }

        public final Builder unknown_record_type(Counter unknown_record_type) {
            this.unknown_record_type = unknown_record_type;
            this.soft_deleted_record = null;
            this.decryption_error = null;
            this.pi_without_records = null;
            this.database_error = null;
            this.online_transient_network_error = null;
            this.record_data_mismatch = null;
            this.emv_data_missing_expiration_tags = null;
            this.serial_number_record_mismatch = null;
            this.offline_decline = null;
            this.emv_second_gen_network_error = null;
            this.missing_offline_arc_for_aid = null;
            this.reader_paired = null;
            this.discard_livemode_payment_in_testmode = null;
            this.failed_to_redeem_for_offline_token = null;
            return this;
        }

        public final Builder database_error(Counter database_error) {
            this.database_error = database_error;
            this.soft_deleted_record = null;
            this.decryption_error = null;
            this.pi_without_records = null;
            this.unknown_record_type = null;
            this.online_transient_network_error = null;
            this.record_data_mismatch = null;
            this.emv_data_missing_expiration_tags = null;
            this.serial_number_record_mismatch = null;
            this.offline_decline = null;
            this.emv_second_gen_network_error = null;
            this.missing_offline_arc_for_aid = null;
            this.reader_paired = null;
            this.discard_livemode_payment_in_testmode = null;
            this.failed_to_redeem_for_offline_token = null;
            return this;
        }

        public final Builder online_transient_network_error(Counter online_transient_network_error) {
            this.online_transient_network_error = online_transient_network_error;
            this.soft_deleted_record = null;
            this.decryption_error = null;
            this.pi_without_records = null;
            this.unknown_record_type = null;
            this.database_error = null;
            this.record_data_mismatch = null;
            this.emv_data_missing_expiration_tags = null;
            this.serial_number_record_mismatch = null;
            this.offline_decline = null;
            this.emv_second_gen_network_error = null;
            this.missing_offline_arc_for_aid = null;
            this.reader_paired = null;
            this.discard_livemode_payment_in_testmode = null;
            this.failed_to_redeem_for_offline_token = null;
            return this;
        }

        public final Builder record_data_mismatch(Counter record_data_mismatch) {
            this.record_data_mismatch = record_data_mismatch;
            this.soft_deleted_record = null;
            this.decryption_error = null;
            this.pi_without_records = null;
            this.unknown_record_type = null;
            this.database_error = null;
            this.online_transient_network_error = null;
            this.emv_data_missing_expiration_tags = null;
            this.serial_number_record_mismatch = null;
            this.offline_decline = null;
            this.emv_second_gen_network_error = null;
            this.missing_offline_arc_for_aid = null;
            this.reader_paired = null;
            this.discard_livemode_payment_in_testmode = null;
            this.failed_to_redeem_for_offline_token = null;
            return this;
        }

        public final Builder emv_data_missing_expiration_tags(Counter emv_data_missing_expiration_tags) {
            this.emv_data_missing_expiration_tags = emv_data_missing_expiration_tags;
            this.soft_deleted_record = null;
            this.decryption_error = null;
            this.pi_without_records = null;
            this.unknown_record_type = null;
            this.database_error = null;
            this.online_transient_network_error = null;
            this.record_data_mismatch = null;
            this.serial_number_record_mismatch = null;
            this.offline_decline = null;
            this.emv_second_gen_network_error = null;
            this.missing_offline_arc_for_aid = null;
            this.reader_paired = null;
            this.discard_livemode_payment_in_testmode = null;
            this.failed_to_redeem_for_offline_token = null;
            return this;
        }

        public final Builder serial_number_record_mismatch(Counter serial_number_record_mismatch) {
            this.serial_number_record_mismatch = serial_number_record_mismatch;
            this.soft_deleted_record = null;
            this.decryption_error = null;
            this.pi_without_records = null;
            this.unknown_record_type = null;
            this.database_error = null;
            this.online_transient_network_error = null;
            this.record_data_mismatch = null;
            this.emv_data_missing_expiration_tags = null;
            this.offline_decline = null;
            this.emv_second_gen_network_error = null;
            this.missing_offline_arc_for_aid = null;
            this.reader_paired = null;
            this.discard_livemode_payment_in_testmode = null;
            this.failed_to_redeem_for_offline_token = null;
            return this;
        }

        public final Builder offline_decline(Counter offline_decline) {
            this.offline_decline = offline_decline;
            this.soft_deleted_record = null;
            this.decryption_error = null;
            this.pi_without_records = null;
            this.unknown_record_type = null;
            this.database_error = null;
            this.online_transient_network_error = null;
            this.record_data_mismatch = null;
            this.emv_data_missing_expiration_tags = null;
            this.serial_number_record_mismatch = null;
            this.emv_second_gen_network_error = null;
            this.missing_offline_arc_for_aid = null;
            this.reader_paired = null;
            this.discard_livemode_payment_in_testmode = null;
            this.failed_to_redeem_for_offline_token = null;
            return this;
        }

        public final Builder emv_second_gen_network_error(Counter emv_second_gen_network_error) {
            this.emv_second_gen_network_error = emv_second_gen_network_error;
            this.soft_deleted_record = null;
            this.decryption_error = null;
            this.pi_without_records = null;
            this.unknown_record_type = null;
            this.database_error = null;
            this.online_transient_network_error = null;
            this.record_data_mismatch = null;
            this.emv_data_missing_expiration_tags = null;
            this.serial_number_record_mismatch = null;
            this.offline_decline = null;
            this.missing_offline_arc_for_aid = null;
            this.reader_paired = null;
            this.discard_livemode_payment_in_testmode = null;
            this.failed_to_redeem_for_offline_token = null;
            return this;
        }

        public final Builder missing_offline_arc_for_aid(Counter missing_offline_arc_for_aid) {
            this.missing_offline_arc_for_aid = missing_offline_arc_for_aid;
            this.soft_deleted_record = null;
            this.decryption_error = null;
            this.pi_without_records = null;
            this.unknown_record_type = null;
            this.database_error = null;
            this.online_transient_network_error = null;
            this.record_data_mismatch = null;
            this.emv_data_missing_expiration_tags = null;
            this.serial_number_record_mismatch = null;
            this.offline_decline = null;
            this.emv_second_gen_network_error = null;
            this.reader_paired = null;
            this.discard_livemode_payment_in_testmode = null;
            this.failed_to_redeem_for_offline_token = null;
            return this;
        }

        public final Builder reader_paired(Counter reader_paired) {
            this.reader_paired = reader_paired;
            this.soft_deleted_record = null;
            this.decryption_error = null;
            this.pi_without_records = null;
            this.unknown_record_type = null;
            this.database_error = null;
            this.online_transient_network_error = null;
            this.record_data_mismatch = null;
            this.emv_data_missing_expiration_tags = null;
            this.serial_number_record_mismatch = null;
            this.offline_decline = null;
            this.emv_second_gen_network_error = null;
            this.missing_offline_arc_for_aid = null;
            this.discard_livemode_payment_in_testmode = null;
            this.failed_to_redeem_for_offline_token = null;
            return this;
        }

        public final Builder discard_livemode_payment_in_testmode(Counter discard_livemode_payment_in_testmode) {
            this.discard_livemode_payment_in_testmode = discard_livemode_payment_in_testmode;
            this.soft_deleted_record = null;
            this.decryption_error = null;
            this.pi_without_records = null;
            this.unknown_record_type = null;
            this.database_error = null;
            this.online_transient_network_error = null;
            this.record_data_mismatch = null;
            this.emv_data_missing_expiration_tags = null;
            this.serial_number_record_mismatch = null;
            this.offline_decline = null;
            this.emv_second_gen_network_error = null;
            this.missing_offline_arc_for_aid = null;
            this.reader_paired = null;
            this.failed_to_redeem_for_offline_token = null;
            return this;
        }

        public final Builder failed_to_redeem_for_offline_token(Counter failed_to_redeem_for_offline_token) {
            this.failed_to_redeem_for_offline_token = failed_to_redeem_for_offline_token;
            this.soft_deleted_record = null;
            this.decryption_error = null;
            this.pi_without_records = null;
            this.unknown_record_type = null;
            this.database_error = null;
            this.online_transient_network_error = null;
            this.record_data_mismatch = null;
            this.emv_data_missing_expiration_tags = null;
            this.serial_number_record_mismatch = null;
            this.offline_decline = null;
            this.emv_second_gen_network_error = null;
            this.missing_offline_arc_for_aid = null;
            this.reader_paired = null;
            this.discard_livemode_payment_in_testmode = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public DiscreteScope build() {
            return new DiscreteScope(this.soft_deleted_record, this.decryption_error, this.pi_without_records, this.unknown_record_type, this.database_error, this.online_transient_network_error, this.record_data_mismatch, this.emv_data_missing_expiration_tags, this.serial_number_record_mismatch, this.offline_decline, this.emv_second_gen_network_error, this.missing_offline_arc_for_aid, this.reader_paired, this.discard_livemode_payment_in_testmode, this.failed_to_redeem_for_offline_token, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: DiscreteScope.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
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
        ADAPTER = new ProtoAdapter<DiscreteScope>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.DiscreteScope$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(DiscreteScope value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + Counter.ADAPTER.encodedSizeWithTag(1, value.soft_deleted_record) + Counter.ADAPTER.encodedSizeWithTag(2, value.decryption_error) + Counter.ADAPTER.encodedSizeWithTag(3, value.pi_without_records) + Counter.ADAPTER.encodedSizeWithTag(4, value.unknown_record_type) + Counter.ADAPTER.encodedSizeWithTag(5, value.database_error) + Counter.ADAPTER.encodedSizeWithTag(6, value.online_transient_network_error) + Counter.ADAPTER.encodedSizeWithTag(7, value.record_data_mismatch) + Counter.ADAPTER.encodedSizeWithTag(8, value.emv_data_missing_expiration_tags) + Counter.ADAPTER.encodedSizeWithTag(9, value.serial_number_record_mismatch) + Counter.ADAPTER.encodedSizeWithTag(10, value.offline_decline) + Counter.ADAPTER.encodedSizeWithTag(11, value.emv_second_gen_network_error) + Counter.ADAPTER.encodedSizeWithTag(12, value.missing_offline_arc_for_aid) + Counter.ADAPTER.encodedSizeWithTag(13, value.reader_paired) + Counter.ADAPTER.encodedSizeWithTag(14, value.discard_livemode_payment_in_testmode) + Counter.ADAPTER.encodedSizeWithTag(15, value.failed_to_redeem_for_offline_token);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, DiscreteScope value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                Counter.ADAPTER.encodeWithTag(writer, 1, value.soft_deleted_record);
                Counter.ADAPTER.encodeWithTag(writer, 2, value.decryption_error);
                Counter.ADAPTER.encodeWithTag(writer, 3, value.pi_without_records);
                Counter.ADAPTER.encodeWithTag(writer, 4, value.unknown_record_type);
                Counter.ADAPTER.encodeWithTag(writer, 5, value.database_error);
                Counter.ADAPTER.encodeWithTag(writer, 6, value.online_transient_network_error);
                Counter.ADAPTER.encodeWithTag(writer, 7, value.record_data_mismatch);
                Counter.ADAPTER.encodeWithTag(writer, 8, value.emv_data_missing_expiration_tags);
                Counter.ADAPTER.encodeWithTag(writer, 9, value.serial_number_record_mismatch);
                Counter.ADAPTER.encodeWithTag(writer, 10, value.offline_decline);
                Counter.ADAPTER.encodeWithTag(writer, 11, value.emv_second_gen_network_error);
                Counter.ADAPTER.encodeWithTag(writer, 12, value.missing_offline_arc_for_aid);
                Counter.ADAPTER.encodeWithTag(writer, 13, value.reader_paired);
                Counter.ADAPTER.encodeWithTag(writer, 14, value.discard_livemode_payment_in_testmode);
                Counter.ADAPTER.encodeWithTag(writer, 15, value.failed_to_redeem_for_offline_token);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, DiscreteScope value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                Counter.ADAPTER.encodeWithTag(writer, 15, value.failed_to_redeem_for_offline_token);
                Counter.ADAPTER.encodeWithTag(writer, 14, value.discard_livemode_payment_in_testmode);
                Counter.ADAPTER.encodeWithTag(writer, 13, value.reader_paired);
                Counter.ADAPTER.encodeWithTag(writer, 12, value.missing_offline_arc_for_aid);
                Counter.ADAPTER.encodeWithTag(writer, 11, value.emv_second_gen_network_error);
                Counter.ADAPTER.encodeWithTag(writer, 10, value.offline_decline);
                Counter.ADAPTER.encodeWithTag(writer, 9, value.serial_number_record_mismatch);
                Counter.ADAPTER.encodeWithTag(writer, 8, value.emv_data_missing_expiration_tags);
                Counter.ADAPTER.encodeWithTag(writer, 7, value.record_data_mismatch);
                Counter.ADAPTER.encodeWithTag(writer, 6, value.online_transient_network_error);
                Counter.ADAPTER.encodeWithTag(writer, 5, value.database_error);
                Counter.ADAPTER.encodeWithTag(writer, 4, value.unknown_record_type);
                Counter.ADAPTER.encodeWithTag(writer, 3, value.pi_without_records);
                Counter.ADAPTER.encodeWithTag(writer, 2, value.decryption_error);
                Counter.ADAPTER.encodeWithTag(writer, 1, value.soft_deleted_record);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public DiscreteScope redact(DiscreteScope value) {
                Counter counter;
                Counter counterRedact;
                Intrinsics.checkNotNullParameter(value, "value");
                Counter counter2 = value.soft_deleted_record;
                Counter counterRedact2 = counter2 != null ? Counter.ADAPTER.redact(counter2) : null;
                Counter counter3 = value.decryption_error;
                Counter counterRedact3 = counter3 != null ? Counter.ADAPTER.redact(counter3) : null;
                Counter counter4 = value.pi_without_records;
                Counter counterRedact4 = counter4 != null ? Counter.ADAPTER.redact(counter4) : null;
                Counter counter5 = value.unknown_record_type;
                Counter counterRedact5 = counter5 != null ? Counter.ADAPTER.redact(counter5) : null;
                Counter counter6 = value.database_error;
                Counter counterRedact6 = counter6 != null ? Counter.ADAPTER.redact(counter6) : null;
                Counter counter7 = value.online_transient_network_error;
                Counter counterRedact7 = counter7 != null ? Counter.ADAPTER.redact(counter7) : null;
                Counter counter8 = value.record_data_mismatch;
                Counter counterRedact8 = counter8 != null ? Counter.ADAPTER.redact(counter8) : null;
                Counter counter9 = value.emv_data_missing_expiration_tags;
                Counter counterRedact9 = counter9 != null ? Counter.ADAPTER.redact(counter9) : null;
                Counter counter10 = value.serial_number_record_mismatch;
                Counter counterRedact10 = counter10 != null ? Counter.ADAPTER.redact(counter10) : null;
                Counter counter11 = value.offline_decline;
                Counter counterRedact11 = counter11 != null ? Counter.ADAPTER.redact(counter11) : null;
                Counter counter12 = value.emv_second_gen_network_error;
                Counter counterRedact12 = counter12 != null ? Counter.ADAPTER.redact(counter12) : null;
                Counter counter13 = value.missing_offline_arc_for_aid;
                Counter counterRedact13 = counter13 != null ? Counter.ADAPTER.redact(counter13) : null;
                Counter counter14 = value.reader_paired;
                Counter counterRedact14 = counter14 != null ? Counter.ADAPTER.redact(counter14) : null;
                Counter counter15 = value.discard_livemode_payment_in_testmode;
                Counter counterRedact15 = counter15 != null ? Counter.ADAPTER.redact(counter15) : null;
                Counter counter16 = value.failed_to_redeem_for_offline_token;
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
