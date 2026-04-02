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
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
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

/* JADX INFO: compiled from: NotifyTransactionCompleteRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016BE\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJF\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\n\u001a\u00020\u000bJ\u0013\u0010\u000e\u001a\u00020\b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/NotifyTransactionCompleteRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/iot_relay/pub/api/NotifyTransactionCompleteRequest$Builder;", "device_id", "", OfflineStorageConstantsKt.PAYMENT_INTENT_ID, "terminal_action_id", "transaction_succeeded", "", "failure_code", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class NotifyTransactionCompleteRequest extends Message<NotifyTransactionCompleteRequest, Builder> {
    public static final ProtoAdapter<NotifyTransactionCompleteRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "deviceId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String device_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "failureCode", schemaIndex = 4, tag = 5)
    public final String failure_code;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "paymentIntentId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String payment_intent_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "terminalActionId", schemaIndex = 2, tag = 3)
    public final String terminal_action_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "transactionSucceeded", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final boolean transaction_succeeded;

    public NotifyTransactionCompleteRequest() {
        this(null, null, null, false, null, null, 63, null);
    }

    public /* synthetic */ NotifyTransactionCompleteRequest(String str, String str2, String str3, boolean z, String str4, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? false : z, (i & 16) != 0 ? null : str4, (i & 32) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotifyTransactionCompleteRequest(String device_id, String payment_intent_id, String str, boolean z, String str2, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(device_id, "device_id");
        Intrinsics.checkNotNullParameter(payment_intent_id, "payment_intent_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.device_id = device_id;
        this.payment_intent_id = payment_intent_id;
        this.terminal_action_id = str;
        this.transaction_succeeded = z;
        this.failure_code = str2;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.device_id = this.device_id;
        builder.payment_intent_id = this.payment_intent_id;
        builder.terminal_action_id = this.terminal_action_id;
        builder.transaction_succeeded = this.transaction_succeeded;
        builder.failure_code = this.failure_code;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof NotifyTransactionCompleteRequest)) {
            return false;
        }
        NotifyTransactionCompleteRequest notifyTransactionCompleteRequest = (NotifyTransactionCompleteRequest) other;
        return Intrinsics.areEqual(unknownFields(), notifyTransactionCompleteRequest.unknownFields()) && Intrinsics.areEqual(this.device_id, notifyTransactionCompleteRequest.device_id) && Intrinsics.areEqual(this.payment_intent_id, notifyTransactionCompleteRequest.payment_intent_id) && Intrinsics.areEqual(this.terminal_action_id, notifyTransactionCompleteRequest.terminal_action_id) && this.transaction_succeeded == notifyTransactionCompleteRequest.transaction_succeeded && Intrinsics.areEqual(this.failure_code, notifyTransactionCompleteRequest.failure_code);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((unknownFields().hashCode() * 37) + this.device_id.hashCode()) * 37) + this.payment_intent_id.hashCode()) * 37;
        String str = this.terminal_action_id;
        int iHashCode2 = (((iHashCode + (str != null ? str.hashCode() : 0)) * 37) + Boolean.hashCode(this.transaction_succeeded)) * 37;
        String str2 = this.failure_code;
        int iHashCode3 = iHashCode2 + (str2 != null ? str2.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("device_id=" + Internal.sanitize(this.device_id));
        arrayList2.add("payment_intent_id=" + Internal.sanitize(this.payment_intent_id));
        if (this.terminal_action_id != null) {
            arrayList2.add("terminal_action_id=" + this.terminal_action_id);
        }
        arrayList2.add("transaction_succeeded=" + this.transaction_succeeded);
        if (this.failure_code != null) {
            arrayList2.add("failure_code=" + this.failure_code);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "NotifyTransactionCompleteRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ NotifyTransactionCompleteRequest copy$default(NotifyTransactionCompleteRequest notifyTransactionCompleteRequest, String str, String str2, String str3, boolean z, String str4, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = notifyTransactionCompleteRequest.device_id;
        }
        if ((i & 2) != 0) {
            str2 = notifyTransactionCompleteRequest.payment_intent_id;
        }
        if ((i & 4) != 0) {
            str3 = notifyTransactionCompleteRequest.terminal_action_id;
        }
        if ((i & 8) != 0) {
            z = notifyTransactionCompleteRequest.transaction_succeeded;
        }
        if ((i & 16) != 0) {
            str4 = notifyTransactionCompleteRequest.failure_code;
        }
        if ((i & 32) != 0) {
            byteString = notifyTransactionCompleteRequest.unknownFields();
        }
        String str5 = str4;
        ByteString byteString2 = byteString;
        return notifyTransactionCompleteRequest.copy(str, str2, str3, z, str5, byteString2);
    }

    public final NotifyTransactionCompleteRequest copy(String device_id, String payment_intent_id, String terminal_action_id, boolean transaction_succeeded, String failure_code, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(device_id, "device_id");
        Intrinsics.checkNotNullParameter(payment_intent_id, "payment_intent_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new NotifyTransactionCompleteRequest(device_id, payment_intent_id, terminal_action_id, transaction_succeeded, failure_code, unknownFields);
    }

    /* JADX INFO: compiled from: NotifyTransactionCompleteRequest.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/NotifyTransactionCompleteRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/iot_relay/pub/api/NotifyTransactionCompleteRequest;", "()V", "device_id", "", "failure_code", OfflineStorageConstantsKt.PAYMENT_INTENT_ID, "terminal_action_id", "transaction_succeeded", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<NotifyTransactionCompleteRequest, Builder> {
        public String failure_code;
        public String terminal_action_id;
        public boolean transaction_succeeded;
        public String device_id = "";
        public String payment_intent_id = "";

        public final Builder device_id(String device_id) {
            Intrinsics.checkNotNullParameter(device_id, "device_id");
            this.device_id = device_id;
            return this;
        }

        public final Builder payment_intent_id(String payment_intent_id) {
            Intrinsics.checkNotNullParameter(payment_intent_id, "payment_intent_id");
            this.payment_intent_id = payment_intent_id;
            return this;
        }

        public final Builder terminal_action_id(String terminal_action_id) {
            this.terminal_action_id = terminal_action_id;
            return this;
        }

        public final Builder transaction_succeeded(boolean transaction_succeeded) {
            this.transaction_succeeded = transaction_succeeded;
            return this;
        }

        public final Builder failure_code(String failure_code) {
            this.failure_code = failure_code;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public NotifyTransactionCompleteRequest build() {
            return new NotifyTransactionCompleteRequest(this.device_id, this.payment_intent_id, this.terminal_action_id, this.transaction_succeeded, this.failure_code, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: NotifyTransactionCompleteRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/NotifyTransactionCompleteRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/iot_relay/pub/api/NotifyTransactionCompleteRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/iot_relay/pub/api/NotifyTransactionCompleteRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ NotifyTransactionCompleteRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(NotifyTransactionCompleteRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<NotifyTransactionCompleteRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.iot_relay.pub.api.NotifyTransactionCompleteRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(NotifyTransactionCompleteRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.device_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.device_id);
                }
                if (!Intrinsics.areEqual(value.payment_intent_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.payment_intent_id);
                }
                if (value.terminal_action_id != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.terminal_action_id);
                }
                if (value.transaction_succeeded) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(4, Boolean.valueOf(value.transaction_succeeded));
                }
                return value.failure_code != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(5, value.failure_code) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, NotifyTransactionCompleteRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.device_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.device_id);
                }
                if (!Intrinsics.areEqual(value.payment_intent_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.payment_intent_id);
                }
                if (value.terminal_action_id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.terminal_action_id);
                }
                if (value.transaction_succeeded) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 4, Boolean.valueOf(value.transaction_succeeded));
                }
                if (value.failure_code != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.failure_code);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, NotifyTransactionCompleteRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.failure_code != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.failure_code);
                }
                if (value.transaction_succeeded) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 4, Boolean.valueOf(value.transaction_succeeded));
                }
                if (value.terminal_action_id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.terminal_action_id);
                }
                if (!Intrinsics.areEqual(value.payment_intent_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.payment_intent_id);
                }
                if (Intrinsics.areEqual(value.device_id, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.device_id);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public NotifyTransactionCompleteRequest redact(NotifyTransactionCompleteRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                String str = value.terminal_action_id;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                String str2 = value.failure_code;
                return NotifyTransactionCompleteRequest.copy$default(value, null, null, strRedact, false, str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null, ByteString.EMPTY, 11, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public NotifyTransactionCompleteRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = null;
                boolean zBooleanValue = false;
                String strDecode3 = "";
                String strDecode4 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new NotifyTransactionCompleteRequest(strDecode, strDecode3, strDecode4, zBooleanValue, strDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 2) {
                        strDecode3 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 3) {
                        strDecode4 = ProtoAdapter.STRING_VALUE.decode(reader);
                    } else if (iNextTag == 4) {
                        zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                    } else if (iNextTag == 5) {
                        strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
