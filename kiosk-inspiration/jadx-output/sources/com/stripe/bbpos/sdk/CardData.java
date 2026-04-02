package com.stripe.bbpos.sdk;

import androidx.core.graphics.TypefaceCompat;
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

/* JADX INFO: compiled from: CardData.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00192\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0018\u0019Bo\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJp\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\f\u001a\u00020\rJ\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0096\u0002J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0002H\u0016J\b\u0010\u0017\u001a\u00020\u0004H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/stripe/bbpos/sdk/CardData;", "Lcom/squareup/wire/Message;", "Lcom/stripe/bbpos/sdk/CardData$Builder;", "encCvv", "", "encPan", "encTrack2", "expiryDate", "ksn", "maskedPan", "posEntryMode", "serviceCode", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CardData extends Message<CardData, Builder> {
    public static final ProtoAdapter<CardData> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 0, tag = 1)
    public final String encCvv;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 1, tag = 2)
    public final String encPan;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 2, tag = 3)
    public final String encTrack2;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 3, tag = 4)
    public final String expiryDate;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 4, tag = 5)
    public final String ksn;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 5, tag = 6)
    public final String maskedPan;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 6, tag = 7)
    public final String posEntryMode;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 7, tag = 8)
    public final String serviceCode;

    public CardData() {
        this(null, null, null, null, null, null, null, null, null, 511, null);
    }

    public /* synthetic */ CardData(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : str5, (i & 32) != 0 ? null : str6, (i & 64) != 0 ? null : str7, (i & 128) != 0 ? null : str8, (i & 256) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CardData(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.encCvv = str;
        this.encPan = str2;
        this.encTrack2 = str3;
        this.expiryDate = str4;
        this.ksn = str5;
        this.maskedPan = str6;
        this.posEntryMode = str7;
        this.serviceCode = str8;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.encCvv = this.encCvv;
        builder.encPan = this.encPan;
        builder.encTrack2 = this.encTrack2;
        builder.expiryDate = this.expiryDate;
        builder.ksn = this.ksn;
        builder.maskedPan = this.maskedPan;
        builder.posEntryMode = this.posEntryMode;
        builder.serviceCode = this.serviceCode;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CardData)) {
            return false;
        }
        CardData cardData = (CardData) other;
        return Intrinsics.areEqual(unknownFields(), cardData.unknownFields()) && Intrinsics.areEqual(this.encCvv, cardData.encCvv) && Intrinsics.areEqual(this.encPan, cardData.encPan) && Intrinsics.areEqual(this.encTrack2, cardData.encTrack2) && Intrinsics.areEqual(this.expiryDate, cardData.expiryDate) && Intrinsics.areEqual(this.ksn, cardData.ksn) && Intrinsics.areEqual(this.maskedPan, cardData.maskedPan) && Intrinsics.areEqual(this.posEntryMode, cardData.posEntryMode) && Intrinsics.areEqual(this.serviceCode, cardData.serviceCode);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.encCvv;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.encPan;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
        String str3 = this.encTrack2;
        int iHashCode4 = (iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 37;
        String str4 = this.expiryDate;
        int iHashCode5 = (iHashCode4 + (str4 != null ? str4.hashCode() : 0)) * 37;
        String str5 = this.ksn;
        int iHashCode6 = (iHashCode5 + (str5 != null ? str5.hashCode() : 0)) * 37;
        String str6 = this.maskedPan;
        int iHashCode7 = (iHashCode6 + (str6 != null ? str6.hashCode() : 0)) * 37;
        String str7 = this.posEntryMode;
        int iHashCode8 = (iHashCode7 + (str7 != null ? str7.hashCode() : 0)) * 37;
        String str8 = this.serviceCode;
        int iHashCode9 = iHashCode8 + (str8 != null ? str8.hashCode() : 0);
        this.hashCode = iHashCode9;
        return iHashCode9;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.encCvv != null) {
            arrayList.add("encCvv=██");
        }
        if (this.encPan != null) {
            arrayList.add("encPan=██");
        }
        if (this.encTrack2 != null) {
            arrayList.add("encTrack2=██");
        }
        if (this.expiryDate != null) {
            arrayList.add("expiryDate=██");
        }
        if (this.ksn != null) {
            arrayList.add("ksn=██");
        }
        if (this.maskedPan != null) {
            arrayList.add("maskedPan=██");
        }
        if (this.posEntryMode != null) {
            arrayList.add("posEntryMode=" + Internal.sanitize(this.posEntryMode));
        }
        if (this.serviceCode != null) {
            arrayList.add("serviceCode=██");
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "CardData{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CardData copy$default(CardData cardData, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = cardData.encCvv;
        }
        if ((i & 2) != 0) {
            str2 = cardData.encPan;
        }
        if ((i & 4) != 0) {
            str3 = cardData.encTrack2;
        }
        if ((i & 8) != 0) {
            str4 = cardData.expiryDate;
        }
        if ((i & 16) != 0) {
            str5 = cardData.ksn;
        }
        if ((i & 32) != 0) {
            str6 = cardData.maskedPan;
        }
        if ((i & 64) != 0) {
            str7 = cardData.posEntryMode;
        }
        if ((i & 128) != 0) {
            str8 = cardData.serviceCode;
        }
        if ((i & 256) != 0) {
            byteString = cardData.unknownFields();
        }
        String str9 = str8;
        ByteString byteString2 = byteString;
        String str10 = str6;
        String str11 = str7;
        String str12 = str5;
        String str13 = str3;
        return cardData.copy(str, str2, str13, str4, str12, str10, str11, str9, byteString2);
    }

    public final CardData copy(String encCvv, String encPan, String encTrack2, String expiryDate, String ksn, String maskedPan, String posEntryMode, String serviceCode, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CardData(encCvv, encPan, encTrack2, expiryDate, ksn, maskedPan, posEntryMode, serviceCode, unknownFields);
    }

    /* JADX INFO: compiled from: CardData.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/stripe/bbpos/sdk/CardData$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/bbpos/sdk/CardData;", "()V", "encCvv", "", "encPan", "encTrack2", "expiryDate", "ksn", "maskedPan", "posEntryMode", "serviceCode", "build", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CardData, Builder> {
        public String encCvv;
        public String encPan;
        public String encTrack2;
        public String expiryDate;
        public String ksn;
        public String maskedPan;
        public String posEntryMode;
        public String serviceCode;

        public final Builder encCvv(String encCvv) {
            this.encCvv = encCvv;
            return this;
        }

        public final Builder encPan(String encPan) {
            this.encPan = encPan;
            return this;
        }

        public final Builder encTrack2(String encTrack2) {
            this.encTrack2 = encTrack2;
            return this;
        }

        public final Builder expiryDate(String expiryDate) {
            this.expiryDate = expiryDate;
            return this;
        }

        public final Builder ksn(String ksn) {
            this.ksn = ksn;
            return this;
        }

        public final Builder maskedPan(String maskedPan) {
            this.maskedPan = maskedPan;
            return this;
        }

        public final Builder posEntryMode(String posEntryMode) {
            this.posEntryMode = posEntryMode;
            return this;
        }

        public final Builder serviceCode(String serviceCode) {
            this.serviceCode = serviceCode;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CardData build() {
            return new CardData(this.encCvv, this.encPan, this.encTrack2, this.expiryDate, this.ksn, this.maskedPan, this.posEntryMode, this.serviceCode, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CardData.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/bbpos/sdk/CardData$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/bbpos/sdk/CardData;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/bbpos/sdk/CardData$Builder;", "", "Lkotlin/ExtensionFunctionType;", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CardData build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CardData.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CardData>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.bbpos.sdk.CardData$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CardData value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + ProtoAdapter.STRING.encodedSizeWithTag(1, value.encCvv) + ProtoAdapter.STRING.encodedSizeWithTag(2, value.encPan) + ProtoAdapter.STRING.encodedSizeWithTag(3, value.encTrack2) + ProtoAdapter.STRING.encodedSizeWithTag(4, value.expiryDate) + ProtoAdapter.STRING.encodedSizeWithTag(5, value.ksn) + ProtoAdapter.STRING.encodedSizeWithTag(6, value.maskedPan) + ProtoAdapter.STRING.encodedSizeWithTag(7, value.posEntryMode) + ProtoAdapter.STRING.encodedSizeWithTag(8, value.serviceCode);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CardData value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.encCvv);
                ProtoAdapter.STRING.encodeWithTag(writer, 2, value.encPan);
                ProtoAdapter.STRING.encodeWithTag(writer, 3, value.encTrack2);
                ProtoAdapter.STRING.encodeWithTag(writer, 4, value.expiryDate);
                ProtoAdapter.STRING.encodeWithTag(writer, 5, value.ksn);
                ProtoAdapter.STRING.encodeWithTag(writer, 6, value.maskedPan);
                ProtoAdapter.STRING.encodeWithTag(writer, 7, value.posEntryMode);
                ProtoAdapter.STRING.encodeWithTag(writer, 8, value.serviceCode);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CardData value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                ProtoAdapter.STRING.encodeWithTag(writer, 8, value.serviceCode);
                ProtoAdapter.STRING.encodeWithTag(writer, 7, value.posEntryMode);
                ProtoAdapter.STRING.encodeWithTag(writer, 6, value.maskedPan);
                ProtoAdapter.STRING.encodeWithTag(writer, 5, value.ksn);
                ProtoAdapter.STRING.encodeWithTag(writer, 4, value.expiryDate);
                ProtoAdapter.STRING.encodeWithTag(writer, 3, value.encTrack2);
                ProtoAdapter.STRING.encodeWithTag(writer, 2, value.encPan);
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.encCvv);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CardData redact(CardData value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return CardData.copy$default(value, null, null, null, null, null, null, null, null, ByteString.EMPTY, 64, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CardData decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = null;
                String strDecode2 = null;
                String strDecode3 = null;
                String strDecode4 = null;
                String strDecode5 = null;
                String strDecode6 = null;
                String strDecode7 = null;
                String strDecode8 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 2:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 3:
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 4:
                                strDecode4 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 5:
                                strDecode5 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 6:
                                strDecode6 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 7:
                                strDecode7 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 8:
                                strDecode8 = ProtoAdapter.STRING.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new CardData(strDecode, strDecode2, strDecode3, strDecode4, strDecode5, strDecode6, strDecode7, strDecode8, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
