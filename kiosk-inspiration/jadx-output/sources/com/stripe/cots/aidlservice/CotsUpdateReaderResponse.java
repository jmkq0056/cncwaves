package com.stripe.cots.aidlservice;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.stripe.jvmcore.storage.SharedPrefs;
import com.stripe.proto.model.config.ReaderFeatureFlags;
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

/* JADX INFO: compiled from: CotsUpdateReaderResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001c\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse$Builder;", SharedPrefs.READER_FEATURE_FLAGS, "Lcom/stripe/proto/model/config/ReaderFeatureFlags;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/config/ReaderFeatureFlags;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CotsUpdateReaderResponse extends Message<CotsUpdateReaderResponse, Builder> {
    public static final ProtoAdapter<CotsUpdateReaderResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.config.ReaderFeatureFlags#ADAPTER", jsonName = "readerFeatureFlags", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final ReaderFeatureFlags reader_feature_flags;

    /* JADX WARN: Multi-variable type inference failed */
    public CotsUpdateReaderResponse() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ CotsUpdateReaderResponse(ReaderFeatureFlags readerFeatureFlags, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : readerFeatureFlags, (i & 2) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CotsUpdateReaderResponse(ReaderFeatureFlags readerFeatureFlags, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.reader_feature_flags = readerFeatureFlags;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.reader_feature_flags = this.reader_feature_flags;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CotsUpdateReaderResponse)) {
            return false;
        }
        CotsUpdateReaderResponse cotsUpdateReaderResponse = (CotsUpdateReaderResponse) other;
        return Intrinsics.areEqual(unknownFields(), cotsUpdateReaderResponse.unknownFields()) && Intrinsics.areEqual(this.reader_feature_flags, cotsUpdateReaderResponse.reader_feature_flags);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        ReaderFeatureFlags readerFeatureFlags = this.reader_feature_flags;
        int iHashCode2 = iHashCode + (readerFeatureFlags != null ? readerFeatureFlags.hashCode() : 0);
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.reader_feature_flags != null) {
            arrayList.add("reader_feature_flags=" + this.reader_feature_flags);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "CotsUpdateReaderResponse{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CotsUpdateReaderResponse copy$default(CotsUpdateReaderResponse cotsUpdateReaderResponse, ReaderFeatureFlags readerFeatureFlags, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            readerFeatureFlags = cotsUpdateReaderResponse.reader_feature_flags;
        }
        if ((i & 2) != 0) {
            byteString = cotsUpdateReaderResponse.unknownFields();
        }
        return cotsUpdateReaderResponse.copy(readerFeatureFlags, byteString);
    }

    public final CotsUpdateReaderResponse copy(ReaderFeatureFlags reader_feature_flags, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CotsUpdateReaderResponse(reader_feature_flags, unknownFields);
    }

    /* JADX INFO: compiled from: CotsUpdateReaderResponse.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;", "()V", SharedPrefs.READER_FEATURE_FLAGS, "Lcom/stripe/proto/model/config/ReaderFeatureFlags;", "build", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CotsUpdateReaderResponse, Builder> {
        public ReaderFeatureFlags reader_feature_flags;

        public final Builder reader_feature_flags(ReaderFeatureFlags reader_feature_flags) {
            this.reader_feature_flags = reader_feature_flags;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CotsUpdateReaderResponse build() {
            return new CotsUpdateReaderResponse(this.reader_feature_flags, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CotsUpdateReaderResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CotsUpdateReaderResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CotsUpdateReaderResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CotsUpdateReaderResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.cots.aidlservice.CotsUpdateReaderResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CotsUpdateReaderResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                return value.reader_feature_flags != null ? size + ReaderFeatureFlags.ADAPTER.encodedSizeWithTag(1, value.reader_feature_flags) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CotsUpdateReaderResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.reader_feature_flags != null) {
                    ReaderFeatureFlags.ADAPTER.encodeWithTag(writer, 1, value.reader_feature_flags);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CotsUpdateReaderResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.reader_feature_flags != null) {
                    ReaderFeatureFlags.ADAPTER.encodeWithTag(writer, 1, value.reader_feature_flags);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CotsUpdateReaderResponse redact(CotsUpdateReaderResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                ReaderFeatureFlags readerFeatureFlags = value.reader_feature_flags;
                return value.copy(readerFeatureFlags != null ? ReaderFeatureFlags.ADAPTER.redact(readerFeatureFlags) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CotsUpdateReaderResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                ReaderFeatureFlags readerFeatureFlagsDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CotsUpdateReaderResponse(readerFeatureFlagsDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        readerFeatureFlagsDecode = ReaderFeatureFlags.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
