package com.stripe.proto.model.sdk;

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
import com.stripe.proto.model.sdk.ReaderVersion;
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

/* JADX INFO: compiled from: ReaderVersion.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0013\u0014\u0015B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ$\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0006H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/model/sdk/ReaderVersion;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/sdk/ReaderVersion$Builder;", "client_type", "Lcom/stripe/proto/model/sdk/ReaderVersion$ClientType;", "client_version", "", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/sdk/ReaderVersion$ClientType;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "ClientType", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReaderVersion extends Message<ReaderVersion, Builder> {
    public static final ProtoAdapter<ReaderVersion> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.sdk.ReaderVersion$ClientType#ADAPTER", jsonName = "clientType", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final ClientType client_type;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "clientVersion", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String client_version;

    public ReaderVersion() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ ReaderVersion(ClientType clientType, String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? ClientType.UNKNOWN : clientType, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReaderVersion(ClientType client_type, String client_version, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(client_type, "client_type");
        Intrinsics.checkNotNullParameter(client_version, "client_version");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.client_type = client_type;
        this.client_version = client_version;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.client_type = this.client_type;
        builder.client_version = this.client_version;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ReaderVersion)) {
            return false;
        }
        ReaderVersion readerVersion = (ReaderVersion) other;
        return Intrinsics.areEqual(unknownFields(), readerVersion.unknownFields()) && this.client_type == readerVersion.client_type && Intrinsics.areEqual(this.client_version, readerVersion.client_version);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((unknownFields().hashCode() * 37) + this.client_type.hashCode()) * 37) + this.client_version.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("client_type=" + this.client_type);
        arrayList2.add("client_version=" + Internal.sanitize(this.client_version));
        return CollectionsKt.joinToString$default(arrayList, ", ", "ReaderVersion{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ReaderVersion copy$default(ReaderVersion readerVersion, ClientType clientType, String str, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            clientType = readerVersion.client_type;
        }
        if ((i & 2) != 0) {
            str = readerVersion.client_version;
        }
        if ((i & 4) != 0) {
            byteString = readerVersion.unknownFields();
        }
        return readerVersion.copy(clientType, str, byteString);
    }

    public final ReaderVersion copy(ClientType client_type, String client_version, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(client_type, "client_type");
        Intrinsics.checkNotNullParameter(client_version, "client_version");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ReaderVersion(client_type, client_version, unknownFields);
    }

    /* JADX INFO: compiled from: ReaderVersion.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/sdk/ReaderVersion$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/sdk/ReaderVersion;", "()V", "client_type", "Lcom/stripe/proto/model/sdk/ReaderVersion$ClientType;", "client_version", "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ReaderVersion, Builder> {
        public ClientType client_type = ClientType.UNKNOWN;
        public String client_version = "";

        public final Builder client_type(ClientType client_type) {
            Intrinsics.checkNotNullParameter(client_type, "client_type");
            this.client_type = client_type;
            return this;
        }

        public final Builder client_version(String client_version) {
            Intrinsics.checkNotNullParameter(client_version, "client_version");
            this.client_version = client_version;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ReaderVersion build() {
            return new ReaderVersion(this.client_type, this.client_version, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ReaderVersion.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/sdk/ReaderVersion$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/sdk/ReaderVersion;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/sdk/ReaderVersion$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ReaderVersion build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ReaderVersion.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ReaderVersion>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.sdk.ReaderVersion$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ReaderVersion value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.client_type != ReaderVersion.ClientType.UNKNOWN) {
                    size += ReaderVersion.ClientType.ADAPTER.encodedSizeWithTag(1, value.client_type);
                }
                return !Intrinsics.areEqual(value.client_version, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(2, value.client_version) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ReaderVersion value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.client_type != ReaderVersion.ClientType.UNKNOWN) {
                    ReaderVersion.ClientType.ADAPTER.encodeWithTag(writer, 1, value.client_type);
                }
                if (!Intrinsics.areEqual(value.client_version, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.client_version);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ReaderVersion value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.client_version, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.client_version);
                }
                if (value.client_type != ReaderVersion.ClientType.UNKNOWN) {
                    ReaderVersion.ClientType.ADAPTER.encodeWithTag(writer, 1, value.client_type);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ReaderVersion decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ReaderVersion.ClientType clientTypeDecode = ReaderVersion.ClientType.UNKNOWN;
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ReaderVersion(clientTypeDecode, strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        try {
                            clientTypeDecode = ReaderVersion.ClientType.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else if (iNextTag == 2) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ReaderVersion redact(ReaderVersion value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return ReaderVersion.copy$default(value, null, null, ByteString.EMPTY, 3, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: ReaderVersion.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/proto/model/sdk/ReaderVersion$ClientType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "UNKNOWN", "RACCOON", "WARDEN", "ANDROID_READER", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ClientType implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ClientType[] $VALUES;
        public static final ProtoAdapter<ClientType> ADAPTER;
        public static final ClientType ANDROID_READER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final ClientType RACCOON;
        public static final ClientType UNKNOWN;
        public static final ClientType WARDEN;
        private final int value;

        private static final /* synthetic */ ClientType[] $values() {
            return new ClientType[]{UNKNOWN, RACCOON, WARDEN, ANDROID_READER};
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
            final ClientType clientType = new ClientType("UNKNOWN", 0, 0);
            UNKNOWN = clientType;
            RACCOON = new ClientType("RACCOON", 1, 1);
            WARDEN = new ClientType("WARDEN", 2, 3);
            ANDROID_READER = new ClientType("ANDROID_READER", 3, 4);
            ClientType[] clientTypeArr$values = $values();
            $VALUES = clientTypeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(clientTypeArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ClientType.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<ClientType>(orCreateKotlinClass, syntax, clientType) { // from class: com.stripe.proto.model.sdk.ReaderVersion$ClientType$Companion$ADAPTER$1
                {
                    ReaderVersion.ClientType clientType2 = clientType;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public ReaderVersion.ClientType fromValue(int value) {
                    return ReaderVersion.ClientType.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: ReaderVersion.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/sdk/ReaderVersion$ClientType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/sdk/ReaderVersion$ClientType;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final ClientType fromValue(int value) {
                if (value == 0) {
                    return ClientType.UNKNOWN;
                }
                if (value == 1) {
                    return ClientType.RACCOON;
                }
                if (value == 3) {
                    return ClientType.WARDEN;
                }
                if (value != 4) {
                    return null;
                }
                return ClientType.ANDROID_READER;
            }
        }
    }
}
