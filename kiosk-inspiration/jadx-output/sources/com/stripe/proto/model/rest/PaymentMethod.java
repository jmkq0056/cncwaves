package com.stripe.proto.model.rest;

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
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: PaymentMethod.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 %2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002$%B\u009d\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\u0014\b\u0002\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0017¢\u0006\u0002\u0010\u0018J£\u0001\u0010\u001b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\u0014\b\u0002\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u0017¢\u0006\u0002\u0010\u001cJ\u0013\u0010\u001d\u001a\u00020\t2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0096\u0002J\b\u0010 \u001a\u00020!H\u0016J\b\u0010\"\u001a\u00020\u0002H\u0016J\b\u0010#\u001a\u00020\u0004H\u0016R\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0019R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u001aR\u001c\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lcom/stripe/proto/model/rest/PaymentMethod;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/PaymentMethod$Builder;", OfflineStorageConstantsKt.ID, "", "created", "", "customer", "livemode", "", "metadata", "", "type", "card", "Lcom/stripe/proto/model/rest/CardPaymentMethod;", "card_present", "Lcom/stripe/proto/model/rest/CardPresent;", "interac_present", "wechat_pay", "Lcom/stripe/proto/model/rest/WechatPay;", "affirm", "Lcom/stripe/proto/model/rest/Affirm;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/String;Lcom/stripe/proto/model/rest/CardPaymentMethod;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/WechatPay;Lcom/stripe/proto/model/rest/Affirm;Lokio/ByteString;)V", "Ljava/lang/Long;", "Ljava/lang/Boolean;", "copy", "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/String;Lcom/stripe/proto/model/rest/CardPaymentMethod;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/WechatPay;Lcom/stripe/proto/model/rest/Affirm;Lokio/ByteString;)Lcom/stripe/proto/model/rest/PaymentMethod;", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PaymentMethod extends Message<PaymentMethod, Builder> {
    public static final ProtoAdapter<PaymentMethod> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.rest.Affirm#ADAPTER", oneofName = "details_object", schemaIndex = 10, tag = 11)
    public final Affirm affirm;

    @WireField(adapter = "com.stripe.proto.model.rest.CardPaymentMethod#ADAPTER", oneofName = "details_object", schemaIndex = 6, tag = 7)
    public final CardPaymentMethod card;

    @WireField(adapter = "com.stripe.proto.model.rest.CardPresent#ADAPTER", jsonName = "cardPresent", oneofName = "details_object", schemaIndex = 7, tag = 8)
    public final CardPresent card_present;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", schemaIndex = 1, tag = 2)
    public final Long created;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 2, tag = 3)
    public final String customer;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 0, tag = 1)
    public final String id;

    @WireField(adapter = "com.stripe.proto.model.rest.CardPresent#ADAPTER", jsonName = "interacPresent", oneofName = "details_object", schemaIndex = 8, tag = 9)
    public final CardPresent interac_present;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", schemaIndex = 3, tag = 4)
    public final Boolean livemode;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 4, tag = 5)
    public final Map<String, String> metadata;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 5, tag = 6)
    public final String type;

    @WireField(adapter = "com.stripe.proto.model.rest.WechatPay#ADAPTER", jsonName = "wechatPay", oneofName = "details_object", schemaIndex = 9, tag = 10)
    public final WechatPay wechat_pay;

    public PaymentMethod() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, 4095, null);
    }

    public /* synthetic */ PaymentMethod(String str, Long l, String str2, Boolean bool, Map map, String str3, CardPaymentMethod cardPaymentMethod, CardPresent cardPresent, CardPresent cardPresent2, WechatPay wechatPay, Affirm affirm, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : l, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : bool, (i & 16) != 0 ? MapsKt.emptyMap() : map, (i & 32) != 0 ? null : str3, (i & 64) != 0 ? null : cardPaymentMethod, (i & 128) != 0 ? null : cardPresent, (i & 256) != 0 ? null : cardPresent2, (i & 512) != 0 ? null : wechatPay, (i & 1024) != 0 ? null : affirm, (i & 2048) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PaymentMethod(String str, Long l, String str2, Boolean bool, Map<String, String> metadata, String str3, CardPaymentMethod cardPaymentMethod, CardPresent cardPresent, CardPresent cardPresent2, WechatPay wechatPay, Affirm affirm, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.id = str;
        this.created = l;
        this.customer = str2;
        this.livemode = bool;
        this.type = str3;
        this.card = cardPaymentMethod;
        this.card_present = cardPresent;
        this.interac_present = cardPresent2;
        this.wechat_pay = wechatPay;
        this.affirm = affirm;
        this.metadata = Internal.immutableCopyOf("metadata", metadata);
        if (Internal.countNonNull(cardPaymentMethod, cardPresent, cardPresent2, wechatPay, affirm) > 1) {
            throw new IllegalArgumentException("At most one of card, card_present, interac_present, wechat_pay, affirm may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.id = this.id;
        builder.created = this.created;
        builder.customer = this.customer;
        builder.livemode = this.livemode;
        builder.metadata = this.metadata;
        builder.type = this.type;
        builder.card = this.card;
        builder.card_present = this.card_present;
        builder.interac_present = this.interac_present;
        builder.wechat_pay = this.wechat_pay;
        builder.affirm = this.affirm;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof PaymentMethod)) {
            return false;
        }
        PaymentMethod paymentMethod = (PaymentMethod) other;
        return Intrinsics.areEqual(unknownFields(), paymentMethod.unknownFields()) && Intrinsics.areEqual(this.id, paymentMethod.id) && Intrinsics.areEqual(this.created, paymentMethod.created) && Intrinsics.areEqual(this.customer, paymentMethod.customer) && Intrinsics.areEqual(this.livemode, paymentMethod.livemode) && Intrinsics.areEqual(this.metadata, paymentMethod.metadata) && Intrinsics.areEqual(this.type, paymentMethod.type) && Intrinsics.areEqual(this.card, paymentMethod.card) && Intrinsics.areEqual(this.card_present, paymentMethod.card_present) && Intrinsics.areEqual(this.interac_present, paymentMethod.interac_present) && Intrinsics.areEqual(this.wechat_pay, paymentMethod.wechat_pay) && Intrinsics.areEqual(this.affirm, paymentMethod.affirm);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.id;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        Long l = this.created;
        int iHashCode3 = (iHashCode2 + (l != null ? l.hashCode() : 0)) * 37;
        String str2 = this.customer;
        int iHashCode4 = (iHashCode3 + (str2 != null ? str2.hashCode() : 0)) * 37;
        Boolean bool = this.livemode;
        int iHashCode5 = (((iHashCode4 + (bool != null ? bool.hashCode() : 0)) * 37) + this.metadata.hashCode()) * 37;
        String str3 = this.type;
        int iHashCode6 = (iHashCode5 + (str3 != null ? str3.hashCode() : 0)) * 37;
        CardPaymentMethod cardPaymentMethod = this.card;
        int iHashCode7 = (iHashCode6 + (cardPaymentMethod != null ? cardPaymentMethod.hashCode() : 0)) * 37;
        CardPresent cardPresent = this.card_present;
        int iHashCode8 = (iHashCode7 + (cardPresent != null ? cardPresent.hashCode() : 0)) * 37;
        CardPresent cardPresent2 = this.interac_present;
        int iHashCode9 = (iHashCode8 + (cardPresent2 != null ? cardPresent2.hashCode() : 0)) * 37;
        WechatPay wechatPay = this.wechat_pay;
        int iHashCode10 = (iHashCode9 + (wechatPay != null ? wechatPay.hashCode() : 0)) * 37;
        Affirm affirm = this.affirm;
        int iHashCode11 = iHashCode10 + (affirm != null ? affirm.hashCode() : 0);
        this.hashCode = iHashCode11;
        return iHashCode11;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.id != null) {
            arrayList.add("id=" + this.id);
        }
        if (this.created != null) {
            arrayList.add("created=" + this.created);
        }
        if (this.customer != null) {
            arrayList.add("customer=" + this.customer);
        }
        if (this.livemode != null) {
            arrayList.add("livemode=" + this.livemode);
        }
        if (!this.metadata.isEmpty()) {
            arrayList.add("metadata=" + this.metadata);
        }
        if (this.type != null) {
            arrayList.add("type=" + this.type);
        }
        if (this.card != null) {
            arrayList.add("card=" + this.card);
        }
        if (this.card_present != null) {
            arrayList.add("card_present=" + this.card_present);
        }
        if (this.interac_present != null) {
            arrayList.add("interac_present=" + this.interac_present);
        }
        if (this.wechat_pay != null) {
            arrayList.add("wechat_pay=" + this.wechat_pay);
        }
        if (this.affirm != null) {
            arrayList.add("affirm=" + this.affirm);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "PaymentMethod{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PaymentMethod copy$default(PaymentMethod paymentMethod, String str, Long l, String str2, Boolean bool, Map map, String str3, CardPaymentMethod cardPaymentMethod, CardPresent cardPresent, CardPresent cardPresent2, WechatPay wechatPay, Affirm affirm, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = paymentMethod.id;
        }
        if ((i & 2) != 0) {
            l = paymentMethod.created;
        }
        if ((i & 4) != 0) {
            str2 = paymentMethod.customer;
        }
        if ((i & 8) != 0) {
            bool = paymentMethod.livemode;
        }
        if ((i & 16) != 0) {
            map = paymentMethod.metadata;
        }
        if ((i & 32) != 0) {
            str3 = paymentMethod.type;
        }
        if ((i & 64) != 0) {
            cardPaymentMethod = paymentMethod.card;
        }
        if ((i & 128) != 0) {
            cardPresent = paymentMethod.card_present;
        }
        if ((i & 256) != 0) {
            cardPresent2 = paymentMethod.interac_present;
        }
        if ((i & 512) != 0) {
            wechatPay = paymentMethod.wechat_pay;
        }
        if ((i & 1024) != 0) {
            affirm = paymentMethod.affirm;
        }
        if ((i & 2048) != 0) {
            byteString = paymentMethod.unknownFields();
        }
        Affirm affirm2 = affirm;
        ByteString byteString2 = byteString;
        CardPresent cardPresent3 = cardPresent2;
        WechatPay wechatPay2 = wechatPay;
        CardPaymentMethod cardPaymentMethod2 = cardPaymentMethod;
        CardPresent cardPresent4 = cardPresent;
        Map map2 = map;
        String str4 = str3;
        return paymentMethod.copy(str, l, str2, bool, map2, str4, cardPaymentMethod2, cardPresent4, cardPresent3, wechatPay2, affirm2, byteString2);
    }

    public final PaymentMethod copy(String id, Long created, String customer, Boolean livemode, Map<String, String> metadata, String type, CardPaymentMethod card, CardPresent card_present, CardPresent interac_present, WechatPay wechat_pay, Affirm affirm, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new PaymentMethod(id, created, customer, livemode, metadata, type, card, card_present, interac_present, wechat_pay, affirm, unknownFields);
    }

    /* JADX INFO: compiled from: PaymentMethod.kt */
    @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010\u0019\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0015\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\u001aJ\u0010\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\tJ\u0015\u0010\u0011\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012¢\u0006\u0002\u0010\u001bJ\u001a\u0010\u0014\u001a\u00020\u00002\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\u0015J\u0010\u0010\u0016\u001a\u00020\u00002\b\u0010\u0016\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\u0017\u001a\u00020\u00002\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\fR\u0014\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0013R\u001e\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/stripe/proto/model/rest/PaymentMethod$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/PaymentMethod;", "()V", "affirm", "Lcom/stripe/proto/model/rest/Affirm;", "card", "Lcom/stripe/proto/model/rest/CardPaymentMethod;", "card_present", "Lcom/stripe/proto/model/rest/CardPresent;", "created", "", "Ljava/lang/Long;", "customer", "", OfflineStorageConstantsKt.ID, "interac_present", "livemode", "", "Ljava/lang/Boolean;", "metadata", "", "type", "wechat_pay", "Lcom/stripe/proto/model/rest/WechatPay;", "build", "(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/PaymentMethod$Builder;", "(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/PaymentMethod$Builder;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<PaymentMethod, Builder> {
        public Affirm affirm;
        public CardPaymentMethod card;
        public CardPresent card_present;
        public Long created;
        public String customer;
        public String id;
        public CardPresent interac_present;
        public Boolean livemode;
        public Map<String, String> metadata = MapsKt.emptyMap();
        public String type;
        public WechatPay wechat_pay;

        public final Builder id(String id) {
            this.id = id;
            return this;
        }

        public final Builder created(Long created) {
            this.created = created;
            return this;
        }

        public final Builder customer(String customer) {
            this.customer = customer;
            return this;
        }

        public final Builder livemode(Boolean livemode) {
            this.livemode = livemode;
            return this;
        }

        public final Builder metadata(Map<String, String> metadata) {
            Intrinsics.checkNotNullParameter(metadata, "metadata");
            this.metadata = metadata;
            return this;
        }

        public final Builder type(String type) {
            this.type = type;
            return this;
        }

        public final Builder card(CardPaymentMethod card) {
            this.card = card;
            this.card_present = null;
            this.interac_present = null;
            this.wechat_pay = null;
            this.affirm = null;
            return this;
        }

        public final Builder card_present(CardPresent card_present) {
            this.card_present = card_present;
            this.card = null;
            this.interac_present = null;
            this.wechat_pay = null;
            this.affirm = null;
            return this;
        }

        public final Builder interac_present(CardPresent interac_present) {
            this.interac_present = interac_present;
            this.card = null;
            this.card_present = null;
            this.wechat_pay = null;
            this.affirm = null;
            return this;
        }

        public final Builder wechat_pay(WechatPay wechat_pay) {
            this.wechat_pay = wechat_pay;
            this.card = null;
            this.card_present = null;
            this.interac_present = null;
            this.affirm = null;
            return this;
        }

        public final Builder affirm(Affirm affirm) {
            this.affirm = affirm;
            this.card = null;
            this.card_present = null;
            this.interac_present = null;
            this.wechat_pay = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public PaymentMethod build() {
            return new PaymentMethod(this.id, this.created, this.customer, this.livemode, this.metadata, this.type, this.card, this.card_present, this.interac_present, this.wechat_pay, this.affirm, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: PaymentMethod.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/PaymentMethod$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/PaymentMethod;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/PaymentMethod$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ PaymentMethod build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(PaymentMethod.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<PaymentMethod>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.PaymentMethod$Companion$ADAPTER$1

            /* JADX INFO: renamed from: metadataAdapter$delegate, reason: from kotlin metadata */
            private final Lazy metadataAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends String>>>() { // from class: com.stripe.proto.model.rest.PaymentMethod$Companion$ADAPTER$1$metadataAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends String>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.STRING);
                }
            });

            private final ProtoAdapter<Map<String, String>> getMetadataAdapter() {
                return (ProtoAdapter) this.metadataAdapter.getValue();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(PaymentMethod value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.id != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.id);
                }
                if (value.created != null) {
                    size += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(2, value.created);
                }
                if (value.customer != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.customer);
                }
                if (value.livemode != null) {
                    size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(4, value.livemode);
                }
                int iEncodedSizeWithTag = size + getMetadataAdapter().encodedSizeWithTag(5, value.metadata);
                if (value.type != null) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(6, value.type);
                }
                return iEncodedSizeWithTag + CardPaymentMethod.ADAPTER.encodedSizeWithTag(7, value.card) + CardPresent.ADAPTER.encodedSizeWithTag(8, value.card_present) + CardPresent.ADAPTER.encodedSizeWithTag(9, value.interac_present) + WechatPay.ADAPTER.encodedSizeWithTag(10, value.wechat_pay) + Affirm.ADAPTER.encodedSizeWithTag(11, value.affirm);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, PaymentMethod value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.id);
                }
                if (value.created != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 2, value.created);
                }
                if (value.customer != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.customer);
                }
                if (value.livemode != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 4, value.livemode);
                }
                getMetadataAdapter().encodeWithTag(writer, 5, value.metadata);
                if (value.type != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 6, value.type);
                }
                CardPaymentMethod.ADAPTER.encodeWithTag(writer, 7, value.card);
                CardPresent.ADAPTER.encodeWithTag(writer, 8, value.card_present);
                CardPresent.ADAPTER.encodeWithTag(writer, 9, value.interac_present);
                WechatPay.ADAPTER.encodeWithTag(writer, 10, value.wechat_pay);
                Affirm.ADAPTER.encodeWithTag(writer, 11, value.affirm);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, PaymentMethod value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                Affirm.ADAPTER.encodeWithTag(writer, 11, value.affirm);
                WechatPay.ADAPTER.encodeWithTag(writer, 10, value.wechat_pay);
                CardPresent.ADAPTER.encodeWithTag(writer, 9, value.interac_present);
                CardPresent.ADAPTER.encodeWithTag(writer, 8, value.card_present);
                CardPaymentMethod.ADAPTER.encodeWithTag(writer, 7, value.card);
                if (value.type != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 6, value.type);
                }
                getMetadataAdapter().encodeWithTag(writer, 5, value.metadata);
                if (value.livemode != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 4, value.livemode);
                }
                if (value.customer != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.customer);
                }
                if (value.created != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 2, value.created);
                }
                if (value.id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.id);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public PaymentMethod decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                long jBeginMessage = reader.beginMessage();
                String strDecode = null;
                Long lDecode = null;
                String strDecode2 = null;
                Boolean boolDecode = null;
                String strDecode3 = null;
                CardPaymentMethod cardPaymentMethodDecode = null;
                CardPresent cardPresentDecode = null;
                CardPresent cardPresentDecode2 = null;
                WechatPay wechatPayDecode = null;
                Affirm affirmDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 2:
                                lDecode = ProtoAdapter.INT64_VALUE.decode(reader);
                                break;
                            case 3:
                                strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 4:
                                boolDecode = ProtoAdapter.BOOL_VALUE.decode(reader);
                                break;
                            case 5:
                                linkedHashMap.putAll(getMetadataAdapter().decode(reader));
                                break;
                            case 6:
                                strDecode3 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 7:
                                cardPaymentMethodDecode = CardPaymentMethod.ADAPTER.decode(reader);
                                break;
                            case 8:
                                cardPresentDecode = CardPresent.ADAPTER.decode(reader);
                                break;
                            case 9:
                                cardPresentDecode2 = CardPresent.ADAPTER.decode(reader);
                                break;
                            case 10:
                                wechatPayDecode = WechatPay.ADAPTER.decode(reader);
                                break;
                            case 11:
                                affirmDecode = Affirm.ADAPTER.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new PaymentMethod(strDecode, lDecode, strDecode2, boolDecode, linkedHashMap, strDecode3, cardPaymentMethodDecode, cardPresentDecode, cardPresentDecode2, wechatPayDecode, affirmDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public PaymentMethod redact(PaymentMethod value) {
                Intrinsics.checkNotNullParameter(value, "value");
                String str = value.id;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                Long l = value.created;
                Long lRedact = l != null ? ProtoAdapter.INT64_VALUE.redact(l) : null;
                String str2 = value.customer;
                String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                Boolean bool = value.livemode;
                Boolean boolRedact = bool != null ? ProtoAdapter.BOOL_VALUE.redact(bool) : null;
                String str3 = value.type;
                String strRedact3 = str3 != null ? ProtoAdapter.STRING_VALUE.redact(str3) : null;
                CardPaymentMethod cardPaymentMethod = value.card;
                CardPaymentMethod cardPaymentMethodRedact = cardPaymentMethod != null ? CardPaymentMethod.ADAPTER.redact(cardPaymentMethod) : null;
                CardPresent cardPresent = value.card_present;
                CardPresent cardPresentRedact = cardPresent != null ? CardPresent.ADAPTER.redact(cardPresent) : null;
                CardPresent cardPresent2 = value.interac_present;
                CardPresent cardPresentRedact2 = cardPresent2 != null ? CardPresent.ADAPTER.redact(cardPresent2) : null;
                WechatPay wechatPay = value.wechat_pay;
                WechatPay wechatPayRedact = wechatPay != null ? WechatPay.ADAPTER.redact(wechatPay) : null;
                Affirm affirm = value.affirm;
                return PaymentMethod.copy$default(value, strRedact, lRedact, strRedact2, boolRedact, null, strRedact3, cardPaymentMethodRedact, cardPresentRedact, cardPresentRedact2, wechatPayRedact, affirm != null ? Affirm.ADAPTER.redact(affirm) : null, ByteString.EMPTY, 16, null);
            }
        };
    }
}
