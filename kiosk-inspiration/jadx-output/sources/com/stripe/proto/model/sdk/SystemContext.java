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
import com.stripe.proto.model.sdk.SystemContext;
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

/* JADX INFO: compiled from: SystemContext.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0014\u0015\u0016B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0016\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\b\u0010\t¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/model/sdk/SystemContext;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/sdk/SystemContext$Builder;", "connectivity_status", "Lcom/stripe/proto/model/sdk/SystemContext$ConnectivityStatus;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/sdk/SystemContext$ConnectivityStatus;Lokio/ByteString;)V", "getConnectivity_status$annotations", "()V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "ConnectivityStatus", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SystemContext extends Message<SystemContext, Builder> {
    public static final ProtoAdapter<SystemContext> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.sdk.SystemContext$ConnectivityStatus#ADAPTER", jsonName = "connectivityStatus", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final ConnectivityStatus connectivity_status;

    /* JADX WARN: Multi-variable type inference failed */
    public SystemContext() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    @Deprecated(message = "connectivity_status is deprecated")
    public static /* synthetic */ void getConnectivity_status$annotations() {
    }

    public /* synthetic */ SystemContext(ConnectivityStatus connectivityStatus, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? ConnectivityStatus.OFFLINE : connectivityStatus, (i & 2) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SystemContext(ConnectivityStatus connectivity_status, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(connectivity_status, "connectivity_status");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.connectivity_status = connectivity_status;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.connectivity_status = this.connectivity_status;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof SystemContext)) {
            return false;
        }
        SystemContext systemContext = (SystemContext) other;
        return Intrinsics.areEqual(unknownFields(), systemContext.unknownFields()) && this.connectivity_status == systemContext.connectivity_status;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (unknownFields().hashCode() * 37) + this.connectivity_status.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("connectivity_status=" + this.connectivity_status);
        return CollectionsKt.joinToString$default(arrayList, ", ", "SystemContext{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ SystemContext copy$default(SystemContext systemContext, ConnectivityStatus connectivityStatus, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            connectivityStatus = systemContext.connectivity_status;
        }
        if ((i & 2) != 0) {
            byteString = systemContext.unknownFields();
        }
        return systemContext.copy(connectivityStatus, byteString);
    }

    public final SystemContext copy(ConnectivityStatus connectivity_status, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(connectivity_status, "connectivity_status");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new SystemContext(connectivity_status, unknownFields);
    }

    /* JADX INFO: compiled from: SystemContext.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005H\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/model/sdk/SystemContext$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/sdk/SystemContext;", "()V", "connectivity_status", "Lcom/stripe/proto/model/sdk/SystemContext$ConnectivityStatus;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<SystemContext, Builder> {
        public ConnectivityStatus connectivity_status = ConnectivityStatus.OFFLINE;

        @Deprecated(message = "connectivity_status is deprecated")
        public final Builder connectivity_status(ConnectivityStatus connectivity_status) {
            Intrinsics.checkNotNullParameter(connectivity_status, "connectivity_status");
            this.connectivity_status = connectivity_status;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public SystemContext build() {
            return new SystemContext(this.connectivity_status, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: SystemContext.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/sdk/SystemContext$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/sdk/SystemContext;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/sdk/SystemContext$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ SystemContext build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(SystemContext.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<SystemContext>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.sdk.SystemContext$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(SystemContext value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                return value.connectivity_status != SystemContext.ConnectivityStatus.OFFLINE ? size + SystemContext.ConnectivityStatus.ADAPTER.encodedSizeWithTag(1, value.connectivity_status) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, SystemContext value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.connectivity_status != SystemContext.ConnectivityStatus.OFFLINE) {
                    SystemContext.ConnectivityStatus.ADAPTER.encodeWithTag(writer, 1, value.connectivity_status);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, SystemContext value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.connectivity_status != SystemContext.ConnectivityStatus.OFFLINE) {
                    SystemContext.ConnectivityStatus.ADAPTER.encodeWithTag(writer, 1, value.connectivity_status);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public SystemContext decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                SystemContext.ConnectivityStatus connectivityStatusDecode = SystemContext.ConnectivityStatus.OFFLINE;
                long jBeginMessage = reader.beginMessage();
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new SystemContext(connectivityStatusDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        try {
                            connectivityStatusDecode = SystemContext.ConnectivityStatus.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public SystemContext redact(SystemContext value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return SystemContext.copy$default(value, null, ByteString.EMPTY, 1, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: SystemContext.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/sdk/SystemContext$ConnectivityStatus;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "OFFLINE", "CONNECTED", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ConnectivityStatus implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ConnectivityStatus[] $VALUES;
        public static final ProtoAdapter<ConnectivityStatus> ADAPTER;
        public static final ConnectivityStatus CONNECTED;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final ConnectivityStatus OFFLINE;
        private final int value;

        private static final /* synthetic */ ConnectivityStatus[] $values() {
            return new ConnectivityStatus[]{OFFLINE, CONNECTED};
        }

        @JvmStatic
        public static final ConnectivityStatus fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<ConnectivityStatus> getEntries() {
            return $ENTRIES;
        }

        public static ConnectivityStatus valueOf(String str) {
            return (ConnectivityStatus) Enum.valueOf(ConnectivityStatus.class, str);
        }

        public static ConnectivityStatus[] values() {
            return (ConnectivityStatus[]) $VALUES.clone();
        }

        private ConnectivityStatus(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final ConnectivityStatus connectivityStatus = new ConnectivityStatus("OFFLINE", 0, 0);
            OFFLINE = connectivityStatus;
            CONNECTED = new ConnectivityStatus("CONNECTED", 1, 1);
            ConnectivityStatus[] connectivityStatusArr$values = $values();
            $VALUES = connectivityStatusArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(connectivityStatusArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ConnectivityStatus.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<ConnectivityStatus>(orCreateKotlinClass, syntax, connectivityStatus) { // from class: com.stripe.proto.model.sdk.SystemContext$ConnectivityStatus$Companion$ADAPTER$1
                {
                    SystemContext.ConnectivityStatus connectivityStatus2 = connectivityStatus;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public SystemContext.ConnectivityStatus fromValue(int value) {
                    return SystemContext.ConnectivityStatus.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: SystemContext.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/sdk/SystemContext$ConnectivityStatus$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/sdk/SystemContext$ConnectivityStatus;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final ConnectivityStatus fromValue(int value) {
                if (value == 0) {
                    return ConnectivityStatus.OFFLINE;
                }
                if (value != 1) {
                    return null;
                }
                return ConnectivityStatus.CONNECTED;
            }
        }
    }
}
