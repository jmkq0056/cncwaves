package com.stripe.proto.terminal.terminal.pub.message.config;

import androidx.core.provider.FontsContractCompat;
import com.squareup.wire.EnumAdapter;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.model.common.UrlPb;
import com.stripe.proto.terminal.terminal.pub.message.config.ApiWifiConfig;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: ApiWifiConfig.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u0000 \u00192\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0007\u0018\u0019\u001a\u001b\u001c\u001d\u001eB=\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ>\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\fJ\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0002H\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$Builder;", "personal_wifi_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$PersonalPSKWifiConfig;", "enterprise_peap_wifi_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig;", "enterprise_tls_wifi_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterpriseTLSWifiConfig;", "type", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$SecurityType;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$PersonalPSKWifiConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterpriseTLSWifiConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$SecurityType;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "EnterprisePEAPWifiConfig", "EnterpriseTLSWifiConfig", "PersonalPSKWifiConfig", "SecurityType", "WifiCredentialsFile", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ApiWifiConfig extends Message<ApiWifiConfig, Builder> {
    public static final ProtoAdapter<ApiWifiConfig> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.ApiWifiConfig$EnterprisePEAPWifiConfig#ADAPTER", jsonName = "enterprisePeapWifiConfig", oneofName = "config", schemaIndex = 1, tag = 2)
    public final EnterprisePEAPWifiConfig enterprise_peap_wifi_config;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.ApiWifiConfig$EnterpriseTLSWifiConfig#ADAPTER", jsonName = "enterpriseTlsWifiConfig", oneofName = "config", schemaIndex = 2, tag = 4)
    public final EnterpriseTLSWifiConfig enterprise_tls_wifi_config;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.ApiWifiConfig$PersonalPSKWifiConfig#ADAPTER", jsonName = "personalWifiConfig", oneofName = "config", schemaIndex = 0, tag = 1)
    public final PersonalPSKWifiConfig personal_wifi_config;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.ApiWifiConfig$SecurityType#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 3)
    public final SecurityType type;

    public ApiWifiConfig() {
        this(null, null, null, null, null, 31, null);
    }

    public /* synthetic */ ApiWifiConfig(PersonalPSKWifiConfig personalPSKWifiConfig, EnterprisePEAPWifiConfig enterprisePEAPWifiConfig, EnterpriseTLSWifiConfig enterpriseTLSWifiConfig, SecurityType securityType, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : personalPSKWifiConfig, (i & 2) != 0 ? null : enterprisePEAPWifiConfig, (i & 4) != 0 ? null : enterpriseTLSWifiConfig, (i & 8) != 0 ? SecurityType.SECURITY_TYPE_INVALID : securityType, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApiWifiConfig(PersonalPSKWifiConfig personalPSKWifiConfig, EnterprisePEAPWifiConfig enterprisePEAPWifiConfig, EnterpriseTLSWifiConfig enterpriseTLSWifiConfig, SecurityType type, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.personal_wifi_config = personalPSKWifiConfig;
        this.enterprise_peap_wifi_config = enterprisePEAPWifiConfig;
        this.enterprise_tls_wifi_config = enterpriseTLSWifiConfig;
        this.type = type;
        if (Internal.countNonNull(personalPSKWifiConfig, enterprisePEAPWifiConfig, enterpriseTLSWifiConfig) > 1) {
            throw new IllegalArgumentException("At most one of personal_wifi_config, enterprise_peap_wifi_config, enterprise_tls_wifi_config may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.personal_wifi_config = this.personal_wifi_config;
        builder.enterprise_peap_wifi_config = this.enterprise_peap_wifi_config;
        builder.enterprise_tls_wifi_config = this.enterprise_tls_wifi_config;
        builder.type = this.type;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ApiWifiConfig)) {
            return false;
        }
        ApiWifiConfig apiWifiConfig = (ApiWifiConfig) other;
        return Intrinsics.areEqual(unknownFields(), apiWifiConfig.unknownFields()) && Intrinsics.areEqual(this.personal_wifi_config, apiWifiConfig.personal_wifi_config) && Intrinsics.areEqual(this.enterprise_peap_wifi_config, apiWifiConfig.enterprise_peap_wifi_config) && Intrinsics.areEqual(this.enterprise_tls_wifi_config, apiWifiConfig.enterprise_tls_wifi_config) && this.type == apiWifiConfig.type;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        PersonalPSKWifiConfig personalPSKWifiConfig = this.personal_wifi_config;
        int iHashCode2 = (iHashCode + (personalPSKWifiConfig != null ? personalPSKWifiConfig.hashCode() : 0)) * 37;
        EnterprisePEAPWifiConfig enterprisePEAPWifiConfig = this.enterprise_peap_wifi_config;
        int iHashCode3 = (iHashCode2 + (enterprisePEAPWifiConfig != null ? enterprisePEAPWifiConfig.hashCode() : 0)) * 37;
        EnterpriseTLSWifiConfig enterpriseTLSWifiConfig = this.enterprise_tls_wifi_config;
        int iHashCode4 = ((iHashCode3 + (enterpriseTLSWifiConfig != null ? enterpriseTLSWifiConfig.hashCode() : 0)) * 37) + this.type.hashCode();
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.personal_wifi_config != null) {
            arrayList.add("personal_wifi_config=" + this.personal_wifi_config);
        }
        if (this.enterprise_peap_wifi_config != null) {
            arrayList.add("enterprise_peap_wifi_config=" + this.enterprise_peap_wifi_config);
        }
        if (this.enterprise_tls_wifi_config != null) {
            arrayList.add("enterprise_tls_wifi_config=" + this.enterprise_tls_wifi_config);
        }
        arrayList.add("type=" + this.type);
        return CollectionsKt.joinToString$default(arrayList, ", ", "ApiWifiConfig{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ApiWifiConfig copy$default(ApiWifiConfig apiWifiConfig, PersonalPSKWifiConfig personalPSKWifiConfig, EnterprisePEAPWifiConfig enterprisePEAPWifiConfig, EnterpriseTLSWifiConfig enterpriseTLSWifiConfig, SecurityType securityType, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            personalPSKWifiConfig = apiWifiConfig.personal_wifi_config;
        }
        if ((i & 2) != 0) {
            enterprisePEAPWifiConfig = apiWifiConfig.enterprise_peap_wifi_config;
        }
        if ((i & 4) != 0) {
            enterpriseTLSWifiConfig = apiWifiConfig.enterprise_tls_wifi_config;
        }
        if ((i & 8) != 0) {
            securityType = apiWifiConfig.type;
        }
        if ((i & 16) != 0) {
            byteString = apiWifiConfig.unknownFields();
        }
        ByteString byteString2 = byteString;
        EnterpriseTLSWifiConfig enterpriseTLSWifiConfig2 = enterpriseTLSWifiConfig;
        return apiWifiConfig.copy(personalPSKWifiConfig, enterprisePEAPWifiConfig, enterpriseTLSWifiConfig2, securityType, byteString2);
    }

    public final ApiWifiConfig copy(PersonalPSKWifiConfig personal_wifi_config, EnterprisePEAPWifiConfig enterprise_peap_wifi_config, EnterpriseTLSWifiConfig enterprise_tls_wifi_config, SecurityType type, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ApiWifiConfig(personal_wifi_config, enterprise_peap_wifi_config, enterprise_tls_wifi_config, type, unknownFields);
    }

    /* JADX INFO: compiled from: ApiWifiConfig.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\f\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;", "()V", "enterprise_peap_wifi_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig;", "enterprise_tls_wifi_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterpriseTLSWifiConfig;", "personal_wifi_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$PersonalPSKWifiConfig;", "type", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$SecurityType;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ApiWifiConfig, Builder> {
        public EnterprisePEAPWifiConfig enterprise_peap_wifi_config;
        public EnterpriseTLSWifiConfig enterprise_tls_wifi_config;
        public PersonalPSKWifiConfig personal_wifi_config;
        public SecurityType type = SecurityType.SECURITY_TYPE_INVALID;

        public final Builder type(SecurityType type) {
            Intrinsics.checkNotNullParameter(type, "type");
            this.type = type;
            return this;
        }

        public final Builder personal_wifi_config(PersonalPSKWifiConfig personal_wifi_config) {
            this.personal_wifi_config = personal_wifi_config;
            this.enterprise_peap_wifi_config = null;
            this.enterprise_tls_wifi_config = null;
            return this;
        }

        public final Builder enterprise_peap_wifi_config(EnterprisePEAPWifiConfig enterprise_peap_wifi_config) {
            this.enterprise_peap_wifi_config = enterprise_peap_wifi_config;
            this.personal_wifi_config = null;
            this.enterprise_tls_wifi_config = null;
            return this;
        }

        public final Builder enterprise_tls_wifi_config(EnterpriseTLSWifiConfig enterprise_tls_wifi_config) {
            this.enterprise_tls_wifi_config = enterprise_tls_wifi_config;
            this.personal_wifi_config = null;
            this.enterprise_peap_wifi_config = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ApiWifiConfig build() {
            return new ApiWifiConfig(this.personal_wifi_config, this.enterprise_peap_wifi_config, this.enterprise_tls_wifi_config, this.type, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ApiWifiConfig.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ApiWifiConfig build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ApiWifiConfig.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ApiWifiConfig>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.terminal.pub.message.config.ApiWifiConfig$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ApiWifiConfig value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size() + ApiWifiConfig.PersonalPSKWifiConfig.ADAPTER.encodedSizeWithTag(1, value.personal_wifi_config) + ApiWifiConfig.EnterprisePEAPWifiConfig.ADAPTER.encodedSizeWithTag(2, value.enterprise_peap_wifi_config) + ApiWifiConfig.EnterpriseTLSWifiConfig.ADAPTER.encodedSizeWithTag(4, value.enterprise_tls_wifi_config);
                return value.type != ApiWifiConfig.SecurityType.SECURITY_TYPE_INVALID ? size + ApiWifiConfig.SecurityType.ADAPTER.encodedSizeWithTag(3, value.type) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ApiWifiConfig value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.type != ApiWifiConfig.SecurityType.SECURITY_TYPE_INVALID) {
                    ApiWifiConfig.SecurityType.ADAPTER.encodeWithTag(writer, 3, value.type);
                }
                ApiWifiConfig.PersonalPSKWifiConfig.ADAPTER.encodeWithTag(writer, 1, value.personal_wifi_config);
                ApiWifiConfig.EnterprisePEAPWifiConfig.ADAPTER.encodeWithTag(writer, 2, value.enterprise_peap_wifi_config);
                ApiWifiConfig.EnterpriseTLSWifiConfig.ADAPTER.encodeWithTag(writer, 4, value.enterprise_tls_wifi_config);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ApiWifiConfig value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                ApiWifiConfig.EnterpriseTLSWifiConfig.ADAPTER.encodeWithTag(writer, 4, value.enterprise_tls_wifi_config);
                ApiWifiConfig.EnterprisePEAPWifiConfig.ADAPTER.encodeWithTag(writer, 2, value.enterprise_peap_wifi_config);
                ApiWifiConfig.PersonalPSKWifiConfig.ADAPTER.encodeWithTag(writer, 1, value.personal_wifi_config);
                if (value.type != ApiWifiConfig.SecurityType.SECURITY_TYPE_INVALID) {
                    ApiWifiConfig.SecurityType.ADAPTER.encodeWithTag(writer, 3, value.type);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ApiWifiConfig decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ApiWifiConfig.SecurityType securityTypeDecode = ApiWifiConfig.SecurityType.SECURITY_TYPE_INVALID;
                long jBeginMessage = reader.beginMessage();
                ApiWifiConfig.PersonalPSKWifiConfig personalPSKWifiConfigDecode = null;
                ApiWifiConfig.EnterprisePEAPWifiConfig enterprisePEAPWifiConfigDecode = null;
                ApiWifiConfig.EnterpriseTLSWifiConfig enterpriseTLSWifiConfigDecode = null;
                while (true) {
                    ApiWifiConfig.SecurityType securityType = securityTypeDecode;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new ApiWifiConfig(personalPSKWifiConfigDecode, enterprisePEAPWifiConfigDecode, enterpriseTLSWifiConfigDecode, securityType, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            personalPSKWifiConfigDecode = ApiWifiConfig.PersonalPSKWifiConfig.ADAPTER.decode(reader);
                        } else if (iNextTag == 2) {
                            enterprisePEAPWifiConfigDecode = ApiWifiConfig.EnterprisePEAPWifiConfig.ADAPTER.decode(reader);
                        } else if (iNextTag == 3) {
                            try {
                                securityTypeDecode = ApiWifiConfig.SecurityType.ADAPTER.decode(reader);
                                break;
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                            }
                        } else if (iNextTag == 4) {
                            enterpriseTLSWifiConfigDecode = ApiWifiConfig.EnterpriseTLSWifiConfig.ADAPTER.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ApiWifiConfig redact(ApiWifiConfig value) {
                Intrinsics.checkNotNullParameter(value, "value");
                ApiWifiConfig.PersonalPSKWifiConfig personalPSKWifiConfig = value.personal_wifi_config;
                ApiWifiConfig.PersonalPSKWifiConfig personalPSKWifiConfigRedact = personalPSKWifiConfig != null ? ApiWifiConfig.PersonalPSKWifiConfig.ADAPTER.redact(personalPSKWifiConfig) : null;
                ApiWifiConfig.EnterprisePEAPWifiConfig enterprisePEAPWifiConfig = value.enterprise_peap_wifi_config;
                ApiWifiConfig.EnterprisePEAPWifiConfig enterprisePEAPWifiConfigRedact = enterprisePEAPWifiConfig != null ? ApiWifiConfig.EnterprisePEAPWifiConfig.ADAPTER.redact(enterprisePEAPWifiConfig) : null;
                ApiWifiConfig.EnterpriseTLSWifiConfig enterpriseTLSWifiConfig = value.enterprise_tls_wifi_config;
                return ApiWifiConfig.copy$default(value, personalPSKWifiConfigRedact, enterprisePEAPWifiConfigRedact, enterpriseTLSWifiConfig != null ? ApiWifiConfig.EnterpriseTLSWifiConfig.ADAPTER.redact(enterpriseTLSWifiConfig) : null, null, ByteString.EMPTY, 8, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: ApiWifiConfig.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$SecurityType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "SECURITY_TYPE_INVALID", "PERSONAL_PSK", "ENTERPRISE_PEAP", "ENTERPRISE_TLS", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SecurityType implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ SecurityType[] $VALUES;
        public static final ProtoAdapter<SecurityType> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final SecurityType ENTERPRISE_PEAP;
        public static final SecurityType ENTERPRISE_TLS;
        public static final SecurityType PERSONAL_PSK;
        public static final SecurityType SECURITY_TYPE_INVALID;
        private final int value;

        private static final /* synthetic */ SecurityType[] $values() {
            return new SecurityType[]{SECURITY_TYPE_INVALID, PERSONAL_PSK, ENTERPRISE_PEAP, ENTERPRISE_TLS};
        }

        @JvmStatic
        public static final SecurityType fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<SecurityType> getEntries() {
            return $ENTRIES;
        }

        public static SecurityType valueOf(String str) {
            return (SecurityType) Enum.valueOf(SecurityType.class, str);
        }

        public static SecurityType[] values() {
            return (SecurityType[]) $VALUES.clone();
        }

        private SecurityType(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final SecurityType securityType = new SecurityType("SECURITY_TYPE_INVALID", 0, 0);
            SECURITY_TYPE_INVALID = securityType;
            PERSONAL_PSK = new SecurityType("PERSONAL_PSK", 1, 1);
            ENTERPRISE_PEAP = new SecurityType("ENTERPRISE_PEAP", 2, 2);
            ENTERPRISE_TLS = new SecurityType("ENTERPRISE_TLS", 3, 3);
            SecurityType[] securityTypeArr$values = $values();
            $VALUES = securityTypeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(securityTypeArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(SecurityType.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<SecurityType>(orCreateKotlinClass, syntax, securityType) { // from class: com.stripe.proto.terminal.terminal.pub.message.config.ApiWifiConfig$SecurityType$Companion$ADAPTER$1
                {
                    ApiWifiConfig.SecurityType securityType2 = securityType;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public ApiWifiConfig.SecurityType fromValue(int value) {
                    return ApiWifiConfig.SecurityType.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: ApiWifiConfig.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$SecurityType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$SecurityType;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final SecurityType fromValue(int value) {
                if (value == 0) {
                    return SecurityType.SECURITY_TYPE_INVALID;
                }
                if (value == 1) {
                    return SecurityType.PERSONAL_PSK;
                }
                if (value == 2) {
                    return SecurityType.ENTERPRISE_PEAP;
                }
                if (value != 3) {
                    return null;
                }
                return SecurityType.ENTERPRISE_TLS;
            }
        }
    }

    /* JADX INFO: compiled from: ApiWifiConfig.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ$\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0004H\u0016R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$PersonalPSKWifiConfig;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$PersonalPSKWifiConfig$Builder;", "ssid", "", "password", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class PersonalPSKWifiConfig extends Message<PersonalPSKWifiConfig, Builder> {
        public static final ProtoAdapter<PersonalPSKWifiConfig> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final String password;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final String ssid;

        public PersonalPSKWifiConfig() {
            this(null, null, null, 7, null);
        }

        public /* synthetic */ PersonalPSKWifiConfig(String str, String str2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PersonalPSKWifiConfig(String ssid, String password, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(ssid, "ssid");
            Intrinsics.checkNotNullParameter(password, "password");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.ssid = ssid;
            this.password = password;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.ssid = this.ssid;
            builder.password = this.password;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof PersonalPSKWifiConfig)) {
                return false;
            }
            PersonalPSKWifiConfig personalPSKWifiConfig = (PersonalPSKWifiConfig) other;
            return Intrinsics.areEqual(unknownFields(), personalPSKWifiConfig.unknownFields()) && Intrinsics.areEqual(this.ssid, personalPSKWifiConfig.ssid) && Intrinsics.areEqual(this.password, personalPSKWifiConfig.password);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((unknownFields().hashCode() * 37) + this.ssid.hashCode()) * 37) + this.password.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("ssid=" + Internal.sanitize(this.ssid));
            arrayList2.add("password=" + Internal.sanitize(this.password));
            return CollectionsKt.joinToString$default(arrayList, ", ", "PersonalPSKWifiConfig{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ PersonalPSKWifiConfig copy$default(PersonalPSKWifiConfig personalPSKWifiConfig, String str, String str2, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = personalPSKWifiConfig.ssid;
            }
            if ((i & 2) != 0) {
                str2 = personalPSKWifiConfig.password;
            }
            if ((i & 4) != 0) {
                byteString = personalPSKWifiConfig.unknownFields();
            }
            return personalPSKWifiConfig.copy(str, str2, byteString);
        }

        public final PersonalPSKWifiConfig copy(String ssid, String password, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(ssid, "ssid");
            Intrinsics.checkNotNullParameter(password, "password");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new PersonalPSKWifiConfig(ssid, password, unknownFields);
        }

        /* JADX INFO: compiled from: ApiWifiConfig.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$PersonalPSKWifiConfig$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$PersonalPSKWifiConfig;", "()V", "password", "", "ssid", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<PersonalPSKWifiConfig, Builder> {
            public String ssid = "";
            public String password = "";

            public final Builder ssid(String ssid) {
                Intrinsics.checkNotNullParameter(ssid, "ssid");
                this.ssid = ssid;
                return this;
            }

            public final Builder password(String password) {
                Intrinsics.checkNotNullParameter(password, "password");
                this.password = password;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public PersonalPSKWifiConfig build() {
                return new PersonalPSKWifiConfig(this.ssid, this.password, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: ApiWifiConfig.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$PersonalPSKWifiConfig$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$PersonalPSKWifiConfig;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$PersonalPSKWifiConfig$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ PersonalPSKWifiConfig build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(PersonalPSKWifiConfig.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<PersonalPSKWifiConfig>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.terminal.pub.message.config.ApiWifiConfig$PersonalPSKWifiConfig$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(ApiWifiConfig.PersonalPSKWifiConfig value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (!Intrinsics.areEqual(value.ssid, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.ssid);
                    }
                    return !Intrinsics.areEqual(value.password, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(2, value.password) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, ApiWifiConfig.PersonalPSKWifiConfig value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (!Intrinsics.areEqual(value.ssid, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.ssid);
                    }
                    if (!Intrinsics.areEqual(value.password, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.password);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, ApiWifiConfig.PersonalPSKWifiConfig value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (!Intrinsics.areEqual(value.password, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.password);
                    }
                    if (Intrinsics.areEqual(value.ssid, "")) {
                        return;
                    }
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.ssid);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public ApiWifiConfig.PersonalPSKWifiConfig redact(ApiWifiConfig.PersonalPSKWifiConfig value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return ApiWifiConfig.PersonalPSKWifiConfig.copy$default(value, null, null, ByteString.EMPTY, 3, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public ApiWifiConfig.PersonalPSKWifiConfig decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = "";
                    String strDecode2 = "";
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new ApiWifiConfig.PersonalPSKWifiConfig(strDecode, strDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 2) {
                            strDecode2 = ProtoAdapter.STRING.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }

    /* JADX INFO: compiled from: ApiWifiConfig.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B9\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ:\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0004H\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig$Builder;", "ssid", "", "username", "password", "ca_certificate_file", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class EnterprisePEAPWifiConfig extends Message<EnterprisePEAPWifiConfig, Builder> {
        public static final ProtoAdapter<EnterprisePEAPWifiConfig> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.ApiWifiConfig$WifiCredentialsFile#ADAPTER", jsonName = "caCertificateFile", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
        public final WifiCredentialsFile ca_certificate_file;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
        public final String password;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final String ssid;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final String username;

        public EnterprisePEAPWifiConfig() {
            this(null, null, null, null, null, 31, null);
        }

        public /* synthetic */ EnterprisePEAPWifiConfig(String str, String str2, String str3, WifiCredentialsFile wifiCredentialsFile, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? null : wifiCredentialsFile, (i & 16) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EnterprisePEAPWifiConfig(String ssid, String username, String password, WifiCredentialsFile wifiCredentialsFile, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(ssid, "ssid");
            Intrinsics.checkNotNullParameter(username, "username");
            Intrinsics.checkNotNullParameter(password, "password");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.ssid = ssid;
            this.username = username;
            this.password = password;
            this.ca_certificate_file = wifiCredentialsFile;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.ssid = this.ssid;
            builder.username = this.username;
            builder.password = this.password;
            builder.ca_certificate_file = this.ca_certificate_file;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof EnterprisePEAPWifiConfig)) {
                return false;
            }
            EnterprisePEAPWifiConfig enterprisePEAPWifiConfig = (EnterprisePEAPWifiConfig) other;
            return Intrinsics.areEqual(unknownFields(), enterprisePEAPWifiConfig.unknownFields()) && Intrinsics.areEqual(this.ssid, enterprisePEAPWifiConfig.ssid) && Intrinsics.areEqual(this.username, enterprisePEAPWifiConfig.username) && Intrinsics.areEqual(this.password, enterprisePEAPWifiConfig.password) && Intrinsics.areEqual(this.ca_certificate_file, enterprisePEAPWifiConfig.ca_certificate_file);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = ((((((unknownFields().hashCode() * 37) + this.ssid.hashCode()) * 37) + this.username.hashCode()) * 37) + this.password.hashCode()) * 37;
            WifiCredentialsFile wifiCredentialsFile = this.ca_certificate_file;
            int iHashCode2 = iHashCode + (wifiCredentialsFile != null ? wifiCredentialsFile.hashCode() : 0);
            this.hashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("ssid=" + Internal.sanitize(this.ssid));
            arrayList2.add("username=" + Internal.sanitize(this.username));
            arrayList2.add("password=" + Internal.sanitize(this.password));
            if (this.ca_certificate_file != null) {
                arrayList2.add("ca_certificate_file=" + this.ca_certificate_file);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "EnterprisePEAPWifiConfig{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ EnterprisePEAPWifiConfig copy$default(EnterprisePEAPWifiConfig enterprisePEAPWifiConfig, String str, String str2, String str3, WifiCredentialsFile wifiCredentialsFile, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = enterprisePEAPWifiConfig.ssid;
            }
            if ((i & 2) != 0) {
                str2 = enterprisePEAPWifiConfig.username;
            }
            if ((i & 4) != 0) {
                str3 = enterprisePEAPWifiConfig.password;
            }
            if ((i & 8) != 0) {
                wifiCredentialsFile = enterprisePEAPWifiConfig.ca_certificate_file;
            }
            if ((i & 16) != 0) {
                byteString = enterprisePEAPWifiConfig.unknownFields();
            }
            ByteString byteString2 = byteString;
            String str4 = str3;
            return enterprisePEAPWifiConfig.copy(str, str2, str4, wifiCredentialsFile, byteString2);
        }

        public final EnterprisePEAPWifiConfig copy(String ssid, String username, String password, WifiCredentialsFile ca_certificate_file, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(ssid, "ssid");
            Intrinsics.checkNotNullParameter(username, "username");
            Intrinsics.checkNotNullParameter(password, "password");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new EnterprisePEAPWifiConfig(ssid, username, password, ca_certificate_file, unknownFields);
        }

        /* JADX INFO: compiled from: ApiWifiConfig.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig;", "()V", "ca_certificate_file", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile;", "password", "", "ssid", "username", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<EnterprisePEAPWifiConfig, Builder> {
            public WifiCredentialsFile ca_certificate_file;
            public String ssid = "";
            public String username = "";
            public String password = "";

            public final Builder ssid(String ssid) {
                Intrinsics.checkNotNullParameter(ssid, "ssid");
                this.ssid = ssid;
                return this;
            }

            public final Builder username(String username) {
                Intrinsics.checkNotNullParameter(username, "username");
                this.username = username;
                return this;
            }

            public final Builder password(String password) {
                Intrinsics.checkNotNullParameter(password, "password");
                this.password = password;
                return this;
            }

            public final Builder ca_certificate_file(WifiCredentialsFile ca_certificate_file) {
                this.ca_certificate_file = ca_certificate_file;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public EnterprisePEAPWifiConfig build() {
                return new EnterprisePEAPWifiConfig(this.ssid, this.username, this.password, this.ca_certificate_file, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: ApiWifiConfig.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ EnterprisePEAPWifiConfig build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(EnterprisePEAPWifiConfig.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<EnterprisePEAPWifiConfig>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.terminal.pub.message.config.ApiWifiConfig$EnterprisePEAPWifiConfig$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(ApiWifiConfig.EnterprisePEAPWifiConfig value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (!Intrinsics.areEqual(value.ssid, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.ssid);
                    }
                    if (!Intrinsics.areEqual(value.username, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.username);
                    }
                    if (!Intrinsics.areEqual(value.password, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.password);
                    }
                    return value.ca_certificate_file != null ? size + ApiWifiConfig.WifiCredentialsFile.ADAPTER.encodedSizeWithTag(4, value.ca_certificate_file) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, ApiWifiConfig.EnterprisePEAPWifiConfig value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (!Intrinsics.areEqual(value.ssid, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.ssid);
                    }
                    if (!Intrinsics.areEqual(value.username, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.username);
                    }
                    if (!Intrinsics.areEqual(value.password, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 3, value.password);
                    }
                    if (value.ca_certificate_file != null) {
                        ApiWifiConfig.WifiCredentialsFile.ADAPTER.encodeWithTag(writer, 4, value.ca_certificate_file);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, ApiWifiConfig.EnterprisePEAPWifiConfig value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.ca_certificate_file != null) {
                        ApiWifiConfig.WifiCredentialsFile.ADAPTER.encodeWithTag(writer, 4, value.ca_certificate_file);
                    }
                    if (!Intrinsics.areEqual(value.password, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 3, value.password);
                    }
                    if (!Intrinsics.areEqual(value.username, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.username);
                    }
                    if (Intrinsics.areEqual(value.ssid, "")) {
                        return;
                    }
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.ssid);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public ApiWifiConfig.EnterprisePEAPWifiConfig redact(ApiWifiConfig.EnterprisePEAPWifiConfig value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    ApiWifiConfig.WifiCredentialsFile wifiCredentialsFile = value.ca_certificate_file;
                    return ApiWifiConfig.EnterprisePEAPWifiConfig.copy$default(value, null, null, null, wifiCredentialsFile != null ? ApiWifiConfig.WifiCredentialsFile.ADAPTER.redact(wifiCredentialsFile) : null, ByteString.EMPTY, 7, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public ApiWifiConfig.EnterprisePEAPWifiConfig decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = "";
                    String strDecode2 = "";
                    ApiWifiConfig.WifiCredentialsFile wifiCredentialsFileDecode = null;
                    String strDecode3 = strDecode2;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new ApiWifiConfig.EnterprisePEAPWifiConfig(strDecode, strDecode3, strDecode2, wifiCredentialsFileDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 2) {
                            strDecode3 = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 3) {
                            strDecode2 = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 4) {
                            wifiCredentialsFileDecode = ApiWifiConfig.WifiCredentialsFile.ADAPTER.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }

    /* JADX INFO: compiled from: ApiWifiConfig.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017BG\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJH\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\n\u001a\u00020\u000bJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\b\u0010\u0015\u001a\u00020\u0004H\u0016R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterpriseTLSWifiConfig;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterpriseTLSWifiConfig$Builder;", "ssid", "", "private_key_file", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile;", "private_key_file_password", "client_certificate_file", "ca_certificate_file", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class EnterpriseTLSWifiConfig extends Message<EnterpriseTLSWifiConfig, Builder> {
        public static final ProtoAdapter<EnterpriseTLSWifiConfig> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.ApiWifiConfig$WifiCredentialsFile#ADAPTER", jsonName = "caCertificateFile", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
        public final WifiCredentialsFile ca_certificate_file;

        @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.ApiWifiConfig$WifiCredentialsFile#ADAPTER", jsonName = "clientCertificateFile", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
        public final WifiCredentialsFile client_certificate_file;

        @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.ApiWifiConfig$WifiCredentialsFile#ADAPTER", jsonName = "privateKeyFile", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final WifiCredentialsFile private_key_file;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "privateKeyFilePassword", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
        public final String private_key_file_password;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final String ssid;

        public EnterpriseTLSWifiConfig() {
            this(null, null, null, null, null, null, 63, null);
        }

        public /* synthetic */ EnterpriseTLSWifiConfig(String str, WifiCredentialsFile wifiCredentialsFile, String str2, WifiCredentialsFile wifiCredentialsFile2, WifiCredentialsFile wifiCredentialsFile3, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? null : wifiCredentialsFile, (i & 4) != 0 ? "" : str2, (i & 8) != 0 ? null : wifiCredentialsFile2, (i & 16) != 0 ? null : wifiCredentialsFile3, (i & 32) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EnterpriseTLSWifiConfig(String ssid, WifiCredentialsFile wifiCredentialsFile, String private_key_file_password, WifiCredentialsFile wifiCredentialsFile2, WifiCredentialsFile wifiCredentialsFile3, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(ssid, "ssid");
            Intrinsics.checkNotNullParameter(private_key_file_password, "private_key_file_password");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.ssid = ssid;
            this.private_key_file = wifiCredentialsFile;
            this.private_key_file_password = private_key_file_password;
            this.client_certificate_file = wifiCredentialsFile2;
            this.ca_certificate_file = wifiCredentialsFile3;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.ssid = this.ssid;
            builder.private_key_file = this.private_key_file;
            builder.private_key_file_password = this.private_key_file_password;
            builder.client_certificate_file = this.client_certificate_file;
            builder.ca_certificate_file = this.ca_certificate_file;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof EnterpriseTLSWifiConfig)) {
                return false;
            }
            EnterpriseTLSWifiConfig enterpriseTLSWifiConfig = (EnterpriseTLSWifiConfig) other;
            return Intrinsics.areEqual(unknownFields(), enterpriseTLSWifiConfig.unknownFields()) && Intrinsics.areEqual(this.ssid, enterpriseTLSWifiConfig.ssid) && Intrinsics.areEqual(this.private_key_file, enterpriseTLSWifiConfig.private_key_file) && Intrinsics.areEqual(this.private_key_file_password, enterpriseTLSWifiConfig.private_key_file_password) && Intrinsics.areEqual(this.client_certificate_file, enterpriseTLSWifiConfig.client_certificate_file) && Intrinsics.areEqual(this.ca_certificate_file, enterpriseTLSWifiConfig.ca_certificate_file);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = ((unknownFields().hashCode() * 37) + this.ssid.hashCode()) * 37;
            WifiCredentialsFile wifiCredentialsFile = this.private_key_file;
            int iHashCode2 = (((iHashCode + (wifiCredentialsFile != null ? wifiCredentialsFile.hashCode() : 0)) * 37) + this.private_key_file_password.hashCode()) * 37;
            WifiCredentialsFile wifiCredentialsFile2 = this.client_certificate_file;
            int iHashCode3 = (iHashCode2 + (wifiCredentialsFile2 != null ? wifiCredentialsFile2.hashCode() : 0)) * 37;
            WifiCredentialsFile wifiCredentialsFile3 = this.ca_certificate_file;
            int iHashCode4 = iHashCode3 + (wifiCredentialsFile3 != null ? wifiCredentialsFile3.hashCode() : 0);
            this.hashCode = iHashCode4;
            return iHashCode4;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("ssid=" + Internal.sanitize(this.ssid));
            if (this.private_key_file != null) {
                arrayList2.add("private_key_file=" + this.private_key_file);
            }
            arrayList2.add("private_key_file_password=" + Internal.sanitize(this.private_key_file_password));
            if (this.client_certificate_file != null) {
                arrayList2.add("client_certificate_file=" + this.client_certificate_file);
            }
            if (this.ca_certificate_file != null) {
                arrayList2.add("ca_certificate_file=" + this.ca_certificate_file);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "EnterpriseTLSWifiConfig{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ EnterpriseTLSWifiConfig copy$default(EnterpriseTLSWifiConfig enterpriseTLSWifiConfig, String str, WifiCredentialsFile wifiCredentialsFile, String str2, WifiCredentialsFile wifiCredentialsFile2, WifiCredentialsFile wifiCredentialsFile3, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = enterpriseTLSWifiConfig.ssid;
            }
            if ((i & 2) != 0) {
                wifiCredentialsFile = enterpriseTLSWifiConfig.private_key_file;
            }
            if ((i & 4) != 0) {
                str2 = enterpriseTLSWifiConfig.private_key_file_password;
            }
            if ((i & 8) != 0) {
                wifiCredentialsFile2 = enterpriseTLSWifiConfig.client_certificate_file;
            }
            if ((i & 16) != 0) {
                wifiCredentialsFile3 = enterpriseTLSWifiConfig.ca_certificate_file;
            }
            if ((i & 32) != 0) {
                byteString = enterpriseTLSWifiConfig.unknownFields();
            }
            WifiCredentialsFile wifiCredentialsFile4 = wifiCredentialsFile3;
            ByteString byteString2 = byteString;
            return enterpriseTLSWifiConfig.copy(str, wifiCredentialsFile, str2, wifiCredentialsFile2, wifiCredentialsFile4, byteString2);
        }

        public final EnterpriseTLSWifiConfig copy(String ssid, WifiCredentialsFile private_key_file, String private_key_file_password, WifiCredentialsFile client_certificate_file, WifiCredentialsFile ca_certificate_file, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(ssid, "ssid");
            Intrinsics.checkNotNullParameter(private_key_file_password, "private_key_file_password");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new EnterpriseTLSWifiConfig(ssid, private_key_file, private_key_file_password, client_certificate_file, ca_certificate_file, unknownFields);
        }

        /* JADX INFO: compiled from: ApiWifiConfig.kt */
        @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterpriseTLSWifiConfig$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterpriseTLSWifiConfig;", "()V", "ca_certificate_file", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile;", "client_certificate_file", "private_key_file", "private_key_file_password", "", "ssid", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<EnterpriseTLSWifiConfig, Builder> {
            public WifiCredentialsFile ca_certificate_file;
            public WifiCredentialsFile client_certificate_file;
            public WifiCredentialsFile private_key_file;
            public String ssid = "";
            public String private_key_file_password = "";

            public final Builder ssid(String ssid) {
                Intrinsics.checkNotNullParameter(ssid, "ssid");
                this.ssid = ssid;
                return this;
            }

            public final Builder private_key_file(WifiCredentialsFile private_key_file) {
                this.private_key_file = private_key_file;
                return this;
            }

            public final Builder private_key_file_password(String private_key_file_password) {
                Intrinsics.checkNotNullParameter(private_key_file_password, "private_key_file_password");
                this.private_key_file_password = private_key_file_password;
                return this;
            }

            public final Builder client_certificate_file(WifiCredentialsFile client_certificate_file) {
                this.client_certificate_file = client_certificate_file;
                return this;
            }

            public final Builder ca_certificate_file(WifiCredentialsFile ca_certificate_file) {
                this.ca_certificate_file = ca_certificate_file;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public EnterpriseTLSWifiConfig build() {
                return new EnterpriseTLSWifiConfig(this.ssid, this.private_key_file, this.private_key_file_password, this.client_certificate_file, this.ca_certificate_file, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: ApiWifiConfig.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterpriseTLSWifiConfig$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterpriseTLSWifiConfig;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterpriseTLSWifiConfig$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ EnterpriseTLSWifiConfig build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(EnterpriseTLSWifiConfig.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<EnterpriseTLSWifiConfig>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.terminal.pub.message.config.ApiWifiConfig$EnterpriseTLSWifiConfig$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(ApiWifiConfig.EnterpriseTLSWifiConfig value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (!Intrinsics.areEqual(value.ssid, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.ssid);
                    }
                    if (value.private_key_file != null) {
                        size += ApiWifiConfig.WifiCredentialsFile.ADAPTER.encodedSizeWithTag(2, value.private_key_file);
                    }
                    if (!Intrinsics.areEqual(value.private_key_file_password, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.private_key_file_password);
                    }
                    if (value.client_certificate_file != null) {
                        size += ApiWifiConfig.WifiCredentialsFile.ADAPTER.encodedSizeWithTag(4, value.client_certificate_file);
                    }
                    return value.ca_certificate_file != null ? size + ApiWifiConfig.WifiCredentialsFile.ADAPTER.encodedSizeWithTag(5, value.ca_certificate_file) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, ApiWifiConfig.EnterpriseTLSWifiConfig value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (!Intrinsics.areEqual(value.ssid, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.ssid);
                    }
                    if (value.private_key_file != null) {
                        ApiWifiConfig.WifiCredentialsFile.ADAPTER.encodeWithTag(writer, 2, value.private_key_file);
                    }
                    if (!Intrinsics.areEqual(value.private_key_file_password, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 3, value.private_key_file_password);
                    }
                    if (value.client_certificate_file != null) {
                        ApiWifiConfig.WifiCredentialsFile.ADAPTER.encodeWithTag(writer, 4, value.client_certificate_file);
                    }
                    if (value.ca_certificate_file != null) {
                        ApiWifiConfig.WifiCredentialsFile.ADAPTER.encodeWithTag(writer, 5, value.ca_certificate_file);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, ApiWifiConfig.EnterpriseTLSWifiConfig value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.ca_certificate_file != null) {
                        ApiWifiConfig.WifiCredentialsFile.ADAPTER.encodeWithTag(writer, 5, value.ca_certificate_file);
                    }
                    if (value.client_certificate_file != null) {
                        ApiWifiConfig.WifiCredentialsFile.ADAPTER.encodeWithTag(writer, 4, value.client_certificate_file);
                    }
                    if (!Intrinsics.areEqual(value.private_key_file_password, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 3, value.private_key_file_password);
                    }
                    if (value.private_key_file != null) {
                        ApiWifiConfig.WifiCredentialsFile.ADAPTER.encodeWithTag(writer, 2, value.private_key_file);
                    }
                    if (Intrinsics.areEqual(value.ssid, "")) {
                        return;
                    }
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.ssid);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public ApiWifiConfig.EnterpriseTLSWifiConfig redact(ApiWifiConfig.EnterpriseTLSWifiConfig value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    ApiWifiConfig.WifiCredentialsFile wifiCredentialsFile = value.private_key_file;
                    ApiWifiConfig.WifiCredentialsFile wifiCredentialsFileRedact = wifiCredentialsFile != null ? ApiWifiConfig.WifiCredentialsFile.ADAPTER.redact(wifiCredentialsFile) : null;
                    ApiWifiConfig.WifiCredentialsFile wifiCredentialsFile2 = value.client_certificate_file;
                    ApiWifiConfig.WifiCredentialsFile wifiCredentialsFileRedact2 = wifiCredentialsFile2 != null ? ApiWifiConfig.WifiCredentialsFile.ADAPTER.redact(wifiCredentialsFile2) : null;
                    ApiWifiConfig.WifiCredentialsFile wifiCredentialsFile3 = value.ca_certificate_file;
                    return ApiWifiConfig.EnterpriseTLSWifiConfig.copy$default(value, null, wifiCredentialsFileRedact, null, wifiCredentialsFileRedact2, wifiCredentialsFile3 != null ? ApiWifiConfig.WifiCredentialsFile.ADAPTER.redact(wifiCredentialsFile3) : null, ByteString.EMPTY, 5, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public ApiWifiConfig.EnterpriseTLSWifiConfig decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = "";
                    ApiWifiConfig.WifiCredentialsFile wifiCredentialsFileDecode = null;
                    ApiWifiConfig.WifiCredentialsFile wifiCredentialsFileDecode2 = null;
                    ApiWifiConfig.WifiCredentialsFile wifiCredentialsFileDecode3 = null;
                    String strDecode2 = "";
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new ApiWifiConfig.EnterpriseTLSWifiConfig(strDecode, wifiCredentialsFileDecode, strDecode2, wifiCredentialsFileDecode2, wifiCredentialsFileDecode3, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 2) {
                            wifiCredentialsFileDecode = ApiWifiConfig.WifiCredentialsFile.ADAPTER.decode(reader);
                        } else if (iNextTag == 3) {
                            strDecode2 = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 4) {
                            wifiCredentialsFileDecode2 = ApiWifiConfig.WifiCredentialsFile.ADAPTER.decode(reader);
                        } else if (iNextTag == 5) {
                            wifiCredentialsFileDecode3 = ApiWifiConfig.WifiCredentialsFile.ADAPTER.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }

    /* JADX INFO: compiled from: ApiWifiConfig.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B;\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ<\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile$Builder;", FontsContractCompat.Columns.FILE_ID, "", "s3_url", "Lcom/stripe/proto/model/common/UrlPb;", "presigned_s3_url", "sha256_checksum", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lcom/stripe/proto/model/common/UrlPb;Lcom/stripe/proto/model/common/UrlPb;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class WifiCredentialsFile extends Message<WifiCredentialsFile, Builder> {
        public static final ProtoAdapter<WifiCredentialsFile> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "fileId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final String file_id;

        @WireField(adapter = "com.stripe.proto.model.common.UrlPb#ADAPTER", jsonName = "presignedS3Url", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
        public final UrlPb presigned_s3_url;

        @WireField(adapter = "com.stripe.proto.model.common.UrlPb#ADAPTER", jsonName = "s3Url", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final UrlPb s3_url;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "sha256Checksum", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
        public final String sha256_checksum;

        public WifiCredentialsFile() {
            this(null, null, null, null, null, 31, null);
        }

        public /* synthetic */ WifiCredentialsFile(String str, UrlPb urlPb, UrlPb urlPb2, String str2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? null : urlPb, (i & 4) != 0 ? null : urlPb2, (i & 8) != 0 ? "" : str2, (i & 16) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public WifiCredentialsFile(String file_id, UrlPb urlPb, UrlPb urlPb2, String sha256_checksum, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(file_id, "file_id");
            Intrinsics.checkNotNullParameter(sha256_checksum, "sha256_checksum");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.file_id = file_id;
            this.s3_url = urlPb;
            this.presigned_s3_url = urlPb2;
            this.sha256_checksum = sha256_checksum;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.file_id = this.file_id;
            builder.s3_url = this.s3_url;
            builder.presigned_s3_url = this.presigned_s3_url;
            builder.sha256_checksum = this.sha256_checksum;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof WifiCredentialsFile)) {
                return false;
            }
            WifiCredentialsFile wifiCredentialsFile = (WifiCredentialsFile) other;
            return Intrinsics.areEqual(unknownFields(), wifiCredentialsFile.unknownFields()) && Intrinsics.areEqual(this.file_id, wifiCredentialsFile.file_id) && Intrinsics.areEqual(this.s3_url, wifiCredentialsFile.s3_url) && Intrinsics.areEqual(this.presigned_s3_url, wifiCredentialsFile.presigned_s3_url) && Intrinsics.areEqual(this.sha256_checksum, wifiCredentialsFile.sha256_checksum);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = ((unknownFields().hashCode() * 37) + this.file_id.hashCode()) * 37;
            UrlPb urlPb = this.s3_url;
            int iHashCode2 = (iHashCode + (urlPb != null ? urlPb.hashCode() : 0)) * 37;
            UrlPb urlPb2 = this.presigned_s3_url;
            int iHashCode3 = ((iHashCode2 + (urlPb2 != null ? urlPb2.hashCode() : 0)) * 37) + this.sha256_checksum.hashCode();
            this.hashCode = iHashCode3;
            return iHashCode3;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("file_id=" + Internal.sanitize(this.file_id));
            if (this.s3_url != null) {
                arrayList2.add("s3_url=" + this.s3_url);
            }
            if (this.presigned_s3_url != null) {
                arrayList2.add("presigned_s3_url=" + this.presigned_s3_url);
            }
            arrayList2.add("sha256_checksum=" + Internal.sanitize(this.sha256_checksum));
            return CollectionsKt.joinToString$default(arrayList, ", ", "WifiCredentialsFile{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ WifiCredentialsFile copy$default(WifiCredentialsFile wifiCredentialsFile, String str, UrlPb urlPb, UrlPb urlPb2, String str2, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = wifiCredentialsFile.file_id;
            }
            if ((i & 2) != 0) {
                urlPb = wifiCredentialsFile.s3_url;
            }
            if ((i & 4) != 0) {
                urlPb2 = wifiCredentialsFile.presigned_s3_url;
            }
            if ((i & 8) != 0) {
                str2 = wifiCredentialsFile.sha256_checksum;
            }
            if ((i & 16) != 0) {
                byteString = wifiCredentialsFile.unknownFields();
            }
            ByteString byteString2 = byteString;
            UrlPb urlPb3 = urlPb2;
            return wifiCredentialsFile.copy(str, urlPb, urlPb3, str2, byteString2);
        }

        public final WifiCredentialsFile copy(String file_id, UrlPb s3_url, UrlPb presigned_s3_url, String sha256_checksum, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(file_id, "file_id");
            Intrinsics.checkNotNullParameter(sha256_checksum, "sha256_checksum");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new WifiCredentialsFile(file_id, s3_url, presigned_s3_url, sha256_checksum, unknownFields);
        }

        /* JADX INFO: compiled from: ApiWifiConfig.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile;", "()V", FontsContractCompat.Columns.FILE_ID, "", "presigned_s3_url", "Lcom/stripe/proto/model/common/UrlPb;", "s3_url", "sha256_checksum", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<WifiCredentialsFile, Builder> {
            public UrlPb presigned_s3_url;
            public UrlPb s3_url;
            public String file_id = "";
            public String sha256_checksum = "";

            public final Builder file_id(String file_id) {
                Intrinsics.checkNotNullParameter(file_id, "file_id");
                this.file_id = file_id;
                return this;
            }

            public final Builder s3_url(UrlPb s3_url) {
                this.s3_url = s3_url;
                return this;
            }

            public final Builder presigned_s3_url(UrlPb presigned_s3_url) {
                this.presigned_s3_url = presigned_s3_url;
                return this;
            }

            public final Builder sha256_checksum(String sha256_checksum) {
                Intrinsics.checkNotNullParameter(sha256_checksum, "sha256_checksum");
                this.sha256_checksum = sha256_checksum;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public WifiCredentialsFile build() {
                return new WifiCredentialsFile(this.file_id, this.s3_url, this.presigned_s3_url, this.sha256_checksum, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: ApiWifiConfig.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$WifiCredentialsFile$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ WifiCredentialsFile build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(WifiCredentialsFile.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<WifiCredentialsFile>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.terminal.pub.message.config.ApiWifiConfig$WifiCredentialsFile$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(ApiWifiConfig.WifiCredentialsFile value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (!Intrinsics.areEqual(value.file_id, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.file_id);
                    }
                    if (value.s3_url != null) {
                        size += UrlPb.ADAPTER.encodedSizeWithTag(2, value.s3_url);
                    }
                    if (value.presigned_s3_url != null) {
                        size += UrlPb.ADAPTER.encodedSizeWithTag(3, value.presigned_s3_url);
                    }
                    return !Intrinsics.areEqual(value.sha256_checksum, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(4, value.sha256_checksum) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, ApiWifiConfig.WifiCredentialsFile value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (!Intrinsics.areEqual(value.file_id, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.file_id);
                    }
                    if (value.s3_url != null) {
                        UrlPb.ADAPTER.encodeWithTag(writer, 2, value.s3_url);
                    }
                    if (value.presigned_s3_url != null) {
                        UrlPb.ADAPTER.encodeWithTag(writer, 3, value.presigned_s3_url);
                    }
                    if (!Intrinsics.areEqual(value.sha256_checksum, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 4, value.sha256_checksum);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, ApiWifiConfig.WifiCredentialsFile value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (!Intrinsics.areEqual(value.sha256_checksum, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 4, value.sha256_checksum);
                    }
                    if (value.presigned_s3_url != null) {
                        UrlPb.ADAPTER.encodeWithTag(writer, 3, value.presigned_s3_url);
                    }
                    if (value.s3_url != null) {
                        UrlPb.ADAPTER.encodeWithTag(writer, 2, value.s3_url);
                    }
                    if (Intrinsics.areEqual(value.file_id, "")) {
                        return;
                    }
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.file_id);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public ApiWifiConfig.WifiCredentialsFile redact(ApiWifiConfig.WifiCredentialsFile value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    UrlPb urlPb = value.s3_url;
                    UrlPb urlPbRedact = urlPb != null ? UrlPb.ADAPTER.redact(urlPb) : null;
                    UrlPb urlPb2 = value.presigned_s3_url;
                    return ApiWifiConfig.WifiCredentialsFile.copy$default(value, null, urlPbRedact, urlPb2 != null ? UrlPb.ADAPTER.redact(urlPb2) : null, null, ByteString.EMPTY, 9, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public ApiWifiConfig.WifiCredentialsFile decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = "";
                    UrlPb urlPbDecode = null;
                    UrlPb urlPbDecode2 = null;
                    String strDecode2 = "";
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new ApiWifiConfig.WifiCredentialsFile(strDecode, urlPbDecode, urlPbDecode2, strDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 2) {
                            urlPbDecode = UrlPb.ADAPTER.decode(reader);
                        } else if (iNextTag == 3) {
                            urlPbDecode2 = UrlPb.ADAPTER.decode(reader);
                        } else if (iNextTag == 4) {
                            strDecode2 = ProtoAdapter.STRING.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }
}
