package com.stripe.proto.model.common;

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

/* JADX INFO: compiled from: IntervalPb.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ(\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/model/common/IntervalPb;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/common/IntervalPb$Builder;", "start_time", "Lcom/stripe/proto/model/common/InstantPb;", "end_time", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/common/InstantPb;Lcom/stripe/proto/model/common/InstantPb;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class IntervalPb extends Message<IntervalPb, Builder> {
    public static final ProtoAdapter<IntervalPb> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.common.InstantPb#ADAPTER", jsonName = "endTime", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final InstantPb end_time;

    @WireField(adapter = "com.stripe.proto.model.common.InstantPb#ADAPTER", jsonName = "startTime", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final InstantPb start_time;

    public IntervalPb() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ IntervalPb(InstantPb instantPb, InstantPb instantPb2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : instantPb, (i & 2) != 0 ? null : instantPb2, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IntervalPb(InstantPb instantPb, InstantPb instantPb2, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.start_time = instantPb;
        this.end_time = instantPb2;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.start_time = this.start_time;
        builder.end_time = this.end_time;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof IntervalPb)) {
            return false;
        }
        IntervalPb intervalPb = (IntervalPb) other;
        return Intrinsics.areEqual(unknownFields(), intervalPb.unknownFields()) && Intrinsics.areEqual(this.start_time, intervalPb.start_time) && Intrinsics.areEqual(this.end_time, intervalPb.end_time);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        InstantPb instantPb = this.start_time;
        int iHashCode2 = (iHashCode + (instantPb != null ? instantPb.hashCode() : 0)) * 37;
        InstantPb instantPb2 = this.end_time;
        int iHashCode3 = iHashCode2 + (instantPb2 != null ? instantPb2.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.start_time != null) {
            arrayList.add("start_time=" + this.start_time);
        }
        if (this.end_time != null) {
            arrayList.add("end_time=" + this.end_time);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "IntervalPb{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ IntervalPb copy$default(IntervalPb intervalPb, InstantPb instantPb, InstantPb instantPb2, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            instantPb = intervalPb.start_time;
        }
        if ((i & 2) != 0) {
            instantPb2 = intervalPb.end_time;
        }
        if ((i & 4) != 0) {
            byteString = intervalPb.unknownFields();
        }
        return intervalPb.copy(instantPb, instantPb2, byteString);
    }

    public final IntervalPb copy(InstantPb start_time, InstantPb end_time, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new IntervalPb(start_time, end_time, unknownFields);
    }

    /* JADX INFO: compiled from: IntervalPb.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/proto/model/common/IntervalPb$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/common/IntervalPb;", "()V", "end_time", "Lcom/stripe/proto/model/common/InstantPb;", "start_time", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<IntervalPb, Builder> {
        public InstantPb end_time;
        public InstantPb start_time;

        public final Builder start_time(InstantPb start_time) {
            this.start_time = start_time;
            return this;
        }

        public final Builder end_time(InstantPb end_time) {
            this.end_time = end_time;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public IntervalPb build() {
            return new IntervalPb(this.start_time, this.end_time, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: IntervalPb.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/common/IntervalPb$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/IntervalPb;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/common/IntervalPb$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ IntervalPb build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(IntervalPb.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<IntervalPb>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.common.IntervalPb$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(IntervalPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.start_time != null) {
                    size += InstantPb.ADAPTER.encodedSizeWithTag(1, value.start_time);
                }
                return value.end_time != null ? size + InstantPb.ADAPTER.encodedSizeWithTag(2, value.end_time) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, IntervalPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.start_time != null) {
                    InstantPb.ADAPTER.encodeWithTag(writer, 1, value.start_time);
                }
                if (value.end_time != null) {
                    InstantPb.ADAPTER.encodeWithTag(writer, 2, value.end_time);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, IntervalPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.end_time != null) {
                    InstantPb.ADAPTER.encodeWithTag(writer, 2, value.end_time);
                }
                if (value.start_time != null) {
                    InstantPb.ADAPTER.encodeWithTag(writer, 1, value.start_time);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public IntervalPb redact(IntervalPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                InstantPb instantPb = value.start_time;
                InstantPb instantPbRedact = instantPb != null ? InstantPb.ADAPTER.redact(instantPb) : null;
                InstantPb instantPb2 = value.end_time;
                return value.copy(instantPbRedact, instantPb2 != null ? InstantPb.ADAPTER.redact(instantPb2) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public IntervalPb decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                InstantPb instantPbDecode = null;
                InstantPb instantPbDecode2 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new IntervalPb(instantPbDecode, instantPbDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        instantPbDecode = InstantPb.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        instantPbDecode2 = InstantPb.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
