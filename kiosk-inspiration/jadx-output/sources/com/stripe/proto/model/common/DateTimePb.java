package com.stripe.proto.model.common;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
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

/* JADX INFO: compiled from: DateTimePb.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u001c2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001b\u001cBi\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010¢\u0006\u0002\u0010\u0011Jj\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u00042\b\b\u0002\u0010\u000f\u001a\u00020\u0010J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\b\u0010\u0017\u001a\u00020\u0004H\u0016J\b\u0010\u0018\u001a\u00020\u0002H\u0016J\b\u0010\u0019\u001a\u00020\u001aH\u0016R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/stripe/proto/model/common/DateTimePb;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/common/DateTimePb$Builder;", "year", "", "month_of_year", "day_of_month", "hour_of_day", "minute_of_hour", "second_of_minute", "millis_of_second", "", "time_zone", "Lcom/stripe/proto/model/common/TimeZone;", "nanos_of_second", "unknownFields", "Lokio/ByteString;", "(IIIIIIJLcom/stripe/proto/model/common/TimeZone;ILokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DateTimePb extends Message<DateTimePb, Builder> {
    public static final ProtoAdapter<DateTimePb> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "dayOfMonth", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final int day_of_month;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "hourOfDay", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final int hour_of_day;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "millisOfSecond", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final long millis_of_second;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "minuteOfHour", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final int minute_of_hour;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "monthOfYear", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final int month_of_year;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "nanosOfSecond", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 9)
    public final int nanos_of_second;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "secondOfMinute", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final int second_of_minute;

    @WireField(adapter = "com.stripe.proto.model.common.TimeZone#ADAPTER", jsonName = RemoteConfigConstants.RequestFieldKey.TIME_ZONE, label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 8)
    public final TimeZone time_zone;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final int year;

    public DateTimePb() {
        this(0, 0, 0, 0, 0, 0, 0L, null, 0, null, WinUser.CF_GDIOBJLAST, null);
    }

    public /* synthetic */ DateTimePb(int i, int i2, int i3, int i4, int i5, int i6, long j, TimeZone timeZone, int i7, ByteString byteString, int i8, DefaultConstructorMarker defaultConstructorMarker) {
        this((i8 & 1) != 0 ? 0 : i, (i8 & 2) != 0 ? 0 : i2, (i8 & 4) != 0 ? 0 : i3, (i8 & 8) != 0 ? 0 : i4, (i8 & 16) != 0 ? 0 : i5, (i8 & 32) != 0 ? 0 : i6, (i8 & 64) != 0 ? 0L : j, (i8 & 128) != 0 ? TimeZone.TIME_ZONE_INVALID : timeZone, (i8 & 256) != 0 ? 0 : i7, (i8 & 512) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DateTimePb(int i, int i2, int i3, int i4, int i5, int i6, long j, TimeZone time_zone, int i7, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(time_zone, "time_zone");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.year = i;
        this.month_of_year = i2;
        this.day_of_month = i3;
        this.hour_of_day = i4;
        this.minute_of_hour = i5;
        this.second_of_minute = i6;
        this.millis_of_second = j;
        this.time_zone = time_zone;
        this.nanos_of_second = i7;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.year = this.year;
        builder.month_of_year = this.month_of_year;
        builder.day_of_month = this.day_of_month;
        builder.hour_of_day = this.hour_of_day;
        builder.minute_of_hour = this.minute_of_hour;
        builder.second_of_minute = this.second_of_minute;
        builder.millis_of_second = this.millis_of_second;
        builder.time_zone = this.time_zone;
        builder.nanos_of_second = this.nanos_of_second;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof DateTimePb)) {
            return false;
        }
        DateTimePb dateTimePb = (DateTimePb) other;
        return Intrinsics.areEqual(unknownFields(), dateTimePb.unknownFields()) && this.year == dateTimePb.year && this.month_of_year == dateTimePb.month_of_year && this.day_of_month == dateTimePb.day_of_month && this.hour_of_day == dateTimePb.hour_of_day && this.minute_of_hour == dateTimePb.minute_of_hour && this.second_of_minute == dateTimePb.second_of_minute && this.millis_of_second == dateTimePb.millis_of_second && this.time_zone == dateTimePb.time_zone && this.nanos_of_second == dateTimePb.nanos_of_second;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((((((((((((unknownFields().hashCode() * 37) + Integer.hashCode(this.year)) * 37) + Integer.hashCode(this.month_of_year)) * 37) + Integer.hashCode(this.day_of_month)) * 37) + Integer.hashCode(this.hour_of_day)) * 37) + Integer.hashCode(this.minute_of_hour)) * 37) + Integer.hashCode(this.second_of_minute)) * 37) + Long.hashCode(this.millis_of_second)) * 37) + this.time_zone.hashCode()) * 37) + Integer.hashCode(this.nanos_of_second);
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("year=" + this.year);
        arrayList2.add("month_of_year=" + this.month_of_year);
        arrayList2.add("day_of_month=" + this.day_of_month);
        arrayList2.add("hour_of_day=" + this.hour_of_day);
        arrayList2.add("minute_of_hour=" + this.minute_of_hour);
        arrayList2.add("second_of_minute=" + this.second_of_minute);
        arrayList2.add("millis_of_second=" + this.millis_of_second);
        arrayList2.add("time_zone=" + this.time_zone);
        arrayList2.add("nanos_of_second=" + this.nanos_of_second);
        return CollectionsKt.joinToString$default(arrayList, ", ", "DateTimePb{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ DateTimePb copy$default(DateTimePb dateTimePb, int i, int i2, int i3, int i4, int i5, int i6, long j, TimeZone timeZone, int i7, ByteString byteString, int i8, Object obj) {
        if ((i8 & 1) != 0) {
            i = dateTimePb.year;
        }
        if ((i8 & 2) != 0) {
            i2 = dateTimePb.month_of_year;
        }
        if ((i8 & 4) != 0) {
            i3 = dateTimePb.day_of_month;
        }
        if ((i8 & 8) != 0) {
            i4 = dateTimePb.hour_of_day;
        }
        if ((i8 & 16) != 0) {
            i5 = dateTimePb.minute_of_hour;
        }
        if ((i8 & 32) != 0) {
            i6 = dateTimePb.second_of_minute;
        }
        if ((i8 & 64) != 0) {
            j = dateTimePb.millis_of_second;
        }
        if ((i8 & 128) != 0) {
            timeZone = dateTimePb.time_zone;
        }
        if ((i8 & 256) != 0) {
            i7 = dateTimePb.nanos_of_second;
        }
        if ((i8 & 512) != 0) {
            byteString = dateTimePb.unknownFields();
        }
        ByteString byteString2 = byteString;
        TimeZone timeZone2 = timeZone;
        long j2 = j;
        int i9 = i5;
        int i10 = i6;
        int i11 = i3;
        int i12 = i4;
        return dateTimePb.copy(i, i2, i11, i12, i9, i10, j2, timeZone2, i7, byteString2);
    }

    public final DateTimePb copy(int year, int month_of_year, int day_of_month, int hour_of_day, int minute_of_hour, int second_of_minute, long millis_of_second, TimeZone time_zone, int nanos_of_second, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(time_zone, "time_zone");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new DateTimePb(year, month_of_year, day_of_month, hour_of_day, minute_of_hour, second_of_minute, millis_of_second, time_zone, nanos_of_second, unknownFields);
    }

    /* JADX INFO: compiled from: DateTimePb.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/stripe/proto/model/common/DateTimePb$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/common/DateTimePb;", "()V", "day_of_month", "", "hour_of_day", "millis_of_second", "", "minute_of_hour", "month_of_year", "nanos_of_second", "second_of_minute", "time_zone", "Lcom/stripe/proto/model/common/TimeZone;", "year", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<DateTimePb, Builder> {
        public int day_of_month;
        public int hour_of_day;
        public long millis_of_second;
        public int minute_of_hour;
        public int month_of_year;
        public int nanos_of_second;
        public int second_of_minute;
        public TimeZone time_zone = TimeZone.TIME_ZONE_INVALID;
        public int year;

        public final Builder year(int year) {
            this.year = year;
            return this;
        }

        public final Builder month_of_year(int month_of_year) {
            this.month_of_year = month_of_year;
            return this;
        }

        public final Builder day_of_month(int day_of_month) {
            this.day_of_month = day_of_month;
            return this;
        }

        public final Builder hour_of_day(int hour_of_day) {
            this.hour_of_day = hour_of_day;
            return this;
        }

        public final Builder minute_of_hour(int minute_of_hour) {
            this.minute_of_hour = minute_of_hour;
            return this;
        }

        public final Builder second_of_minute(int second_of_minute) {
            this.second_of_minute = second_of_minute;
            return this;
        }

        public final Builder millis_of_second(long millis_of_second) {
            this.millis_of_second = millis_of_second;
            return this;
        }

        public final Builder time_zone(TimeZone time_zone) {
            Intrinsics.checkNotNullParameter(time_zone, "time_zone");
            this.time_zone = time_zone;
            return this;
        }

        public final Builder nanos_of_second(int nanos_of_second) {
            this.nanos_of_second = nanos_of_second;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public DateTimePb build() {
            return new DateTimePb(this.year, this.month_of_year, this.day_of_month, this.hour_of_day, this.minute_of_hour, this.second_of_minute, this.millis_of_second, this.time_zone, this.nanos_of_second, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: DateTimePb.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/common/DateTimePb$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/DateTimePb;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/common/DateTimePb$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ DateTimePb build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DateTimePb.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<DateTimePb>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.common.DateTimePb$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(DateTimePb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.year != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(1, Integer.valueOf(value.year));
                }
                if (value.month_of_year != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(2, Integer.valueOf(value.month_of_year));
                }
                if (value.day_of_month != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(3, Integer.valueOf(value.day_of_month));
                }
                if (value.hour_of_day != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(4, Integer.valueOf(value.hour_of_day));
                }
                if (value.minute_of_hour != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(5, Integer.valueOf(value.minute_of_hour));
                }
                if (value.second_of_minute != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(6, Integer.valueOf(value.second_of_minute));
                }
                if (value.millis_of_second != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(7, Long.valueOf(value.millis_of_second));
                }
                if (value.time_zone != TimeZone.TIME_ZONE_INVALID) {
                    size += TimeZone.ADAPTER.encodedSizeWithTag(8, value.time_zone);
                }
                return value.nanos_of_second != 0 ? size + ProtoAdapter.INT32.encodedSizeWithTag(9, Integer.valueOf(value.nanos_of_second)) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, DateTimePb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.year != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 1, Integer.valueOf(value.year));
                }
                if (value.month_of_year != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 2, Integer.valueOf(value.month_of_year));
                }
                if (value.day_of_month != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 3, Integer.valueOf(value.day_of_month));
                }
                if (value.hour_of_day != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 4, Integer.valueOf(value.hour_of_day));
                }
                if (value.minute_of_hour != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 5, Integer.valueOf(value.minute_of_hour));
                }
                if (value.second_of_minute != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 6, Integer.valueOf(value.second_of_minute));
                }
                if (value.millis_of_second != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 7, Long.valueOf(value.millis_of_second));
                }
                if (value.time_zone != TimeZone.TIME_ZONE_INVALID) {
                    TimeZone.ADAPTER.encodeWithTag(writer, 8, value.time_zone);
                }
                if (value.nanos_of_second != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 9, Integer.valueOf(value.nanos_of_second));
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, DateTimePb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.nanos_of_second != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 9, Integer.valueOf(value.nanos_of_second));
                }
                if (value.time_zone != TimeZone.TIME_ZONE_INVALID) {
                    TimeZone.ADAPTER.encodeWithTag(writer, 8, value.time_zone);
                }
                if (value.millis_of_second != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 7, Long.valueOf(value.millis_of_second));
                }
                if (value.second_of_minute != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 6, Integer.valueOf(value.second_of_minute));
                }
                if (value.minute_of_hour != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 5, Integer.valueOf(value.minute_of_hour));
                }
                if (value.hour_of_day != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 4, Integer.valueOf(value.hour_of_day));
                }
                if (value.day_of_month != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 3, Integer.valueOf(value.day_of_month));
                }
                if (value.month_of_year != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 2, Integer.valueOf(value.month_of_year));
                }
                if (value.year != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 1, Integer.valueOf(value.year));
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public DateTimePb decode(ProtoReader reader) throws IOException {
                int i;
                int i2;
                Intrinsics.checkNotNullParameter(reader, "reader");
                TimeZone timeZone = TimeZone.TIME_ZONE_INVALID;
                long jBeginMessage = reader.beginMessage();
                int iIntValue = 0;
                int iIntValue2 = 0;
                int iIntValue3 = 0;
                int iIntValue4 = 0;
                int iIntValue5 = 0;
                int iIntValue6 = 0;
                long jLongValue = 0;
                TimeZone timeZoneDecode = timeZone;
                int iIntValue7 = 0;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                iIntValue7 = ProtoAdapter.INT32.decode(reader).intValue();
                                continue;
                            case 2:
                                iIntValue = ProtoAdapter.INT32.decode(reader).intValue();
                                continue;
                            case 3:
                                iIntValue2 = ProtoAdapter.INT32.decode(reader).intValue();
                                continue;
                            case 4:
                                iIntValue3 = ProtoAdapter.INT32.decode(reader).intValue();
                                continue;
                            case 5:
                                iIntValue4 = ProtoAdapter.INT32.decode(reader).intValue();
                                continue;
                            case 6:
                                iIntValue5 = ProtoAdapter.INT32.decode(reader).intValue();
                                continue;
                            case 7:
                                jLongValue = ProtoAdapter.INT64.decode(reader).longValue();
                                iIntValue7 = iIntValue7;
                                continue;
                            case 8:
                                try {
                                    timeZoneDecode = TimeZone.ADAPTER.decode(reader);
                                    continue;
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    i = iIntValue7;
                                    i2 = iIntValue;
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                    iIntValue7 = i;
                                    iIntValue = i2;
                                }
                                break;
                            case 9:
                                iIntValue6 = ProtoAdapter.INT32.decode(reader).intValue();
                                continue;
                            default:
                                i = iIntValue7;
                                i2 = iIntValue;
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                        iIntValue7 = i;
                        iIntValue = i2;
                    } else {
                        return new DateTimePb(iIntValue7, iIntValue, iIntValue2, iIntValue3, iIntValue4, iIntValue5, jLongValue, timeZoneDecode, iIntValue6, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public DateTimePb redact(DateTimePb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return DateTimePb.copy$default(value, 0, 0, 0, 0, 0, 0, 0L, null, 0, ByteString.EMPTY, 511, null);
            }
        };
    }
}
