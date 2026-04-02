package com.stripe.proto.terminal.terminal.pub.message.config;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.terminal.terminal.pub.message.config.FormsConfigPb;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: FormsConfigPb.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u0000 \u001c2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0006\u001b\u001c\u001d\u001e\u001f BG\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJH\u0010\u0012\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\rJ\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\b\u0010\u0017\u001a\u00020\nH\u0016J\b\u0010\u0018\u001a\u00020\u0002H\u0016J\b\u0010\u0019\u001a\u00020\u001aH\u0016R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u000f\u0010\u0010R\u0010\u0010\u000b\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0011\u0010\u0010R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Builder;", "sdi_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi;", "jackrabbit_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit;", "handoff_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;", "interstitial_timeout_seconds", "", "interstitial_timeout_ms", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;IILokio/ByteString;)V", "getHandoff_config$annotations", "()V", "getInterstitial_timeout_seconds$annotations", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "", "Builder", "Companion", "Handoff", "JackRabbit", "Sdi", "SupportedSdkVersions", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FormsConfigPb extends Message<FormsConfigPb, Builder> {
    public static final ProtoAdapter<FormsConfigPb> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.FormsConfigPb$Handoff#ADAPTER", jsonName = "handoffConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final Handoff handoff_config;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "interstitialTimeoutMs", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final int interstitial_timeout_ms;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "interstitialTimeoutSeconds", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final int interstitial_timeout_seconds;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.FormsConfigPb$JackRabbit#ADAPTER", jsonName = "jackrabbitConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final JackRabbit jackrabbit_config;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.FormsConfigPb$Sdi#ADAPTER", jsonName = "sdiConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final Sdi sdi_config;

    public FormsConfigPb() {
        this(null, null, null, 0, 0, null, 63, null);
    }

    @Deprecated(message = "handoff_config is deprecated")
    public static /* synthetic */ void getHandoff_config$annotations() {
    }

    @Deprecated(message = "interstitial_timeout_seconds is deprecated")
    public static /* synthetic */ void getInterstitial_timeout_seconds$annotations() {
    }

    public /* synthetic */ FormsConfigPb(Sdi sdi, JackRabbit jackRabbit, Handoff handoff, int i, int i2, ByteString byteString, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? null : sdi, (i3 & 2) != 0 ? null : jackRabbit, (i3 & 4) != 0 ? null : handoff, (i3 & 8) != 0 ? 0 : i, (i3 & 16) != 0 ? 0 : i2, (i3 & 32) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FormsConfigPb(Sdi sdi, JackRabbit jackRabbit, Handoff handoff, int i, int i2, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.sdi_config = sdi;
        this.jackrabbit_config = jackRabbit;
        this.handoff_config = handoff;
        this.interstitial_timeout_seconds = i;
        this.interstitial_timeout_ms = i2;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.sdi_config = this.sdi_config;
        builder.jackrabbit_config = this.jackrabbit_config;
        builder.handoff_config = this.handoff_config;
        builder.interstitial_timeout_seconds = this.interstitial_timeout_seconds;
        builder.interstitial_timeout_ms = this.interstitial_timeout_ms;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof FormsConfigPb)) {
            return false;
        }
        FormsConfigPb formsConfigPb = (FormsConfigPb) other;
        return Intrinsics.areEqual(unknownFields(), formsConfigPb.unknownFields()) && Intrinsics.areEqual(this.sdi_config, formsConfigPb.sdi_config) && Intrinsics.areEqual(this.jackrabbit_config, formsConfigPb.jackrabbit_config) && Intrinsics.areEqual(this.handoff_config, formsConfigPb.handoff_config) && this.interstitial_timeout_seconds == formsConfigPb.interstitial_timeout_seconds && this.interstitial_timeout_ms == formsConfigPb.interstitial_timeout_ms;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Sdi sdi = this.sdi_config;
        int iHashCode2 = (iHashCode + (sdi != null ? sdi.hashCode() : 0)) * 37;
        JackRabbit jackRabbit = this.jackrabbit_config;
        int iHashCode3 = (iHashCode2 + (jackRabbit != null ? jackRabbit.hashCode() : 0)) * 37;
        Handoff handoff = this.handoff_config;
        int iHashCode4 = ((((iHashCode3 + (handoff != null ? handoff.hashCode() : 0)) * 37) + Integer.hashCode(this.interstitial_timeout_seconds)) * 37) + Integer.hashCode(this.interstitial_timeout_ms);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.sdi_config != null) {
            arrayList.add("sdi_config=" + this.sdi_config);
        }
        if (this.jackrabbit_config != null) {
            arrayList.add("jackrabbit_config=" + this.jackrabbit_config);
        }
        if (this.handoff_config != null) {
            arrayList.add("handoff_config=" + this.handoff_config);
        }
        ArrayList arrayList2 = arrayList;
        arrayList2.add("interstitial_timeout_seconds=" + this.interstitial_timeout_seconds);
        arrayList2.add("interstitial_timeout_ms=" + this.interstitial_timeout_ms);
        return CollectionsKt.joinToString$default(arrayList, ", ", "FormsConfigPb{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ FormsConfigPb copy$default(FormsConfigPb formsConfigPb, Sdi sdi, JackRabbit jackRabbit, Handoff handoff, int i, int i2, ByteString byteString, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            sdi = formsConfigPb.sdi_config;
        }
        if ((i3 & 2) != 0) {
            jackRabbit = formsConfigPb.jackrabbit_config;
        }
        if ((i3 & 4) != 0) {
            handoff = formsConfigPb.handoff_config;
        }
        if ((i3 & 8) != 0) {
            i = formsConfigPb.interstitial_timeout_seconds;
        }
        if ((i3 & 16) != 0) {
            i2 = formsConfigPb.interstitial_timeout_ms;
        }
        if ((i3 & 32) != 0) {
            byteString = formsConfigPb.unknownFields();
        }
        int i4 = i2;
        ByteString byteString2 = byteString;
        return formsConfigPb.copy(sdi, jackRabbit, handoff, i, i4, byteString2);
    }

    public final FormsConfigPb copy(Sdi sdi_config, JackRabbit jackrabbit_config, Handoff handoff_config, int interstitial_timeout_seconds, int interstitial_timeout_ms, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new FormsConfigPb(sdi_config, jackrabbit_config, handoff_config, interstitial_timeout_seconds, interstitial_timeout_ms, unknownFields);
    }

    /* JADX INFO: compiled from: FormsConfigPb.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\r\u001a\u00020\u0002H\u0016J\u0012\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0007J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007H\u0007J\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\nJ\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\fR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;", "()V", "handoff_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;", "interstitial_timeout_ms", "", "interstitial_timeout_seconds", "jackrabbit_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit;", "sdi_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<FormsConfigPb, Builder> {
        public Handoff handoff_config;
        public int interstitial_timeout_ms;
        public int interstitial_timeout_seconds;
        public JackRabbit jackrabbit_config;
        public Sdi sdi_config;

        public final Builder sdi_config(Sdi sdi_config) {
            this.sdi_config = sdi_config;
            return this;
        }

        public final Builder jackrabbit_config(JackRabbit jackrabbit_config) {
            this.jackrabbit_config = jackrabbit_config;
            return this;
        }

        @Deprecated(message = "handoff_config is deprecated")
        public final Builder handoff_config(Handoff handoff_config) {
            this.handoff_config = handoff_config;
            return this;
        }

        @Deprecated(message = "interstitial_timeout_seconds is deprecated")
        public final Builder interstitial_timeout_seconds(int interstitial_timeout_seconds) {
            this.interstitial_timeout_seconds = interstitial_timeout_seconds;
            return this;
        }

        public final Builder interstitial_timeout_ms(int interstitial_timeout_ms) {
            this.interstitial_timeout_ms = interstitial_timeout_ms;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public FormsConfigPb build() {
            return new FormsConfigPb(this.sdi_config, this.jackrabbit_config, this.handoff_config, this.interstitial_timeout_seconds, this.interstitial_timeout_ms, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: FormsConfigPb.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ FormsConfigPb build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(FormsConfigPb.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<FormsConfigPb>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.terminal.pub.message.config.FormsConfigPb$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(FormsConfigPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.sdi_config != null) {
                    size += FormsConfigPb.Sdi.ADAPTER.encodedSizeWithTag(1, value.sdi_config);
                }
                if (value.jackrabbit_config != null) {
                    size += FormsConfigPb.JackRabbit.ADAPTER.encodedSizeWithTag(2, value.jackrabbit_config);
                }
                if (value.handoff_config != null) {
                    size += FormsConfigPb.Handoff.ADAPTER.encodedSizeWithTag(3, value.handoff_config);
                }
                if (value.interstitial_timeout_seconds != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(4, Integer.valueOf(value.interstitial_timeout_seconds));
                }
                return value.interstitial_timeout_ms != 0 ? size + ProtoAdapter.INT32.encodedSizeWithTag(5, Integer.valueOf(value.interstitial_timeout_ms)) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, FormsConfigPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.sdi_config != null) {
                    FormsConfigPb.Sdi.ADAPTER.encodeWithTag(writer, 1, value.sdi_config);
                }
                if (value.jackrabbit_config != null) {
                    FormsConfigPb.JackRabbit.ADAPTER.encodeWithTag(writer, 2, value.jackrabbit_config);
                }
                if (value.handoff_config != null) {
                    FormsConfigPb.Handoff.ADAPTER.encodeWithTag(writer, 3, value.handoff_config);
                }
                if (value.interstitial_timeout_seconds != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 4, Integer.valueOf(value.interstitial_timeout_seconds));
                }
                if (value.interstitial_timeout_ms != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 5, Integer.valueOf(value.interstitial_timeout_ms));
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, FormsConfigPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.interstitial_timeout_ms != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 5, Integer.valueOf(value.interstitial_timeout_ms));
                }
                if (value.interstitial_timeout_seconds != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 4, Integer.valueOf(value.interstitial_timeout_seconds));
                }
                if (value.handoff_config != null) {
                    FormsConfigPb.Handoff.ADAPTER.encodeWithTag(writer, 3, value.handoff_config);
                }
                if (value.jackrabbit_config != null) {
                    FormsConfigPb.JackRabbit.ADAPTER.encodeWithTag(writer, 2, value.jackrabbit_config);
                }
                if (value.sdi_config != null) {
                    FormsConfigPb.Sdi.ADAPTER.encodeWithTag(writer, 1, value.sdi_config);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public FormsConfigPb redact(FormsConfigPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                FormsConfigPb.Sdi sdi = value.sdi_config;
                FormsConfigPb.Sdi sdiRedact = sdi != null ? FormsConfigPb.Sdi.ADAPTER.redact(sdi) : null;
                FormsConfigPb.JackRabbit jackRabbit = value.jackrabbit_config;
                FormsConfigPb.JackRabbit jackRabbitRedact = jackRabbit != null ? FormsConfigPb.JackRabbit.ADAPTER.redact(jackRabbit) : null;
                FormsConfigPb.Handoff handoff = value.handoff_config;
                return FormsConfigPb.copy$default(value, sdiRedact, jackRabbitRedact, handoff != null ? FormsConfigPb.Handoff.ADAPTER.redact(handoff) : null, 0, 0, ByteString.EMPTY, 24, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public FormsConfigPb decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                FormsConfigPb.Sdi sdiDecode = null;
                FormsConfigPb.Handoff handoffDecode = null;
                int iIntValue = 0;
                int iIntValue2 = 0;
                FormsConfigPb.JackRabbit jackRabbitDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new FormsConfigPb(sdiDecode, jackRabbitDecode, handoffDecode, iIntValue, iIntValue2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        sdiDecode = FormsConfigPb.Sdi.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        jackRabbitDecode = FormsConfigPb.JackRabbit.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        handoffDecode = FormsConfigPb.Handoff.ADAPTER.decode(reader);
                    } else if (iNextTag == 4) {
                        iIntValue = ProtoAdapter.INT32.decode(reader).intValue();
                    } else if (iNextTag == 5) {
                        iIntValue2 = ProtoAdapter.INT32.decode(reader).intValue();
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }

    /* JADX INFO: compiled from: FormsConfigPb.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B)\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ*\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0004H\u0016R\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$SupportedSdkVersions;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$SupportedSdkVersions$Builder;", "minimum_version", "", "denied_versions", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SupportedSdkVersions extends Message<SupportedSdkVersions, Builder> {
        public static final ProtoAdapter<SupportedSdkVersions> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "deniedVersions", label = WireField.Label.REPEATED, schemaIndex = 1, tag = 2)
        public final List<String> denied_versions;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "minimumVersion", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final String minimum_version;

        public SupportedSdkVersions() {
            this(null, null, null, 7, null);
        }

        public /* synthetic */ SupportedSdkVersions(String str, List list, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? CollectionsKt.emptyList() : list, (i & 4) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SupportedSdkVersions(String minimum_version, List<String> denied_versions, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(minimum_version, "minimum_version");
            Intrinsics.checkNotNullParameter(denied_versions, "denied_versions");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.minimum_version = minimum_version;
            this.denied_versions = Internal.immutableCopyOf("denied_versions", denied_versions);
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.minimum_version = this.minimum_version;
            builder.denied_versions = this.denied_versions;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof SupportedSdkVersions)) {
                return false;
            }
            SupportedSdkVersions supportedSdkVersions = (SupportedSdkVersions) other;
            return Intrinsics.areEqual(unknownFields(), supportedSdkVersions.unknownFields()) && Intrinsics.areEqual(this.minimum_version, supportedSdkVersions.minimum_version) && Intrinsics.areEqual(this.denied_versions, supportedSdkVersions.denied_versions);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((unknownFields().hashCode() * 37) + this.minimum_version.hashCode()) * 37) + this.denied_versions.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("minimum_version=" + Internal.sanitize(this.minimum_version));
            if (!this.denied_versions.isEmpty()) {
                arrayList2.add("denied_versions=" + Internal.sanitize(this.denied_versions));
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "SupportedSdkVersions{", "}", 0, null, null, 56, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ SupportedSdkVersions copy$default(SupportedSdkVersions supportedSdkVersions, String str, List list, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = supportedSdkVersions.minimum_version;
            }
            if ((i & 2) != 0) {
                list = supportedSdkVersions.denied_versions;
            }
            if ((i & 4) != 0) {
                byteString = supportedSdkVersions.unknownFields();
            }
            return supportedSdkVersions.copy(str, list, byteString);
        }

        public final SupportedSdkVersions copy(String minimum_version, List<String> denied_versions, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(minimum_version, "minimum_version");
            Intrinsics.checkNotNullParameter(denied_versions, "denied_versions");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new SupportedSdkVersions(minimum_version, denied_versions, unknownFields);
        }

        /* JADX INFO: compiled from: FormsConfigPb.kt */
        @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006R\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$SupportedSdkVersions$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$SupportedSdkVersions;", "()V", "denied_versions", "", "", "minimum_version", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<SupportedSdkVersions, Builder> {
            public String minimum_version = "";
            public List<String> denied_versions = CollectionsKt.emptyList();

            public final Builder minimum_version(String minimum_version) {
                Intrinsics.checkNotNullParameter(minimum_version, "minimum_version");
                this.minimum_version = minimum_version;
                return this;
            }

            public final Builder denied_versions(List<String> denied_versions) {
                Intrinsics.checkNotNullParameter(denied_versions, "denied_versions");
                Internal.checkElementsNotNull(denied_versions);
                this.denied_versions = denied_versions;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public SupportedSdkVersions build() {
                return new SupportedSdkVersions(this.minimum_version, this.denied_versions, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: FormsConfigPb.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$SupportedSdkVersions$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$SupportedSdkVersions;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$SupportedSdkVersions$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ SupportedSdkVersions build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(SupportedSdkVersions.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<SupportedSdkVersions>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.terminal.pub.message.config.FormsConfigPb$SupportedSdkVersions$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(FormsConfigPb.SupportedSdkVersions value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (!Intrinsics.areEqual(value.minimum_version, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.minimum_version);
                    }
                    return size + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(2, value.denied_versions);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, FormsConfigPb.SupportedSdkVersions value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (!Intrinsics.areEqual(value.minimum_version, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.minimum_version);
                    }
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 2, value.denied_versions);
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, FormsConfigPb.SupportedSdkVersions value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 2, value.denied_versions);
                    if (Intrinsics.areEqual(value.minimum_version, "")) {
                        return;
                    }
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.minimum_version);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public FormsConfigPb.SupportedSdkVersions decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    ArrayList arrayList = new ArrayList();
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = "";
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new FormsConfigPb.SupportedSdkVersions(strDecode, arrayList, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 2) {
                            arrayList.add(ProtoAdapter.STRING.decode(reader));
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public FormsConfigPb.SupportedSdkVersions redact(FormsConfigPb.SupportedSdkVersions value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return FormsConfigPb.SupportedSdkVersions.copy$default(value, null, null, ByteString.EMPTY, 3, null);
                }
            };
        }
    }

    /* JADX INFO: compiled from: FormsConfigPb.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0096\u0002J\b\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000e\u001a\u00020\u0002H\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi$Builder;", "enabled", "", "unknownFields", "Lokio/ByteString;", "(ZLokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Sdi extends Message<Sdi, Builder> {
        public static final ProtoAdapter<Sdi> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final boolean enabled;

        /* JADX WARN: Multi-variable type inference failed */
        public Sdi() {
            this(false, null, 3, 0 == true ? 1 : 0);
        }

        public /* synthetic */ Sdi(boolean z, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? false : z, (i & 2) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Sdi(boolean z, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.enabled = z;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.enabled = this.enabled;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof Sdi)) {
                return false;
            }
            Sdi sdi = (Sdi) other;
            return Intrinsics.areEqual(unknownFields(), sdi.unknownFields()) && this.enabled == sdi.enabled;
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (unknownFields().hashCode() * 37) + Boolean.hashCode(this.enabled);
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            arrayList.add("enabled=" + this.enabled);
            return CollectionsKt.joinToString$default(arrayList, ", ", "Sdi{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ Sdi copy$default(Sdi sdi, boolean z, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                z = sdi.enabled;
            }
            if ((i & 2) != 0) {
                byteString = sdi.unknownFields();
            }
            return sdi.copy(z, byteString);
        }

        public final Sdi copy(boolean enabled, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new Sdi(enabled, unknownFields);
        }

        /* JADX INFO: compiled from: FormsConfigPb.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi;", "()V", "enabled", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<Sdi, Builder> {
            public boolean enabled;

            public final Builder enabled(boolean enabled) {
                this.enabled = enabled;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public Sdi build() {
                return new Sdi(this.enabled, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: FormsConfigPb.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Sdi build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Sdi.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<Sdi>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.terminal.pub.message.config.FormsConfigPb$Sdi$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(FormsConfigPb.Sdi value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    return value.enabled ? size + ProtoAdapter.BOOL.encodedSizeWithTag(1, Boolean.valueOf(value.enabled)) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, FormsConfigPb.Sdi value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.enabled) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 1, Boolean.valueOf(value.enabled));
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, FormsConfigPb.Sdi value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.enabled) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 1, Boolean.valueOf(value.enabled));
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public FormsConfigPb.Sdi redact(FormsConfigPb.Sdi value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return FormsConfigPb.Sdi.copy$default(value, false, ByteString.EMPTY, 1, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public FormsConfigPb.Sdi decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    boolean zBooleanValue = false;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new FormsConfigPb.Sdi(zBooleanValue, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }

    /* JADX INFO: compiled from: FormsConfigPb.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B/\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0014\b\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ0\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\u0014\b\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0007H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit$Builder;", "enabled", "", "supported_sdk_versions", "", "", "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$SupportedSdkVersions;", "unknownFields", "Lokio/ByteString;", "(ZLjava/util/Map;Lokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class JackRabbit extends Message<JackRabbit, Builder> {
        public static final ProtoAdapter<JackRabbit> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final boolean enabled;

        @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.FormsConfigPb$SupportedSdkVersions#ADAPTER", jsonName = "supportedSdkVersions", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 1, tag = 2)
        public final Map<String, SupportedSdkVersions> supported_sdk_versions;

        public JackRabbit() {
            this(false, null, null, 7, null);
        }

        public /* synthetic */ JackRabbit(boolean z, Map map, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? false : z, (i & 2) != 0 ? MapsKt.emptyMap() : map, (i & 4) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public JackRabbit(boolean z, Map<String, SupportedSdkVersions> supported_sdk_versions, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(supported_sdk_versions, "supported_sdk_versions");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.enabled = z;
            this.supported_sdk_versions = Internal.immutableCopyOf("supported_sdk_versions", supported_sdk_versions);
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.enabled = this.enabled;
            builder.supported_sdk_versions = this.supported_sdk_versions;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof JackRabbit)) {
                return false;
            }
            JackRabbit jackRabbit = (JackRabbit) other;
            return Intrinsics.areEqual(unknownFields(), jackRabbit.unknownFields()) && this.enabled == jackRabbit.enabled && Intrinsics.areEqual(this.supported_sdk_versions, jackRabbit.supported_sdk_versions);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((unknownFields().hashCode() * 37) + Boolean.hashCode(this.enabled)) * 37) + this.supported_sdk_versions.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("enabled=" + this.enabled);
            if (!this.supported_sdk_versions.isEmpty()) {
                arrayList2.add("supported_sdk_versions=" + this.supported_sdk_versions);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "JackRabbit{", "}", 0, null, null, 56, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ JackRabbit copy$default(JackRabbit jackRabbit, boolean z, Map map, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                z = jackRabbit.enabled;
            }
            if ((i & 2) != 0) {
                map = jackRabbit.supported_sdk_versions;
            }
            if ((i & 4) != 0) {
                byteString = jackRabbit.unknownFields();
            }
            return jackRabbit.copy(z, map, byteString);
        }

        public final JackRabbit copy(boolean enabled, Map<String, SupportedSdkVersions> supported_sdk_versions, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(supported_sdk_versions, "supported_sdk_versions");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new JackRabbit(enabled, supported_sdk_versions, unknownFields);
        }

        /* JADX INFO: compiled from: FormsConfigPb.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u001a\u0010\u0006\u001a\u00020\u00002\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit;", "()V", "enabled", "", "supported_sdk_versions", "", "", "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$SupportedSdkVersions;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<JackRabbit, Builder> {
            public boolean enabled;
            public Map<String, SupportedSdkVersions> supported_sdk_versions = MapsKt.emptyMap();

            public final Builder enabled(boolean enabled) {
                this.enabled = enabled;
                return this;
            }

            public final Builder supported_sdk_versions(Map<String, SupportedSdkVersions> supported_sdk_versions) {
                Intrinsics.checkNotNullParameter(supported_sdk_versions, "supported_sdk_versions");
                this.supported_sdk_versions = supported_sdk_versions;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public JackRabbit build() {
                return new JackRabbit(this.enabled, this.supported_sdk_versions, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: FormsConfigPb.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ JackRabbit build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(JackRabbit.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<JackRabbit>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.terminal.pub.message.config.FormsConfigPb$JackRabbit$Companion$ADAPTER$1

                /* JADX INFO: renamed from: supported_sdk_versionsAdapter$delegate, reason: from kotlin metadata */
                private final Lazy supported_sdk_versionsAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends FormsConfigPb.SupportedSdkVersions>>>() { // from class: com.stripe.proto.terminal.terminal.pub.message.config.FormsConfigPb$JackRabbit$Companion$ADAPTER$1$supported_sdk_versionsAdapter$2
                    @Override // kotlin.jvm.functions.Function0
                    public final ProtoAdapter<Map<String, ? extends FormsConfigPb.SupportedSdkVersions>> invoke() {
                        return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, FormsConfigPb.SupportedSdkVersions.ADAPTER);
                    }
                });

                private final ProtoAdapter<Map<String, FormsConfigPb.SupportedSdkVersions>> getSupported_sdk_versionsAdapter() {
                    return (ProtoAdapter) this.supported_sdk_versionsAdapter.getValue();
                }

                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(FormsConfigPb.JackRabbit value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.enabled) {
                        size += ProtoAdapter.BOOL.encodedSizeWithTag(1, Boolean.valueOf(value.enabled));
                    }
                    return size + getSupported_sdk_versionsAdapter().encodedSizeWithTag(2, value.supported_sdk_versions);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, FormsConfigPb.JackRabbit value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.enabled) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 1, Boolean.valueOf(value.enabled));
                    }
                    getSupported_sdk_versionsAdapter().encodeWithTag(writer, 2, value.supported_sdk_versions);
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, FormsConfigPb.JackRabbit value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    getSupported_sdk_versionsAdapter().encodeWithTag(writer, 2, value.supported_sdk_versions);
                    if (value.enabled) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 1, Boolean.valueOf(value.enabled));
                    }
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public FormsConfigPb.JackRabbit decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    long jBeginMessage = reader.beginMessage();
                    boolean zBooleanValue = false;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new FormsConfigPb.JackRabbit(zBooleanValue, linkedHashMap, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                        } else if (iNextTag == 2) {
                            linkedHashMap.putAll(getSupported_sdk_versionsAdapter().decode(reader));
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public FormsConfigPb.JackRabbit redact(FormsConfigPb.JackRabbit value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return FormsConfigPb.JackRabbit.copy$default(value, false, Internal.m362redactElements(value.supported_sdk_versions, FormsConfigPb.SupportedSdkVersions.ADAPTER), ByteString.EMPTY, 1, null);
                }
            };
        }
    }

    /* JADX INFO: compiled from: FormsConfigPb.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B/\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0014\b\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ0\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\u0014\b\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00062\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0007H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff$Builder;", "enabled", "", "supported_sdk_versions", "", "", "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$SupportedSdkVersions;", "unknownFields", "Lokio/ByteString;", "(ZLjava/util/Map;Lokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Handoff extends Message<Handoff, Builder> {
        public static final ProtoAdapter<Handoff> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final boolean enabled;

        @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.FormsConfigPb$SupportedSdkVersions#ADAPTER", jsonName = "supportedSdkVersions", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 1, tag = 2)
        public final Map<String, SupportedSdkVersions> supported_sdk_versions;

        public Handoff() {
            this(false, null, null, 7, null);
        }

        public /* synthetic */ Handoff(boolean z, Map map, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? false : z, (i & 2) != 0 ? MapsKt.emptyMap() : map, (i & 4) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Handoff(boolean z, Map<String, SupportedSdkVersions> supported_sdk_versions, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(supported_sdk_versions, "supported_sdk_versions");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.enabled = z;
            this.supported_sdk_versions = Internal.immutableCopyOf("supported_sdk_versions", supported_sdk_versions);
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.enabled = this.enabled;
            builder.supported_sdk_versions = this.supported_sdk_versions;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof Handoff)) {
                return false;
            }
            Handoff handoff = (Handoff) other;
            return Intrinsics.areEqual(unknownFields(), handoff.unknownFields()) && this.enabled == handoff.enabled && Intrinsics.areEqual(this.supported_sdk_versions, handoff.supported_sdk_versions);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((unknownFields().hashCode() * 37) + Boolean.hashCode(this.enabled)) * 37) + this.supported_sdk_versions.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("enabled=" + this.enabled);
            if (!this.supported_sdk_versions.isEmpty()) {
                arrayList2.add("supported_sdk_versions=" + this.supported_sdk_versions);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "Handoff{", "}", 0, null, null, 56, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Handoff copy$default(Handoff handoff, boolean z, Map map, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                z = handoff.enabled;
            }
            if ((i & 2) != 0) {
                map = handoff.supported_sdk_versions;
            }
            if ((i & 4) != 0) {
                byteString = handoff.unknownFields();
            }
            return handoff.copy(z, map, byteString);
        }

        public final Handoff copy(boolean enabled, Map<String, SupportedSdkVersions> supported_sdk_versions, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(supported_sdk_versions, "supported_sdk_versions");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new Handoff(enabled, supported_sdk_versions, unknownFields);
        }

        /* JADX INFO: compiled from: FormsConfigPb.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u001a\u0010\u0006\u001a\u00020\u00002\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;", "()V", "enabled", "", "supported_sdk_versions", "", "", "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$SupportedSdkVersions;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<Handoff, Builder> {
            public boolean enabled;
            public Map<String, SupportedSdkVersions> supported_sdk_versions = MapsKt.emptyMap();

            public final Builder enabled(boolean enabled) {
                this.enabled = enabled;
                return this;
            }

            public final Builder supported_sdk_versions(Map<String, SupportedSdkVersions> supported_sdk_versions) {
                Intrinsics.checkNotNullParameter(supported_sdk_versions, "supported_sdk_versions");
                this.supported_sdk_versions = supported_sdk_versions;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public Handoff build() {
                return new Handoff(this.enabled, this.supported_sdk_versions, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: FormsConfigPb.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Handoff build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Handoff.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<Handoff>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.terminal.pub.message.config.FormsConfigPb$Handoff$Companion$ADAPTER$1

                /* JADX INFO: renamed from: supported_sdk_versionsAdapter$delegate, reason: from kotlin metadata */
                private final Lazy supported_sdk_versionsAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends FormsConfigPb.SupportedSdkVersions>>>() { // from class: com.stripe.proto.terminal.terminal.pub.message.config.FormsConfigPb$Handoff$Companion$ADAPTER$1$supported_sdk_versionsAdapter$2
                    @Override // kotlin.jvm.functions.Function0
                    public final ProtoAdapter<Map<String, ? extends FormsConfigPb.SupportedSdkVersions>> invoke() {
                        return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, FormsConfigPb.SupportedSdkVersions.ADAPTER);
                    }
                });

                private final ProtoAdapter<Map<String, FormsConfigPb.SupportedSdkVersions>> getSupported_sdk_versionsAdapter() {
                    return (ProtoAdapter) this.supported_sdk_versionsAdapter.getValue();
                }

                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(FormsConfigPb.Handoff value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.enabled) {
                        size += ProtoAdapter.BOOL.encodedSizeWithTag(1, Boolean.valueOf(value.enabled));
                    }
                    return size + getSupported_sdk_versionsAdapter().encodedSizeWithTag(2, value.supported_sdk_versions);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, FormsConfigPb.Handoff value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.enabled) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 1, Boolean.valueOf(value.enabled));
                    }
                    getSupported_sdk_versionsAdapter().encodeWithTag(writer, 2, value.supported_sdk_versions);
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, FormsConfigPb.Handoff value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    getSupported_sdk_versionsAdapter().encodeWithTag(writer, 2, value.supported_sdk_versions);
                    if (value.enabled) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 1, Boolean.valueOf(value.enabled));
                    }
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public FormsConfigPb.Handoff decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    long jBeginMessage = reader.beginMessage();
                    boolean zBooleanValue = false;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new FormsConfigPb.Handoff(zBooleanValue, linkedHashMap, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                        } else if (iNextTag == 2) {
                            linkedHashMap.putAll(getSupported_sdk_versionsAdapter().decode(reader));
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public FormsConfigPb.Handoff redact(FormsConfigPb.Handoff value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return FormsConfigPb.Handoff.copy$default(value, false, Internal.m362redactElements(value.supported_sdk_versions, FormsConfigPb.SupportedSdkVersions.ADAPTER), ByteString.EMPTY, 1, null);
                }
            };
        }
    }
}
