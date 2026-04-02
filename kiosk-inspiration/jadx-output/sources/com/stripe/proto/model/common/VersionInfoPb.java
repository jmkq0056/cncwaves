package com.stripe.proto.model.common;

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
import com.stripe.proto.model.common.VersionInfoPb;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Deprecated;
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

/* JADX INFO: compiled from: VersionInfoPb.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0007\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0014\u0015\u0016B/\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ0\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\bH\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0006H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/model/common/VersionInfoPb;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/common/VersionInfoPb$Builder;", "client_type", "Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;", "client_version", "", "version_code", "", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;Ljava/lang/String;ILokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "Builder", "ClientType", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class VersionInfoPb extends Message<VersionInfoPb, Builder> {
    public static final ProtoAdapter<VersionInfoPb> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.common.VersionInfoPb$ClientType#ADAPTER", jsonName = "clientType", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final ClientType client_type;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "clientVersion", schemaIndex = 1, tag = 2)
    public final String client_version;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "versionCode", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 4)
    public final int version_code;

    public VersionInfoPb() {
        this(null, null, 0, null, 15, null);
    }

    public /* synthetic */ VersionInfoPb(ClientType clientType, String str, int i, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? ClientType.CLIENT_TYPE_INVALID : clientType, (i2 & 2) != 0 ? null : str, (i2 & 4) != 0 ? 0 : i, (i2 & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VersionInfoPb(ClientType client_type, String str, int i, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(client_type, "client_type");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.client_type = client_type;
        this.client_version = str;
        this.version_code = i;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.client_type = this.client_type;
        builder.client_version = this.client_version;
        builder.version_code = this.version_code;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof VersionInfoPb)) {
            return false;
        }
        VersionInfoPb versionInfoPb = (VersionInfoPb) other;
        return Intrinsics.areEqual(unknownFields(), versionInfoPb.unknownFields()) && this.client_type == versionInfoPb.client_type && Intrinsics.areEqual(this.client_version, versionInfoPb.client_version) && this.version_code == versionInfoPb.version_code;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + this.client_type.hashCode()) * 37;
        String str = this.client_version;
        int iHashCode2 = ((iHashCode + (str != null ? str.hashCode() : 0)) * 37) + Integer.hashCode(this.version_code);
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("client_type=" + this.client_type);
        if (this.client_version != null) {
            arrayList2.add("client_version=" + this.client_version);
        }
        arrayList2.add("version_code=" + this.version_code);
        return CollectionsKt.joinToString$default(arrayList, ", ", "VersionInfoPb{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ VersionInfoPb copy$default(VersionInfoPb versionInfoPb, ClientType clientType, String str, int i, ByteString byteString, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            clientType = versionInfoPb.client_type;
        }
        if ((i2 & 2) != 0) {
            str = versionInfoPb.client_version;
        }
        if ((i2 & 4) != 0) {
            i = versionInfoPb.version_code;
        }
        if ((i2 & 8) != 0) {
            byteString = versionInfoPb.unknownFields();
        }
        return versionInfoPb.copy(clientType, str, i, byteString);
    }

    public final VersionInfoPb copy(ClientType client_type, String client_version, int version_code, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(client_type, "client_type");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new VersionInfoPb(client_type, client_version, version_code, unknownFields);
    }

    /* JADX INFO: compiled from: VersionInfoPb.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/common/VersionInfoPb$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/common/VersionInfoPb;", "()V", "client_type", "Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;", "client_version", "", "version_code", "", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<VersionInfoPb, Builder> {
        public ClientType client_type = ClientType.CLIENT_TYPE_INVALID;
        public String client_version;
        public int version_code;

        public final Builder client_type(ClientType client_type) {
            Intrinsics.checkNotNullParameter(client_type, "client_type");
            this.client_type = client_type;
            return this;
        }

        public final Builder client_version(String client_version) {
            this.client_version = client_version;
            return this;
        }

        public final Builder version_code(int version_code) {
            this.version_code = version_code;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public VersionInfoPb build() {
            return new VersionInfoPb(this.client_type, this.client_version, this.version_code, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: VersionInfoPb.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/common/VersionInfoPb$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/VersionInfoPb;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/common/VersionInfoPb$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ VersionInfoPb build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(VersionInfoPb.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<VersionInfoPb>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.common.VersionInfoPb$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(VersionInfoPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.client_type != VersionInfoPb.ClientType.CLIENT_TYPE_INVALID) {
                    size += VersionInfoPb.ClientType.ADAPTER.encodedSizeWithTag(1, value.client_type);
                }
                if (value.client_version != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.client_version);
                }
                return value.version_code != 0 ? size + ProtoAdapter.INT32.encodedSizeWithTag(4, Integer.valueOf(value.version_code)) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, VersionInfoPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.client_type != VersionInfoPb.ClientType.CLIENT_TYPE_INVALID) {
                    VersionInfoPb.ClientType.ADAPTER.encodeWithTag(writer, 1, value.client_type);
                }
                if (value.client_version != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.client_version);
                }
                if (value.version_code != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 4, Integer.valueOf(value.version_code));
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, VersionInfoPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.version_code != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 4, Integer.valueOf(value.version_code));
                }
                if (value.client_version != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.client_version);
                }
                if (value.client_type != VersionInfoPb.ClientType.CLIENT_TYPE_INVALID) {
                    VersionInfoPb.ClientType.ADAPTER.encodeWithTag(writer, 1, value.client_type);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public VersionInfoPb decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                VersionInfoPb.ClientType clientTypeDecode = VersionInfoPb.ClientType.CLIENT_TYPE_INVALID;
                long jBeginMessage = reader.beginMessage();
                String strDecode = null;
                int iIntValue = 0;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new VersionInfoPb(clientTypeDecode, strDecode, iIntValue, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        try {
                            clientTypeDecode = VersionInfoPb.ClientType.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else if (iNextTag == 2) {
                        strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                    } else if (iNextTag == 4) {
                        iIntValue = ProtoAdapter.INT32.decode(reader).intValue();
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public VersionInfoPb redact(VersionInfoPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                String str = value.client_version;
                return VersionInfoPb.copy$default(value, null, str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null, 0, ByteString.EMPTY, 5, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: VersionInfoPb.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\"\b\u0086\u0081\u0002\u0018\u0000 %2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001%B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$¨\u0006&"}, d2 = {"Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "CLIENT_TYPE_INVALID", "TEST", "IOS_SDK", "ANDROID_SDK", "JS_SDK", "INDEX_SERVER", "INDEX_TOOL", "JAVA_QUEUE_CLIENT", "RACCOON", "WARDEN", "STRIPE_CLI", "ANDROID_READER", "ANDROID_READER_UPDATER", "BBPOS_FIRMWARE", "BBPOS_CONFIGURATION", "BBPOS_KEY_PROFILE", "ANDROID_STANDALONE_APP", "ANDROID_HANDOFF_APP", "STRIPE_API", "ANDROID_APK", "BBPOS_WPE_ROM", "CLIENT_TYPE_NOT_SET", "RN_IOS_SDK", "RN_ANDROID_SDK", "RN_SDK", "JAVA_SDK", "ORACLE_OPERA_MIDDLEWARE", "DOTNET_SDK", "STANDALONE_POS", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ClientType implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ClientType[] $VALUES;
        public static final ProtoAdapter<ClientType> ADAPTER;
        public static final ClientType ANDROID_APK;

        @Deprecated(message = "ANDROID_HANDOFF_APP is deprecated")
        public static final ClientType ANDROID_HANDOFF_APP;
        public static final ClientType ANDROID_READER;
        public static final ClientType ANDROID_READER_UPDATER;
        public static final ClientType ANDROID_SDK;

        @Deprecated(message = "ANDROID_STANDALONE_APP is deprecated")
        public static final ClientType ANDROID_STANDALONE_APP;
        public static final ClientType BBPOS_CONFIGURATION;
        public static final ClientType BBPOS_FIRMWARE;
        public static final ClientType BBPOS_KEY_PROFILE;
        public static final ClientType BBPOS_WPE_ROM;
        public static final ClientType CLIENT_TYPE_INVALID;
        public static final ClientType CLIENT_TYPE_NOT_SET;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final ClientType DOTNET_SDK;
        public static final ClientType INDEX_SERVER;
        public static final ClientType INDEX_TOOL;
        public static final ClientType IOS_SDK;
        public static final ClientType JAVA_QUEUE_CLIENT;
        public static final ClientType JAVA_SDK;
        public static final ClientType JS_SDK;
        public static final ClientType ORACLE_OPERA_MIDDLEWARE;
        public static final ClientType RACCOON;
        public static final ClientType RN_ANDROID_SDK;
        public static final ClientType RN_IOS_SDK;
        public static final ClientType RN_SDK;
        public static final ClientType STANDALONE_POS;
        public static final ClientType STRIPE_API;
        public static final ClientType STRIPE_CLI;
        public static final ClientType TEST;
        public static final ClientType WARDEN;
        private final int value;

        private static final /* synthetic */ ClientType[] $values() {
            return new ClientType[]{CLIENT_TYPE_INVALID, TEST, IOS_SDK, ANDROID_SDK, JS_SDK, INDEX_SERVER, INDEX_TOOL, JAVA_QUEUE_CLIENT, RACCOON, WARDEN, STRIPE_CLI, ANDROID_READER, ANDROID_READER_UPDATER, BBPOS_FIRMWARE, BBPOS_CONFIGURATION, BBPOS_KEY_PROFILE, ANDROID_STANDALONE_APP, ANDROID_HANDOFF_APP, STRIPE_API, ANDROID_APK, BBPOS_WPE_ROM, CLIENT_TYPE_NOT_SET, RN_IOS_SDK, RN_ANDROID_SDK, RN_SDK, JAVA_SDK, ORACLE_OPERA_MIDDLEWARE, DOTNET_SDK, STANDALONE_POS};
        }

        @JvmStatic
        public static final ClientType fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<ClientType> getEntries() {
            return $ENTRIES;
        }

        public static ClientType valueOf(String str) {
            return (ClientType) Enum.valueOf(ClientType.class, str);
        }

        public static ClientType[] values() {
            return (ClientType[]) $VALUES.clone();
        }

        private ClientType(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final ClientType clientType = new ClientType("CLIENT_TYPE_INVALID", 0, 0);
            CLIENT_TYPE_INVALID = clientType;
            TEST = new ClientType("TEST", 1, 1);
            IOS_SDK = new ClientType("IOS_SDK", 2, 2);
            ANDROID_SDK = new ClientType("ANDROID_SDK", 3, 3);
            JS_SDK = new ClientType("JS_SDK", 4, 4);
            INDEX_SERVER = new ClientType("INDEX_SERVER", 5, 5);
            INDEX_TOOL = new ClientType("INDEX_TOOL", 6, 6);
            JAVA_QUEUE_CLIENT = new ClientType("JAVA_QUEUE_CLIENT", 7, 7);
            RACCOON = new ClientType("RACCOON", 8, 8);
            WARDEN = new ClientType("WARDEN", 9, 9);
            STRIPE_CLI = new ClientType("STRIPE_CLI", 10, 10);
            ANDROID_READER = new ClientType("ANDROID_READER", 11, 11);
            ANDROID_READER_UPDATER = new ClientType("ANDROID_READER_UPDATER", 12, 12);
            BBPOS_FIRMWARE = new ClientType("BBPOS_FIRMWARE", 13, 13);
            BBPOS_CONFIGURATION = new ClientType("BBPOS_CONFIGURATION", 14, 14);
            BBPOS_KEY_PROFILE = new ClientType("BBPOS_KEY_PROFILE", 15, 15);
            ANDROID_STANDALONE_APP = new ClientType("ANDROID_STANDALONE_APP", 16, 16);
            ANDROID_HANDOFF_APP = new ClientType("ANDROID_HANDOFF_APP", 17, 17);
            STRIPE_API = new ClientType("STRIPE_API", 18, 18);
            ANDROID_APK = new ClientType("ANDROID_APK", 19, 19);
            BBPOS_WPE_ROM = new ClientType("BBPOS_WPE_ROM", 20, 20);
            CLIENT_TYPE_NOT_SET = new ClientType("CLIENT_TYPE_NOT_SET", 21, 21);
            RN_IOS_SDK = new ClientType("RN_IOS_SDK", 22, 22);
            RN_ANDROID_SDK = new ClientType("RN_ANDROID_SDK", 23, 23);
            RN_SDK = new ClientType("RN_SDK", 24, 24);
            JAVA_SDK = new ClientType("JAVA_SDK", 25, 25);
            ORACLE_OPERA_MIDDLEWARE = new ClientType("ORACLE_OPERA_MIDDLEWARE", 26, 26);
            DOTNET_SDK = new ClientType("DOTNET_SDK", 27, 27);
            STANDALONE_POS = new ClientType("STANDALONE_POS", 28, 28);
            ClientType[] clientTypeArr$values = $values();
            $VALUES = clientTypeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(clientTypeArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ClientType.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<ClientType>(orCreateKotlinClass, syntax, clientType) { // from class: com.stripe.proto.model.common.VersionInfoPb$ClientType$Companion$ADAPTER$1
                {
                    VersionInfoPb.ClientType clientType2 = clientType;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public VersionInfoPb.ClientType fromValue(int value) {
                    return VersionInfoPb.ClientType.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: VersionInfoPb.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/common/VersionInfoPb$ClientType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/VersionInfoPb$ClientType;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final ClientType fromValue(int value) {
                switch (value) {
                    case 0:
                        return ClientType.CLIENT_TYPE_INVALID;
                    case 1:
                        return ClientType.TEST;
                    case 2:
                        return ClientType.IOS_SDK;
                    case 3:
                        return ClientType.ANDROID_SDK;
                    case 4:
                        return ClientType.JS_SDK;
                    case 5:
                        return ClientType.INDEX_SERVER;
                    case 6:
                        return ClientType.INDEX_TOOL;
                    case 7:
                        return ClientType.JAVA_QUEUE_CLIENT;
                    case 8:
                        return ClientType.RACCOON;
                    case 9:
                        return ClientType.WARDEN;
                    case 10:
                        return ClientType.STRIPE_CLI;
                    case 11:
                        return ClientType.ANDROID_READER;
                    case 12:
                        return ClientType.ANDROID_READER_UPDATER;
                    case 13:
                        return ClientType.BBPOS_FIRMWARE;
                    case 14:
                        return ClientType.BBPOS_CONFIGURATION;
                    case 15:
                        return ClientType.BBPOS_KEY_PROFILE;
                    case 16:
                        return ClientType.ANDROID_STANDALONE_APP;
                    case 17:
                        return ClientType.ANDROID_HANDOFF_APP;
                    case 18:
                        return ClientType.STRIPE_API;
                    case 19:
                        return ClientType.ANDROID_APK;
                    case 20:
                        return ClientType.BBPOS_WPE_ROM;
                    case 21:
                        return ClientType.CLIENT_TYPE_NOT_SET;
                    case 22:
                        return ClientType.RN_IOS_SDK;
                    case 23:
                        return ClientType.RN_ANDROID_SDK;
                    case 24:
                        return ClientType.RN_SDK;
                    case 25:
                        return ClientType.JAVA_SDK;
                    case 26:
                        return ClientType.ORACLE_OPERA_MIDDLEWARE;
                    case 27:
                        return ClientType.DOTNET_SDK;
                    case 28:
                        return ClientType.STANDALONE_POS;
                    default:
                        return null;
                }
            }
        }
    }
}
