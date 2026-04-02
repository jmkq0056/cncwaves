package com.stripe.proto.iot_relay.pub.api;

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

/* JADX INFO: compiled from: CheckForUpdatesRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ$\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/CheckForUpdatesRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/iot_relay/pub/api/CheckForUpdatesRequest$Builder;", "device_id", "", "reason", "Lcom/stripe/proto/iot_relay/pub/api/CheckUpdateReason;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lcom/stripe/proto/iot_relay/pub/api/CheckUpdateReason;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CheckForUpdatesRequest extends Message<CheckForUpdatesRequest, Builder> {
    public static final ProtoAdapter<CheckForUpdatesRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "deviceId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String device_id;

    @WireField(adapter = "com.stripe.proto.iot_relay.pub.api.CheckUpdateReason#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final CheckUpdateReason reason;

    public CheckForUpdatesRequest() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ CheckForUpdatesRequest(String str, CheckUpdateReason checkUpdateReason, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? CheckUpdateReason.CHECK_UPDATE_REASON_INVALID : checkUpdateReason, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CheckForUpdatesRequest(String device_id, CheckUpdateReason reason, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(device_id, "device_id");
        Intrinsics.checkNotNullParameter(reason, "reason");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.device_id = device_id;
        this.reason = reason;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.device_id = this.device_id;
        builder.reason = this.reason;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CheckForUpdatesRequest)) {
            return false;
        }
        CheckForUpdatesRequest checkForUpdatesRequest = (CheckForUpdatesRequest) other;
        return Intrinsics.areEqual(unknownFields(), checkForUpdatesRequest.unknownFields()) && Intrinsics.areEqual(this.device_id, checkForUpdatesRequest.device_id) && this.reason == checkForUpdatesRequest.reason;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((unknownFields().hashCode() * 37) + this.device_id.hashCode()) * 37) + this.reason.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("device_id=" + Internal.sanitize(this.device_id));
        arrayList2.add("reason=" + this.reason);
        return CollectionsKt.joinToString$default(arrayList, ", ", "CheckForUpdatesRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CheckForUpdatesRequest copy$default(CheckForUpdatesRequest checkForUpdatesRequest, String str, CheckUpdateReason checkUpdateReason, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = checkForUpdatesRequest.device_id;
        }
        if ((i & 2) != 0) {
            checkUpdateReason = checkForUpdatesRequest.reason;
        }
        if ((i & 4) != 0) {
            byteString = checkForUpdatesRequest.unknownFields();
        }
        return checkForUpdatesRequest.copy(str, checkUpdateReason, byteString);
    }

    public final CheckForUpdatesRequest copy(String device_id, CheckUpdateReason reason, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(device_id, "device_id");
        Intrinsics.checkNotNullParameter(reason, "reason");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CheckForUpdatesRequest(device_id, reason, unknownFields);
    }

    /* JADX INFO: compiled from: CheckForUpdatesRequest.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/CheckForUpdatesRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/iot_relay/pub/api/CheckForUpdatesRequest;", "()V", "device_id", "", "reason", "Lcom/stripe/proto/iot_relay/pub/api/CheckUpdateReason;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CheckForUpdatesRequest, Builder> {
        public String device_id = "";
        public CheckUpdateReason reason = CheckUpdateReason.CHECK_UPDATE_REASON_INVALID;

        public final Builder device_id(String device_id) {
            Intrinsics.checkNotNullParameter(device_id, "device_id");
            this.device_id = device_id;
            return this;
        }

        public final Builder reason(CheckUpdateReason reason) {
            Intrinsics.checkNotNullParameter(reason, "reason");
            this.reason = reason;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CheckForUpdatesRequest build() {
            return new CheckForUpdatesRequest(this.device_id, this.reason, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CheckForUpdatesRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/CheckForUpdatesRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/iot_relay/pub/api/CheckForUpdatesRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/iot_relay/pub/api/CheckForUpdatesRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CheckForUpdatesRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CheckForUpdatesRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CheckForUpdatesRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.iot_relay.pub.api.CheckForUpdatesRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CheckForUpdatesRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.device_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.device_id);
                }
                return value.reason != CheckUpdateReason.CHECK_UPDATE_REASON_INVALID ? size + CheckUpdateReason.ADAPTER.encodedSizeWithTag(2, value.reason) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CheckForUpdatesRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.device_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.device_id);
                }
                if (value.reason != CheckUpdateReason.CHECK_UPDATE_REASON_INVALID) {
                    CheckUpdateReason.ADAPTER.encodeWithTag(writer, 2, value.reason);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CheckForUpdatesRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.reason != CheckUpdateReason.CHECK_UPDATE_REASON_INVALID) {
                    CheckUpdateReason.ADAPTER.encodeWithTag(writer, 2, value.reason);
                }
                if (Intrinsics.areEqual(value.device_id, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.device_id);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CheckForUpdatesRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                CheckUpdateReason checkUpdateReasonDecode = CheckUpdateReason.CHECK_UPDATE_REASON_INVALID;
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CheckForUpdatesRequest(strDecode, checkUpdateReasonDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 2) {
                        try {
                            checkUpdateReasonDecode = CheckUpdateReason.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CheckForUpdatesRequest redact(CheckForUpdatesRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return CheckForUpdatesRequest.copy$default(value, null, null, ByteString.EMPTY, 3, null);
            }
        };
    }
}
