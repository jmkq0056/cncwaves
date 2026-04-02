package com.stripe.proto.terminal.clientlogger.pub.message.health.domains.tipping;

import androidx.core.app.NotificationCompat;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter;
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

/* JADX INFO: compiled from: DiscreteScope.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017BK\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJL\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;", "tip_eligible", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;", "quit_custom_tipping", "reselect_tipping", "skip_tipping", "currency_mismatch_tipping_config", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DiscreteScope extends Message<DiscreteScope, Builder> {
    public static final ProtoAdapter<DiscreteScope> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "currencyMismatchTippingConfig", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 4, tag = 5)
    public final Counter currency_mismatch_tipping_config;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "quitCustomTipping", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 1, tag = 2)
    public final Counter quit_custom_tipping;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "reselectTipping", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 2, tag = 3)
    public final Counter reselect_tipping;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "skipTipping", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 3, tag = 4)
    public final Counter skip_tipping;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter#ADAPTER", jsonName = "tipEligible", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 0, tag = 1)
    public final Counter tip_eligible;

    public DiscreteScope() {
        this(null, null, null, null, null, null, 63, null);
    }

    public /* synthetic */ DiscreteScope(Counter counter, Counter counter2, Counter counter3, Counter counter4, Counter counter5, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : counter, (i & 2) != 0 ? null : counter2, (i & 4) != 0 ? null : counter3, (i & 8) != 0 ? null : counter4, (i & 16) != 0 ? null : counter5, (i & 32) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscreteScope(Counter counter, Counter counter2, Counter counter3, Counter counter4, Counter counter5, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.tip_eligible = counter;
        this.quit_custom_tipping = counter2;
        this.reselect_tipping = counter3;
        this.skip_tipping = counter4;
        this.currency_mismatch_tipping_config = counter5;
        if (Internal.countNonNull(counter, counter2, counter3, counter4, counter5) > 1) {
            throw new IllegalArgumentException("At most one of tip_eligible, quit_custom_tipping, reselect_tipping, skip_tipping, currency_mismatch_tipping_config may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.tip_eligible = this.tip_eligible;
        builder.quit_custom_tipping = this.quit_custom_tipping;
        builder.reselect_tipping = this.reselect_tipping;
        builder.skip_tipping = this.skip_tipping;
        builder.currency_mismatch_tipping_config = this.currency_mismatch_tipping_config;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof DiscreteScope)) {
            return false;
        }
        DiscreteScope discreteScope = (DiscreteScope) other;
        return Intrinsics.areEqual(unknownFields(), discreteScope.unknownFields()) && Intrinsics.areEqual(this.tip_eligible, discreteScope.tip_eligible) && Intrinsics.areEqual(this.quit_custom_tipping, discreteScope.quit_custom_tipping) && Intrinsics.areEqual(this.reselect_tipping, discreteScope.reselect_tipping) && Intrinsics.areEqual(this.skip_tipping, discreteScope.skip_tipping) && Intrinsics.areEqual(this.currency_mismatch_tipping_config, discreteScope.currency_mismatch_tipping_config);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Counter counter = this.tip_eligible;
        int iHashCode2 = (iHashCode + (counter != null ? counter.hashCode() : 0)) * 37;
        Counter counter2 = this.quit_custom_tipping;
        int iHashCode3 = (iHashCode2 + (counter2 != null ? counter2.hashCode() : 0)) * 37;
        Counter counter3 = this.reselect_tipping;
        int iHashCode4 = (iHashCode3 + (counter3 != null ? counter3.hashCode() : 0)) * 37;
        Counter counter4 = this.skip_tipping;
        int iHashCode5 = (iHashCode4 + (counter4 != null ? counter4.hashCode() : 0)) * 37;
        Counter counter5 = this.currency_mismatch_tipping_config;
        int iHashCode6 = iHashCode5 + (counter5 != null ? counter5.hashCode() : 0);
        this.hashCode = iHashCode6;
        return iHashCode6;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.tip_eligible != null) {
            arrayList.add("tip_eligible=" + this.tip_eligible);
        }
        if (this.quit_custom_tipping != null) {
            arrayList.add("quit_custom_tipping=" + this.quit_custom_tipping);
        }
        if (this.reselect_tipping != null) {
            arrayList.add("reselect_tipping=" + this.reselect_tipping);
        }
        if (this.skip_tipping != null) {
            arrayList.add("skip_tipping=" + this.skip_tipping);
        }
        if (this.currency_mismatch_tipping_config != null) {
            arrayList.add("currency_mismatch_tipping_config=" + this.currency_mismatch_tipping_config);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "DiscreteScope{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ DiscreteScope copy$default(DiscreteScope discreteScope, Counter counter, Counter counter2, Counter counter3, Counter counter4, Counter counter5, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            counter = discreteScope.tip_eligible;
        }
        if ((i & 2) != 0) {
            counter2 = discreteScope.quit_custom_tipping;
        }
        if ((i & 4) != 0) {
            counter3 = discreteScope.reselect_tipping;
        }
        if ((i & 8) != 0) {
            counter4 = discreteScope.skip_tipping;
        }
        if ((i & 16) != 0) {
            counter5 = discreteScope.currency_mismatch_tipping_config;
        }
        if ((i & 32) != 0) {
            byteString = discreteScope.unknownFields();
        }
        Counter counter6 = counter5;
        ByteString byteString2 = byteString;
        return discreteScope.copy(counter, counter2, counter3, counter4, counter6, byteString2);
    }

    public final DiscreteScope copy(Counter tip_eligible, Counter quit_custom_tipping, Counter reselect_tipping, Counter skip_tipping, Counter currency_mismatch_tipping_config, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new DiscreteScope(tip_eligible, quit_custom_tipping, reselect_tipping, skip_tipping, currency_mismatch_tipping_config, unknownFields);
    }

    /* JADX INFO: compiled from: DiscreteScope.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope;", "()V", "currency_mismatch_tipping_config", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;", "quit_custom_tipping", "reselect_tipping", "skip_tipping", "tip_eligible", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<DiscreteScope, Builder> {
        public Counter currency_mismatch_tipping_config;
        public Counter quit_custom_tipping;
        public Counter reselect_tipping;
        public Counter skip_tipping;
        public Counter tip_eligible;

        public final Builder tip_eligible(Counter tip_eligible) {
            this.tip_eligible = tip_eligible;
            this.quit_custom_tipping = null;
            this.reselect_tipping = null;
            this.skip_tipping = null;
            this.currency_mismatch_tipping_config = null;
            return this;
        }

        public final Builder quit_custom_tipping(Counter quit_custom_tipping) {
            this.quit_custom_tipping = quit_custom_tipping;
            this.tip_eligible = null;
            this.reselect_tipping = null;
            this.skip_tipping = null;
            this.currency_mismatch_tipping_config = null;
            return this;
        }

        public final Builder reselect_tipping(Counter reselect_tipping) {
            this.reselect_tipping = reselect_tipping;
            this.tip_eligible = null;
            this.quit_custom_tipping = null;
            this.skip_tipping = null;
            this.currency_mismatch_tipping_config = null;
            return this;
        }

        public final Builder skip_tipping(Counter skip_tipping) {
            this.skip_tipping = skip_tipping;
            this.tip_eligible = null;
            this.quit_custom_tipping = null;
            this.reselect_tipping = null;
            this.currency_mismatch_tipping_config = null;
            return this;
        }

        public final Builder currency_mismatch_tipping_config(Counter currency_mismatch_tipping_config) {
            this.currency_mismatch_tipping_config = currency_mismatch_tipping_config;
            this.tip_eligible = null;
            this.quit_custom_tipping = null;
            this.reselect_tipping = null;
            this.skip_tipping = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public DiscreteScope build() {
            return new DiscreteScope(this.tip_eligible, this.quit_custom_tipping, this.reselect_tipping, this.skip_tipping, this.currency_mismatch_tipping_config, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: DiscreteScope.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/tipping/DiscreteScope$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ DiscreteScope build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DiscreteScope.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<DiscreteScope>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.health.domains.tipping.DiscreteScope$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(DiscreteScope value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + Counter.ADAPTER.encodedSizeWithTag(1, value.tip_eligible) + Counter.ADAPTER.encodedSizeWithTag(2, value.quit_custom_tipping) + Counter.ADAPTER.encodedSizeWithTag(3, value.reselect_tipping) + Counter.ADAPTER.encodedSizeWithTag(4, value.skip_tipping) + Counter.ADAPTER.encodedSizeWithTag(5, value.currency_mismatch_tipping_config);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, DiscreteScope value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                Counter.ADAPTER.encodeWithTag(writer, 1, value.tip_eligible);
                Counter.ADAPTER.encodeWithTag(writer, 2, value.quit_custom_tipping);
                Counter.ADAPTER.encodeWithTag(writer, 3, value.reselect_tipping);
                Counter.ADAPTER.encodeWithTag(writer, 4, value.skip_tipping);
                Counter.ADAPTER.encodeWithTag(writer, 5, value.currency_mismatch_tipping_config);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, DiscreteScope value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                Counter.ADAPTER.encodeWithTag(writer, 5, value.currency_mismatch_tipping_config);
                Counter.ADAPTER.encodeWithTag(writer, 4, value.skip_tipping);
                Counter.ADAPTER.encodeWithTag(writer, 3, value.reselect_tipping);
                Counter.ADAPTER.encodeWithTag(writer, 2, value.quit_custom_tipping);
                Counter.ADAPTER.encodeWithTag(writer, 1, value.tip_eligible);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public DiscreteScope redact(DiscreteScope value) {
                Intrinsics.checkNotNullParameter(value, "value");
                Counter counter = value.tip_eligible;
                Counter counterRedact = counter != null ? Counter.ADAPTER.redact(counter) : null;
                Counter counter2 = value.quit_custom_tipping;
                Counter counterRedact2 = counter2 != null ? Counter.ADAPTER.redact(counter2) : null;
                Counter counter3 = value.reselect_tipping;
                Counter counterRedact3 = counter3 != null ? Counter.ADAPTER.redact(counter3) : null;
                Counter counter4 = value.skip_tipping;
                Counter counterRedact4 = counter4 != null ? Counter.ADAPTER.redact(counter4) : null;
                Counter counter5 = value.currency_mismatch_tipping_config;
                return value.copy(counterRedact, counterRedact2, counterRedact3, counterRedact4, counter5 != null ? Counter.ADAPTER.redact(counter5) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public DiscreteScope decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                Counter counterDecode = null;
                Counter counterDecode2 = null;
                Counter counterDecode3 = null;
                Counter counterDecode4 = null;
                Counter counterDecode5 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new DiscreteScope(counterDecode, counterDecode2, counterDecode3, counterDecode4, counterDecode5, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        counterDecode = Counter.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        counterDecode2 = Counter.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        counterDecode3 = Counter.ADAPTER.decode(reader);
                    } else if (iNextTag == 4) {
                        counterDecode4 = Counter.ADAPTER.decode(reader);
                    } else if (iNextTag == 5) {
                        counterDecode5 = Counter.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
