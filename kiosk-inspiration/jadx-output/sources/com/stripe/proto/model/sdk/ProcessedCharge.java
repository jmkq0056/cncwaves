package com.stripe.proto.model.sdk;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.model.rest.Source;
import com.sun.jna.platform.win32.WinUser;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: ProcessedCharge.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001e2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001d\u001eBy\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0014\b\u0002\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0011\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0013¢\u0006\u0002\u0010\u0014Jz\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0014\b\u0002\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u0013J\u0013\u0010\u0016\u001a\u00020\r2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u0002H\u0016J\b\u0010\u001c\u001a\u00020\u0004H\u0016R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00118\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/stripe/proto/model/sdk/ProcessedCharge;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;", "charge_id", "", "charged_amount", "Lcom/stripe/proto/model/sdk/ChargeAmount;", "c_time", "", "description", "receipt_email", "statement_descriptor", "live_mode", "", FirebaseAnalytics.Param.SOURCE, "Lcom/stripe/proto/model/rest/Source;", "metadata", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lcom/stripe/proto/model/sdk/ChargeAmount;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/stripe/proto/model/rest/Source;Ljava/util/Map;Lokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ProcessedCharge extends Message<ProcessedCharge, Builder> {
    public static final ProtoAdapter<ProcessedCharge> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "cTime", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final long c_time;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "chargeId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String charge_id;

    @WireField(adapter = "com.stripe.proto.model.sdk.ChargeAmount#ADAPTER", jsonName = "chargedAmount", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final ChargeAmount charged_amount;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String description;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "liveMode", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final boolean live_mode;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 8, tag = 11)
    public final Map<String, String> metadata;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "receiptEmail", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final String receipt_email;

    @WireField(adapter = "com.stripe.proto.model.rest.Source#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 10)
    public final Source source;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "statementDescriptor", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final String statement_descriptor;

    public ProcessedCharge() {
        this(null, null, 0L, null, null, null, false, null, null, null, WinUser.CF_GDIOBJLAST, null);
    }

    public /* synthetic */ ProcessedCharge(String str, ChargeAmount chargeAmount, long j, String str2, String str3, String str4, boolean z, Source source, Map map, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? null : chargeAmount, (i & 4) != 0 ? 0L : j, (i & 8) != 0 ? "" : str2, (i & 16) != 0 ? "" : str3, (i & 32) != 0 ? "" : str4, (i & 64) != 0 ? false : z, (i & 128) != 0 ? null : source, (i & 256) != 0 ? MapsKt.emptyMap() : map, (i & 512) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProcessedCharge(String charge_id, ChargeAmount chargeAmount, long j, String description, String receipt_email, String statement_descriptor, boolean z, Source source, Map<String, String> metadata, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(charge_id, "charge_id");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(receipt_email, "receipt_email");
        Intrinsics.checkNotNullParameter(statement_descriptor, "statement_descriptor");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.charge_id = charge_id;
        this.charged_amount = chargeAmount;
        this.c_time = j;
        this.description = description;
        this.receipt_email = receipt_email;
        this.statement_descriptor = statement_descriptor;
        this.live_mode = z;
        this.source = source;
        this.metadata = Internal.immutableCopyOf("metadata", metadata);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.charge_id = this.charge_id;
        builder.charged_amount = this.charged_amount;
        builder.c_time = this.c_time;
        builder.description = this.description;
        builder.receipt_email = this.receipt_email;
        builder.statement_descriptor = this.statement_descriptor;
        builder.live_mode = this.live_mode;
        builder.source = this.source;
        builder.metadata = this.metadata;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ProcessedCharge)) {
            return false;
        }
        ProcessedCharge processedCharge = (ProcessedCharge) other;
        return Intrinsics.areEqual(unknownFields(), processedCharge.unknownFields()) && Intrinsics.areEqual(this.charge_id, processedCharge.charge_id) && Intrinsics.areEqual(this.charged_amount, processedCharge.charged_amount) && this.c_time == processedCharge.c_time && Intrinsics.areEqual(this.description, processedCharge.description) && Intrinsics.areEqual(this.receipt_email, processedCharge.receipt_email) && Intrinsics.areEqual(this.statement_descriptor, processedCharge.statement_descriptor) && this.live_mode == processedCharge.live_mode && Intrinsics.areEqual(this.source, processedCharge.source) && Intrinsics.areEqual(this.metadata, processedCharge.metadata);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + this.charge_id.hashCode()) * 37;
        ChargeAmount chargeAmount = this.charged_amount;
        int iHashCode2 = (((((((((((iHashCode + (chargeAmount != null ? chargeAmount.hashCode() : 0)) * 37) + Long.hashCode(this.c_time)) * 37) + this.description.hashCode()) * 37) + this.receipt_email.hashCode()) * 37) + this.statement_descriptor.hashCode()) * 37) + Boolean.hashCode(this.live_mode)) * 37;
        Source source = this.source;
        int iHashCode3 = ((iHashCode2 + (source != null ? source.hashCode() : 0)) * 37) + this.metadata.hashCode();
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("charge_id=" + Internal.sanitize(this.charge_id));
        if (this.charged_amount != null) {
            arrayList2.add("charged_amount=" + this.charged_amount);
        }
        arrayList2.add("c_time=" + this.c_time);
        arrayList2.add("description=" + Internal.sanitize(this.description));
        arrayList2.add("receipt_email=" + Internal.sanitize(this.receipt_email));
        arrayList2.add("statement_descriptor=" + Internal.sanitize(this.statement_descriptor));
        arrayList2.add("live_mode=" + this.live_mode);
        if (this.source != null) {
            arrayList2.add("source=" + this.source);
        }
        if (!this.metadata.isEmpty()) {
            arrayList2.add("metadata=" + this.metadata);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ProcessedCharge{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ProcessedCharge copy$default(ProcessedCharge processedCharge, String str, ChargeAmount chargeAmount, long j, String str2, String str3, String str4, boolean z, Source source, Map map, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = processedCharge.charge_id;
        }
        if ((i & 2) != 0) {
            chargeAmount = processedCharge.charged_amount;
        }
        if ((i & 4) != 0) {
            j = processedCharge.c_time;
        }
        if ((i & 8) != 0) {
            str2 = processedCharge.description;
        }
        if ((i & 16) != 0) {
            str3 = processedCharge.receipt_email;
        }
        if ((i & 32) != 0) {
            str4 = processedCharge.statement_descriptor;
        }
        if ((i & 64) != 0) {
            z = processedCharge.live_mode;
        }
        if ((i & 128) != 0) {
            source = processedCharge.source;
        }
        if ((i & 256) != 0) {
            map = processedCharge.metadata;
        }
        if ((i & 512) != 0) {
            byteString = processedCharge.unknownFields();
        }
        Map map2 = map;
        ByteString byteString2 = byteString;
        Source source2 = source;
        String str5 = str4;
        String str6 = str2;
        long j2 = j;
        return processedCharge.copy(str, chargeAmount, j2, str6, str3, str5, z, source2, map2, byteString2);
    }

    public final ProcessedCharge copy(String charge_id, ChargeAmount charged_amount, long c_time, String description, String receipt_email, String statement_descriptor, boolean live_mode, Source source, Map<String, String> metadata, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(charge_id, "charge_id");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(receipt_email, "receipt_email");
        Intrinsics.checkNotNullParameter(statement_descriptor, "statement_descriptor");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ProcessedCharge(charge_id, charged_amount, c_time, description, receipt_email, statement_descriptor, live_mode, source, metadata, unknownFields);
    }

    /* JADX INFO: compiled from: ProcessedCharge.kt */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\fJ\u001a\u0010\r\u001a\u00020\u00002\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u000eJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0007J\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/sdk/ProcessedCharge;", "()V", "c_time", "", "charge_id", "", "charged_amount", "Lcom/stripe/proto/model/sdk/ChargeAmount;", "description", "live_mode", "", "metadata", "", "receipt_email", FirebaseAnalytics.Param.SOURCE, "Lcom/stripe/proto/model/rest/Source;", "statement_descriptor", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ProcessedCharge, Builder> {
        public long c_time;
        public ChargeAmount charged_amount;
        public boolean live_mode;
        public Source source;
        public String charge_id = "";
        public String description = "";
        public String receipt_email = "";
        public String statement_descriptor = "";
        public Map<String, String> metadata = MapsKt.emptyMap();

        public final Builder charge_id(String charge_id) {
            Intrinsics.checkNotNullParameter(charge_id, "charge_id");
            this.charge_id = charge_id;
            return this;
        }

        public final Builder charged_amount(ChargeAmount charged_amount) {
            this.charged_amount = charged_amount;
            return this;
        }

        public final Builder c_time(long c_time) {
            this.c_time = c_time;
            return this;
        }

        public final Builder description(String description) {
            Intrinsics.checkNotNullParameter(description, "description");
            this.description = description;
            return this;
        }

        public final Builder receipt_email(String receipt_email) {
            Intrinsics.checkNotNullParameter(receipt_email, "receipt_email");
            this.receipt_email = receipt_email;
            return this;
        }

        public final Builder statement_descriptor(String statement_descriptor) {
            Intrinsics.checkNotNullParameter(statement_descriptor, "statement_descriptor");
            this.statement_descriptor = statement_descriptor;
            return this;
        }

        public final Builder live_mode(boolean live_mode) {
            this.live_mode = live_mode;
            return this;
        }

        public final Builder source(Source source) {
            this.source = source;
            return this;
        }

        public final Builder metadata(Map<String, String> metadata) {
            Intrinsics.checkNotNullParameter(metadata, "metadata");
            this.metadata = metadata;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ProcessedCharge build() {
            return new ProcessedCharge(this.charge_id, this.charged_amount, this.c_time, this.description, this.receipt_email, this.statement_descriptor, this.live_mode, this.source, this.metadata, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ProcessedCharge.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/sdk/ProcessedCharge$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/sdk/ProcessedCharge;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/sdk/ProcessedCharge$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ProcessedCharge build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ProcessedCharge.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ProcessedCharge>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.sdk.ProcessedCharge$Companion$ADAPTER$1

            /* JADX INFO: renamed from: metadataAdapter$delegate, reason: from kotlin metadata */
            private final Lazy metadataAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends String>>>() { // from class: com.stripe.proto.model.sdk.ProcessedCharge$Companion$ADAPTER$1$metadataAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends String>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.STRING);
                }
            });

            private final ProtoAdapter<Map<String, String>> getMetadataAdapter() {
                return (ProtoAdapter) this.metadataAdapter.getValue();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ProcessedCharge value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.charge_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.charge_id);
                }
                if (value.charged_amount != null) {
                    size += ChargeAmount.ADAPTER.encodedSizeWithTag(2, value.charged_amount);
                }
                if (value.c_time != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(3, Long.valueOf(value.c_time));
                }
                if (!Intrinsics.areEqual(value.description, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(4, value.description);
                }
                if (!Intrinsics.areEqual(value.receipt_email, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(5, value.receipt_email);
                }
                if (!Intrinsics.areEqual(value.statement_descriptor, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(6, value.statement_descriptor);
                }
                if (value.live_mode) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(7, Boolean.valueOf(value.live_mode));
                }
                if (value.source != null) {
                    size += Source.ADAPTER.encodedSizeWithTag(10, value.source);
                }
                return size + getMetadataAdapter().encodedSizeWithTag(11, value.metadata);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ProcessedCharge value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.charge_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.charge_id);
                }
                if (value.charged_amount != null) {
                    ChargeAmount.ADAPTER.encodeWithTag(writer, 2, value.charged_amount);
                }
                if (value.c_time != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 3, Long.valueOf(value.c_time));
                }
                if (!Intrinsics.areEqual(value.description, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.description);
                }
                if (!Intrinsics.areEqual(value.receipt_email, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.receipt_email);
                }
                if (!Intrinsics.areEqual(value.statement_descriptor, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.statement_descriptor);
                }
                if (value.live_mode) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 7, Boolean.valueOf(value.live_mode));
                }
                if (value.source != null) {
                    Source.ADAPTER.encodeWithTag(writer, 10, value.source);
                }
                getMetadataAdapter().encodeWithTag(writer, 11, value.metadata);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ProcessedCharge value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                getMetadataAdapter().encodeWithTag(writer, 11, value.metadata);
                if (value.source != null) {
                    Source.ADAPTER.encodeWithTag(writer, 10, value.source);
                }
                if (value.live_mode) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 7, Boolean.valueOf(value.live_mode));
                }
                if (!Intrinsics.areEqual(value.statement_descriptor, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.statement_descriptor);
                }
                if (!Intrinsics.areEqual(value.receipt_email, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.receipt_email);
                }
                if (!Intrinsics.areEqual(value.description, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.description);
                }
                if (value.c_time != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 3, Long.valueOf(value.c_time));
                }
                if (value.charged_amount != null) {
                    ChargeAmount.ADAPTER.encodeWithTag(writer, 2, value.charged_amount);
                }
                if (Intrinsics.areEqual(value.charge_id, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.charge_id);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ProcessedCharge decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                Source sourceDecode = null;
                long jLongValue = 0;
                boolean zBooleanValue = false;
                String strDecode2 = "";
                String strDecode3 = strDecode2;
                String strDecode4 = strDecode3;
                ChargeAmount chargeAmountDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 2:
                                chargeAmountDecode = ChargeAmount.ADAPTER.decode(reader);
                                break;
                            case 3:
                                jLongValue = ProtoAdapter.INT64.decode(reader).longValue();
                                break;
                            case 4:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 5:
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 6:
                                strDecode4 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 7:
                                zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 8:
                            case 9:
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                            case 10:
                                sourceDecode = Source.ADAPTER.decode(reader);
                                break;
                            case 11:
                                linkedHashMap.putAll(getMetadataAdapter().decode(reader));
                                break;
                        }
                    } else {
                        return new ProcessedCharge(strDecode, chargeAmountDecode, jLongValue, strDecode2, strDecode3, strDecode4, zBooleanValue, sourceDecode, linkedHashMap, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ProcessedCharge redact(ProcessedCharge value) {
                Intrinsics.checkNotNullParameter(value, "value");
                ChargeAmount chargeAmount = value.charged_amount;
                ChargeAmount chargeAmountRedact = chargeAmount != null ? ChargeAmount.ADAPTER.redact(chargeAmount) : null;
                Source source = value.source;
                return ProcessedCharge.copy$default(value, null, chargeAmountRedact, 0L, null, null, null, false, source != null ? Source.ADAPTER.redact(source) : null, null, ByteString.EMPTY, 381, null);
            }
        };
    }
}
