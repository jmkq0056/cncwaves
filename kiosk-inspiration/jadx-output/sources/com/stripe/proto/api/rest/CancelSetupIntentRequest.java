package com.stripe.proto.api.rest;

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
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.api.rest.CancelSetupIntentRequest;
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

/* JADX INFO: compiled from: CancelSetupIntentRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0013\u0014\u0015B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0004H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/api/rest/CancelSetupIntentRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/CancelSetupIntentRequest$Builder;", OfflineStorageConstantsKt.ID, "", "cancellation_reason", "Lcom/stripe/proto/api/rest/CancelSetupIntentRequest$Reason;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lcom/stripe/proto/api/rest/CancelSetupIntentRequest$Reason;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "Reason", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CancelSetupIntentRequest extends Message<CancelSetupIntentRequest, Builder> {
    public static final ProtoAdapter<CancelSetupIntentRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.api.rest.CancelSetupIntentRequest$Reason#ADAPTER", jsonName = "cancellationReason", schemaIndex = 1, tag = 2)
    public final Reason cancellation_reason;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 0, tag = 1)
    public final String id;

    public CancelSetupIntentRequest() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ CancelSetupIntentRequest(String str, Reason reason, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : reason, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CancelSetupIntentRequest(String str, Reason reason, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.id = str;
        this.cancellation_reason = reason;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.id = this.id;
        builder.cancellation_reason = this.cancellation_reason;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CancelSetupIntentRequest)) {
            return false;
        }
        CancelSetupIntentRequest cancelSetupIntentRequest = (CancelSetupIntentRequest) other;
        return Intrinsics.areEqual(unknownFields(), cancelSetupIntentRequest.unknownFields()) && Intrinsics.areEqual(this.id, cancelSetupIntentRequest.id) && this.cancellation_reason == cancelSetupIntentRequest.cancellation_reason;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.id;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        Reason reason = this.cancellation_reason;
        int iHashCode3 = iHashCode2 + (reason != null ? reason.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.id != null) {
            arrayList.add("id=" + this.id);
        }
        if (this.cancellation_reason != null) {
            arrayList.add("cancellation_reason=" + this.cancellation_reason);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "CancelSetupIntentRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CancelSetupIntentRequest copy$default(CancelSetupIntentRequest cancelSetupIntentRequest, String str, Reason reason, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = cancelSetupIntentRequest.id;
        }
        if ((i & 2) != 0) {
            reason = cancelSetupIntentRequest.cancellation_reason;
        }
        if ((i & 4) != 0) {
            byteString = cancelSetupIntentRequest.unknownFields();
        }
        return cancelSetupIntentRequest.copy(str, reason, byteString);
    }

    public final CancelSetupIntentRequest copy(String id, Reason cancellation_reason, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CancelSetupIntentRequest(id, cancellation_reason, unknownFields);
    }

    /* JADX INFO: compiled from: CancelSetupIntentRequest.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/rest/CancelSetupIntentRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/CancelSetupIntentRequest;", "()V", "cancellation_reason", "Lcom/stripe/proto/api/rest/CancelSetupIntentRequest$Reason;", OfflineStorageConstantsKt.ID, "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CancelSetupIntentRequest, Builder> {
        public Reason cancellation_reason;
        public String id;

        public final Builder id(String id) {
            this.id = id;
            return this;
        }

        public final Builder cancellation_reason(Reason cancellation_reason) {
            this.cancellation_reason = cancellation_reason;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CancelSetupIntentRequest build() {
            return new CancelSetupIntentRequest(this.id, this.cancellation_reason, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CancelSetupIntentRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/CancelSetupIntentRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/CancelSetupIntentRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/CancelSetupIntentRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CancelSetupIntentRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CancelSetupIntentRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CancelSetupIntentRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.CancelSetupIntentRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CancelSetupIntentRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.id != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.id);
                }
                return size + CancelSetupIntentRequest.Reason.ADAPTER.encodedSizeWithTag(2, value.cancellation_reason);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CancelSetupIntentRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.id);
                }
                CancelSetupIntentRequest.Reason.ADAPTER.encodeWithTag(writer, 2, value.cancellation_reason);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CancelSetupIntentRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                CancelSetupIntentRequest.Reason.ADAPTER.encodeWithTag(writer, 2, value.cancellation_reason);
                if (value.id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.id);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CancelSetupIntentRequest redact(CancelSetupIntentRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                String str = value.id;
                return CancelSetupIntentRequest.copy$default(value, str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null, null, ByteString.EMPTY, 2, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CancelSetupIntentRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = null;
                CancelSetupIntentRequest.Reason reasonDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CancelSetupIntentRequest(strDecode, reasonDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                    } else if (iNextTag == 2) {
                        try {
                            reasonDecode = CancelSetupIntentRequest.Reason.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: CancelSetupIntentRequest.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lcom/stripe/proto/api/rest/CancelSetupIntentRequest$Reason;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "duplicate", "requested_by_customer", "abandoned", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Reason implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Reason[] $VALUES;
        public static final ProtoAdapter<Reason> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final Reason abandoned;
        public static final Reason duplicate;
        public static final Reason requested_by_customer;
        private final int value;

        private static final /* synthetic */ Reason[] $values() {
            return new Reason[]{duplicate, requested_by_customer, abandoned};
        }

        @JvmStatic
        public static final Reason fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<Reason> getEntries() {
            return $ENTRIES;
        }

        public static Reason valueOf(String str) {
            return (Reason) Enum.valueOf(Reason.class, str);
        }

        public static Reason[] values() {
            return (Reason[]) $VALUES.clone();
        }

        private Reason(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final Reason reason = new Reason("duplicate", 0, 0);
            duplicate = reason;
            requested_by_customer = new Reason("requested_by_customer", 1, 1);
            abandoned = new Reason("abandoned", 2, 2);
            Reason[] reasonArr$values = $values();
            $VALUES = reasonArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(reasonArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Reason.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<Reason>(orCreateKotlinClass, syntax, reason) { // from class: com.stripe.proto.api.rest.CancelSetupIntentRequest$Reason$Companion$ADAPTER$1
                {
                    CancelSetupIntentRequest.Reason reason2 = reason;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public CancelSetupIntentRequest.Reason fromValue(int value) {
                    return CancelSetupIntentRequest.Reason.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: CancelSetupIntentRequest.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/rest/CancelSetupIntentRequest$Reason$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/CancelSetupIntentRequest$Reason;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final Reason fromValue(int value) {
                if (value == 0) {
                    return Reason.duplicate;
                }
                if (value == 1) {
                    return Reason.requested_by_customer;
                }
                if (value != 2) {
                    return null;
                }
                return Reason.abandoned;
            }
        }
    }
}
