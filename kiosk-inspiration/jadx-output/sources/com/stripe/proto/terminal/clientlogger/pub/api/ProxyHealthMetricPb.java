package com.stripe.proto.terminal.clientlogger.pub.api;

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

/* JADX INFO: compiled from: ProxyHealthMetricPb.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B9\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ:\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0004H\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxyHealthMetricPb;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxyHealthMetricPb$Builder;", "origin_role", "", "origin_id", "origin_ip", "health_metric_result", "Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ProxyHealthMetricPb extends Message<ProxyHealthMetricPb, Builder> {
    public static final ProtoAdapter<ProxyHealthMetricPb> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.api.HealthMetricResult#ADAPTER", jsonName = "healthMetricResult", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final HealthMetricResult health_metric_result;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "originId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String origin_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "originIp", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String origin_ip;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "originRole", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String origin_role;

    public ProxyHealthMetricPb() {
        this(null, null, null, null, null, 31, null);
    }

    public /* synthetic */ ProxyHealthMetricPb(String str, String str2, String str3, HealthMetricResult healthMetricResult, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? null : healthMetricResult, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProxyHealthMetricPb(String origin_role, String origin_id, String origin_ip, HealthMetricResult healthMetricResult, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(origin_role, "origin_role");
        Intrinsics.checkNotNullParameter(origin_id, "origin_id");
        Intrinsics.checkNotNullParameter(origin_ip, "origin_ip");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.origin_role = origin_role;
        this.origin_id = origin_id;
        this.origin_ip = origin_ip;
        this.health_metric_result = healthMetricResult;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.origin_role = this.origin_role;
        builder.origin_id = this.origin_id;
        builder.origin_ip = this.origin_ip;
        builder.health_metric_result = this.health_metric_result;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ProxyHealthMetricPb)) {
            return false;
        }
        ProxyHealthMetricPb proxyHealthMetricPb = (ProxyHealthMetricPb) other;
        return Intrinsics.areEqual(unknownFields(), proxyHealthMetricPb.unknownFields()) && Intrinsics.areEqual(this.origin_role, proxyHealthMetricPb.origin_role) && Intrinsics.areEqual(this.origin_id, proxyHealthMetricPb.origin_id) && Intrinsics.areEqual(this.origin_ip, proxyHealthMetricPb.origin_ip) && Intrinsics.areEqual(this.health_metric_result, proxyHealthMetricPb.health_metric_result);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((unknownFields().hashCode() * 37) + this.origin_role.hashCode()) * 37) + this.origin_id.hashCode()) * 37) + this.origin_ip.hashCode()) * 37;
        HealthMetricResult healthMetricResult = this.health_metric_result;
        int iHashCode2 = iHashCode + (healthMetricResult != null ? healthMetricResult.hashCode() : 0);
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("origin_role=" + Internal.sanitize(this.origin_role));
        arrayList2.add("origin_id=" + Internal.sanitize(this.origin_id));
        arrayList2.add("origin_ip=" + Internal.sanitize(this.origin_ip));
        if (this.health_metric_result != null) {
            arrayList2.add("health_metric_result=" + this.health_metric_result);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ProxyHealthMetricPb{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ProxyHealthMetricPb copy$default(ProxyHealthMetricPb proxyHealthMetricPb, String str, String str2, String str3, HealthMetricResult healthMetricResult, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = proxyHealthMetricPb.origin_role;
        }
        if ((i & 2) != 0) {
            str2 = proxyHealthMetricPb.origin_id;
        }
        if ((i & 4) != 0) {
            str3 = proxyHealthMetricPb.origin_ip;
        }
        if ((i & 8) != 0) {
            healthMetricResult = proxyHealthMetricPb.health_metric_result;
        }
        if ((i & 16) != 0) {
            byteString = proxyHealthMetricPb.unknownFields();
        }
        ByteString byteString2 = byteString;
        String str4 = str3;
        return proxyHealthMetricPb.copy(str, str2, str4, healthMetricResult, byteString2);
    }

    public final ProxyHealthMetricPb copy(String origin_role, String origin_id, String origin_ip, HealthMetricResult health_metric_result, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(origin_role, "origin_role");
        Intrinsics.checkNotNullParameter(origin_id, "origin_id");
        Intrinsics.checkNotNullParameter(origin_ip, "origin_ip");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ProxyHealthMetricPb(origin_role, origin_id, origin_ip, health_metric_result, unknownFields);
    }

    /* JADX INFO: compiled from: ProxyHealthMetricPb.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxyHealthMetricPb$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxyHealthMetricPb;", "()V", "health_metric_result", "Lcom/stripe/proto/terminal/clientlogger/pub/api/HealthMetricResult;", "origin_id", "", "origin_ip", "origin_role", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ProxyHealthMetricPb, Builder> {
        public HealthMetricResult health_metric_result;
        public String origin_role = "";
        public String origin_id = "";
        public String origin_ip = "";

        public final Builder origin_role(String origin_role) {
            Intrinsics.checkNotNullParameter(origin_role, "origin_role");
            this.origin_role = origin_role;
            return this;
        }

        public final Builder origin_id(String origin_id) {
            Intrinsics.checkNotNullParameter(origin_id, "origin_id");
            this.origin_id = origin_id;
            return this;
        }

        public final Builder origin_ip(String origin_ip) {
            Intrinsics.checkNotNullParameter(origin_ip, "origin_ip");
            this.origin_ip = origin_ip;
            return this;
        }

        public final Builder health_metric_result(HealthMetricResult health_metric_result) {
            this.health_metric_result = health_metric_result;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ProxyHealthMetricPb build() {
            return new ProxyHealthMetricPb(this.origin_role, this.origin_id, this.origin_ip, this.health_metric_result, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ProxyHealthMetricPb.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxyHealthMetricPb$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxyHealthMetricPb;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxyHealthMetricPb$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ProxyHealthMetricPb build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ProxyHealthMetricPb.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ProxyHealthMetricPb>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.api.ProxyHealthMetricPb$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ProxyHealthMetricPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.origin_role, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.origin_role);
                }
                if (!Intrinsics.areEqual(value.origin_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.origin_id);
                }
                if (!Intrinsics.areEqual(value.origin_ip, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.origin_ip);
                }
                return value.health_metric_result != null ? size + HealthMetricResult.ADAPTER.encodedSizeWithTag(4, value.health_metric_result) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ProxyHealthMetricPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.origin_role, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.origin_role);
                }
                if (!Intrinsics.areEqual(value.origin_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.origin_id);
                }
                if (!Intrinsics.areEqual(value.origin_ip, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.origin_ip);
                }
                if (value.health_metric_result != null) {
                    HealthMetricResult.ADAPTER.encodeWithTag(writer, 4, value.health_metric_result);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ProxyHealthMetricPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.health_metric_result != null) {
                    HealthMetricResult.ADAPTER.encodeWithTag(writer, 4, value.health_metric_result);
                }
                if (!Intrinsics.areEqual(value.origin_ip, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.origin_ip);
                }
                if (!Intrinsics.areEqual(value.origin_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.origin_id);
                }
                if (Intrinsics.areEqual(value.origin_role, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.origin_role);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ProxyHealthMetricPb redact(ProxyHealthMetricPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                HealthMetricResult healthMetricResult = value.health_metric_result;
                return ProxyHealthMetricPb.copy$default(value, null, null, null, healthMetricResult != null ? HealthMetricResult.ADAPTER.redact(healthMetricResult) : null, ByteString.EMPTY, 7, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ProxyHealthMetricPb decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = "";
                HealthMetricResult healthMetricResultDecode = null;
                String strDecode3 = strDecode2;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ProxyHealthMetricPb(strDecode, strDecode3, strDecode2, healthMetricResultDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 2) {
                        strDecode3 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 3) {
                        strDecode2 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 4) {
                        healthMetricResultDecode = HealthMetricResult.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
