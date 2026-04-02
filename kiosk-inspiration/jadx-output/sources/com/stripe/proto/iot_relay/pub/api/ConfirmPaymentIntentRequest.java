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

/* JADX INFO: compiled from: ConfirmPaymentIntentRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001c2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001b\u001cBa\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fJg\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\f\u001a\u00020\u00042\b\b\u0002\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u0012J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u0002H\u0016J\b\u0010\u001a\u001a\u00020\u0004H\u0016R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0010R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;", "device_id", "", "stripe_ephemeral_key", OfflineStorageConstantsKt.PAYMENT_INTENT_ID, "terminal_action_id", OfflineStorageConstantsKt.READER_ID, "stripe_account", "amount_surcharge", "", "return_url", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lokio/ByteString;)V", "Ljava/lang/Long;", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest;", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ConfirmPaymentIntentRequest extends Message<ConfirmPaymentIntentRequest, Builder> {
    public static final ProtoAdapter<ConfirmPaymentIntentRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", jsonName = "amountSurcharge", schemaIndex = 6, tag = 7)
    public final Long amount_surcharge;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "deviceId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String device_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "paymentIntentId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String payment_intent_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "readerId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final String reader_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "returnUrl", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 8)
    public final String return_url;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "stripeAccount", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final String stripe_account;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "stripeEphemeralKey", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String stripe_ephemeral_key;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "terminalActionId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String terminal_action_id;

    public ConfirmPaymentIntentRequest() {
        this(null, null, null, null, null, null, null, null, null, 511, null);
    }

    public /* synthetic */ ConfirmPaymentIntentRequest(String str, String str2, String str3, String str4, String str5, String str6, Long l, String str7, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? "" : str4, (i & 16) != 0 ? "" : str5, (i & 32) != 0 ? "" : str6, (i & 64) != 0 ? null : l, (i & 128) != 0 ? "" : str7, (i & 256) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConfirmPaymentIntentRequest(String device_id, String stripe_ephemeral_key, String payment_intent_id, String terminal_action_id, String reader_id, String stripe_account, Long l, String return_url, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(device_id, "device_id");
        Intrinsics.checkNotNullParameter(stripe_ephemeral_key, "stripe_ephemeral_key");
        Intrinsics.checkNotNullParameter(payment_intent_id, "payment_intent_id");
        Intrinsics.checkNotNullParameter(terminal_action_id, "terminal_action_id");
        Intrinsics.checkNotNullParameter(reader_id, "reader_id");
        Intrinsics.checkNotNullParameter(stripe_account, "stripe_account");
        Intrinsics.checkNotNullParameter(return_url, "return_url");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.device_id = device_id;
        this.stripe_ephemeral_key = stripe_ephemeral_key;
        this.payment_intent_id = payment_intent_id;
        this.terminal_action_id = terminal_action_id;
        this.reader_id = reader_id;
        this.stripe_account = stripe_account;
        this.amount_surcharge = l;
        this.return_url = return_url;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.device_id = this.device_id;
        builder.stripe_ephemeral_key = this.stripe_ephemeral_key;
        builder.payment_intent_id = this.payment_intent_id;
        builder.terminal_action_id = this.terminal_action_id;
        builder.reader_id = this.reader_id;
        builder.stripe_account = this.stripe_account;
        builder.amount_surcharge = this.amount_surcharge;
        builder.return_url = this.return_url;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ConfirmPaymentIntentRequest)) {
            return false;
        }
        ConfirmPaymentIntentRequest confirmPaymentIntentRequest = (ConfirmPaymentIntentRequest) other;
        return Intrinsics.areEqual(unknownFields(), confirmPaymentIntentRequest.unknownFields()) && Intrinsics.areEqual(this.device_id, confirmPaymentIntentRequest.device_id) && Intrinsics.areEqual(this.stripe_ephemeral_key, confirmPaymentIntentRequest.stripe_ephemeral_key) && Intrinsics.areEqual(this.payment_intent_id, confirmPaymentIntentRequest.payment_intent_id) && Intrinsics.areEqual(this.terminal_action_id, confirmPaymentIntentRequest.terminal_action_id) && Intrinsics.areEqual(this.reader_id, confirmPaymentIntentRequest.reader_id) && Intrinsics.areEqual(this.stripe_account, confirmPaymentIntentRequest.stripe_account) && Intrinsics.areEqual(this.amount_surcharge, confirmPaymentIntentRequest.amount_surcharge) && Intrinsics.areEqual(this.return_url, confirmPaymentIntentRequest.return_url);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((((((((unknownFields().hashCode() * 37) + this.device_id.hashCode()) * 37) + this.stripe_ephemeral_key.hashCode()) * 37) + this.payment_intent_id.hashCode()) * 37) + this.terminal_action_id.hashCode()) * 37) + this.reader_id.hashCode()) * 37) + this.stripe_account.hashCode()) * 37;
        Long l = this.amount_surcharge;
        int iHashCode2 = ((iHashCode + (l != null ? l.hashCode() : 0)) * 37) + this.return_url.hashCode();
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("device_id=" + Internal.sanitize(this.device_id));
        arrayList2.add("stripe_ephemeral_key=" + Internal.sanitize(this.stripe_ephemeral_key));
        arrayList2.add("payment_intent_id=" + Internal.sanitize(this.payment_intent_id));
        arrayList2.add("terminal_action_id=" + Internal.sanitize(this.terminal_action_id));
        arrayList2.add("reader_id=" + Internal.sanitize(this.reader_id));
        arrayList2.add("stripe_account=" + Internal.sanitize(this.stripe_account));
        if (this.amount_surcharge != null) {
            arrayList2.add("amount_surcharge=" + this.amount_surcharge);
        }
        arrayList2.add("return_url=" + Internal.sanitize(this.return_url));
        return CollectionsKt.joinToString$default(arrayList, ", ", "ConfirmPaymentIntentRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ConfirmPaymentIntentRequest copy$default(ConfirmPaymentIntentRequest confirmPaymentIntentRequest, String str, String str2, String str3, String str4, String str5, String str6, Long l, String str7, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = confirmPaymentIntentRequest.device_id;
        }
        if ((i & 2) != 0) {
            str2 = confirmPaymentIntentRequest.stripe_ephemeral_key;
        }
        if ((i & 4) != 0) {
            str3 = confirmPaymentIntentRequest.payment_intent_id;
        }
        if ((i & 8) != 0) {
            str4 = confirmPaymentIntentRequest.terminal_action_id;
        }
        if ((i & 16) != 0) {
            str5 = confirmPaymentIntentRequest.reader_id;
        }
        if ((i & 32) != 0) {
            str6 = confirmPaymentIntentRequest.stripe_account;
        }
        if ((i & 64) != 0) {
            l = confirmPaymentIntentRequest.amount_surcharge;
        }
        if ((i & 128) != 0) {
            str7 = confirmPaymentIntentRequest.return_url;
        }
        if ((i & 256) != 0) {
            byteString = confirmPaymentIntentRequest.unknownFields();
        }
        String str8 = str7;
        ByteString byteString2 = byteString;
        String str9 = str6;
        Long l2 = l;
        String str10 = str5;
        String str11 = str3;
        return confirmPaymentIntentRequest.copy(str, str2, str11, str4, str10, str9, l2, str8, byteString2);
    }

    public final ConfirmPaymentIntentRequest copy(String device_id, String stripe_ephemeral_key, String payment_intent_id, String terminal_action_id, String reader_id, String stripe_account, Long amount_surcharge, String return_url, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(device_id, "device_id");
        Intrinsics.checkNotNullParameter(stripe_ephemeral_key, "stripe_ephemeral_key");
        Intrinsics.checkNotNullParameter(payment_intent_id, "payment_intent_id");
        Intrinsics.checkNotNullParameter(terminal_action_id, "terminal_action_id");
        Intrinsics.checkNotNullParameter(reader_id, "reader_id");
        Intrinsics.checkNotNullParameter(stripe_account, "stripe_account");
        Intrinsics.checkNotNullParameter(return_url, "return_url");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ConfirmPaymentIntentRequest(device_id, stripe_ephemeral_key, payment_intent_id, terminal_action_id, reader_id, stripe_account, amount_surcharge, return_url, unknownFields);
    }

    /* JADX INFO: compiled from: ConfirmPaymentIntentRequest.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u000fJ\b\u0010\u0010\u001a\u00020\u0002H\u0016J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\bJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\bJ\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\bJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\bJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\bR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0012\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest;", "()V", "amount_surcharge", "", "Ljava/lang/Long;", "device_id", "", OfflineStorageConstantsKt.PAYMENT_INTENT_ID, OfflineStorageConstantsKt.READER_ID, "return_url", "stripe_account", "stripe_ephemeral_key", "terminal_action_id", "(Ljava/lang/Long;)Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ConfirmPaymentIntentRequest, Builder> {
        public Long amount_surcharge;
        public String device_id = "";
        public String stripe_ephemeral_key = "";
        public String payment_intent_id = "";
        public String terminal_action_id = "";
        public String reader_id = "";
        public String stripe_account = "";
        public String return_url = "";

        public final Builder device_id(String device_id) {
            Intrinsics.checkNotNullParameter(device_id, "device_id");
            this.device_id = device_id;
            return this;
        }

        public final Builder stripe_ephemeral_key(String stripe_ephemeral_key) {
            Intrinsics.checkNotNullParameter(stripe_ephemeral_key, "stripe_ephemeral_key");
            this.stripe_ephemeral_key = stripe_ephemeral_key;
            return this;
        }

        public final Builder payment_intent_id(String payment_intent_id) {
            Intrinsics.checkNotNullParameter(payment_intent_id, "payment_intent_id");
            this.payment_intent_id = payment_intent_id;
            return this;
        }

        public final Builder terminal_action_id(String terminal_action_id) {
            Intrinsics.checkNotNullParameter(terminal_action_id, "terminal_action_id");
            this.terminal_action_id = terminal_action_id;
            return this;
        }

        public final Builder reader_id(String reader_id) {
            Intrinsics.checkNotNullParameter(reader_id, "reader_id");
            this.reader_id = reader_id;
            return this;
        }

        public final Builder stripe_account(String stripe_account) {
            Intrinsics.checkNotNullParameter(stripe_account, "stripe_account");
            this.stripe_account = stripe_account;
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
        public ConfirmPaymentIntentRequest build() {
            return new ConfirmPaymentIntentRequest(this.device_id, this.stripe_ephemeral_key, this.payment_intent_id, this.terminal_action_id, this.reader_id, this.stripe_account, this.amount_surcharge, this.return_url, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ConfirmPaymentIntentRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ConfirmPaymentIntentRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ConfirmPaymentIntentRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ConfirmPaymentIntentRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.iot_relay.pub.api.ConfirmPaymentIntentRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ConfirmPaymentIntentRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.device_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.device_id);
                }
                if (!Intrinsics.areEqual(value.stripe_ephemeral_key, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.stripe_ephemeral_key);
                }
                if (!Intrinsics.areEqual(value.payment_intent_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.payment_intent_id);
                }
                if (!Intrinsics.areEqual(value.terminal_action_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(4, value.terminal_action_id);
                }
                if (!Intrinsics.areEqual(value.reader_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(5, value.reader_id);
                }
                if (!Intrinsics.areEqual(value.stripe_account, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(6, value.stripe_account);
                }
                if (value.amount_surcharge != null) {
                    size += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(7, value.amount_surcharge);
                }
                return !Intrinsics.areEqual(value.return_url, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(8, value.return_url) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ConfirmPaymentIntentRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.device_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.device_id);
                }
                if (!Intrinsics.areEqual(value.stripe_ephemeral_key, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.stripe_ephemeral_key);
                }
                if (!Intrinsics.areEqual(value.payment_intent_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.payment_intent_id);
                }
                if (!Intrinsics.areEqual(value.terminal_action_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.terminal_action_id);
                }
                if (!Intrinsics.areEqual(value.reader_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.reader_id);
                }
                if (!Intrinsics.areEqual(value.stripe_account, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.stripe_account);
                }
                if (value.amount_surcharge != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 7, value.amount_surcharge);
                }
                if (!Intrinsics.areEqual(value.return_url, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 8, value.return_url);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ConfirmPaymentIntentRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.return_url, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 8, value.return_url);
                }
                if (value.amount_surcharge != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 7, value.amount_surcharge);
                }
                if (!Intrinsics.areEqual(value.stripe_account, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.stripe_account);
                }
                if (!Intrinsics.areEqual(value.reader_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.reader_id);
                }
                if (!Intrinsics.areEqual(value.terminal_action_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.terminal_action_id);
                }
                if (!Intrinsics.areEqual(value.payment_intent_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.payment_intent_id);
                }
                if (!Intrinsics.areEqual(value.stripe_ephemeral_key, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.stripe_ephemeral_key);
                }
                if (Intrinsics.areEqual(value.device_id, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.device_id);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ConfirmPaymentIntentRequest redact(ConfirmPaymentIntentRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                Long l = value.amount_surcharge;
                return ConfirmPaymentIntentRequest.copy$default(value, null, null, null, null, null, null, l != null ? ProtoAdapter.INT64_VALUE.redact(l) : null, null, ByteString.EMPTY, 191, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ConfirmPaymentIntentRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = "";
                String strDecode3 = strDecode2;
                String strDecode4 = strDecode3;
                String strDecode5 = strDecode4;
                String strDecode6 = strDecode5;
                Long lDecode = null;
                String strDecode7 = strDecode6;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 2:
                                strDecode7 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 3:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 4:
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 5:
                                strDecode4 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 6:
                                strDecode5 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 7:
                                lDecode = ProtoAdapter.INT64_VALUE.decode(reader);
                                break;
                            case 8:
                                strDecode6 = ProtoAdapter.STRING.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new ConfirmPaymentIntentRequest(strDecode, strDecode7, strDecode2, strDecode3, strDecode4, strDecode5, lDecode, strDecode6, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
