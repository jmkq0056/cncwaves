package com.stripe.proto.api.rest;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.api.rest.Mandate;
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

/* JADX INFO: compiled from: Mandate.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0012\u0013\u0014B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001c\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/api/rest/Mandate;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/Mandate$Builder;", "customer_acceptance", "Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "MandateCustomerAcceptance", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Mandate extends Message<Mandate, Builder> {
    public static final ProtoAdapter<Mandate> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.api.rest.Mandate$MandateCustomerAcceptance#ADAPTER", jsonName = "customerAcceptance", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final MandateCustomerAcceptance customer_acceptance;

    /* JADX WARN: Multi-variable type inference failed */
    public Mandate() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ Mandate(MandateCustomerAcceptance mandateCustomerAcceptance, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : mandateCustomerAcceptance, (i & 2) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Mandate(MandateCustomerAcceptance mandateCustomerAcceptance, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.customer_acceptance = mandateCustomerAcceptance;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.customer_acceptance = this.customer_acceptance;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof Mandate)) {
            return false;
        }
        Mandate mandate = (Mandate) other;
        return Intrinsics.areEqual(unknownFields(), mandate.unknownFields()) && Intrinsics.areEqual(this.customer_acceptance, mandate.customer_acceptance);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        MandateCustomerAcceptance mandateCustomerAcceptance = this.customer_acceptance;
        int iHashCode2 = iHashCode + (mandateCustomerAcceptance != null ? mandateCustomerAcceptance.hashCode() : 0);
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.customer_acceptance != null) {
            arrayList.add("customer_acceptance=" + this.customer_acceptance);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "Mandate{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ Mandate copy$default(Mandate mandate, MandateCustomerAcceptance mandateCustomerAcceptance, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            mandateCustomerAcceptance = mandate.customer_acceptance;
        }
        if ((i & 2) != 0) {
            byteString = mandate.unknownFields();
        }
        return mandate.copy(mandateCustomerAcceptance, byteString);
    }

    public final Mandate copy(MandateCustomerAcceptance customer_acceptance, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new Mandate(customer_acceptance, unknownFields);
    }

    /* JADX INFO: compiled from: Mandate.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/api/rest/Mandate$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/Mandate;", "()V", "customer_acceptance", "Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<Mandate, Builder> {
        public MandateCustomerAcceptance customer_acceptance;

        public final Builder customer_acceptance(MandateCustomerAcceptance customer_acceptance) {
            this.customer_acceptance = customer_acceptance;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public Mandate build() {
            return new Mandate(this.customer_acceptance, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: Mandate.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/Mandate$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/Mandate;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/Mandate$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ Mandate build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Mandate.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<Mandate>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.Mandate$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(Mandate value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                return value.customer_acceptance != null ? size + Mandate.MandateCustomerAcceptance.ADAPTER.encodedSizeWithTag(1, value.customer_acceptance) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, Mandate value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.customer_acceptance != null) {
                    Mandate.MandateCustomerAcceptance.ADAPTER.encodeWithTag(writer, 1, value.customer_acceptance);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, Mandate value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.customer_acceptance != null) {
                    Mandate.MandateCustomerAcceptance.ADAPTER.encodeWithTag(writer, 1, value.customer_acceptance);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public Mandate redact(Mandate value) {
                Intrinsics.checkNotNullParameter(value, "value");
                Mandate.MandateCustomerAcceptance mandateCustomerAcceptance = value.customer_acceptance;
                return value.copy(mandateCustomerAcceptance != null ? Mandate.MandateCustomerAcceptance.ADAPTER.redact(mandateCustomerAcceptance) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public Mandate decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                Mandate.MandateCustomerAcceptance mandateCustomerAcceptanceDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new Mandate(mandateCustomerAcceptanceDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        mandateCustomerAcceptanceDecode = Mandate.MandateCustomerAcceptance.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }

    /* JADX INFO: compiled from: Mandate.kt */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u001a2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0019\u001a\u001bBI\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJO\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\u0010J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0002H\u0016J\b\u0010\u0018\u001a\u00020\u0004H\u0016R\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u000eR\u001c\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$Builder;", "type", "", "accepted_at", "", "offline", "", "online", "Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;Lokio/ByteString;)V", "Ljava/lang/Long;", "copy", "(Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;Lokio/ByteString;)Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance;", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "OnlineTypeCustomerAcceptance", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class MandateCustomerAcceptance extends Message<MandateCustomerAcceptance, Builder> {
        public static final ProtoAdapter<MandateCustomerAcceptance> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", jsonName = "acceptedAt", schemaIndex = 1, tag = 2)
        public final Long accepted_at;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 2, tag = 3)
        public final Map<String, String> offline;

        @WireField(adapter = "com.stripe.proto.api.rest.Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
        public final OnlineTypeCustomerAcceptance online;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 0, tag = 1)
        public final String type;

        public MandateCustomerAcceptance() {
            this(null, null, null, null, null, 31, null);
        }

        public /* synthetic */ MandateCustomerAcceptance(String str, Long l, Map map, OnlineTypeCustomerAcceptance onlineTypeCustomerAcceptance, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : l, (i & 4) != 0 ? MapsKt.emptyMap() : map, (i & 8) != 0 ? null : onlineTypeCustomerAcceptance, (i & 16) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MandateCustomerAcceptance(String str, Long l, Map<String, String> offline, OnlineTypeCustomerAcceptance onlineTypeCustomerAcceptance, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(offline, "offline");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.type = str;
            this.accepted_at = l;
            this.online = onlineTypeCustomerAcceptance;
            this.offline = Internal.immutableCopyOf("offline", offline);
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.type = this.type;
            builder.accepted_at = this.accepted_at;
            builder.offline = this.offline;
            builder.online = this.online;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof MandateCustomerAcceptance)) {
                return false;
            }
            MandateCustomerAcceptance mandateCustomerAcceptance = (MandateCustomerAcceptance) other;
            return Intrinsics.areEqual(unknownFields(), mandateCustomerAcceptance.unknownFields()) && Intrinsics.areEqual(this.type, mandateCustomerAcceptance.type) && Intrinsics.areEqual(this.accepted_at, mandateCustomerAcceptance.accepted_at) && Intrinsics.areEqual(this.offline, mandateCustomerAcceptance.offline) && Intrinsics.areEqual(this.online, mandateCustomerAcceptance.online);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = unknownFields().hashCode() * 37;
            String str = this.type;
            int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
            Long l = this.accepted_at;
            int iHashCode3 = (((iHashCode2 + (l != null ? l.hashCode() : 0)) * 37) + this.offline.hashCode()) * 37;
            OnlineTypeCustomerAcceptance onlineTypeCustomerAcceptance = this.online;
            int iHashCode4 = iHashCode3 + (onlineTypeCustomerAcceptance != null ? onlineTypeCustomerAcceptance.hashCode() : 0);
            this.hashCode = iHashCode4;
            return iHashCode4;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (this.type != null) {
                arrayList.add("type=" + this.type);
            }
            if (this.accepted_at != null) {
                arrayList.add("accepted_at=" + this.accepted_at);
            }
            if (!this.offline.isEmpty()) {
                arrayList.add("offline=" + this.offline);
            }
            if (this.online != null) {
                arrayList.add("online=" + this.online);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "MandateCustomerAcceptance{", "}", 0, null, null, 56, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ MandateCustomerAcceptance copy$default(MandateCustomerAcceptance mandateCustomerAcceptance, String str, Long l, Map map, OnlineTypeCustomerAcceptance onlineTypeCustomerAcceptance, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = mandateCustomerAcceptance.type;
            }
            if ((i & 2) != 0) {
                l = mandateCustomerAcceptance.accepted_at;
            }
            if ((i & 4) != 0) {
                map = mandateCustomerAcceptance.offline;
            }
            if ((i & 8) != 0) {
                onlineTypeCustomerAcceptance = mandateCustomerAcceptance.online;
            }
            if ((i & 16) != 0) {
                byteString = mandateCustomerAcceptance.unknownFields();
            }
            ByteString byteString2 = byteString;
            Map map2 = map;
            return mandateCustomerAcceptance.copy(str, l, map2, onlineTypeCustomerAcceptance, byteString2);
        }

        public final MandateCustomerAcceptance copy(String type, Long accepted_at, Map<String, String> offline, OnlineTypeCustomerAcceptance online, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(offline, "offline");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new MandateCustomerAcceptance(type, accepted_at, offline, online, unknownFields);
        }

        /* JADX INFO: compiled from: Mandate.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\rJ\b\u0010\u000e\u001a\u00020\u0002H\u0016J\u001a\u0010\u0007\u001a\u00020\u00002\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\bJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\tR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u001e\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance;", "()V", "accepted_at", "", "Ljava/lang/Long;", "offline", "", "", "online", "Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;", "type", "(Ljava/lang/Long;)Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$Builder;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<MandateCustomerAcceptance, Builder> {
            public Long accepted_at;
            public Map<String, String> offline = MapsKt.emptyMap();
            public OnlineTypeCustomerAcceptance online;
            public String type;

            public final Builder type(String type) {
                this.type = type;
                return this;
            }

            public final Builder accepted_at(Long accepted_at) {
                this.accepted_at = accepted_at;
                return this;
            }

            public final Builder offline(Map<String, String> offline) {
                Intrinsics.checkNotNullParameter(offline, "offline");
                this.offline = offline;
                return this;
            }

            public final Builder online(OnlineTypeCustomerAcceptance online) {
                this.online = online;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public MandateCustomerAcceptance build() {
                return new MandateCustomerAcceptance(this.type, this.accepted_at, this.offline, this.online, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: Mandate.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ MandateCustomerAcceptance build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(MandateCustomerAcceptance.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<MandateCustomerAcceptance>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.Mandate$MandateCustomerAcceptance$Companion$ADAPTER$1

                /* JADX INFO: renamed from: offlineAdapter$delegate, reason: from kotlin metadata */
                private final Lazy offlineAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends String>>>() { // from class: com.stripe.proto.api.rest.Mandate$MandateCustomerAcceptance$Companion$ADAPTER$1$offlineAdapter$2
                    @Override // kotlin.jvm.functions.Function0
                    public final ProtoAdapter<Map<String, ? extends String>> invoke() {
                        return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.STRING);
                    }
                });

                private final ProtoAdapter<Map<String, String>> getOfflineAdapter() {
                    return (ProtoAdapter) this.offlineAdapter.getValue();
                }

                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(Mandate.MandateCustomerAcceptance value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.type != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.type);
                    }
                    if (value.accepted_at != null) {
                        size += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(2, value.accepted_at);
                    }
                    int iEncodedSizeWithTag = size + getOfflineAdapter().encodedSizeWithTag(3, value.offline);
                    return value.online != null ? iEncodedSizeWithTag + Mandate.MandateCustomerAcceptance.OnlineTypeCustomerAcceptance.ADAPTER.encodedSizeWithTag(4, value.online) : iEncodedSizeWithTag;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, Mandate.MandateCustomerAcceptance value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.type != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.type);
                    }
                    if (value.accepted_at != null) {
                        ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 2, value.accepted_at);
                    }
                    getOfflineAdapter().encodeWithTag(writer, 3, value.offline);
                    if (value.online != null) {
                        Mandate.MandateCustomerAcceptance.OnlineTypeCustomerAcceptance.ADAPTER.encodeWithTag(writer, 4, value.online);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, Mandate.MandateCustomerAcceptance value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.online != null) {
                        Mandate.MandateCustomerAcceptance.OnlineTypeCustomerAcceptance.ADAPTER.encodeWithTag(writer, 4, value.online);
                    }
                    getOfflineAdapter().encodeWithTag(writer, 3, value.offline);
                    if (value.accepted_at != null) {
                        ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 2, value.accepted_at);
                    }
                    if (value.type != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.type);
                    }
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public Mandate.MandateCustomerAcceptance decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = null;
                    Long lDecode = null;
                    Mandate.MandateCustomerAcceptance.OnlineTypeCustomerAcceptance onlineTypeCustomerAcceptanceDecode = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new Mandate.MandateCustomerAcceptance(strDecode, lDecode, linkedHashMap, onlineTypeCustomerAcceptanceDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                        } else if (iNextTag == 2) {
                            lDecode = ProtoAdapter.INT64_VALUE.decode(reader);
                        } else if (iNextTag == 3) {
                            linkedHashMap.putAll(getOfflineAdapter().decode(reader));
                        } else if (iNextTag == 4) {
                            onlineTypeCustomerAcceptanceDecode = Mandate.MandateCustomerAcceptance.OnlineTypeCustomerAcceptance.ADAPTER.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public Mandate.MandateCustomerAcceptance redact(Mandate.MandateCustomerAcceptance value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    String str = value.type;
                    String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                    Long l = value.accepted_at;
                    Long lRedact = l != null ? ProtoAdapter.INT64_VALUE.redact(l) : null;
                    Mandate.MandateCustomerAcceptance.OnlineTypeCustomerAcceptance onlineTypeCustomerAcceptance = value.online;
                    return Mandate.MandateCustomerAcceptance.copy$default(value, strRedact, lRedact, null, onlineTypeCustomerAcceptance != null ? Mandate.MandateCustomerAcceptance.OnlineTypeCustomerAcceptance.ADAPTER.redact(onlineTypeCustomerAcceptance) : null, ByteString.EMPTY, 4, null);
                }
            };
        }

        /* JADX INFO: compiled from: Mandate.kt */
        @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ(\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0004H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance$Builder;", "ip_address", "", "user_agent", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class OnlineTypeCustomerAcceptance extends Message<OnlineTypeCustomerAcceptance, Builder> {
            public static final ProtoAdapter<OnlineTypeCustomerAcceptance> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "ipAddress", schemaIndex = 0, tag = 1)
            public final String ip_address;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "userAgent", schemaIndex = 1, tag = 2)
            public final String user_agent;

            public OnlineTypeCustomerAcceptance() {
                this(null, null, null, 7, null);
            }

            public /* synthetic */ OnlineTypeCustomerAcceptance(String str, String str2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public OnlineTypeCustomerAcceptance(String str, String str2, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.ip_address = str;
                this.user_agent = str2;
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.ip_address = this.ip_address;
                builder.user_agent = this.user_agent;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof OnlineTypeCustomerAcceptance)) {
                    return false;
                }
                OnlineTypeCustomerAcceptance onlineTypeCustomerAcceptance = (OnlineTypeCustomerAcceptance) other;
                return Intrinsics.areEqual(unknownFields(), onlineTypeCustomerAcceptance.unknownFields()) && Intrinsics.areEqual(this.ip_address, onlineTypeCustomerAcceptance.ip_address) && Intrinsics.areEqual(this.user_agent, onlineTypeCustomerAcceptance.user_agent);
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = unknownFields().hashCode() * 37;
                String str = this.ip_address;
                int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
                String str2 = this.user_agent;
                int iHashCode3 = iHashCode2 + (str2 != null ? str2.hashCode() : 0);
                this.hashCode = iHashCode3;
                return iHashCode3;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                if (this.ip_address != null) {
                    arrayList.add("ip_address=" + this.ip_address);
                }
                if (this.user_agent != null) {
                    arrayList.add("user_agent=" + this.user_agent);
                }
                return CollectionsKt.joinToString$default(arrayList, ", ", "OnlineTypeCustomerAcceptance{", "}", 0, null, null, 56, null);
            }

            public static /* synthetic */ OnlineTypeCustomerAcceptance copy$default(OnlineTypeCustomerAcceptance onlineTypeCustomerAcceptance, String str, String str2, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = onlineTypeCustomerAcceptance.ip_address;
                }
                if ((i & 2) != 0) {
                    str2 = onlineTypeCustomerAcceptance.user_agent;
                }
                if ((i & 4) != 0) {
                    byteString = onlineTypeCustomerAcceptance.unknownFields();
                }
                return onlineTypeCustomerAcceptance.copy(str, str2, byteString);
            }

            public final OnlineTypeCustomerAcceptance copy(String ip_address, String user_agent, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new OnlineTypeCustomerAcceptance(ip_address, user_agent, unknownFields);
            }

            /* JADX INFO: compiled from: Mandate.kt */
            @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;", "()V", "ip_address", "", "user_agent", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<OnlineTypeCustomerAcceptance, Builder> {
                public String ip_address;
                public String user_agent;

                public final Builder ip_address(String ip_address) {
                    this.ip_address = ip_address;
                    return this;
                }

                public final Builder user_agent(String user_agent) {
                    this.user_agent = user_agent;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public OnlineTypeCustomerAcceptance build() {
                    return new OnlineTypeCustomerAcceptance(this.ip_address, this.user_agent, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: Mandate.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ OnlineTypeCustomerAcceptance build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(OnlineTypeCustomerAcceptance.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<OnlineTypeCustomerAcceptance>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(Mandate.MandateCustomerAcceptance.OnlineTypeCustomerAcceptance value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        if (value.ip_address != null) {
                            size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.ip_address);
                        }
                        return value.user_agent != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.user_agent) : size;
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, Mandate.MandateCustomerAcceptance.OnlineTypeCustomerAcceptance value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (value.ip_address != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.ip_address);
                        }
                        if (value.user_agent != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.user_agent);
                        }
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, Mandate.MandateCustomerAcceptance.OnlineTypeCustomerAcceptance value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        if (value.user_agent != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.user_agent);
                        }
                        if (value.ip_address != null) {
                            ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.ip_address);
                        }
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public Mandate.MandateCustomerAcceptance.OnlineTypeCustomerAcceptance redact(Mandate.MandateCustomerAcceptance.OnlineTypeCustomerAcceptance value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        String str = value.ip_address;
                        String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                        String str2 = value.user_agent;
                        return value.copy(strRedact, str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null, ByteString.EMPTY);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public Mandate.MandateCustomerAcceptance.OnlineTypeCustomerAcceptance decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        long jBeginMessage = reader.beginMessage();
                        String strDecode = null;
                        String strDecode2 = null;
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new Mandate.MandateCustomerAcceptance.OnlineTypeCustomerAcceptance(strDecode, strDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                            if (iNextTag == 1) {
                                strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                            } else if (iNextTag == 2) {
                                strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }
                };
            }
        }
    }
}
