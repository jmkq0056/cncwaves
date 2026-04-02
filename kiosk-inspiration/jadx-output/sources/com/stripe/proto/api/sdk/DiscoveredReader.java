package com.stripe.proto.api.sdk;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.stripe.proto.model.rest.ExpandedLocationReader;
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

/* JADX INFO: compiled from: DiscoveredReader.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/api/sdk/DiscoveredReader;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/DiscoveredReader$Builder;", "expandedLocationReader", "Lcom/stripe/proto/model/rest/ExpandedLocationReader;", "readerInfo", "Lcom/stripe/proto/api/sdk/ReaderInfo;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/rest/ExpandedLocationReader;Lcom/stripe/proto/api/sdk/ReaderInfo;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DiscoveredReader extends Message<DiscoveredReader, Builder> {
    public static final ProtoAdapter<DiscoveredReader> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.rest.ExpandedLocationReader#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final ExpandedLocationReader expandedLocationReader;

    @WireField(adapter = "com.stripe.proto.api.sdk.ReaderInfo#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final ReaderInfo readerInfo;

    public DiscoveredReader() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ DiscoveredReader(ExpandedLocationReader expandedLocationReader, ReaderInfo readerInfo, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : expandedLocationReader, (i & 2) != 0 ? null : readerInfo, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoveredReader(ExpandedLocationReader expandedLocationReader, ReaderInfo readerInfo, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.expandedLocationReader = expandedLocationReader;
        this.readerInfo = readerInfo;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.expandedLocationReader = this.expandedLocationReader;
        builder.readerInfo = this.readerInfo;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof DiscoveredReader)) {
            return false;
        }
        DiscoveredReader discoveredReader = (DiscoveredReader) other;
        return Intrinsics.areEqual(unknownFields(), discoveredReader.unknownFields()) && Intrinsics.areEqual(this.expandedLocationReader, discoveredReader.expandedLocationReader) && Intrinsics.areEqual(this.readerInfo, discoveredReader.readerInfo);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        ExpandedLocationReader expandedLocationReader = this.expandedLocationReader;
        int iHashCode2 = (iHashCode + (expandedLocationReader != null ? expandedLocationReader.hashCode() : 0)) * 37;
        ReaderInfo readerInfo = this.readerInfo;
        int iHashCode3 = iHashCode2 + (readerInfo != null ? readerInfo.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.expandedLocationReader != null) {
            arrayList.add("expandedLocationReader=" + this.expandedLocationReader);
        }
        if (this.readerInfo != null) {
            arrayList.add("readerInfo=" + this.readerInfo);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "DiscoveredReader{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ DiscoveredReader copy$default(DiscoveredReader discoveredReader, ExpandedLocationReader expandedLocationReader, ReaderInfo readerInfo, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            expandedLocationReader = discoveredReader.expandedLocationReader;
        }
        if ((i & 2) != 0) {
            readerInfo = discoveredReader.readerInfo;
        }
        if ((i & 4) != 0) {
            byteString = discoveredReader.unknownFields();
        }
        return discoveredReader.copy(expandedLocationReader, readerInfo, byteString);
    }

    public final DiscoveredReader copy(ExpandedLocationReader expandedLocationReader, ReaderInfo readerInfo, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new DiscoveredReader(expandedLocationReader, readerInfo, unknownFields);
    }

    /* JADX INFO: compiled from: DiscoveredReader.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/sdk/DiscoveredReader$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/DiscoveredReader;", "()V", "expandedLocationReader", "Lcom/stripe/proto/model/rest/ExpandedLocationReader;", "readerInfo", "Lcom/stripe/proto/api/sdk/ReaderInfo;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<DiscoveredReader, Builder> {
        public ExpandedLocationReader expandedLocationReader;
        public ReaderInfo readerInfo;

        public final Builder expandedLocationReader(ExpandedLocationReader expandedLocationReader) {
            this.expandedLocationReader = expandedLocationReader;
            return this;
        }

        public final Builder readerInfo(ReaderInfo readerInfo) {
            this.readerInfo = readerInfo;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public DiscoveredReader build() {
            return new DiscoveredReader(this.expandedLocationReader, this.readerInfo, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: DiscoveredReader.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/DiscoveredReader$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/DiscoveredReader;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/DiscoveredReader$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ DiscoveredReader build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DiscoveredReader.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<DiscoveredReader>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.DiscoveredReader$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(DiscoveredReader value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.expandedLocationReader != null) {
                    size += ExpandedLocationReader.ADAPTER.encodedSizeWithTag(1, value.expandedLocationReader);
                }
                return value.readerInfo != null ? size + ReaderInfo.ADAPTER.encodedSizeWithTag(2, value.readerInfo) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, DiscoveredReader value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.expandedLocationReader != null) {
                    ExpandedLocationReader.ADAPTER.encodeWithTag(writer, 1, value.expandedLocationReader);
                }
                if (value.readerInfo != null) {
                    ReaderInfo.ADAPTER.encodeWithTag(writer, 2, value.readerInfo);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, DiscoveredReader value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.readerInfo != null) {
                    ReaderInfo.ADAPTER.encodeWithTag(writer, 2, value.readerInfo);
                }
                if (value.expandedLocationReader != null) {
                    ExpandedLocationReader.ADAPTER.encodeWithTag(writer, 1, value.expandedLocationReader);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public DiscoveredReader redact(DiscoveredReader value) {
                Intrinsics.checkNotNullParameter(value, "value");
                ExpandedLocationReader expandedLocationReader = value.expandedLocationReader;
                ExpandedLocationReader expandedLocationReaderRedact = expandedLocationReader != null ? ExpandedLocationReader.ADAPTER.redact(expandedLocationReader) : null;
                ReaderInfo readerInfo = value.readerInfo;
                return value.copy(expandedLocationReaderRedact, readerInfo != null ? ReaderInfo.ADAPTER.redact(readerInfo) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public DiscoveredReader decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                ExpandedLocationReader expandedLocationReaderDecode = null;
                ReaderInfo readerInfoDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new DiscoveredReader(expandedLocationReaderDecode, readerInfoDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        expandedLocationReaderDecode = ExpandedLocationReader.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        readerInfoDecode = ReaderInfo.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
