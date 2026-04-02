package com.stripe.proto.terminal.clientlogger.pub.message.health.domains.forms;

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
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer;
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

/* JADX INFO: compiled from: StageScope.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00182\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0017\u0018BW\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJX\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\n\u001a\u00020\u000bJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\b\u0010\u0015\u001a\u00020\u0016H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;", "render_duration", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;", "customer_input_duration", "network_call_duration", "end_to_end_duration", "end_to_end_result_by_integration", "interstitial_screen_duration", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class StageScope extends Message<StageScope, Builder> {
    public static final ProtoAdapter<StageScope> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER", jsonName = "customerInputDuration", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 1, tag = 2)
    public final Timer customer_input_duration;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER", jsonName = "endToEndDuration", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 3, tag = 4)
    public final Timer end_to_end_duration;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER", jsonName = "endToEndResultByIntegration", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 4, tag = 5)
    public final Timer end_to_end_result_by_integration;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER", jsonName = "interstitialScreenDuration", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 5, tag = 6)
    public final Timer interstitial_screen_duration;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER", jsonName = "networkCallDuration", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 2, tag = 3)
    public final Timer network_call_duration;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER", jsonName = "renderDuration", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 0, tag = 1)
    public final Timer render_duration;

    public StageScope() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public /* synthetic */ StageScope(Timer timer, Timer timer2, Timer timer3, Timer timer4, Timer timer5, Timer timer6, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : timer, (i & 2) != 0 ? null : timer2, (i & 4) != 0 ? null : timer3, (i & 8) != 0 ? null : timer4, (i & 16) != 0 ? null : timer5, (i & 32) != 0 ? null : timer6, (i & 64) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StageScope(Timer timer, Timer timer2, Timer timer3, Timer timer4, Timer timer5, Timer timer6, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.render_duration = timer;
        this.customer_input_duration = timer2;
        this.network_call_duration = timer3;
        this.end_to_end_duration = timer4;
        this.end_to_end_result_by_integration = timer5;
        this.interstitial_screen_duration = timer6;
        if (Internal.countNonNull(timer, timer2, timer3, timer4, timer5, timer6) > 1) {
            throw new IllegalArgumentException("At most one of render_duration, customer_input_duration, network_call_duration, end_to_end_duration, end_to_end_result_by_integration, interstitial_screen_duration may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.render_duration = this.render_duration;
        builder.customer_input_duration = this.customer_input_duration;
        builder.network_call_duration = this.network_call_duration;
        builder.end_to_end_duration = this.end_to_end_duration;
        builder.end_to_end_result_by_integration = this.end_to_end_result_by_integration;
        builder.interstitial_screen_duration = this.interstitial_screen_duration;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof StageScope)) {
            return false;
        }
        StageScope stageScope = (StageScope) other;
        return Intrinsics.areEqual(unknownFields(), stageScope.unknownFields()) && Intrinsics.areEqual(this.render_duration, stageScope.render_duration) && Intrinsics.areEqual(this.customer_input_duration, stageScope.customer_input_duration) && Intrinsics.areEqual(this.network_call_duration, stageScope.network_call_duration) && Intrinsics.areEqual(this.end_to_end_duration, stageScope.end_to_end_duration) && Intrinsics.areEqual(this.end_to_end_result_by_integration, stageScope.end_to_end_result_by_integration) && Intrinsics.areEqual(this.interstitial_screen_duration, stageScope.interstitial_screen_duration);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Timer timer = this.render_duration;
        int iHashCode2 = (iHashCode + (timer != null ? timer.hashCode() : 0)) * 37;
        Timer timer2 = this.customer_input_duration;
        int iHashCode3 = (iHashCode2 + (timer2 != null ? timer2.hashCode() : 0)) * 37;
        Timer timer3 = this.network_call_duration;
        int iHashCode4 = (iHashCode3 + (timer3 != null ? timer3.hashCode() : 0)) * 37;
        Timer timer4 = this.end_to_end_duration;
        int iHashCode5 = (iHashCode4 + (timer4 != null ? timer4.hashCode() : 0)) * 37;
        Timer timer5 = this.end_to_end_result_by_integration;
        int iHashCode6 = (iHashCode5 + (timer5 != null ? timer5.hashCode() : 0)) * 37;
        Timer timer6 = this.interstitial_screen_duration;
        int iHashCode7 = iHashCode6 + (timer6 != null ? timer6.hashCode() : 0);
        this.hashCode = iHashCode7;
        return iHashCode7;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.render_duration != null) {
            arrayList.add("render_duration=" + this.render_duration);
        }
        if (this.customer_input_duration != null) {
            arrayList.add("customer_input_duration=" + this.customer_input_duration);
        }
        if (this.network_call_duration != null) {
            arrayList.add("network_call_duration=" + this.network_call_duration);
        }
        if (this.end_to_end_duration != null) {
            arrayList.add("end_to_end_duration=" + this.end_to_end_duration);
        }
        if (this.end_to_end_result_by_integration != null) {
            arrayList.add("end_to_end_result_by_integration=" + this.end_to_end_result_by_integration);
        }
        if (this.interstitial_screen_duration != null) {
            arrayList.add("interstitial_screen_duration=" + this.interstitial_screen_duration);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "StageScope{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ StageScope copy$default(StageScope stageScope, Timer timer, Timer timer2, Timer timer3, Timer timer4, Timer timer5, Timer timer6, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            timer = stageScope.render_duration;
        }
        if ((i & 2) != 0) {
            timer2 = stageScope.customer_input_duration;
        }
        if ((i & 4) != 0) {
            timer3 = stageScope.network_call_duration;
        }
        if ((i & 8) != 0) {
            timer4 = stageScope.end_to_end_duration;
        }
        if ((i & 16) != 0) {
            timer5 = stageScope.end_to_end_result_by_integration;
        }
        if ((i & 32) != 0) {
            timer6 = stageScope.interstitial_screen_duration;
        }
        if ((i & 64) != 0) {
            byteString = stageScope.unknownFields();
        }
        Timer timer7 = timer6;
        ByteString byteString2 = byteString;
        Timer timer8 = timer5;
        Timer timer9 = timer3;
        return stageScope.copy(timer, timer2, timer9, timer4, timer8, timer7, byteString2);
    }

    public final StageScope copy(Timer render_duration, Timer customer_input_duration, Timer network_call_duration, Timer end_to_end_duration, Timer end_to_end_result_by_integration, Timer interstitial_screen_duration, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new StageScope(render_duration, customer_input_duration, network_call_duration, end_to_end_duration, end_to_end_result_by_integration, interstitial_screen_duration, unknownFields);
    }

    /* JADX INFO: compiled from: StageScope.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope;", "()V", "customer_input_duration", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;", "end_to_end_duration", "end_to_end_result_by_integration", "interstitial_screen_duration", "network_call_duration", "render_duration", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<StageScope, Builder> {
        public Timer customer_input_duration;
        public Timer end_to_end_duration;
        public Timer end_to_end_result_by_integration;
        public Timer interstitial_screen_duration;
        public Timer network_call_duration;
        public Timer render_duration;

        public final Builder render_duration(Timer render_duration) {
            this.render_duration = render_duration;
            this.customer_input_duration = null;
            this.network_call_duration = null;
            this.end_to_end_duration = null;
            this.end_to_end_result_by_integration = null;
            this.interstitial_screen_duration = null;
            return this;
        }

        public final Builder customer_input_duration(Timer customer_input_duration) {
            this.customer_input_duration = customer_input_duration;
            this.render_duration = null;
            this.network_call_duration = null;
            this.end_to_end_duration = null;
            this.end_to_end_result_by_integration = null;
            this.interstitial_screen_duration = null;
            return this;
        }

        public final Builder network_call_duration(Timer network_call_duration) {
            this.network_call_duration = network_call_duration;
            this.render_duration = null;
            this.customer_input_duration = null;
            this.end_to_end_duration = null;
            this.end_to_end_result_by_integration = null;
            this.interstitial_screen_duration = null;
            return this;
        }

        public final Builder end_to_end_duration(Timer end_to_end_duration) {
            this.end_to_end_duration = end_to_end_duration;
            this.render_duration = null;
            this.customer_input_duration = null;
            this.network_call_duration = null;
            this.end_to_end_result_by_integration = null;
            this.interstitial_screen_duration = null;
            return this;
        }

        public final Builder end_to_end_result_by_integration(Timer end_to_end_result_by_integration) {
            this.end_to_end_result_by_integration = end_to_end_result_by_integration;
            this.render_duration = null;
            this.customer_input_duration = null;
            this.network_call_duration = null;
            this.end_to_end_duration = null;
            this.interstitial_screen_duration = null;
            return this;
        }

        public final Builder interstitial_screen_duration(Timer interstitial_screen_duration) {
            this.interstitial_screen_duration = interstitial_screen_duration;
            this.render_duration = null;
            this.customer_input_duration = null;
            this.network_call_duration = null;
            this.end_to_end_duration = null;
            this.end_to_end_result_by_integration = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public StageScope build() {
            return new StageScope(this.render_duration, this.customer_input_duration, this.network_call_duration, this.end_to_end_duration, this.end_to_end_result_by_integration, this.interstitial_screen_duration, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: StageScope.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ StageScope build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(StageScope.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<StageScope>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.health.domains.forms.StageScope$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(StageScope value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + Timer.ADAPTER.encodedSizeWithTag(1, value.render_duration) + Timer.ADAPTER.encodedSizeWithTag(2, value.customer_input_duration) + Timer.ADAPTER.encodedSizeWithTag(3, value.network_call_duration) + Timer.ADAPTER.encodedSizeWithTag(4, value.end_to_end_duration) + Timer.ADAPTER.encodedSizeWithTag(5, value.end_to_end_result_by_integration) + Timer.ADAPTER.encodedSizeWithTag(6, value.interstitial_screen_duration);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, StageScope value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                Timer.ADAPTER.encodeWithTag(writer, 1, value.render_duration);
                Timer.ADAPTER.encodeWithTag(writer, 2, value.customer_input_duration);
                Timer.ADAPTER.encodeWithTag(writer, 3, value.network_call_duration);
                Timer.ADAPTER.encodeWithTag(writer, 4, value.end_to_end_duration);
                Timer.ADAPTER.encodeWithTag(writer, 5, value.end_to_end_result_by_integration);
                Timer.ADAPTER.encodeWithTag(writer, 6, value.interstitial_screen_duration);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, StageScope value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                Timer.ADAPTER.encodeWithTag(writer, 6, value.interstitial_screen_duration);
                Timer.ADAPTER.encodeWithTag(writer, 5, value.end_to_end_result_by_integration);
                Timer.ADAPTER.encodeWithTag(writer, 4, value.end_to_end_duration);
                Timer.ADAPTER.encodeWithTag(writer, 3, value.network_call_duration);
                Timer.ADAPTER.encodeWithTag(writer, 2, value.customer_input_duration);
                Timer.ADAPTER.encodeWithTag(writer, 1, value.render_duration);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public StageScope redact(StageScope value) {
                Intrinsics.checkNotNullParameter(value, "value");
                Timer timer = value.render_duration;
                Timer timerRedact = timer != null ? Timer.ADAPTER.redact(timer) : null;
                Timer timer2 = value.customer_input_duration;
                Timer timerRedact2 = timer2 != null ? Timer.ADAPTER.redact(timer2) : null;
                Timer timer3 = value.network_call_duration;
                Timer timerRedact3 = timer3 != null ? Timer.ADAPTER.redact(timer3) : null;
                Timer timer4 = value.end_to_end_duration;
                Timer timerRedact4 = timer4 != null ? Timer.ADAPTER.redact(timer4) : null;
                Timer timer5 = value.end_to_end_result_by_integration;
                Timer timerRedact5 = timer5 != null ? Timer.ADAPTER.redact(timer5) : null;
                Timer timer6 = value.interstitial_screen_duration;
                return value.copy(timerRedact, timerRedact2, timerRedact3, timerRedact4, timerRedact5, timer6 != null ? Timer.ADAPTER.redact(timer6) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public StageScope decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                Timer timerDecode = null;
                Timer timerDecode2 = null;
                Timer timerDecode3 = null;
                Timer timerDecode4 = null;
                Timer timerDecode5 = null;
                Timer timerDecode6 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                timerDecode = Timer.ADAPTER.decode(reader);
                                break;
                            case 2:
                                timerDecode2 = Timer.ADAPTER.decode(reader);
                                break;
                            case 3:
                                timerDecode3 = Timer.ADAPTER.decode(reader);
                                break;
                            case 4:
                                timerDecode4 = Timer.ADAPTER.decode(reader);
                                break;
                            case 5:
                                timerDecode5 = Timer.ADAPTER.decode(reader);
                                break;
                            case 6:
                                timerDecode6 = Timer.ADAPTER.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new StageScope(timerDecode, timerDecode2, timerDecode3, timerDecode4, timerDecode5, timerDecode6, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
