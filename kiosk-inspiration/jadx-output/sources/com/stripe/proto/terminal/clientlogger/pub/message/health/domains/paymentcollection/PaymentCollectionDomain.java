package com.stripe.proto.terminal.clientlogger.pub.message.health.domains.paymentcollection;

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

/* JADX INFO: compiled from: PaymentCollectionDomain.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017B3\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ4\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain$Builder;", "end_to_end", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/EndToEndScope;", "stage", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;", "discrete", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/EndToEndScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PaymentCollectionDomain extends Message<PaymentCollectionDomain, Builder> {
    public static final ProtoAdapter<PaymentCollectionDomain> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.paymentcollection.DiscreteScope#ADAPTER", oneofName = "scope", schemaIndex = 2, tag = 3)
    public final DiscreteScope discrete;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.paymentcollection.EndToEndScope#ADAPTER", jsonName = "endToEnd", oneofName = "scope", schemaIndex = 0, tag = 1)
    public final EndToEndScope end_to_end;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.domains.paymentcollection.StageScope#ADAPTER", oneofName = "scope", schemaIndex = 1, tag = 2)
    public final StageScope stage;

    public PaymentCollectionDomain() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ PaymentCollectionDomain(EndToEndScope endToEndScope, StageScope stageScope, DiscreteScope discreteScope, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : endToEndScope, (i & 2) != 0 ? null : stageScope, (i & 4) != 0 ? null : discreteScope, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PaymentCollectionDomain(EndToEndScope endToEndScope, StageScope stageScope, DiscreteScope discreteScope, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.end_to_end = endToEndScope;
        this.stage = stageScope;
        this.discrete = discreteScope;
        if (Internal.countNonNull(endToEndScope, stageScope, discreteScope) > 1) {
            throw new IllegalArgumentException("At most one of end_to_end, stage, discrete may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.end_to_end = this.end_to_end;
        builder.stage = this.stage;
        builder.discrete = this.discrete;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof PaymentCollectionDomain)) {
            return false;
        }
        PaymentCollectionDomain paymentCollectionDomain = (PaymentCollectionDomain) other;
        return Intrinsics.areEqual(unknownFields(), paymentCollectionDomain.unknownFields()) && Intrinsics.areEqual(this.end_to_end, paymentCollectionDomain.end_to_end) && Intrinsics.areEqual(this.stage, paymentCollectionDomain.stage) && Intrinsics.areEqual(this.discrete, paymentCollectionDomain.discrete);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        EndToEndScope endToEndScope = this.end_to_end;
        int iHashCode2 = (iHashCode + (endToEndScope != null ? endToEndScope.hashCode() : 0)) * 37;
        StageScope stageScope = this.stage;
        int iHashCode3 = (iHashCode2 + (stageScope != null ? stageScope.hashCode() : 0)) * 37;
        DiscreteScope discreteScope = this.discrete;
        int iHashCode4 = iHashCode3 + (discreteScope != null ? discreteScope.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.end_to_end != null) {
            arrayList.add("end_to_end=" + this.end_to_end);
        }
        if (this.stage != null) {
            arrayList.add("stage=" + this.stage);
        }
        if (this.discrete != null) {
            arrayList.add("discrete=" + this.discrete);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "PaymentCollectionDomain{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ PaymentCollectionDomain copy$default(PaymentCollectionDomain paymentCollectionDomain, EndToEndScope endToEndScope, StageScope stageScope, DiscreteScope discreteScope, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            endToEndScope = paymentCollectionDomain.end_to_end;
        }
        if ((i & 2) != 0) {
            stageScope = paymentCollectionDomain.stage;
        }
        if ((i & 4) != 0) {
            discreteScope = paymentCollectionDomain.discrete;
        }
        if ((i & 8) != 0) {
            byteString = paymentCollectionDomain.unknownFields();
        }
        return paymentCollectionDomain.copy(endToEndScope, stageScope, discreteScope, byteString);
    }

    public final PaymentCollectionDomain copy(EndToEndScope end_to_end, StageScope stage, DiscreteScope discrete, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new PaymentCollectionDomain(end_to_end, stage, discrete, unknownFields);
    }

    /* JADX INFO: compiled from: PaymentCollectionDomain.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;", "()V", "discrete", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope;", "end_to_end", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/EndToEndScope;", "stage", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<PaymentCollectionDomain, Builder> {
        public DiscreteScope discrete;
        public EndToEndScope end_to_end;
        public StageScope stage;

        public final Builder end_to_end(EndToEndScope end_to_end) {
            this.end_to_end = end_to_end;
            this.stage = null;
            this.discrete = null;
            return this;
        }

        public final Builder stage(StageScope stage) {
            this.stage = stage;
            this.end_to_end = null;
            this.discrete = null;
            return this;
        }

        public final Builder discrete(DiscreteScope discrete) {
            this.discrete = discrete;
            this.end_to_end = null;
            this.stage = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public PaymentCollectionDomain build() {
            return new PaymentCollectionDomain(this.end_to_end, this.stage, this.discrete, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: PaymentCollectionDomain.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ PaymentCollectionDomain build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(PaymentCollectionDomain.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<PaymentCollectionDomain>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.health.domains.paymentcollection.PaymentCollectionDomain$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(PaymentCollectionDomain value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + EndToEndScope.ADAPTER.encodedSizeWithTag(1, value.end_to_end) + StageScope.ADAPTER.encodedSizeWithTag(2, value.stage) + DiscreteScope.ADAPTER.encodedSizeWithTag(3, value.discrete);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, PaymentCollectionDomain value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                EndToEndScope.ADAPTER.encodeWithTag(writer, 1, value.end_to_end);
                StageScope.ADAPTER.encodeWithTag(writer, 2, value.stage);
                DiscreteScope.ADAPTER.encodeWithTag(writer, 3, value.discrete);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, PaymentCollectionDomain value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                DiscreteScope.ADAPTER.encodeWithTag(writer, 3, value.discrete);
                StageScope.ADAPTER.encodeWithTag(writer, 2, value.stage);
                EndToEndScope.ADAPTER.encodeWithTag(writer, 1, value.end_to_end);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public PaymentCollectionDomain redact(PaymentCollectionDomain value) {
                Intrinsics.checkNotNullParameter(value, "value");
                EndToEndScope endToEndScope = value.end_to_end;
                EndToEndScope endToEndScopeRedact = endToEndScope != null ? EndToEndScope.ADAPTER.redact(endToEndScope) : null;
                StageScope stageScope = value.stage;
                StageScope stageScopeRedact = stageScope != null ? StageScope.ADAPTER.redact(stageScope) : null;
                DiscreteScope discreteScope = value.discrete;
                return value.copy(endToEndScopeRedact, stageScopeRedact, discreteScope != null ? DiscreteScope.ADAPTER.redact(discreteScope) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public PaymentCollectionDomain decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                EndToEndScope endToEndScopeDecode = null;
                StageScope stageScopeDecode = null;
                DiscreteScope discreteScopeDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new PaymentCollectionDomain(endToEndScopeDecode, stageScopeDecode, discreteScopeDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        endToEndScopeDecode = EndToEndScope.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        stageScopeDecode = StageScope.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        discreteScopeDecode = DiscreteScope.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
