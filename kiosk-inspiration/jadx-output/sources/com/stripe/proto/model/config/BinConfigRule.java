package com.stripe.proto.model.config;

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
import com.stripe.proto.model.config.BinConfigRule;
import com.stripe.proto.model.payments.BinTablePb;
import com.stripe.proto.model.payments.CreditCardBrand;
import com.stripe.proto.model.payments.GiftCardBrand;
import com.stripe.proto.model.payments.InstrumentType;
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

/* JADX INFO: compiled from: BinConfigRule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u0000 \u001d2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0004\u001c\u001d\u001e\u001fBO\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010¢\u0006\u0002\u0010\u0011JP\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u0010J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u0002H\u0016J\b\u0010\u001a\u001a\u00020\u001bH\u0016R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcom/stripe/proto/model/config/BinConfigRule;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/config/BinConfigRule$Builder;", "type", "Lcom/stripe/proto/model/payments/InstrumentType;", "credit_card_brand", "Lcom/stripe/proto/model/payments/CreditCardBrand;", "gift_card_brand", "Lcom/stripe/proto/model/payments/GiftCardBrand;", "attribute", "Lcom/stripe/proto/model/config/BinConfigRule$InstrumentAttribute;", "bin_entry", "Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;", "rules", "Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/payments/InstrumentType;Lcom/stripe/proto/model/payments/CreditCardBrand;Lcom/stripe/proto/model/payments/GiftCardBrand;Lcom/stripe/proto/model/config/BinConfigRule$InstrumentAttribute;Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "InstrumentAttribute", "InstrumentRules", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BinConfigRule extends Message<BinConfigRule, Builder> {
    public static final ProtoAdapter<BinConfigRule> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.config.BinConfigRule$InstrumentAttribute#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final InstrumentAttribute attribute;

    @WireField(adapter = "com.stripe.proto.model.payments.BinTablePb$BinEntry#ADAPTER", jsonName = "binEntry", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final BinTablePb.BinEntry bin_entry;

    @WireField(adapter = "com.stripe.proto.model.payments.CreditCardBrand#ADAPTER", jsonName = "creditCardBrand", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final CreditCardBrand credit_card_brand;

    @WireField(adapter = "com.stripe.proto.model.payments.GiftCardBrand#ADAPTER", jsonName = "giftCardBrand", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final GiftCardBrand gift_card_brand;

    @WireField(adapter = "com.stripe.proto.model.config.BinConfigRule$InstrumentRules#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final InstrumentRules rules;

    @WireField(adapter = "com.stripe.proto.model.payments.InstrumentType#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final InstrumentType type;

    public BinConfigRule() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public /* synthetic */ BinConfigRule(InstrumentType instrumentType, CreditCardBrand creditCardBrand, GiftCardBrand giftCardBrand, InstrumentAttribute instrumentAttribute, BinTablePb.BinEntry binEntry, InstrumentRules instrumentRules, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? InstrumentType.UNKNOWN_TYPE : instrumentType, (i & 2) != 0 ? CreditCardBrand.INVALID_CARD_BRAND : creditCardBrand, (i & 4) != 0 ? GiftCardBrand.DEFAULT_GIFT : giftCardBrand, (i & 8) != 0 ? InstrumentAttribute.UNKNOWN : instrumentAttribute, (i & 16) != 0 ? null : binEntry, (i & 32) != 0 ? null : instrumentRules, (i & 64) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinConfigRule(InstrumentType type, CreditCardBrand credit_card_brand, GiftCardBrand gift_card_brand, InstrumentAttribute attribute, BinTablePb.BinEntry binEntry, InstrumentRules instrumentRules, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(credit_card_brand, "credit_card_brand");
        Intrinsics.checkNotNullParameter(gift_card_brand, "gift_card_brand");
        Intrinsics.checkNotNullParameter(attribute, "attribute");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.type = type;
        this.credit_card_brand = credit_card_brand;
        this.gift_card_brand = gift_card_brand;
        this.attribute = attribute;
        this.bin_entry = binEntry;
        this.rules = instrumentRules;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.type = this.type;
        builder.credit_card_brand = this.credit_card_brand;
        builder.gift_card_brand = this.gift_card_brand;
        builder.attribute = this.attribute;
        builder.bin_entry = this.bin_entry;
        builder.rules = this.rules;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof BinConfigRule)) {
            return false;
        }
        BinConfigRule binConfigRule = (BinConfigRule) other;
        return Intrinsics.areEqual(unknownFields(), binConfigRule.unknownFields()) && this.type == binConfigRule.type && this.credit_card_brand == binConfigRule.credit_card_brand && this.gift_card_brand == binConfigRule.gift_card_brand && this.attribute == binConfigRule.attribute && Intrinsics.areEqual(this.bin_entry, binConfigRule.bin_entry) && Intrinsics.areEqual(this.rules, binConfigRule.rules);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((((unknownFields().hashCode() * 37) + this.type.hashCode()) * 37) + this.credit_card_brand.hashCode()) * 37) + this.gift_card_brand.hashCode()) * 37) + this.attribute.hashCode()) * 37;
        BinTablePb.BinEntry binEntry = this.bin_entry;
        int iHashCode2 = (iHashCode + (binEntry != null ? binEntry.hashCode() : 0)) * 37;
        InstrumentRules instrumentRules = this.rules;
        int iHashCode3 = iHashCode2 + (instrumentRules != null ? instrumentRules.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("type=" + this.type);
        arrayList2.add("credit_card_brand=" + this.credit_card_brand);
        arrayList2.add("gift_card_brand=" + this.gift_card_brand);
        arrayList2.add("attribute=" + this.attribute);
        if (this.bin_entry != null) {
            arrayList2.add("bin_entry=" + this.bin_entry);
        }
        if (this.rules != null) {
            arrayList2.add("rules=" + this.rules);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "BinConfigRule{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ BinConfigRule copy$default(BinConfigRule binConfigRule, InstrumentType instrumentType, CreditCardBrand creditCardBrand, GiftCardBrand giftCardBrand, InstrumentAttribute instrumentAttribute, BinTablePb.BinEntry binEntry, InstrumentRules instrumentRules, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            instrumentType = binConfigRule.type;
        }
        if ((i & 2) != 0) {
            creditCardBrand = binConfigRule.credit_card_brand;
        }
        if ((i & 4) != 0) {
            giftCardBrand = binConfigRule.gift_card_brand;
        }
        if ((i & 8) != 0) {
            instrumentAttribute = binConfigRule.attribute;
        }
        if ((i & 16) != 0) {
            binEntry = binConfigRule.bin_entry;
        }
        if ((i & 32) != 0) {
            instrumentRules = binConfigRule.rules;
        }
        if ((i & 64) != 0) {
            byteString = binConfigRule.unknownFields();
        }
        InstrumentRules instrumentRules2 = instrumentRules;
        ByteString byteString2 = byteString;
        BinTablePb.BinEntry binEntry2 = binEntry;
        GiftCardBrand giftCardBrand2 = giftCardBrand;
        return binConfigRule.copy(instrumentType, creditCardBrand, giftCardBrand2, instrumentAttribute, binEntry2, instrumentRules2, byteString2);
    }

    public final BinConfigRule copy(InstrumentType type, CreditCardBrand credit_card_brand, GiftCardBrand gift_card_brand, InstrumentAttribute attribute, BinTablePb.BinEntry bin_entry, InstrumentRules rules, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(credit_card_brand, "credit_card_brand");
        Intrinsics.checkNotNullParameter(gift_card_brand, "gift_card_brand");
        Intrinsics.checkNotNullParameter(attribute, "attribute");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new BinConfigRule(type, credit_card_brand, gift_card_brand, attribute, bin_entry, rules, unknownFields);
    }

    /* JADX INFO: compiled from: BinConfigRule.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\rJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000fR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/stripe/proto/model/config/BinConfigRule$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/config/BinConfigRule;", "()V", "attribute", "Lcom/stripe/proto/model/config/BinConfigRule$InstrumentAttribute;", "bin_entry", "Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;", "credit_card_brand", "Lcom/stripe/proto/model/payments/CreditCardBrand;", "gift_card_brand", "Lcom/stripe/proto/model/payments/GiftCardBrand;", "rules", "Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;", "type", "Lcom/stripe/proto/model/payments/InstrumentType;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<BinConfigRule, Builder> {
        public BinTablePb.BinEntry bin_entry;
        public InstrumentRules rules;
        public InstrumentType type = InstrumentType.UNKNOWN_TYPE;
        public CreditCardBrand credit_card_brand = CreditCardBrand.INVALID_CARD_BRAND;
        public GiftCardBrand gift_card_brand = GiftCardBrand.DEFAULT_GIFT;
        public InstrumentAttribute attribute = InstrumentAttribute.UNKNOWN;

        public final Builder type(InstrumentType type) {
            Intrinsics.checkNotNullParameter(type, "type");
            this.type = type;
            return this;
        }

        public final Builder credit_card_brand(CreditCardBrand credit_card_brand) {
            Intrinsics.checkNotNullParameter(credit_card_brand, "credit_card_brand");
            this.credit_card_brand = credit_card_brand;
            return this;
        }

        public final Builder gift_card_brand(GiftCardBrand gift_card_brand) {
            Intrinsics.checkNotNullParameter(gift_card_brand, "gift_card_brand");
            this.gift_card_brand = gift_card_brand;
            return this;
        }

        public final Builder attribute(InstrumentAttribute attribute) {
            Intrinsics.checkNotNullParameter(attribute, "attribute");
            this.attribute = attribute;
            return this;
        }

        public final Builder bin_entry(BinTablePb.BinEntry bin_entry) {
            this.bin_entry = bin_entry;
            return this;
        }

        public final Builder rules(InstrumentRules rules) {
            this.rules = rules;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public BinConfigRule build() {
            return new BinConfigRule(this.type, this.credit_card_brand, this.gift_card_brand, this.attribute, this.bin_entry, this.rules, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: BinConfigRule.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/config/BinConfigRule$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/BinConfigRule;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/config/BinConfigRule$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ BinConfigRule build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(BinConfigRule.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<BinConfigRule>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.config.BinConfigRule$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(BinConfigRule value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.type != InstrumentType.UNKNOWN_TYPE) {
                    size += InstrumentType.ADAPTER.encodedSizeWithTag(1, value.type);
                }
                if (value.credit_card_brand != CreditCardBrand.INVALID_CARD_BRAND) {
                    size += CreditCardBrand.ADAPTER.encodedSizeWithTag(2, value.credit_card_brand);
                }
                if (value.gift_card_brand != GiftCardBrand.DEFAULT_GIFT) {
                    size += GiftCardBrand.ADAPTER.encodedSizeWithTag(3, value.gift_card_brand);
                }
                if (value.attribute != BinConfigRule.InstrumentAttribute.UNKNOWN) {
                    size += BinConfigRule.InstrumentAttribute.ADAPTER.encodedSizeWithTag(4, value.attribute);
                }
                if (value.bin_entry != null) {
                    size += BinTablePb.BinEntry.ADAPTER.encodedSizeWithTag(5, value.bin_entry);
                }
                return value.rules != null ? size + BinConfigRule.InstrumentRules.ADAPTER.encodedSizeWithTag(6, value.rules) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, BinConfigRule value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.type != InstrumentType.UNKNOWN_TYPE) {
                    InstrumentType.ADAPTER.encodeWithTag(writer, 1, value.type);
                }
                if (value.credit_card_brand != CreditCardBrand.INVALID_CARD_BRAND) {
                    CreditCardBrand.ADAPTER.encodeWithTag(writer, 2, value.credit_card_brand);
                }
                if (value.gift_card_brand != GiftCardBrand.DEFAULT_GIFT) {
                    GiftCardBrand.ADAPTER.encodeWithTag(writer, 3, value.gift_card_brand);
                }
                if (value.attribute != BinConfigRule.InstrumentAttribute.UNKNOWN) {
                    BinConfigRule.InstrumentAttribute.ADAPTER.encodeWithTag(writer, 4, value.attribute);
                }
                if (value.bin_entry != null) {
                    BinTablePb.BinEntry.ADAPTER.encodeWithTag(writer, 5, value.bin_entry);
                }
                if (value.rules != null) {
                    BinConfigRule.InstrumentRules.ADAPTER.encodeWithTag(writer, 6, value.rules);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, BinConfigRule value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.rules != null) {
                    BinConfigRule.InstrumentRules.ADAPTER.encodeWithTag(writer, 6, value.rules);
                }
                if (value.bin_entry != null) {
                    BinTablePb.BinEntry.ADAPTER.encodeWithTag(writer, 5, value.bin_entry);
                }
                if (value.attribute != BinConfigRule.InstrumentAttribute.UNKNOWN) {
                    BinConfigRule.InstrumentAttribute.ADAPTER.encodeWithTag(writer, 4, value.attribute);
                }
                if (value.gift_card_brand != GiftCardBrand.DEFAULT_GIFT) {
                    GiftCardBrand.ADAPTER.encodeWithTag(writer, 3, value.gift_card_brand);
                }
                if (value.credit_card_brand != CreditCardBrand.INVALID_CARD_BRAND) {
                    CreditCardBrand.ADAPTER.encodeWithTag(writer, 2, value.credit_card_brand);
                }
                if (value.type != InstrumentType.UNKNOWN_TYPE) {
                    InstrumentType.ADAPTER.encodeWithTag(writer, 1, value.type);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /*  JADX ERROR: UnsupportedOperationException in pass: SwitchBreakVisitor
                java.lang.UnsupportedOperationException
                	at java.base/java.util.AbstractList.remove(AbstractList.java:167)
                	at jadx.core.utils.ListUtils.removeLast(ListUtils.java:82)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$BaseSwitchRegionVisitor.removeBreak(SwitchBreakVisitor.java:254)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$ExtractCommonBreak.processBranchRegion(SwitchBreakVisitor.java:110)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$ExtractCommonBreak.processRegion(SwitchBreakVisitor.java:64)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$BaseSwitchRegionVisitor.enterRegion(SwitchBreakVisitor.java:202)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:67)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:23)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$IterativeSwitchRegionVisitor.leaveRegion(SwitchBreakVisitor.java:177)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor.runSwitchTraverse(SwitchBreakVisitor.java:52)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor.visit(SwitchBreakVisitor.java:45)
                */
            @Override // com.squareup.wire.ProtoAdapter
            public com.stripe.proto.model.config.BinConfigRule decode(com.squareup.wire.ProtoReader r19) throws java.io.IOException {
                /*
                    r18 = this;
                    r1 = r19
                    java.lang.String r0 = "reader"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r0)
                    com.stripe.proto.model.payments.InstrumentType r0 = com.stripe.proto.model.payments.InstrumentType.UNKNOWN_TYPE
                    com.stripe.proto.model.payments.CreditCardBrand r2 = com.stripe.proto.model.payments.CreditCardBrand.INVALID_CARD_BRAND
                    com.stripe.proto.model.payments.GiftCardBrand r3 = com.stripe.proto.model.payments.GiftCardBrand.DEFAULT_GIFT
                    com.stripe.proto.model.config.BinConfigRule$InstrumentAttribute r4 = com.stripe.proto.model.config.BinConfigRule.InstrumentAttribute.UNKNOWN
                    long r5 = r1.beginMessage()
                    r7 = 0
                    r8 = r7
                    r9 = r8
                    r7 = r4
                    r4 = r3
                    r3 = r2
                L19:
                    r2 = r0
                L1a:
                    int r10 = r1.nextTag()
                    r0 = -1
                    if (r10 == r0) goto L8f
                    switch(r10) {
                        case 1: goto L7a;
                        case 2: goto L64;
                        case 3: goto L4e;
                        case 4: goto L38;
                        case 5: goto L30;
                        case 6: goto L28;
                        default: goto L24;
                    }
                L24:
                    r1.readUnknownField(r10)
                    goto L1a
                L28:
                    com.squareup.wire.ProtoAdapter<com.stripe.proto.model.config.BinConfigRule$InstrumentRules> r0 = com.stripe.proto.model.config.BinConfigRule.InstrumentRules.ADAPTER
                    java.lang.Object r0 = r0.decode(r1)
                    r9 = r0
                    goto L1a
                L30:
                    com.squareup.wire.ProtoAdapter<com.stripe.proto.model.payments.BinTablePb$BinEntry> r0 = com.stripe.proto.model.payments.BinTablePb.BinEntry.ADAPTER
                    java.lang.Object r0 = r0.decode(r1)
                    r8 = r0
                    goto L1a
                L38:
                    com.squareup.wire.ProtoAdapter<com.stripe.proto.model.config.BinConfigRule$InstrumentAttribute> r0 = com.stripe.proto.model.config.BinConfigRule.InstrumentAttribute.ADAPTER     // Catch: com.squareup.wire.ProtoAdapter.EnumConstantNotFoundException -> L40
                    java.lang.Object r0 = r0.decode(r1)     // Catch: com.squareup.wire.ProtoAdapter.EnumConstantNotFoundException -> L40
                    r7 = r0
                    goto L1a
                L40:
                    r0 = move-exception
                    com.squareup.wire.FieldEncoding r11 = com.squareup.wire.FieldEncoding.VARINT
                    int r0 = r0.value
                    long r12 = (long) r0
                    java.lang.Long r0 = java.lang.Long.valueOf(r12)
                    r1.addUnknownField(r10, r11, r0)
                    goto L1a
                L4e:
                    com.squareup.wire.ProtoAdapter<com.stripe.proto.model.payments.GiftCardBrand> r0 = com.stripe.proto.model.payments.GiftCardBrand.ADAPTER     // Catch: com.squareup.wire.ProtoAdapter.EnumConstantNotFoundException -> L56
                    java.lang.Object r0 = r0.decode(r1)     // Catch: com.squareup.wire.ProtoAdapter.EnumConstantNotFoundException -> L56
                    r4 = r0
                    goto L1a
                L56:
                    r0 = move-exception
                    com.squareup.wire.FieldEncoding r11 = com.squareup.wire.FieldEncoding.VARINT
                    int r0 = r0.value
                    long r12 = (long) r0
                    java.lang.Long r0 = java.lang.Long.valueOf(r12)
                    r1.addUnknownField(r10, r11, r0)
                    goto L1a
                L64:
                    com.squareup.wire.ProtoAdapter<com.stripe.proto.model.payments.CreditCardBrand> r0 = com.stripe.proto.model.payments.CreditCardBrand.ADAPTER     // Catch: com.squareup.wire.ProtoAdapter.EnumConstantNotFoundException -> L6c
                    java.lang.Object r0 = r0.decode(r1)     // Catch: com.squareup.wire.ProtoAdapter.EnumConstantNotFoundException -> L6c
                    r3 = r0
                    goto L1a
                L6c:
                    r0 = move-exception
                    com.squareup.wire.FieldEncoding r11 = com.squareup.wire.FieldEncoding.VARINT
                    int r0 = r0.value
                    long r12 = (long) r0
                    java.lang.Long r0 = java.lang.Long.valueOf(r12)
                    r1.addUnknownField(r10, r11, r0)
                    goto L1a
                L7a:
                    com.squareup.wire.ProtoAdapter<com.stripe.proto.model.payments.InstrumentType> r0 = com.stripe.proto.model.payments.InstrumentType.ADAPTER     // Catch: com.squareup.wire.ProtoAdapter.EnumConstantNotFoundException -> L81
                    java.lang.Object r0 = r0.decode(r1)     // Catch: com.squareup.wire.ProtoAdapter.EnumConstantNotFoundException -> L81
                    goto L19
                L81:
                    r0 = move-exception
                    com.squareup.wire.FieldEncoding r11 = com.squareup.wire.FieldEncoding.VARINT
                    int r0 = r0.value
                    long r12 = (long) r0
                    java.lang.Long r0 = java.lang.Long.valueOf(r12)
                    r1.addUnknownField(r10, r11, r0)
                    goto L1a
                L8f:
                    okio.ByteString r17 = r1.endMessageAndGetUnknownFields(r5)
                    com.stripe.proto.model.config.BinConfigRule r10 = new com.stripe.proto.model.config.BinConfigRule
                    r11 = r2
                    com.stripe.proto.model.payments.InstrumentType r11 = (com.stripe.proto.model.payments.InstrumentType) r11
                    r12 = r3
                    com.stripe.proto.model.payments.CreditCardBrand r12 = (com.stripe.proto.model.payments.CreditCardBrand) r12
                    r13 = r4
                    com.stripe.proto.model.payments.GiftCardBrand r13 = (com.stripe.proto.model.payments.GiftCardBrand) r13
                    r14 = r7
                    com.stripe.proto.model.config.BinConfigRule$InstrumentAttribute r14 = (com.stripe.proto.model.config.BinConfigRule.InstrumentAttribute) r14
                    r15 = r8
                    com.stripe.proto.model.payments.BinTablePb$BinEntry r15 = (com.stripe.proto.model.payments.BinTablePb.BinEntry) r15
                    r16 = r9
                    com.stripe.proto.model.config.BinConfigRule$InstrumentRules r16 = (com.stripe.proto.model.config.BinConfigRule.InstrumentRules) r16
                    r10.<init>(r11, r12, r13, r14, r15, r16, r17)
                    return r10
                */
                throw new UnsupportedOperationException("Method not decompiled: com.stripe.proto.model.config.BinConfigRule$Companion$ADAPTER$1.decode(com.squareup.wire.ProtoReader):com.stripe.proto.model.config.BinConfigRule");
            }

            @Override // com.squareup.wire.ProtoAdapter
            public BinConfigRule redact(BinConfigRule value) {
                Intrinsics.checkNotNullParameter(value, "value");
                BinTablePb.BinEntry binEntry = value.bin_entry;
                BinTablePb.BinEntry binEntryRedact = binEntry != null ? BinTablePb.BinEntry.ADAPTER.redact(binEntry) : null;
                BinConfigRule.InstrumentRules instrumentRules = value.rules;
                return BinConfigRule.copy$default(value, null, null, null, null, binEntryRedact, instrumentRules != null ? BinConfigRule.InstrumentRules.ADAPTER.redact(instrumentRules) : null, ByteString.EMPTY, 15, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: BinConfigRule.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u0000 \r2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\rB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/config/BinConfigRule$InstrumentAttribute;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "UNKNOWN", "FSA", "PCARD", "PREPAID", "NONE", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class InstrumentAttribute implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ InstrumentAttribute[] $VALUES;
        public static final ProtoAdapter<InstrumentAttribute> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final InstrumentAttribute FSA;
        public static final InstrumentAttribute NONE;
        public static final InstrumentAttribute PCARD;
        public static final InstrumentAttribute PREPAID;
        public static final InstrumentAttribute UNKNOWN;
        private final int value;

        private static final /* synthetic */ InstrumentAttribute[] $values() {
            return new InstrumentAttribute[]{UNKNOWN, FSA, PCARD, PREPAID, NONE};
        }

        @JvmStatic
        public static final InstrumentAttribute fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<InstrumentAttribute> getEntries() {
            return $ENTRIES;
        }

        public static InstrumentAttribute valueOf(String str) {
            return (InstrumentAttribute) Enum.valueOf(InstrumentAttribute.class, str);
        }

        public static InstrumentAttribute[] values() {
            return (InstrumentAttribute[]) $VALUES.clone();
        }

        private InstrumentAttribute(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final InstrumentAttribute instrumentAttribute = new InstrumentAttribute("UNKNOWN", 0, 0);
            UNKNOWN = instrumentAttribute;
            FSA = new InstrumentAttribute("FSA", 1, 1);
            PCARD = new InstrumentAttribute("PCARD", 2, 2);
            PREPAID = new InstrumentAttribute("PREPAID", 3, 3);
            NONE = new InstrumentAttribute("NONE", 4, 4);
            InstrumentAttribute[] instrumentAttributeArr$values = $values();
            $VALUES = instrumentAttributeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(instrumentAttributeArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(InstrumentAttribute.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<InstrumentAttribute>(orCreateKotlinClass, syntax, instrumentAttribute) { // from class: com.stripe.proto.model.config.BinConfigRule$InstrumentAttribute$Companion$ADAPTER$1
                {
                    BinConfigRule.InstrumentAttribute instrumentAttribute2 = instrumentAttribute;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public BinConfigRule.InstrumentAttribute fromValue(int value) {
                    return BinConfigRule.InstrumentAttribute.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: BinConfigRule.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/config/BinConfigRule$InstrumentAttribute$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/BinConfigRule$InstrumentAttribute;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final InstrumentAttribute fromValue(int value) {
                if (value == 0) {
                    return InstrumentAttribute.UNKNOWN;
                }
                if (value == 1) {
                    return InstrumentAttribute.FSA;
                }
                if (value == 2) {
                    return InstrumentAttribute.PCARD;
                }
                if (value == 3) {
                    return InstrumentAttribute.PREPAID;
                }
                if (value != 4) {
                    return null;
                }
                return InstrumentAttribute.NONE;
            }
        }
    }

    /* JADX INFO: compiled from: BinConfigRule.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B3\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ9\u0010\u000b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\fJ\u0013\u0010\r\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0014H\u0016R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\nR\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\nR\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\n¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules$Builder;", "forbidden", "", "process_offline", "allow_pin_bypass", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lokio/ByteString;)V", "Ljava/lang/Boolean;", "copy", "(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lokio/ByteString;)Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class InstrumentRules extends Message<InstrumentRules, Builder> {
        public static final ProtoAdapter<InstrumentRules> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "allowPinBypass", schemaIndex = 2, tag = 3)
        public final Boolean allow_pin_bypass;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", schemaIndex = 0, tag = 1)
        public final Boolean forbidden;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "processOffline", schemaIndex = 1, tag = 2)
        public final Boolean process_offline;

        public InstrumentRules() {
            this(null, null, null, null, 15, null);
        }

        public /* synthetic */ InstrumentRules(Boolean bool, Boolean bool2, Boolean bool3, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : bool, (i & 2) != 0 ? null : bool2, (i & 4) != 0 ? null : bool3, (i & 8) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InstrumentRules(Boolean bool, Boolean bool2, Boolean bool3, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.forbidden = bool;
            this.process_offline = bool2;
            this.allow_pin_bypass = bool3;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.forbidden = this.forbidden;
            builder.process_offline = this.process_offline;
            builder.allow_pin_bypass = this.allow_pin_bypass;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof InstrumentRules)) {
                return false;
            }
            InstrumentRules instrumentRules = (InstrumentRules) other;
            return Intrinsics.areEqual(unknownFields(), instrumentRules.unknownFields()) && Intrinsics.areEqual(this.forbidden, instrumentRules.forbidden) && Intrinsics.areEqual(this.process_offline, instrumentRules.process_offline) && Intrinsics.areEqual(this.allow_pin_bypass, instrumentRules.allow_pin_bypass);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = unknownFields().hashCode() * 37;
            Boolean bool = this.forbidden;
            int iHashCode2 = (iHashCode + (bool != null ? bool.hashCode() : 0)) * 37;
            Boolean bool2 = this.process_offline;
            int iHashCode3 = (iHashCode2 + (bool2 != null ? bool2.hashCode() : 0)) * 37;
            Boolean bool3 = this.allow_pin_bypass;
            int iHashCode4 = iHashCode3 + (bool3 != null ? bool3.hashCode() : 0);
            this.hashCode = iHashCode4;
            return iHashCode4;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (this.forbidden != null) {
                arrayList.add("forbidden=" + this.forbidden);
            }
            if (this.process_offline != null) {
                arrayList.add("process_offline=" + this.process_offline);
            }
            if (this.allow_pin_bypass != null) {
                arrayList.add("allow_pin_bypass=" + this.allow_pin_bypass);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "InstrumentRules{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ InstrumentRules copy$default(InstrumentRules instrumentRules, Boolean bool, Boolean bool2, Boolean bool3, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                bool = instrumentRules.forbidden;
            }
            if ((i & 2) != 0) {
                bool2 = instrumentRules.process_offline;
            }
            if ((i & 4) != 0) {
                bool3 = instrumentRules.allow_pin_bypass;
            }
            if ((i & 8) != 0) {
                byteString = instrumentRules.unknownFields();
            }
            return instrumentRules.copy(bool, bool2, bool3, byteString);
        }

        public final InstrumentRules copy(Boolean forbidden, Boolean process_offline, Boolean allow_pin_bypass, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new InstrumentRules(forbidden, process_offline, allow_pin_bypass, unknownFields);
        }

        /* JADX INFO: compiled from: BinConfigRule.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\tJ\b\u0010\n\u001a\u00020\u0002H\u0016J\u0015\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\tJ\u0015\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\tR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;", "()V", "allow_pin_bypass", "", "Ljava/lang/Boolean;", "forbidden", "process_offline", "(Ljava/lang/Boolean;)Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules$Builder;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<InstrumentRules, Builder> {
            public Boolean allow_pin_bypass;
            public Boolean forbidden;
            public Boolean process_offline;

            public final Builder forbidden(Boolean forbidden) {
                this.forbidden = forbidden;
                return this;
            }

            public final Builder process_offline(Boolean process_offline) {
                this.process_offline = process_offline;
                return this;
            }

            public final Builder allow_pin_bypass(Boolean allow_pin_bypass) {
                this.allow_pin_bypass = allow_pin_bypass;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public InstrumentRules build() {
                return new InstrumentRules(this.forbidden, this.process_offline, this.allow_pin_bypass, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: BinConfigRule.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ InstrumentRules build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(InstrumentRules.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<InstrumentRules>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.config.BinConfigRule$InstrumentRules$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(BinConfigRule.InstrumentRules value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.forbidden != null) {
                        size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(1, value.forbidden);
                    }
                    if (value.process_offline != null) {
                        size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(2, value.process_offline);
                    }
                    return value.allow_pin_bypass != null ? size + ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(3, value.allow_pin_bypass) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, BinConfigRule.InstrumentRules value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.forbidden != null) {
                        ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 1, value.forbidden);
                    }
                    if (value.process_offline != null) {
                        ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 2, value.process_offline);
                    }
                    if (value.allow_pin_bypass != null) {
                        ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 3, value.allow_pin_bypass);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, BinConfigRule.InstrumentRules value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.allow_pin_bypass != null) {
                        ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 3, value.allow_pin_bypass);
                    }
                    if (value.process_offline != null) {
                        ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 2, value.process_offline);
                    }
                    if (value.forbidden != null) {
                        ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 1, value.forbidden);
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public BinConfigRule.InstrumentRules redact(BinConfigRule.InstrumentRules value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    Boolean bool = value.forbidden;
                    Boolean boolRedact = bool != null ? ProtoAdapter.BOOL_VALUE.redact(bool) : null;
                    Boolean bool2 = value.process_offline;
                    Boolean boolRedact2 = bool2 != null ? ProtoAdapter.BOOL_VALUE.redact(bool2) : null;
                    Boolean bool3 = value.allow_pin_bypass;
                    return value.copy(boolRedact, boolRedact2, bool3 != null ? ProtoAdapter.BOOL_VALUE.redact(bool3) : null, ByteString.EMPTY);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public BinConfigRule.InstrumentRules decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    Boolean boolDecode = null;
                    Boolean boolDecode2 = null;
                    Boolean boolDecode3 = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new BinConfigRule.InstrumentRules(boolDecode, boolDecode2, boolDecode3, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            boolDecode = ProtoAdapter.BOOL_VALUE.decode(reader);
                        } else if (iNextTag == 2) {
                            boolDecode2 = ProtoAdapter.BOOL_VALUE.decode(reader);
                        } else if (iNextTag == 3) {
                            boolDecode3 = ProtoAdapter.BOOL_VALUE.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }
}
