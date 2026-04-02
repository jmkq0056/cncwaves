package com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos;

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

/* JADX INFO: compiled from: SdkProxyScope.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B?\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ@\u0010\u000b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0014H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;", "client_api_call", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;", "service_api_call", "client_callback", "service_callback", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SdkProxyScope extends Message<SdkProxyScope, Builder> {
    public static final ProtoAdapter<SdkProxyScope> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER", jsonName = "clientApiCall", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 0, tag = 1)
    public final Timer client_api_call;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER", jsonName = "clientCallback", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 2, tag = 3)
    public final Timer client_callback;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER", jsonName = "serviceApiCall", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 1, tag = 2)
    public final Timer service_api_call;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER", jsonName = "serviceCallback", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 3, tag = 4)
    public final Timer service_callback;

    public SdkProxyScope() {
        this(null, null, null, null, null, 31, null);
    }

    public /* synthetic */ SdkProxyScope(Timer timer, Timer timer2, Timer timer3, Timer timer4, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : timer, (i & 2) != 0 ? null : timer2, (i & 4) != 0 ? null : timer3, (i & 8) != 0 ? null : timer4, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SdkProxyScope(Timer timer, Timer timer2, Timer timer3, Timer timer4, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.client_api_call = timer;
        this.service_api_call = timer2;
        this.client_callback = timer3;
        this.service_callback = timer4;
        if (Internal.countNonNull(timer, timer2, timer3, timer4, new Object[0]) > 1) {
            throw new IllegalArgumentException("At most one of client_api_call, service_api_call, client_callback, service_callback may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.client_api_call = this.client_api_call;
        builder.service_api_call = this.service_api_call;
        builder.client_callback = this.client_callback;
        builder.service_callback = this.service_callback;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof SdkProxyScope)) {
            return false;
        }
        SdkProxyScope sdkProxyScope = (SdkProxyScope) other;
        return Intrinsics.areEqual(unknownFields(), sdkProxyScope.unknownFields()) && Intrinsics.areEqual(this.client_api_call, sdkProxyScope.client_api_call) && Intrinsics.areEqual(this.service_api_call, sdkProxyScope.service_api_call) && Intrinsics.areEqual(this.client_callback, sdkProxyScope.client_callback) && Intrinsics.areEqual(this.service_callback, sdkProxyScope.service_callback);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Timer timer = this.client_api_call;
        int iHashCode2 = (iHashCode + (timer != null ? timer.hashCode() : 0)) * 37;
        Timer timer2 = this.service_api_call;
        int iHashCode3 = (iHashCode2 + (timer2 != null ? timer2.hashCode() : 0)) * 37;
        Timer timer3 = this.client_callback;
        int iHashCode4 = (iHashCode3 + (timer3 != null ? timer3.hashCode() : 0)) * 37;
        Timer timer4 = this.service_callback;
        int iHashCode5 = iHashCode4 + (timer4 != null ? timer4.hashCode() : 0);
        this.hashCode = iHashCode5;
        return iHashCode5;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.client_api_call != null) {
            arrayList.add("client_api_call=" + this.client_api_call);
        }
        if (this.service_api_call != null) {
            arrayList.add("service_api_call=" + this.service_api_call);
        }
        if (this.client_callback != null) {
            arrayList.add("client_callback=" + this.client_callback);
        }
        if (this.service_callback != null) {
            arrayList.add("service_callback=" + this.service_callback);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "SdkProxyScope{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ SdkProxyScope copy$default(SdkProxyScope sdkProxyScope, Timer timer, Timer timer2, Timer timer3, Timer timer4, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            timer = sdkProxyScope.client_api_call;
        }
        if ((i & 2) != 0) {
            timer2 = sdkProxyScope.service_api_call;
        }
        if ((i & 4) != 0) {
            timer3 = sdkProxyScope.client_callback;
        }
        if ((i & 8) != 0) {
            timer4 = sdkProxyScope.service_callback;
        }
        if ((i & 16) != 0) {
            byteString = sdkProxyScope.unknownFields();
        }
        ByteString byteString2 = byteString;
        Timer timer5 = timer3;
        return sdkProxyScope.copy(timer, timer2, timer5, timer4, byteString2);
    }

    public final SdkProxyScope copy(Timer client_api_call, Timer service_api_call, Timer client_callback, Timer service_callback, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new SdkProxyScope(client_api_call, service_api_call, client_callback, service_callback, unknownFields);
    }

    /* JADX INFO: compiled from: SdkProxyScope.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;", "()V", "client_api_call", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;", "client_callback", "service_api_call", "service_callback", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<SdkProxyScope, Builder> {
        public Timer client_api_call;
        public Timer client_callback;
        public Timer service_api_call;
        public Timer service_callback;

        public final Builder client_api_call(Timer client_api_call) {
            this.client_api_call = client_api_call;
            this.service_api_call = null;
            this.client_callback = null;
            this.service_callback = null;
            return this;
        }

        public final Builder service_api_call(Timer service_api_call) {
            this.service_api_call = service_api_call;
            this.client_api_call = null;
            this.client_callback = null;
            this.service_callback = null;
            return this;
        }

        public final Builder client_callback(Timer client_callback) {
            this.client_callback = client_callback;
            this.client_api_call = null;
            this.service_api_call = null;
            this.service_callback = null;
            return this;
        }

        public final Builder service_callback(Timer service_callback) {
            this.service_callback = service_callback;
            this.client_api_call = null;
            this.service_api_call = null;
            this.client_callback = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public SdkProxyScope build() {
            return new SdkProxyScope(this.client_api_call, this.service_api_call, this.client_callback, this.service_callback, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: SdkProxyScope.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/SdkProxyScope$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ SdkProxyScope build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(SdkProxyScope.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<SdkProxyScope>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.SdkProxyScope$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(SdkProxyScope value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + Timer.ADAPTER.encodedSizeWithTag(1, value.client_api_call) + Timer.ADAPTER.encodedSizeWithTag(2, value.service_api_call) + Timer.ADAPTER.encodedSizeWithTag(3, value.client_callback) + Timer.ADAPTER.encodedSizeWithTag(4, value.service_callback);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, SdkProxyScope value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                Timer.ADAPTER.encodeWithTag(writer, 1, value.client_api_call);
                Timer.ADAPTER.encodeWithTag(writer, 2, value.service_api_call);
                Timer.ADAPTER.encodeWithTag(writer, 3, value.client_callback);
                Timer.ADAPTER.encodeWithTag(writer, 4, value.service_callback);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, SdkProxyScope value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                Timer.ADAPTER.encodeWithTag(writer, 4, value.service_callback);
                Timer.ADAPTER.encodeWithTag(writer, 3, value.client_callback);
                Timer.ADAPTER.encodeWithTag(writer, 2, value.service_api_call);
                Timer.ADAPTER.encodeWithTag(writer, 1, value.client_api_call);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public SdkProxyScope redact(SdkProxyScope value) {
                Intrinsics.checkNotNullParameter(value, "value");
                Timer timer = value.client_api_call;
                Timer timerRedact = timer != null ? Timer.ADAPTER.redact(timer) : null;
                Timer timer2 = value.service_api_call;
                Timer timerRedact2 = timer2 != null ? Timer.ADAPTER.redact(timer2) : null;
                Timer timer3 = value.client_callback;
                Timer timerRedact3 = timer3 != null ? Timer.ADAPTER.redact(timer3) : null;
                Timer timer4 = value.service_callback;
                return value.copy(timerRedact, timerRedact2, timerRedact3, timer4 != null ? Timer.ADAPTER.redact(timer4) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public SdkProxyScope decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                Timer timerDecode = null;
                Timer timerDecode2 = null;
                Timer timerDecode3 = null;
                Timer timerDecode4 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new SdkProxyScope(timerDecode, timerDecode2, timerDecode3, timerDecode4, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        timerDecode = Timer.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        timerDecode2 = Timer.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        timerDecode3 = Timer.ADAPTER.decode(reader);
                    } else if (iNextTag == 4) {
                        timerDecode4 = Timer.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
