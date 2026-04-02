package com.stripe.proto.api.rest;

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
import com.stripe.proto.api.rest.DiscoverLocationsResponse;
import com.stripe.proto.model.merchant.ApiLocationPb;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: DiscoverLocationsResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0013\u0014\u0015B\u001f\u0012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ \u0010\t\u001a\u00020\u00002\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/api/rest/DiscoverLocationsResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$Builder;", "readers", "", "Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;", "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "ReaderLocationPair", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DiscoverLocationsResponse extends Message<DiscoverLocationsResponse, Builder> {
    public static final ProtoAdapter<DiscoverLocationsResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.api.rest.DiscoverLocationsResponse$ReaderLocationPair#ADAPTER", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 1)
    public final List<ReaderLocationPair> readers;

    /* JADX WARN: Multi-variable type inference failed */
    public DiscoverLocationsResponse() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ DiscoverLocationsResponse(List list, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverLocationsResponse(List<ReaderLocationPair> readers, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(readers, "readers");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.readers = Internal.immutableCopyOf("readers", readers);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.readers = this.readers;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof DiscoverLocationsResponse)) {
            return false;
        }
        DiscoverLocationsResponse discoverLocationsResponse = (DiscoverLocationsResponse) other;
        return Intrinsics.areEqual(unknownFields(), discoverLocationsResponse.unknownFields()) && Intrinsics.areEqual(this.readers, discoverLocationsResponse.readers);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (unknownFields().hashCode() * 37) + this.readers.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (!this.readers.isEmpty()) {
            arrayList.add("readers=" + this.readers);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "DiscoverLocationsResponse{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DiscoverLocationsResponse copy$default(DiscoverLocationsResponse discoverLocationsResponse, List list, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            list = discoverLocationsResponse.readers;
        }
        if ((i & 2) != 0) {
            byteString = discoverLocationsResponse.unknownFields();
        }
        return discoverLocationsResponse.copy(list, byteString);
    }

    public final DiscoverLocationsResponse copy(List<ReaderLocationPair> readers, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(readers, "readers");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new DiscoverLocationsResponse(readers, unknownFields);
    }

    /* JADX INFO: compiled from: DiscoverLocationsResponse.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005R\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/DiscoverLocationsResponse;", "()V", "readers", "", "Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<DiscoverLocationsResponse, Builder> {
        public List<ReaderLocationPair> readers = CollectionsKt.emptyList();

        public final Builder readers(List<ReaderLocationPair> readers) {
            Intrinsics.checkNotNullParameter(readers, "readers");
            Internal.checkElementsNotNull(readers);
            this.readers = readers;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public DiscoverLocationsResponse build() {
            return new DiscoverLocationsResponse(this.readers, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: DiscoverLocationsResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/DiscoverLocationsResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ DiscoverLocationsResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DiscoverLocationsResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<DiscoverLocationsResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.DiscoverLocationsResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(DiscoverLocationsResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + DiscoverLocationsResponse.ReaderLocationPair.ADAPTER.asRepeated().encodedSizeWithTag(1, value.readers);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, DiscoverLocationsResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                DiscoverLocationsResponse.ReaderLocationPair.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.readers);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, DiscoverLocationsResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                DiscoverLocationsResponse.ReaderLocationPair.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.readers);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public DiscoverLocationsResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new DiscoverLocationsResponse(arrayList, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        arrayList.add(DiscoverLocationsResponse.ReaderLocationPair.ADAPTER.decode(reader));
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public DiscoverLocationsResponse redact(DiscoverLocationsResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.copy(Internal.m361redactElements(value.readers, DiscoverLocationsResponse.ReaderLocationPair.ADAPTER), ByteString.EMPTY);
            }
        };
    }

    /* JADX INFO: compiled from: DiscoverLocationsResponse.kt */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B-\u0012\u0010\b\u0002\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ.\u0010\u000b\u001a\u00020\u00002\u0010\b\u0002\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0005H\u0016R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair$Builder;", "serial_numbers", "", "", FirebaseAnalytics.Param.LOCATION, "Lcom/stripe/proto/model/merchant/ApiLocationPb;", "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Lcom/stripe/proto/model/merchant/ApiLocationPb;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ReaderLocationPair extends Message<ReaderLocationPair, Builder> {
        public static final ProtoAdapter<ReaderLocationPair> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.proto.model.merchant.ApiLocationPb#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final ApiLocationPb location;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "serialNumbers", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 1)
        public final List<String> serial_numbers;

        public ReaderLocationPair() {
            this(null, null, null, 7, null);
        }

        public /* synthetic */ ReaderLocationPair(List list, ApiLocationPb apiLocationPb, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? null : apiLocationPb, (i & 4) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ReaderLocationPair(List<String> serial_numbers, ApiLocationPb apiLocationPb, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(serial_numbers, "serial_numbers");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.location = apiLocationPb;
            this.serial_numbers = Internal.immutableCopyOf("serial_numbers", serial_numbers);
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.serial_numbers = this.serial_numbers;
            builder.location = this.location;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof ReaderLocationPair)) {
                return false;
            }
            ReaderLocationPair readerLocationPair = (ReaderLocationPair) other;
            return Intrinsics.areEqual(unknownFields(), readerLocationPair.unknownFields()) && Intrinsics.areEqual(this.serial_numbers, readerLocationPair.serial_numbers) && Intrinsics.areEqual(this.location, readerLocationPair.location);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = ((unknownFields().hashCode() * 37) + this.serial_numbers.hashCode()) * 37;
            ApiLocationPb apiLocationPb = this.location;
            int iHashCode2 = iHashCode + (apiLocationPb != null ? apiLocationPb.hashCode() : 0);
            this.hashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (!this.serial_numbers.isEmpty()) {
                arrayList.add("serial_numbers=" + this.serial_numbers);
            }
            if (this.location != null) {
                arrayList.add("location=" + this.location);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "ReaderLocationPair{", "}", 0, null, null, 56, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ ReaderLocationPair copy$default(ReaderLocationPair readerLocationPair, List list, ApiLocationPb apiLocationPb, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                list = readerLocationPair.serial_numbers;
            }
            if ((i & 2) != 0) {
                apiLocationPb = readerLocationPair.location;
            }
            if ((i & 4) != 0) {
                byteString = readerLocationPair.unknownFields();
            }
            return readerLocationPair.copy(list, apiLocationPb, byteString);
        }

        public final ReaderLocationPair copy(List<String> serial_numbers, ApiLocationPb location, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(serial_numbers, "serial_numbers");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new ReaderLocationPair(serial_numbers, location, unknownFields);
        }

        /* JADX INFO: compiled from: DiscoverLocationsResponse.kt */
        @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0016\u0010\u0006\u001a\u00020\u00002\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;", "()V", FirebaseAnalytics.Param.LOCATION, "Lcom/stripe/proto/model/merchant/ApiLocationPb;", "serial_numbers", "", "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<ReaderLocationPair, Builder> {
            public ApiLocationPb location;
            public List<String> serial_numbers = CollectionsKt.emptyList();

            public final Builder serial_numbers(List<String> serial_numbers) {
                Intrinsics.checkNotNullParameter(serial_numbers, "serial_numbers");
                Internal.checkElementsNotNull(serial_numbers);
                this.serial_numbers = serial_numbers;
                return this;
            }

            public final Builder location(ApiLocationPb location) {
                this.location = location;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public ReaderLocationPair build() {
                return new ReaderLocationPair(this.serial_numbers, this.location, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: DiscoverLocationsResponse.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ ReaderLocationPair build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ReaderLocationPair.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<ReaderLocationPair>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.DiscoverLocationsResponse$ReaderLocationPair$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(DiscoverLocationsResponse.ReaderLocationPair value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size() + ProtoAdapter.STRING_VALUE.asRepeated().encodedSizeWithTag(1, value.serial_numbers);
                    return value.location != null ? size + ApiLocationPb.ADAPTER.encodedSizeWithTag(2, value.location) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, DiscoverLocationsResponse.ReaderLocationPair value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    ProtoAdapter.STRING_VALUE.asRepeated().encodeWithTag(writer, 1, value.serial_numbers);
                    if (value.location != null) {
                        ApiLocationPb.ADAPTER.encodeWithTag(writer, 2, value.location);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, DiscoverLocationsResponse.ReaderLocationPair value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.location != null) {
                        ApiLocationPb.ADAPTER.encodeWithTag(writer, 2, value.location);
                    }
                    ProtoAdapter.STRING_VALUE.asRepeated().encodeWithTag(writer, 1, value.serial_numbers);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public DiscoverLocationsResponse.ReaderLocationPair decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    ArrayList arrayList = new ArrayList();
                    long jBeginMessage = reader.beginMessage();
                    ApiLocationPb apiLocationPbDecode = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new DiscoverLocationsResponse.ReaderLocationPair(arrayList, apiLocationPbDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            arrayList.add(ProtoAdapter.STRING_VALUE.decode(reader));
                        } else if (iNextTag == 2) {
                            apiLocationPbDecode = ApiLocationPb.ADAPTER.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public DiscoverLocationsResponse.ReaderLocationPair redact(DiscoverLocationsResponse.ReaderLocationPair value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    List<String> listM361redactElements = Internal.m361redactElements(value.serial_numbers, ProtoAdapter.STRING_VALUE);
                    ApiLocationPb apiLocationPb = value.location;
                    return value.copy(listM361redactElements, apiLocationPb != null ? ApiLocationPb.ADAPTER.redact(apiLocationPb) : null, ByteString.EMPTY);
                }
            };
        }
    }
}
