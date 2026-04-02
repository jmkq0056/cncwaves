package com.stripe.proto.event_channel.pub.message;

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

/* JADX INFO: compiled from: ConfirmPaymentIntentPayload.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017B/\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ5\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\rJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\b\u0010\u0015\u001a\u00020\u0004H\u0016R\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u000bR\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload$Builder;", OfflineStorageConstantsKt.PAYMENT_INTENT_ID, "", "amount_surcharge", "", "return_url", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lokio/ByteString;)V", "Ljava/lang/Long;", "copy", "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ConfirmPaymentIntentPayload extends Message<ConfirmPaymentIntentPayload, Builder> {
    public static final ProtoAdapter<ConfirmPaymentIntentPayload> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", jsonName = "amountSurcharge", schemaIndex = 1, tag = 2)
    public final Long amount_surcharge;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "paymentIntentId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String payment_intent_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "returnUrl", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String return_url;

    public ConfirmPaymentIntentPayload() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ ConfirmPaymentIntentPayload(String str, Long l, String str2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? null : l, (i & 4) != 0 ? "" : str2, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConfirmPaymentIntentPayload(String payment_intent_id, Long l, String return_url, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(payment_intent_id, "payment_intent_id");
        Intrinsics.checkNotNullParameter(return_url, "return_url");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.payment_intent_id = payment_intent_id;
        this.amount_surcharge = l;
        this.return_url = return_url;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.payment_intent_id = this.payment_intent_id;
        builder.amount_surcharge = this.amount_surcharge;
        builder.return_url = this.return_url;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ConfirmPaymentIntentPayload)) {
            return false;
        }
        ConfirmPaymentIntentPayload confirmPaymentIntentPayload = (ConfirmPaymentIntentPayload) other;
        return Intrinsics.areEqual(unknownFields(), confirmPaymentIntentPayload.unknownFields()) && Intrinsics.areEqual(this.payment_intent_id, confirmPaymentIntentPayload.payment_intent_id) && Intrinsics.areEqual(this.amount_surcharge, confirmPaymentIntentPayload.amount_surcharge) && Intrinsics.areEqual(this.return_url, confirmPaymentIntentPayload.return_url);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + this.payment_intent_id.hashCode()) * 37;
        Long l = this.amount_surcharge;
        int iHashCode2 = ((iHashCode + (l != null ? l.hashCode() : 0)) * 37) + this.return_url.hashCode();
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("payment_intent_id=" + Internal.sanitize(this.payment_intent_id));
        if (this.amount_surcharge != null) {
            arrayList2.add("amount_surcharge=" + this.amount_surcharge);
        }
        arrayList2.add("return_url=" + Internal.sanitize(this.return_url));
        return CollectionsKt.joinToString$default(arrayList, ", ", "ConfirmPaymentIntentPayload{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ConfirmPaymentIntentPayload copy$default(ConfirmPaymentIntentPayload confirmPaymentIntentPayload, String str, Long l, String str2, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = confirmPaymentIntentPayload.payment_intent_id;
        }
        if ((i & 2) != 0) {
            l = confirmPaymentIntentPayload.amount_surcharge;
        }
        if ((i & 4) != 0) {
            str2 = confirmPaymentIntentPayload.return_url;
        }
        if ((i & 8) != 0) {
            byteString = confirmPaymentIntentPayload.unknownFields();
        }
        return confirmPaymentIntentPayload.copy(str, l, str2, byteString);
    }

    public final ConfirmPaymentIntentPayload copy(String payment_intent_id, Long amount_surcharge, String return_url, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(payment_intent_id, "payment_intent_id");
        Intrinsics.checkNotNullParameter(return_url, "return_url");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ConfirmPaymentIntentPayload(payment_intent_id, amount_surcharge, return_url, unknownFields);
    }

    /* JADX INFO: compiled from: ConfirmPaymentIntentPayload.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\nJ\b\u0010\u000b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\bR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0012\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;", "()V", "amount_surcharge", "", "Ljava/lang/Long;", OfflineStorageConstantsKt.PAYMENT_INTENT_ID, "", "return_url", "(Ljava/lang/Long;)Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload$Builder;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ConfirmPaymentIntentPayload, Builder> {
        public Long amount_surcharge;
        public String payment_intent_id = "";
        public String return_url = "";

        public final Builder payment_intent_id(String payment_intent_id) {
            Intrinsics.checkNotNullParameter(payment_intent_id, "payment_intent_id");
            this.payment_intent_id = payment_intent_id;
            return this;
        }

        public final Builder amount_surcharge(Long amount_surcharge) {
            this.amount_surcharge = amount_surcharge;
            return this;
        }

        public final Builder return_url(String return_url) {
            Intrinsics.checkNotNullParameter(return_url, "return_url");
            this.return_url = return_url;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ConfirmPaymentIntentPayload build() {
            return new ConfirmPaymentIntentPayload(this.payment_intent_id, this.amount_surcharge, this.return_url, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ConfirmPaymentIntentPayload.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ConfirmPaymentIntentPayload build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ConfirmPaymentIntentPayload.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ConfirmPaymentIntentPayload>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.event_channel.pub.message.ConfirmPaymentIntentPayload$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ConfirmPaymentIntentPayload value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.payment_intent_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.payment_intent_id);
                }
                if (value.amount_surcharge != null) {
                    size += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(2, value.amount_surcharge);
                }
                return !Intrinsics.areEqual(value.return_url, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(3, value.return_url) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ConfirmPaymentIntentPayload value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.payment_intent_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.payment_intent_id);
                }
                if (value.amount_surcharge != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 2, value.amount_surcharge);
                }
                if (!Intrinsics.areEqual(value.return_url, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.return_url);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ConfirmPaymentIntentPayload value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.return_url, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.return_url);
                }
                if (value.amount_surcharge != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 2, value.amount_surcharge);
                }
                if (Intrinsics.areEqual(value.payment_intent_id, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.payment_intent_id);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ConfirmPaymentIntentPayload redact(ConfirmPaymentIntentPayload value) {
                Intrinsics.checkNotNullParameter(value, "value");
                Long l = value.amount_surcharge;
                return ConfirmPaymentIntentPayload.copy$default(value, null, l != null ? ProtoAdapter.INT64_VALUE.redact(l) : null, null, ByteString.EMPTY, 5, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ConfirmPaymentIntentPayload decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                Long lDecode = null;
                String strDecode2 = "";
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ConfirmPaymentIntentPayload(strDecode, lDecode, strDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 2) {
                        lDecode = ProtoAdapter.INT64_VALUE.decode(reader);
                    } else if (iNextTag == 3) {
                        strDecode2 = ProtoAdapter.STRING.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
