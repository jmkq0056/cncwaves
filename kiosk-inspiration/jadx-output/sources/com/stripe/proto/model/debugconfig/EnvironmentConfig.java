package com.stripe.proto.model.debugconfig;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.model.debugconfig.EnvironmentConfig;
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

/* JADX INFO: compiled from: EnvironmentConfig.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0012\u0013\u0014B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001c\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/model/debugconfig/EnvironmentConfig;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Builder;", "environment", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "Environment", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class EnvironmentConfig extends Message<EnvironmentConfig, Builder> {
    public static final ProtoAdapter<EnvironmentConfig> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.debugconfig.EnvironmentConfig$Environment#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final Environment environment;

    /* JADX WARN: Multi-variable type inference failed */
    public EnvironmentConfig() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ EnvironmentConfig(Environment environment, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : environment, (i & 2) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EnvironmentConfig(Environment environment, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.environment = environment;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.environment = this.environment;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof EnvironmentConfig)) {
            return false;
        }
        EnvironmentConfig environmentConfig = (EnvironmentConfig) other;
        return Intrinsics.areEqual(unknownFields(), environmentConfig.unknownFields()) && Intrinsics.areEqual(this.environment, environmentConfig.environment);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Environment environment = this.environment;
        int iHashCode2 = iHashCode + (environment != null ? environment.hashCode() : 0);
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.environment != null) {
            arrayList.add("environment=" + this.environment);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "EnvironmentConfig{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ EnvironmentConfig copy$default(EnvironmentConfig environmentConfig, Environment environment, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            environment = environmentConfig.environment;
        }
        if ((i & 2) != 0) {
            byteString = environmentConfig.unknownFields();
        }
        return environmentConfig.copy(environment, byteString);
    }

    public final EnvironmentConfig copy(Environment environment, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new EnvironmentConfig(environment, unknownFields);
    }

    /* JADX INFO: compiled from: EnvironmentConfig.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig;", "()V", "environment", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<EnvironmentConfig, Builder> {
        public Environment environment;

        public final Builder environment(Environment environment) {
            this.environment = environment;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public EnvironmentConfig build() {
            return new EnvironmentConfig(this.environment, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: EnvironmentConfig.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ EnvironmentConfig build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(EnvironmentConfig.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<EnvironmentConfig>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.debugconfig.EnvironmentConfig$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(EnvironmentConfig value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                return value.environment != null ? size + EnvironmentConfig.Environment.ADAPTER.encodedSizeWithTag(1, value.environment) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, EnvironmentConfig value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.environment != null) {
                    EnvironmentConfig.Environment.ADAPTER.encodeWithTag(writer, 1, value.environment);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, EnvironmentConfig value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.environment != null) {
                    EnvironmentConfig.Environment.ADAPTER.encodeWithTag(writer, 1, value.environment);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public EnvironmentConfig redact(EnvironmentConfig value) {
                Intrinsics.checkNotNullParameter(value, "value");
                EnvironmentConfig.Environment environment = value.environment;
                return value.copy(environment != null ? EnvironmentConfig.Environment.ADAPTER.redact(environment) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public EnvironmentConfig decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                EnvironmentConfig.Environment environmentDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new EnvironmentConfig(environmentDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        environmentDecode = EnvironmentConfig.Environment.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }

    /* JADX INFO: compiled from: EnvironmentConfig.kt */
    @Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u0000 \u001c2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0007\u001a\u001b\u001c\u001d\u001e\u001f BK\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fJL\u0010\u0010\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\r\u001a\u00020\u000eJ\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0002H\u0016J\b\u0010\u0018\u001a\u00020\u0019H\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;", "production", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production;", "qa", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA;", "certhorse", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse;", "preproduction", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction;", "proxygateway", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction;Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Certhorse", "Companion", "Preproduction", "Production", "ProxyGateway", "QA", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Environment extends Message<Environment, Builder> {
        public static final ProtoAdapter<Environment> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.proto.model.debugconfig.EnvironmentConfig$Environment$Certhorse#ADAPTER", oneofName = "environment", schemaIndex = 2, tag = 3)
        public final Certhorse certhorse;

        @WireField(adapter = "com.stripe.proto.model.debugconfig.EnvironmentConfig$Environment$Preproduction#ADAPTER", oneofName = "environment", schemaIndex = 3, tag = 4)
        public final Preproduction preproduction;

        @WireField(adapter = "com.stripe.proto.model.debugconfig.EnvironmentConfig$Environment$Production#ADAPTER", oneofName = "environment", schemaIndex = 0, tag = 1)
        public final Production production;

        @WireField(adapter = "com.stripe.proto.model.debugconfig.EnvironmentConfig$Environment$ProxyGateway#ADAPTER", oneofName = "environment", schemaIndex = 4, tag = 5)
        public final ProxyGateway proxygateway;

        @WireField(adapter = "com.stripe.proto.model.debugconfig.EnvironmentConfig$Environment$QA#ADAPTER", oneofName = "environment", schemaIndex = 1, tag = 2)
        public final QA qa;

        public Environment() {
            this(null, null, null, null, null, null, 63, null);
        }

        public /* synthetic */ Environment(Production production, QA qa, Certhorse certhorse, Preproduction preproduction, ProxyGateway proxyGateway, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : production, (i & 2) != 0 ? null : qa, (i & 4) != 0 ? null : certhorse, (i & 8) != 0 ? null : preproduction, (i & 16) != 0 ? null : proxyGateway, (i & 32) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Environment(Production production, QA qa, Certhorse certhorse, Preproduction preproduction, ProxyGateway proxyGateway, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.production = production;
            this.qa = qa;
            this.certhorse = certhorse;
            this.preproduction = preproduction;
            this.proxygateway = proxyGateway;
            if (Internal.countNonNull(production, qa, certhorse, preproduction, proxyGateway) > 1) {
                throw new IllegalArgumentException("At most one of production, qa, certhorse, preproduction, proxygateway may be non-null".toString());
            }
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.production = this.production;
            builder.qa = this.qa;
            builder.certhorse = this.certhorse;
            builder.preproduction = this.preproduction;
            builder.proxygateway = this.proxygateway;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof Environment)) {
                return false;
            }
            Environment environment = (Environment) other;
            return Intrinsics.areEqual(unknownFields(), environment.unknownFields()) && Intrinsics.areEqual(this.production, environment.production) && Intrinsics.areEqual(this.qa, environment.qa) && Intrinsics.areEqual(this.certhorse, environment.certhorse) && Intrinsics.areEqual(this.preproduction, environment.preproduction) && Intrinsics.areEqual(this.proxygateway, environment.proxygateway);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = unknownFields().hashCode() * 37;
            Production production = this.production;
            int iHashCode2 = (iHashCode + (production != null ? production.hashCode() : 0)) * 37;
            QA qa = this.qa;
            int iHashCode3 = (iHashCode2 + (qa != null ? qa.hashCode() : 0)) * 37;
            Certhorse certhorse = this.certhorse;
            int iHashCode4 = (iHashCode3 + (certhorse != null ? certhorse.hashCode() : 0)) * 37;
            Preproduction preproduction = this.preproduction;
            int iHashCode5 = (iHashCode4 + (preproduction != null ? preproduction.hashCode() : 0)) * 37;
            ProxyGateway proxyGateway = this.proxygateway;
            int iHashCode6 = iHashCode5 + (proxyGateway != null ? proxyGateway.hashCode() : 0);
            this.hashCode = iHashCode6;
            return iHashCode6;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (this.production != null) {
                arrayList.add("production=" + this.production);
            }
            if (this.qa != null) {
                arrayList.add("qa=" + this.qa);
            }
            if (this.certhorse != null) {
                arrayList.add("certhorse=" + this.certhorse);
            }
            if (this.preproduction != null) {
                arrayList.add("preproduction=" + this.preproduction);
            }
            if (this.proxygateway != null) {
                arrayList.add("proxygateway=" + this.proxygateway);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "Environment{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ Environment copy$default(Environment environment, Production production, QA qa, Certhorse certhorse, Preproduction preproduction, ProxyGateway proxyGateway, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                production = environment.production;
            }
            if ((i & 2) != 0) {
                qa = environment.qa;
            }
            if ((i & 4) != 0) {
                certhorse = environment.certhorse;
            }
            if ((i & 8) != 0) {
                preproduction = environment.preproduction;
            }
            if ((i & 16) != 0) {
                proxyGateway = environment.proxygateway;
            }
            if ((i & 32) != 0) {
                byteString = environment.unknownFields();
            }
            ProxyGateway proxyGateway2 = proxyGateway;
            ByteString byteString2 = byteString;
            return environment.copy(production, qa, certhorse, preproduction, proxyGateway2, byteString2);
        }

        public final Environment copy(Production production, QA qa, Certhorse certhorse, Preproduction preproduction, ProxyGateway proxygateway, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new Environment(production, qa, certhorse, preproduction, proxygateway, unknownFields);
        }

        /* JADX INFO: compiled from: EnvironmentConfig.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\rR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;", "()V", "certhorse", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse;", "preproduction", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction;", "production", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production;", "proxygateway", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway;", "qa", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<Environment, Builder> {
            public Certhorse certhorse;
            public Preproduction preproduction;
            public Production production;
            public ProxyGateway proxygateway;
            public QA qa;

            public final Builder production(Production production) {
                this.production = production;
                this.qa = null;
                this.certhorse = null;
                this.preproduction = null;
                this.proxygateway = null;
                return this;
            }

            public final Builder qa(QA qa) {
                this.qa = qa;
                this.production = null;
                this.certhorse = null;
                this.preproduction = null;
                this.proxygateway = null;
                return this;
            }

            public final Builder certhorse(Certhorse certhorse) {
                this.certhorse = certhorse;
                this.production = null;
                this.qa = null;
                this.preproduction = null;
                this.proxygateway = null;
                return this;
            }

            public final Builder preproduction(Preproduction preproduction) {
                this.preproduction = preproduction;
                this.production = null;
                this.qa = null;
                this.certhorse = null;
                this.proxygateway = null;
                return this;
            }

            public final Builder proxygateway(ProxyGateway proxygateway) {
                this.proxygateway = proxygateway;
                this.production = null;
                this.qa = null;
                this.certhorse = null;
                this.preproduction = null;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public Environment build() {
                return new Environment(this.production, this.qa, this.certhorse, this.preproduction, this.proxygateway, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: EnvironmentConfig.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Environment build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Environment.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<Environment>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.debugconfig.EnvironmentConfig$Environment$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(EnvironmentConfig.Environment value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.unknownFields().size() + EnvironmentConfig.Environment.Production.ADAPTER.encodedSizeWithTag(1, value.production) + EnvironmentConfig.Environment.QA.ADAPTER.encodedSizeWithTag(2, value.qa) + EnvironmentConfig.Environment.Certhorse.ADAPTER.encodedSizeWithTag(3, value.certhorse) + EnvironmentConfig.Environment.Preproduction.ADAPTER.encodedSizeWithTag(4, value.preproduction) + EnvironmentConfig.Environment.ProxyGateway.ADAPTER.encodedSizeWithTag(5, value.proxygateway);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, EnvironmentConfig.Environment value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    EnvironmentConfig.Environment.Production.ADAPTER.encodeWithTag(writer, 1, value.production);
                    EnvironmentConfig.Environment.QA.ADAPTER.encodeWithTag(writer, 2, value.qa);
                    EnvironmentConfig.Environment.Certhorse.ADAPTER.encodeWithTag(writer, 3, value.certhorse);
                    EnvironmentConfig.Environment.Preproduction.ADAPTER.encodeWithTag(writer, 4, value.preproduction);
                    EnvironmentConfig.Environment.ProxyGateway.ADAPTER.encodeWithTag(writer, 5, value.proxygateway);
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, EnvironmentConfig.Environment value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    EnvironmentConfig.Environment.ProxyGateway.ADAPTER.encodeWithTag(writer, 5, value.proxygateway);
                    EnvironmentConfig.Environment.Preproduction.ADAPTER.encodeWithTag(writer, 4, value.preproduction);
                    EnvironmentConfig.Environment.Certhorse.ADAPTER.encodeWithTag(writer, 3, value.certhorse);
                    EnvironmentConfig.Environment.QA.ADAPTER.encodeWithTag(writer, 2, value.qa);
                    EnvironmentConfig.Environment.Production.ADAPTER.encodeWithTag(writer, 1, value.production);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public EnvironmentConfig.Environment redact(EnvironmentConfig.Environment value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    EnvironmentConfig.Environment.Production production = value.production;
                    EnvironmentConfig.Environment.Production productionRedact = production != null ? EnvironmentConfig.Environment.Production.ADAPTER.redact(production) : null;
                    EnvironmentConfig.Environment.QA qa = value.qa;
                    EnvironmentConfig.Environment.QA qaRedact = qa != null ? EnvironmentConfig.Environment.QA.ADAPTER.redact(qa) : null;
                    EnvironmentConfig.Environment.Certhorse certhorse = value.certhorse;
                    EnvironmentConfig.Environment.Certhorse certhorseRedact = certhorse != null ? EnvironmentConfig.Environment.Certhorse.ADAPTER.redact(certhorse) : null;
                    EnvironmentConfig.Environment.Preproduction preproduction = value.preproduction;
                    EnvironmentConfig.Environment.Preproduction preproductionRedact = preproduction != null ? EnvironmentConfig.Environment.Preproduction.ADAPTER.redact(preproduction) : null;
                    EnvironmentConfig.Environment.ProxyGateway proxyGateway = value.proxygateway;
                    return value.copy(productionRedact, qaRedact, certhorseRedact, preproductionRedact, proxyGateway != null ? EnvironmentConfig.Environment.ProxyGateway.ADAPTER.redact(proxyGateway) : null, ByteString.EMPTY);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public EnvironmentConfig.Environment decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    EnvironmentConfig.Environment.Production productionDecode = null;
                    EnvironmentConfig.Environment.QA qaDecode = null;
                    EnvironmentConfig.Environment.Certhorse certhorseDecode = null;
                    EnvironmentConfig.Environment.Preproduction preproductionDecode = null;
                    EnvironmentConfig.Environment.ProxyGateway proxyGatewayDecode = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new EnvironmentConfig.Environment(productionDecode, qaDecode, certhorseDecode, preproductionDecode, proxyGatewayDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            productionDecode = EnvironmentConfig.Environment.Production.ADAPTER.decode(reader);
                        } else if (iNextTag == 2) {
                            qaDecode = EnvironmentConfig.Environment.QA.ADAPTER.decode(reader);
                        } else if (iNextTag == 3) {
                            certhorseDecode = EnvironmentConfig.Environment.Certhorse.ADAPTER.decode(reader);
                        } else if (iNextTag == 4) {
                            preproductionDecode = EnvironmentConfig.Environment.Preproduction.ADAPTER.decode(reader);
                        } else if (iNextTag == 5) {
                            proxyGatewayDecode = EnvironmentConfig.Environment.ProxyGateway.ADAPTER.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }

        /* JADX INFO: compiled from: EnvironmentConfig.kt */
        @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00112\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0010\u0011B\u000f\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0004J\u0013\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0096\u0002J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\u0002H\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016¨\u0006\u0012"}, d2 = {"Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production$Builder;", "unknownFields", "Lokio/ByteString;", "(Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Production extends Message<Production, Builder> {
            public static final ProtoAdapter<Production> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            /* JADX WARN: Multi-variable type inference failed */
            public Production() {
                this(null, 1, 0 == true ? 1 : 0);
            }

            public /* synthetic */ Production(ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Production(ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                return (other instanceof Production) && Intrinsics.areEqual(unknownFields(), ((Production) other).unknownFields());
            }

            public int hashCode() {
                return unknownFields().hashCode();
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                return "Production{}";
            }

            public static /* synthetic */ Production copy$default(Production production, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    byteString = production.unknownFields();
                }
                return production.copy(byteString);
            }

            public final Production copy(ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new Production(unknownFields);
            }

            /* JADX INFO: compiled from: EnvironmentConfig.kt */
            @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0002H\u0016¨\u0006\u0005"}, d2 = {"Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production;", "()V", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<Production, Builder> {
                @Override // com.squareup.wire.Message.Builder
                public Production build() {
                    return new Production(buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: EnvironmentConfig.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Production$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ Production build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Production.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<Production>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.debugconfig.EnvironmentConfig$Environment$Production$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(EnvironmentConfig.Environment.Production value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return value.unknownFields().size();
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, EnvironmentConfig.Environment.Production value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, EnvironmentConfig.Environment.Production value) {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public EnvironmentConfig.Environment.Production redact(EnvironmentConfig.Environment.Production value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return value.copy(ByteString.EMPTY);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public EnvironmentConfig.Environment.Production decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        long jBeginMessage = reader.beginMessage();
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag != -1) {
                                reader.readUnknownField(iNextTag);
                            } else {
                                return new EnvironmentConfig.Environment.Production(reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                        }
                    }
                };
            }
        }

        /* JADX INFO: compiled from: EnvironmentConfig.kt */
        @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00112\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0010\u0011B\u000f\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0004J\u0013\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0096\u0002J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\u0002H\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016¨\u0006\u0012"}, d2 = {"Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction$Builder;", "unknownFields", "Lokio/ByteString;", "(Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Preproduction extends Message<Preproduction, Builder> {
            public static final ProtoAdapter<Preproduction> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            /* JADX WARN: Multi-variable type inference failed */
            public Preproduction() {
                this(null, 1, 0 == true ? 1 : 0);
            }

            public /* synthetic */ Preproduction(ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Preproduction(ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                return (other instanceof Preproduction) && Intrinsics.areEqual(unknownFields(), ((Preproduction) other).unknownFields());
            }

            public int hashCode() {
                return unknownFields().hashCode();
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                return "Preproduction{}";
            }

            public static /* synthetic */ Preproduction copy$default(Preproduction preproduction, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    byteString = preproduction.unknownFields();
                }
                return preproduction.copy(byteString);
            }

            public final Preproduction copy(ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new Preproduction(unknownFields);
            }

            /* JADX INFO: compiled from: EnvironmentConfig.kt */
            @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0002H\u0016¨\u0006\u0005"}, d2 = {"Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction;", "()V", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<Preproduction, Builder> {
                @Override // com.squareup.wire.Message.Builder
                public Preproduction build() {
                    return new Preproduction(buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: EnvironmentConfig.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Preproduction$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ Preproduction build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Preproduction.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<Preproduction>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.debugconfig.EnvironmentConfig$Environment$Preproduction$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(EnvironmentConfig.Environment.Preproduction value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return value.unknownFields().size();
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, EnvironmentConfig.Environment.Preproduction value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, EnvironmentConfig.Environment.Preproduction value) {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public EnvironmentConfig.Environment.Preproduction redact(EnvironmentConfig.Environment.Preproduction value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return value.copy(ByteString.EMPTY);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public EnvironmentConfig.Environment.Preproduction decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        long jBeginMessage = reader.beginMessage();
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag != -1) {
                                reader.readUnknownField(iNextTag);
                            } else {
                                return new EnvironmentConfig.Environment.Preproduction(reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                        }
                    }
                };
            }
        }

        /* JADX INFO: compiled from: EnvironmentConfig.kt */
        @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00112\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0010\u0011B\u000f\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0004J\u0013\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0096\u0002J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\u0002H\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016¨\u0006\u0012"}, d2 = {"Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA$Builder;", "unknownFields", "Lokio/ByteString;", "(Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class QA extends Message<QA, Builder> {
            public static final ProtoAdapter<QA> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            /* JADX WARN: Multi-variable type inference failed */
            public QA() {
                this(null, 1, 0 == true ? 1 : 0);
            }

            public /* synthetic */ QA(ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public QA(ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                return (other instanceof QA) && Intrinsics.areEqual(unknownFields(), ((QA) other).unknownFields());
            }

            public int hashCode() {
                return unknownFields().hashCode();
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                return "QA{}";
            }

            public static /* synthetic */ QA copy$default(QA qa, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    byteString = qa.unknownFields();
                }
                return qa.copy(byteString);
            }

            public final QA copy(ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new QA(unknownFields);
            }

            /* JADX INFO: compiled from: EnvironmentConfig.kt */
            @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0002H\u0016¨\u0006\u0005"}, d2 = {"Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA;", "()V", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<QA, Builder> {
                @Override // com.squareup.wire.Message.Builder
                public QA build() {
                    return new QA(buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: EnvironmentConfig.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$QA$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ QA build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(QA.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<QA>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.debugconfig.EnvironmentConfig$Environment$QA$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(EnvironmentConfig.Environment.QA value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return value.unknownFields().size();
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, EnvironmentConfig.Environment.QA value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, EnvironmentConfig.Environment.QA value) {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public EnvironmentConfig.Environment.QA redact(EnvironmentConfig.Environment.QA value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return value.copy(ByteString.EMPTY);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public EnvironmentConfig.Environment.QA decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        long jBeginMessage = reader.beginMessage();
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag != -1) {
                                reader.readUnknownField(iNextTag);
                            } else {
                                return new EnvironmentConfig.Environment.QA(reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                        }
                    }
                };
            }
        }

        /* JADX INFO: compiled from: EnvironmentConfig.kt */
        @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00112\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0010\u0011B\u000f\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0004J\u0013\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0096\u0002J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\u0002H\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016¨\u0006\u0012"}, d2 = {"Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway$Builder;", "unknownFields", "Lokio/ByteString;", "(Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class ProxyGateway extends Message<ProxyGateway, Builder> {
            public static final ProtoAdapter<ProxyGateway> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            /* JADX WARN: Multi-variable type inference failed */
            public ProxyGateway() {
                this(null, 1, 0 == true ? 1 : 0);
            }

            public /* synthetic */ ProxyGateway(ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public ProxyGateway(ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                return (other instanceof ProxyGateway) && Intrinsics.areEqual(unknownFields(), ((ProxyGateway) other).unknownFields());
            }

            public int hashCode() {
                return unknownFields().hashCode();
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                return "ProxyGateway{}";
            }

            public static /* synthetic */ ProxyGateway copy$default(ProxyGateway proxyGateway, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    byteString = proxyGateway.unknownFields();
                }
                return proxyGateway.copy(byteString);
            }

            public final ProxyGateway copy(ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new ProxyGateway(unknownFields);
            }

            /* JADX INFO: compiled from: EnvironmentConfig.kt */
            @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0002H\u0016¨\u0006\u0005"}, d2 = {"Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway;", "()V", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<ProxyGateway, Builder> {
                @Override // com.squareup.wire.Message.Builder
                public ProxyGateway build() {
                    return new ProxyGateway(buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: EnvironmentConfig.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$ProxyGateway$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ ProxyGateway build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ProxyGateway.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<ProxyGateway>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.debugconfig.EnvironmentConfig$Environment$ProxyGateway$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(EnvironmentConfig.Environment.ProxyGateway value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return value.unknownFields().size();
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, EnvironmentConfig.Environment.ProxyGateway value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, EnvironmentConfig.Environment.ProxyGateway value) {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public EnvironmentConfig.Environment.ProxyGateway redact(EnvironmentConfig.Environment.ProxyGateway value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return value.copy(ByteString.EMPTY);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public EnvironmentConfig.Environment.ProxyGateway decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        long jBeginMessage = reader.beginMessage();
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag != -1) {
                                reader.readUnknownField(iNextTag);
                            } else {
                                return new EnvironmentConfig.Environment.ProxyGateway(reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                        }
                    }
                };
            }
        }

        /* JADX INFO: compiled from: EnvironmentConfig.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse$Builder;", "instance", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Certhorse extends Message<Certhorse, Builder> {
            public static final ProtoAdapter<Certhorse> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
            public final String instance;

            /* JADX WARN: Multi-variable type inference failed */
            public Certhorse() {
                this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
            }

            public /* synthetic */ Certhorse(String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Certhorse(String instance, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(instance, "instance");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.instance = instance;
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.instance = this.instance;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof Certhorse)) {
                    return false;
                }
                Certhorse certhorse = (Certhorse) other;
                return Intrinsics.areEqual(unknownFields(), certhorse.unknownFields()) && Intrinsics.areEqual(this.instance, certhorse.instance);
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = (unknownFields().hashCode() * 37) + this.instance.hashCode();
                this.hashCode = iHashCode;
                return iHashCode;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                arrayList.add("instance=" + Internal.sanitize(this.instance));
                return CollectionsKt.joinToString$default(arrayList, ", ", "Certhorse{", "}", 0, null, null, 56, null);
            }

            public static /* synthetic */ Certhorse copy$default(Certhorse certhorse, String str, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = certhorse.instance;
                }
                if ((i & 2) != 0) {
                    byteString = certhorse.unknownFields();
                }
                return certhorse.copy(str, byteString);
            }

            public final Certhorse copy(String instance, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(instance, "instance");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new Certhorse(instance, unknownFields);
            }

            /* JADX INFO: compiled from: EnvironmentConfig.kt */
            @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse;", "()V", "instance", "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<Certhorse, Builder> {
                public String instance = "";

                public final Builder instance(String instance) {
                    Intrinsics.checkNotNullParameter(instance, "instance");
                    this.instance = instance;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public Certhorse build() {
                    return new Certhorse(this.instance, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: EnvironmentConfig.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/debugconfig/EnvironmentConfig$Environment$Certhorse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ Certhorse build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Certhorse.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<Certhorse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.debugconfig.EnvironmentConfig$Environment$Certhorse$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(EnvironmentConfig.Environment.Certhorse value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        return !Intrinsics.areEqual(value.instance, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(1, value.instance) : size;
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, EnvironmentConfig.Environment.Certhorse value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (!Intrinsics.areEqual(value.instance, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 1, value.instance);
                        }
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, EnvironmentConfig.Environment.Certhorse value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        if (Intrinsics.areEqual(value.instance, "")) {
                            return;
                        }
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.instance);
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public EnvironmentConfig.Environment.Certhorse redact(EnvironmentConfig.Environment.Certhorse value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return EnvironmentConfig.Environment.Certhorse.copy$default(value, null, ByteString.EMPTY, 1, null);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public EnvironmentConfig.Environment.Certhorse decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        long jBeginMessage = reader.beginMessage();
                        String strDecode = "";
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new EnvironmentConfig.Environment.Certhorse(strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                            if (iNextTag == 1) {
                                strDecode = ProtoAdapter.STRING.decode(reader);
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }
                };
            }
        }
    }
}
