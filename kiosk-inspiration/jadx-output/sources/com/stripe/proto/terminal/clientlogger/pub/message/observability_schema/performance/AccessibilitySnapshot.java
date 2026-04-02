package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.performance;

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
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.performance.AccessibilitySnapshot;
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

/* JADX INFO: compiled from: AccessibilitySnapshot.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0012\u0013\u0014B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot$Builder;", "service_status", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot$AccessibilityServiceStatus;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot$AccessibilityServiceStatus;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "AccessibilityServiceStatus", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AccessibilitySnapshot extends Message<AccessibilitySnapshot, Builder> {
    public static final ProtoAdapter<AccessibilitySnapshot> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.performance.AccessibilitySnapshot$AccessibilityServiceStatus#ADAPTER", jsonName = "serviceStatus", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final AccessibilityServiceStatus service_status;

    /* JADX WARN: Multi-variable type inference failed */
    public AccessibilitySnapshot() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ AccessibilitySnapshot(AccessibilityServiceStatus accessibilityServiceStatus, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? AccessibilityServiceStatus.ACCESSIBILITY_SERVICE_STATUS_INVALID : accessibilityServiceStatus, (i & 2) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccessibilitySnapshot(AccessibilityServiceStatus service_status, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(service_status, "service_status");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.service_status = service_status;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.service_status = this.service_status;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof AccessibilitySnapshot)) {
            return false;
        }
        AccessibilitySnapshot accessibilitySnapshot = (AccessibilitySnapshot) other;
        return Intrinsics.areEqual(unknownFields(), accessibilitySnapshot.unknownFields()) && this.service_status == accessibilitySnapshot.service_status;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (unknownFields().hashCode() * 37) + this.service_status.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("service_status=" + this.service_status);
        return CollectionsKt.joinToString$default(arrayList, ", ", "AccessibilitySnapshot{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ AccessibilitySnapshot copy$default(AccessibilitySnapshot accessibilitySnapshot, AccessibilityServiceStatus accessibilityServiceStatus, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            accessibilityServiceStatus = accessibilitySnapshot.service_status;
        }
        if ((i & 2) != 0) {
            byteString = accessibilitySnapshot.unknownFields();
        }
        return accessibilitySnapshot.copy(accessibilityServiceStatus, byteString);
    }

    public final AccessibilitySnapshot copy(AccessibilityServiceStatus service_status, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(service_status, "service_status");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new AccessibilitySnapshot(service_status, unknownFields);
    }

    /* JADX INFO: compiled from: AccessibilitySnapshot.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;", "()V", "service_status", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot$AccessibilityServiceStatus;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<AccessibilitySnapshot, Builder> {
        public AccessibilityServiceStatus service_status = AccessibilityServiceStatus.ACCESSIBILITY_SERVICE_STATUS_INVALID;

        public final Builder service_status(AccessibilityServiceStatus service_status) {
            Intrinsics.checkNotNullParameter(service_status, "service_status");
            this.service_status = service_status;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public AccessibilitySnapshot build() {
            return new AccessibilitySnapshot(this.service_status, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: AccessibilitySnapshot.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ AccessibilitySnapshot build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AccessibilitySnapshot.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<AccessibilitySnapshot>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.performance.AccessibilitySnapshot$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(AccessibilitySnapshot value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                return value.service_status != AccessibilitySnapshot.AccessibilityServiceStatus.ACCESSIBILITY_SERVICE_STATUS_INVALID ? size + AccessibilitySnapshot.AccessibilityServiceStatus.ADAPTER.encodedSizeWithTag(1, value.service_status) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, AccessibilitySnapshot value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.service_status != AccessibilitySnapshot.AccessibilityServiceStatus.ACCESSIBILITY_SERVICE_STATUS_INVALID) {
                    AccessibilitySnapshot.AccessibilityServiceStatus.ADAPTER.encodeWithTag(writer, 1, value.service_status);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, AccessibilitySnapshot value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.service_status != AccessibilitySnapshot.AccessibilityServiceStatus.ACCESSIBILITY_SERVICE_STATUS_INVALID) {
                    AccessibilitySnapshot.AccessibilityServiceStatus.ADAPTER.encodeWithTag(writer, 1, value.service_status);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public AccessibilitySnapshot decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                AccessibilitySnapshot.AccessibilityServiceStatus accessibilityServiceStatusDecode = AccessibilitySnapshot.AccessibilityServiceStatus.ACCESSIBILITY_SERVICE_STATUS_INVALID;
                long jBeginMessage = reader.beginMessage();
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new AccessibilitySnapshot(accessibilityServiceStatusDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        try {
                            accessibilityServiceStatusDecode = AccessibilitySnapshot.AccessibilityServiceStatus.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public AccessibilitySnapshot redact(AccessibilitySnapshot value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return AccessibilitySnapshot.copy$default(value, null, ByteString.EMPTY, 1, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: AccessibilitySnapshot.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot$AccessibilityServiceStatus;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "ACCESSIBILITY_SERVICE_STATUS_INVALID", "SERVICE_STATUS_DISABLED", "SERVICE_STATUS_ENABLED", "SERVICE_STATUS_SESSION_ACTIVE", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class AccessibilityServiceStatus implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ AccessibilityServiceStatus[] $VALUES;
        public static final AccessibilityServiceStatus ACCESSIBILITY_SERVICE_STATUS_INVALID;
        public static final ProtoAdapter<AccessibilityServiceStatus> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final AccessibilityServiceStatus SERVICE_STATUS_DISABLED;
        public static final AccessibilityServiceStatus SERVICE_STATUS_ENABLED;
        public static final AccessibilityServiceStatus SERVICE_STATUS_SESSION_ACTIVE;
        private final int value;

        private static final /* synthetic */ AccessibilityServiceStatus[] $values() {
            return new AccessibilityServiceStatus[]{ACCESSIBILITY_SERVICE_STATUS_INVALID, SERVICE_STATUS_DISABLED, SERVICE_STATUS_ENABLED, SERVICE_STATUS_SESSION_ACTIVE};
        }

        @JvmStatic
        public static final AccessibilityServiceStatus fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<AccessibilityServiceStatus> getEntries() {
            return $ENTRIES;
        }

        public static AccessibilityServiceStatus valueOf(String str) {
            return (AccessibilityServiceStatus) Enum.valueOf(AccessibilityServiceStatus.class, str);
        }

        public static AccessibilityServiceStatus[] values() {
            return (AccessibilityServiceStatus[]) $VALUES.clone();
        }

        private AccessibilityServiceStatus(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final AccessibilityServiceStatus accessibilityServiceStatus = new AccessibilityServiceStatus("ACCESSIBILITY_SERVICE_STATUS_INVALID", 0, 0);
            ACCESSIBILITY_SERVICE_STATUS_INVALID = accessibilityServiceStatus;
            SERVICE_STATUS_DISABLED = new AccessibilityServiceStatus("SERVICE_STATUS_DISABLED", 1, 1);
            SERVICE_STATUS_ENABLED = new AccessibilityServiceStatus("SERVICE_STATUS_ENABLED", 2, 2);
            SERVICE_STATUS_SESSION_ACTIVE = new AccessibilityServiceStatus("SERVICE_STATUS_SESSION_ACTIVE", 3, 3);
            AccessibilityServiceStatus[] accessibilityServiceStatusArr$values = $values();
            $VALUES = accessibilityServiceStatusArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(accessibilityServiceStatusArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AccessibilityServiceStatus.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<AccessibilityServiceStatus>(orCreateKotlinClass, syntax, accessibilityServiceStatus) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.performance.AccessibilitySnapshot$AccessibilityServiceStatus$Companion$ADAPTER$1
                {
                    AccessibilitySnapshot.AccessibilityServiceStatus accessibilityServiceStatus2 = accessibilityServiceStatus;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public AccessibilitySnapshot.AccessibilityServiceStatus fromValue(int value) {
                    return AccessibilitySnapshot.AccessibilityServiceStatus.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: AccessibilitySnapshot.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot$AccessibilityServiceStatus$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot$AccessibilityServiceStatus;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final AccessibilityServiceStatus fromValue(int value) {
                if (value == 0) {
                    return AccessibilityServiceStatus.ACCESSIBILITY_SERVICE_STATUS_INVALID;
                }
                if (value == 1) {
                    return AccessibilityServiceStatus.SERVICE_STATUS_DISABLED;
                }
                if (value == 2) {
                    return AccessibilityServiceStatus.SERVICE_STATUS_ENABLED;
                }
                if (value != 3) {
                    return null;
                }
                return AccessibilityServiceStatus.SERVICE_STATUS_SESSION_ACTIVE;
            }
        }
    }
}
