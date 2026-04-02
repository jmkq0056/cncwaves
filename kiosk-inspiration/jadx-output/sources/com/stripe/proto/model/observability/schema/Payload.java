package com.stripe.proto.model.observability.schema;

import com.google.android.gms.measurement.AppMeasurement;
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

/* JADX INFO: compiled from: Payload.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u001b2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001a\u001bBK\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fJL\u0010\u0010\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\r\u001a\u00020\u000eJ\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0002H\u0016J\b\u0010\u0018\u001a\u00020\u0019H\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/stripe/proto/model/observability/schema/Payload;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/observability/schema/Payload$Builder;", "android_reader", "Lcom/stripe/proto/model/observability/schema/androidreader/Payload;", "power", "Lcom/stripe/proto/model/observability/schema/power/Payload;", "android", "Lcom/stripe/proto/model/observability/schema/android/Payload;", AppMeasurement.CRASH_ORIGIN, "Lcom/stripe/proto/model/observability/schema/crash/Payload;", "connectivity", "Lcom/stripe/proto/model/observability/schema/connectivity/Payload;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/observability/schema/androidreader/Payload;Lcom/stripe/proto/model/observability/schema/power/Payload;Lcom/stripe/proto/model/observability/schema/android/Payload;Lcom/stripe/proto/model/observability/schema/crash/Payload;Lcom/stripe/proto/model/observability/schema/connectivity/Payload;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Payload extends Message<Payload, Builder> {
    public static final ProtoAdapter<Payload> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.observability.schema.android.Payload#ADAPTER", oneofName = "payload", schemaIndex = 2, tag = 3)
    public final com.stripe.proto.model.observability.schema.android.Payload android;

    @WireField(adapter = "com.stripe.proto.model.observability.schema.androidreader.Payload#ADAPTER", jsonName = "androidReader", oneofName = "payload", schemaIndex = 0, tag = 1)
    public final com.stripe.proto.model.observability.schema.androidreader.Payload android_reader;

    @WireField(adapter = "com.stripe.proto.model.observability.schema.connectivity.Payload#ADAPTER", oneofName = "payload", schemaIndex = 4, tag = 5)
    public final com.stripe.proto.model.observability.schema.connectivity.Payload connectivity;

    @WireField(adapter = "com.stripe.proto.model.observability.schema.crash.Payload#ADAPTER", oneofName = "payload", schemaIndex = 3, tag = 4)
    public final com.stripe.proto.model.observability.schema.crash.Payload crash;

    @WireField(adapter = "com.stripe.proto.model.observability.schema.power.Payload#ADAPTER", oneofName = "payload", schemaIndex = 1, tag = 2)
    public final com.stripe.proto.model.observability.schema.power.Payload power;

    public Payload() {
        this(null, null, null, null, null, null, 63, null);
    }

    public /* synthetic */ Payload(com.stripe.proto.model.observability.schema.androidreader.Payload payload, com.stripe.proto.model.observability.schema.power.Payload payload2, com.stripe.proto.model.observability.schema.android.Payload payload3, com.stripe.proto.model.observability.schema.crash.Payload payload4, com.stripe.proto.model.observability.schema.connectivity.Payload payload5, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : payload, (i & 2) != 0 ? null : payload2, (i & 4) != 0 ? null : payload3, (i & 8) != 0 ? null : payload4, (i & 16) != 0 ? null : payload5, (i & 32) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Payload(com.stripe.proto.model.observability.schema.androidreader.Payload payload, com.stripe.proto.model.observability.schema.power.Payload payload2, com.stripe.proto.model.observability.schema.android.Payload payload3, com.stripe.proto.model.observability.schema.crash.Payload payload4, com.stripe.proto.model.observability.schema.connectivity.Payload payload5, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.android_reader = payload;
        this.power = payload2;
        this.android = payload3;
        this.crash = payload4;
        this.connectivity = payload5;
        if (Internal.countNonNull(payload, payload2, payload3, payload4, payload5) > 1) {
            throw new IllegalArgumentException("At most one of android_reader, power, android, crash, connectivity may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.android_reader = this.android_reader;
        builder.power = this.power;
        builder.android = this.android;
        builder.crash = this.crash;
        builder.connectivity = this.connectivity;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof Payload)) {
            return false;
        }
        Payload payload = (Payload) other;
        return Intrinsics.areEqual(unknownFields(), payload.unknownFields()) && Intrinsics.areEqual(this.android_reader, payload.android_reader) && Intrinsics.areEqual(this.power, payload.power) && Intrinsics.areEqual(this.android, payload.android) && Intrinsics.areEqual(this.crash, payload.crash) && Intrinsics.areEqual(this.connectivity, payload.connectivity);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        com.stripe.proto.model.observability.schema.androidreader.Payload payload = this.android_reader;
        int iHashCode2 = (iHashCode + (payload != null ? payload.hashCode() : 0)) * 37;
        com.stripe.proto.model.observability.schema.power.Payload payload2 = this.power;
        int iHashCode3 = (iHashCode2 + (payload2 != null ? payload2.hashCode() : 0)) * 37;
        com.stripe.proto.model.observability.schema.android.Payload payload3 = this.android;
        int iHashCode4 = (iHashCode3 + (payload3 != null ? payload3.hashCode() : 0)) * 37;
        com.stripe.proto.model.observability.schema.crash.Payload payload4 = this.crash;
        int iHashCode5 = (iHashCode4 + (payload4 != null ? payload4.hashCode() : 0)) * 37;
        com.stripe.proto.model.observability.schema.connectivity.Payload payload5 = this.connectivity;
        int iHashCode6 = iHashCode5 + (payload5 != null ? payload5.hashCode() : 0);
        this.hashCode = iHashCode6;
        return iHashCode6;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.android_reader != null) {
            arrayList.add("android_reader=" + this.android_reader);
        }
        if (this.power != null) {
            arrayList.add("power=" + this.power);
        }
        if (this.android != null) {
            arrayList.add("android=" + this.android);
        }
        if (this.crash != null) {
            arrayList.add("crash=" + this.crash);
        }
        if (this.connectivity != null) {
            arrayList.add("connectivity=" + this.connectivity);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "Payload{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ Payload copy$default(Payload payload, com.stripe.proto.model.observability.schema.androidreader.Payload payload2, com.stripe.proto.model.observability.schema.power.Payload payload3, com.stripe.proto.model.observability.schema.android.Payload payload4, com.stripe.proto.model.observability.schema.crash.Payload payload5, com.stripe.proto.model.observability.schema.connectivity.Payload payload6, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            payload2 = payload.android_reader;
        }
        if ((i & 2) != 0) {
            payload3 = payload.power;
        }
        if ((i & 4) != 0) {
            payload4 = payload.android;
        }
        if ((i & 8) != 0) {
            payload5 = payload.crash;
        }
        if ((i & 16) != 0) {
            payload6 = payload.connectivity;
        }
        if ((i & 32) != 0) {
            byteString = payload.unknownFields();
        }
        com.stripe.proto.model.observability.schema.connectivity.Payload payload7 = payload6;
        ByteString byteString2 = byteString;
        return payload.copy(payload2, payload3, payload4, payload5, payload7, byteString2);
    }

    public final Payload copy(com.stripe.proto.model.observability.schema.androidreader.Payload android_reader, com.stripe.proto.model.observability.schema.power.Payload power, com.stripe.proto.model.observability.schema.android.Payload android2, com.stripe.proto.model.observability.schema.crash.Payload crash, com.stripe.proto.model.observability.schema.connectivity.Payload connectivity, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new Payload(android_reader, power, android2, crash, connectivity, unknownFields);
    }

    /* JADX INFO: compiled from: Payload.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\b\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\rR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/proto/model/observability/schema/Payload$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/observability/schema/Payload;", "()V", "android", "Lcom/stripe/proto/model/observability/schema/android/Payload;", "android_reader", "Lcom/stripe/proto/model/observability/schema/androidreader/Payload;", "connectivity", "Lcom/stripe/proto/model/observability/schema/connectivity/Payload;", AppMeasurement.CRASH_ORIGIN, "Lcom/stripe/proto/model/observability/schema/crash/Payload;", "power", "Lcom/stripe/proto/model/observability/schema/power/Payload;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<Payload, Builder> {
        public com.stripe.proto.model.observability.schema.android.Payload android;
        public com.stripe.proto.model.observability.schema.androidreader.Payload android_reader;
        public com.stripe.proto.model.observability.schema.connectivity.Payload connectivity;
        public com.stripe.proto.model.observability.schema.crash.Payload crash;
        public com.stripe.proto.model.observability.schema.power.Payload power;

        public final Builder android_reader(com.stripe.proto.model.observability.schema.androidreader.Payload android_reader) {
            this.android_reader = android_reader;
            this.power = null;
            this.android = null;
            this.crash = null;
            this.connectivity = null;
            return this;
        }

        public final Builder power(com.stripe.proto.model.observability.schema.power.Payload power) {
            this.power = power;
            this.android_reader = null;
            this.android = null;
            this.crash = null;
            this.connectivity = null;
            return this;
        }

        public final Builder android(com.stripe.proto.model.observability.schema.android.Payload android2) {
            this.android = android2;
            this.android_reader = null;
            this.power = null;
            this.crash = null;
            this.connectivity = null;
            return this;
        }

        public final Builder crash(com.stripe.proto.model.observability.schema.crash.Payload crash) {
            this.crash = crash;
            this.android_reader = null;
            this.power = null;
            this.android = null;
            this.connectivity = null;
            return this;
        }

        public final Builder connectivity(com.stripe.proto.model.observability.schema.connectivity.Payload connectivity) {
            this.connectivity = connectivity;
            this.android_reader = null;
            this.power = null;
            this.android = null;
            this.crash = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public Payload build() {
            return new Payload(this.android_reader, this.power, this.android, this.crash, this.connectivity, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: Payload.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/observability/schema/Payload$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/observability/schema/Payload;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/observability/schema/Payload$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ Payload build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Payload.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<Payload>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.observability.schema.Payload$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(Payload value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + com.stripe.proto.model.observability.schema.androidreader.Payload.ADAPTER.encodedSizeWithTag(1, value.android_reader) + com.stripe.proto.model.observability.schema.power.Payload.ADAPTER.encodedSizeWithTag(2, value.power) + com.stripe.proto.model.observability.schema.android.Payload.ADAPTER.encodedSizeWithTag(3, value.android) + com.stripe.proto.model.observability.schema.crash.Payload.ADAPTER.encodedSizeWithTag(4, value.crash) + com.stripe.proto.model.observability.schema.connectivity.Payload.ADAPTER.encodedSizeWithTag(5, value.connectivity);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, Payload value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                com.stripe.proto.model.observability.schema.androidreader.Payload.ADAPTER.encodeWithTag(writer, 1, value.android_reader);
                com.stripe.proto.model.observability.schema.power.Payload.ADAPTER.encodeWithTag(writer, 2, value.power);
                com.stripe.proto.model.observability.schema.android.Payload.ADAPTER.encodeWithTag(writer, 3, value.android);
                com.stripe.proto.model.observability.schema.crash.Payload.ADAPTER.encodeWithTag(writer, 4, value.crash);
                com.stripe.proto.model.observability.schema.connectivity.Payload.ADAPTER.encodeWithTag(writer, 5, value.connectivity);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, Payload value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                com.stripe.proto.model.observability.schema.connectivity.Payload.ADAPTER.encodeWithTag(writer, 5, value.connectivity);
                com.stripe.proto.model.observability.schema.crash.Payload.ADAPTER.encodeWithTag(writer, 4, value.crash);
                com.stripe.proto.model.observability.schema.android.Payload.ADAPTER.encodeWithTag(writer, 3, value.android);
                com.stripe.proto.model.observability.schema.power.Payload.ADAPTER.encodeWithTag(writer, 2, value.power);
                com.stripe.proto.model.observability.schema.androidreader.Payload.ADAPTER.encodeWithTag(writer, 1, value.android_reader);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public Payload redact(Payload value) {
                Intrinsics.checkNotNullParameter(value, "value");
                com.stripe.proto.model.observability.schema.androidreader.Payload payload = value.android_reader;
                com.stripe.proto.model.observability.schema.androidreader.Payload payloadRedact = payload != null ? com.stripe.proto.model.observability.schema.androidreader.Payload.ADAPTER.redact(payload) : null;
                com.stripe.proto.model.observability.schema.power.Payload payload2 = value.power;
                com.stripe.proto.model.observability.schema.power.Payload payloadRedact2 = payload2 != null ? com.stripe.proto.model.observability.schema.power.Payload.ADAPTER.redact(payload2) : null;
                com.stripe.proto.model.observability.schema.android.Payload payload3 = value.android;
                com.stripe.proto.model.observability.schema.android.Payload payloadRedact3 = payload3 != null ? com.stripe.proto.model.observability.schema.android.Payload.ADAPTER.redact(payload3) : null;
                com.stripe.proto.model.observability.schema.crash.Payload payload4 = value.crash;
                com.stripe.proto.model.observability.schema.crash.Payload payloadRedact4 = payload4 != null ? com.stripe.proto.model.observability.schema.crash.Payload.ADAPTER.redact(payload4) : null;
                com.stripe.proto.model.observability.schema.connectivity.Payload payload5 = value.connectivity;
                return value.copy(payloadRedact, payloadRedact2, payloadRedact3, payloadRedact4, payload5 != null ? com.stripe.proto.model.observability.schema.connectivity.Payload.ADAPTER.redact(payload5) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public Payload decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                com.stripe.proto.model.observability.schema.androidreader.Payload payloadDecode = null;
                com.stripe.proto.model.observability.schema.power.Payload payloadDecode2 = null;
                com.stripe.proto.model.observability.schema.android.Payload payloadDecode3 = null;
                com.stripe.proto.model.observability.schema.crash.Payload payloadDecode4 = null;
                com.stripe.proto.model.observability.schema.connectivity.Payload payloadDecode5 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new Payload(payloadDecode, payloadDecode2, payloadDecode3, payloadDecode4, payloadDecode5, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        payloadDecode = com.stripe.proto.model.observability.schema.androidreader.Payload.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        payloadDecode2 = com.stripe.proto.model.observability.schema.power.Payload.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        payloadDecode3 = com.stripe.proto.model.observability.schema.android.Payload.ADAPTER.decode(reader);
                    } else if (iNextTag == 4) {
                        payloadDecode4 = com.stripe.proto.model.observability.schema.crash.Payload.ADAPTER.decode(reader);
                    } else if (iNextTag == 5) {
                        payloadDecode5 = com.stripe.proto.model.observability.schema.connectivity.Payload.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
