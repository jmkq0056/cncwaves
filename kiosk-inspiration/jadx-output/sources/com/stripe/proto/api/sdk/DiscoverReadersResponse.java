package com.stripe.proto.api.sdk;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.model.rest.Reader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: DiscoverReadersResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00182\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0017\u0018B/\u0012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ0\u0010\r\u001a\u00020\u00002\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u00042\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\b\u0010\u0015\u001a\u00020\u0016H\u0016R\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u000b\u0010\f¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/api/sdk/DiscoverReadersResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/DiscoverReadersResponse$Builder;", "readers", "", "Lcom/stripe/proto/model/rest/Reader;", "discoveredReaders", "Lcom/stripe/proto/api/sdk/DiscoveredReader;", "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Ljava/util/List;Lokio/ByteString;)V", "getReaders$annotations", "()V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DiscoverReadersResponse extends Message<DiscoverReadersResponse, Builder> {
    public static final ProtoAdapter<DiscoverReadersResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.api.sdk.DiscoveredReader#ADAPTER", label = WireField.Label.REPEATED, schemaIndex = 1, tag = 2)
    public final List<DiscoveredReader> discoveredReaders;

    @WireField(adapter = "com.stripe.proto.model.rest.Reader#ADAPTER", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 1)
    public final List<Reader> readers;

    public DiscoverReadersResponse() {
        this(null, null, null, 7, null);
    }

    @Deprecated(message = "readers is deprecated")
    public static /* synthetic */ void getReaders$annotations() {
    }

    public /* synthetic */ DiscoverReadersResponse(List list, List list2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? CollectionsKt.emptyList() : list2, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverReadersResponse(List<Reader> readers, List<DiscoveredReader> discoveredReaders, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(readers, "readers");
        Intrinsics.checkNotNullParameter(discoveredReaders, "discoveredReaders");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.readers = Internal.immutableCopyOf("readers", readers);
        this.discoveredReaders = Internal.immutableCopyOf("discoveredReaders", discoveredReaders);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.readers = this.readers;
        builder.discoveredReaders = this.discoveredReaders;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof DiscoverReadersResponse)) {
            return false;
        }
        DiscoverReadersResponse discoverReadersResponse = (DiscoverReadersResponse) other;
        return Intrinsics.areEqual(unknownFields(), discoverReadersResponse.unknownFields()) && Intrinsics.areEqual(this.readers, discoverReadersResponse.readers) && Intrinsics.areEqual(this.discoveredReaders, discoverReadersResponse.discoveredReaders);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((unknownFields().hashCode() * 37) + this.readers.hashCode()) * 37) + this.discoveredReaders.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (!this.readers.isEmpty()) {
            arrayList.add("readers=" + this.readers);
        }
        if (!this.discoveredReaders.isEmpty()) {
            arrayList.add("discoveredReaders=" + this.discoveredReaders);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "DiscoverReadersResponse{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DiscoverReadersResponse copy$default(DiscoverReadersResponse discoverReadersResponse, List list, List list2, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            list = discoverReadersResponse.readers;
        }
        if ((i & 2) != 0) {
            list2 = discoverReadersResponse.discoveredReaders;
        }
        if ((i & 4) != 0) {
            byteString = discoverReadersResponse.unknownFields();
        }
        return discoverReadersResponse.copy(list, list2, byteString);
    }

    public final DiscoverReadersResponse copy(List<Reader> readers, List<DiscoveredReader> discoveredReaders, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(readers, "readers");
        Intrinsics.checkNotNullParameter(discoveredReaders, "discoveredReaders");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new DiscoverReadersResponse(readers, discoveredReaders, unknownFields);
    }

    /* JADX INFO: compiled from: DiscoverReadersResponse.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0016\u0010\u0007\u001a\u00020\u00002\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0005H\u0007R\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/api/sdk/DiscoverReadersResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/DiscoverReadersResponse;", "()V", "discoveredReaders", "", "Lcom/stripe/proto/api/sdk/DiscoveredReader;", "readers", "Lcom/stripe/proto/model/rest/Reader;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<DiscoverReadersResponse, Builder> {
        public List<Reader> readers = CollectionsKt.emptyList();
        public List<DiscoveredReader> discoveredReaders = CollectionsKt.emptyList();

        @Deprecated(message = "readers is deprecated")
        public final Builder readers(List<Reader> readers) {
            Intrinsics.checkNotNullParameter(readers, "readers");
            Internal.checkElementsNotNull(readers);
            this.readers = readers;
            return this;
        }

        public final Builder discoveredReaders(List<DiscoveredReader> discoveredReaders) {
            Intrinsics.checkNotNullParameter(discoveredReaders, "discoveredReaders");
            Internal.checkElementsNotNull(discoveredReaders);
            this.discoveredReaders = discoveredReaders;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public DiscoverReadersResponse build() {
            return new DiscoverReadersResponse(this.readers, this.discoveredReaders, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: DiscoverReadersResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/DiscoverReadersResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/DiscoverReadersResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/DiscoverReadersResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ DiscoverReadersResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DiscoverReadersResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<DiscoverReadersResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.DiscoverReadersResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(DiscoverReadersResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + Reader.ADAPTER.asRepeated().encodedSizeWithTag(1, value.readers) + DiscoveredReader.ADAPTER.asRepeated().encodedSizeWithTag(2, value.discoveredReaders);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, DiscoverReadersResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                Reader.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.readers);
                DiscoveredReader.ADAPTER.asRepeated().encodeWithTag(writer, 2, value.discoveredReaders);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, DiscoverReadersResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                DiscoveredReader.ADAPTER.asRepeated().encodeWithTag(writer, 2, value.discoveredReaders);
                Reader.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.readers);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public DiscoverReadersResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new DiscoverReadersResponse(arrayList, arrayList2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        arrayList.add(Reader.ADAPTER.decode(reader));
                    } else if (iNextTag == 2) {
                        arrayList2.add(DiscoveredReader.ADAPTER.decode(reader));
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public DiscoverReadersResponse redact(DiscoverReadersResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.copy(Internal.m361redactElements(value.readers, Reader.ADAPTER), Internal.m361redactElements(value.discoveredReaders, DiscoveredReader.ADAPTER), ByteString.EMPTY);
            }
        };
    }
}
