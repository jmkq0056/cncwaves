package com.stripe.proto.terminal.clientlogger.pub.message.health.domains.passthrough;

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

/* JADX INFO: compiled from: PassthroughDomain.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain$Builder;", "discrete", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/DiscreteScope;", "stage", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/DiscreteScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PassthroughDomain extends Message<PassthroughDomain, Builder> {
    public static final ProtoAdapter<PassthroughDomain> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.passthrough.DiscreteScope#ADAPTER", oneofName = "scope", schemaIndex = 0, tag = 1)
    public final DiscreteScope discrete;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.passthrough.StageScope#ADAPTER", oneofName = "scope", schemaIndex = 1, tag = 2)
    public final StageScope stage;

    public PassthroughDomain() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ PassthroughDomain(DiscreteScope discreteScope, StageScope stageScope, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : discreteScope, (i & 2) != 0 ? null : stageScope, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PassthroughDomain(DiscreteScope discreteScope, StageScope stageScope, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.discrete = discreteScope;
        this.stage = stageScope;
        if (Internal.countNonNull(discreteScope, stageScope) > 1) {
            throw new IllegalArgumentException("At most one of discrete, stage may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.discrete = this.discrete;
        builder.stage = this.stage;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof PassthroughDomain)) {
            return false;
        }
        PassthroughDomain passthroughDomain = (PassthroughDomain) other;
        return Intrinsics.areEqual(unknownFields(), passthroughDomain.unknownFields()) && Intrinsics.areEqual(this.discrete, passthroughDomain.discrete) && Intrinsics.areEqual(this.stage, passthroughDomain.stage);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        DiscreteScope discreteScope = this.discrete;
        int iHashCode2 = (iHashCode + (discreteScope != null ? discreteScope.hashCode() : 0)) * 37;
        StageScope stageScope = this.stage;
        int iHashCode3 = iHashCode2 + (stageScope != null ? stageScope.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.discrete != null) {
            arrayList.add("discrete=" + this.discrete);
        }
        if (this.stage != null) {
            arrayList.add("stage=" + this.stage);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "PassthroughDomain{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ PassthroughDomain copy$default(PassthroughDomain passthroughDomain, DiscreteScope discreteScope, StageScope stageScope, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            discreteScope = passthroughDomain.discrete;
        }
        if ((i & 2) != 0) {
            stageScope = passthroughDomain.stage;
        }
        if ((i & 4) != 0) {
            byteString = passthroughDomain.unknownFields();
        }
        return passthroughDomain.copy(discreteScope, stageScope, byteString);
    }

    public final PassthroughDomain copy(DiscreteScope discrete, StageScope stage, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new PassthroughDomain(discrete, stage, unknownFields);
    }

    /* JADX INFO: compiled from: PassthroughDomain.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;", "()V", "discrete", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/DiscreteScope;", "stage", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<PassthroughDomain, Builder> {
        public DiscreteScope discrete;
        public StageScope stage;

        public final Builder discrete(DiscreteScope discrete) {
            this.discrete = discrete;
            this.stage = null;
            return this;
        }

        public final Builder stage(StageScope stage) {
            this.stage = stage;
            this.discrete = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public PassthroughDomain build() {
            return new PassthroughDomain(this.discrete, this.stage, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: PassthroughDomain.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ PassthroughDomain build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(PassthroughDomain.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<PassthroughDomain>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.health.domains.passthrough.PassthroughDomain$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(PassthroughDomain value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + DiscreteScope.ADAPTER.encodedSizeWithTag(1, value.discrete) + StageScope.ADAPTER.encodedSizeWithTag(2, value.stage);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, PassthroughDomain value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                DiscreteScope.ADAPTER.encodeWithTag(writer, 1, value.discrete);
                StageScope.ADAPTER.encodeWithTag(writer, 2, value.stage);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, PassthroughDomain value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                StageScope.ADAPTER.encodeWithTag(writer, 2, value.stage);
                DiscreteScope.ADAPTER.encodeWithTag(writer, 1, value.discrete);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public PassthroughDomain redact(PassthroughDomain value) {
                Intrinsics.checkNotNullParameter(value, "value");
                DiscreteScope discreteScope = value.discrete;
                DiscreteScope discreteScopeRedact = discreteScope != null ? DiscreteScope.ADAPTER.redact(discreteScope) : null;
                StageScope stageScope = value.stage;
                return value.copy(discreteScopeRedact, stageScope != null ? StageScope.ADAPTER.redact(stageScope) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public PassthroughDomain decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                DiscreteScope discreteScopeDecode = null;
                StageScope stageScopeDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new PassthroughDomain(discreteScopeDecode, stageScopeDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        discreteScopeDecode = DiscreteScope.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        stageScopeDecode = StageScope.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
