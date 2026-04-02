package com.stripe.cots.aidlservice;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
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

/* JADX INFO: compiled from: CotsKillAidlServerRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsKillAidlServerRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/cots/aidlservice/CotsKillAidlServerRequest$Builder;", "delayMs", "", "unknownFields", "Lokio/ByteString;", "(JLokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CotsKillAidlServerRequest extends Message<CotsKillAidlServerRequest, Builder> {
    public static final ProtoAdapter<CotsKillAidlServerRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT64", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final long delayMs;

    public CotsKillAidlServerRequest() {
        this(0L, null, 3, null);
    }

    public /* synthetic */ CotsKillAidlServerRequest(long j, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0L : j, (i & 2) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CotsKillAidlServerRequest(long j, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.delayMs = j;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.delayMs = this.delayMs;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CotsKillAidlServerRequest)) {
            return false;
        }
        CotsKillAidlServerRequest cotsKillAidlServerRequest = (CotsKillAidlServerRequest) other;
        return Intrinsics.areEqual(unknownFields(), cotsKillAidlServerRequest.unknownFields()) && this.delayMs == cotsKillAidlServerRequest.delayMs;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (unknownFields().hashCode() * 37) + Long.hashCode(this.delayMs);
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("delayMs=" + this.delayMs);
        return CollectionsKt.joinToString$default(arrayList, ", ", "CotsKillAidlServerRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CotsKillAidlServerRequest copy$default(CotsKillAidlServerRequest cotsKillAidlServerRequest, long j, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            j = cotsKillAidlServerRequest.delayMs;
        }
        if ((i & 2) != 0) {
            byteString = cotsKillAidlServerRequest.unknownFields();
        }
        return cotsKillAidlServerRequest.copy(j, byteString);
    }

    public final CotsKillAidlServerRequest copy(long delayMs, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CotsKillAidlServerRequest(delayMs, unknownFields);
    }

    /* JADX INFO: compiled from: CotsKillAidlServerRequest.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsKillAidlServerRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/cots/aidlservice/CotsKillAidlServerRequest;", "()V", "delayMs", "", "build", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CotsKillAidlServerRequest, Builder> {
        public long delayMs;

        public final Builder delayMs(long delayMs) {
            this.delayMs = delayMs;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CotsKillAidlServerRequest build() {
            return new CotsKillAidlServerRequest(this.delayMs, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CotsKillAidlServerRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsKillAidlServerRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/cots/aidlservice/CotsKillAidlServerRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/cots/aidlservice/CotsKillAidlServerRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CotsKillAidlServerRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CotsKillAidlServerRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CotsKillAidlServerRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.cots.aidlservice.CotsKillAidlServerRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CotsKillAidlServerRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                return value.delayMs != 0 ? size + ProtoAdapter.UINT64.encodedSizeWithTag(1, Long.valueOf(value.delayMs)) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CotsKillAidlServerRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.delayMs != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 1, Long.valueOf(value.delayMs));
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CotsKillAidlServerRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.delayMs != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 1, Long.valueOf(value.delayMs));
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CotsKillAidlServerRequest redact(CotsKillAidlServerRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return CotsKillAidlServerRequest.copy$default(value, 0L, ByteString.EMPTY, 1, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CotsKillAidlServerRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                long jLongValue = 0;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CotsKillAidlServerRequest(jLongValue, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        jLongValue = ProtoAdapter.UINT64.decode(reader).longValue();
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
