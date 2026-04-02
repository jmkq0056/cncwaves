package com.stripe.proto.model.rest;

import androidx.core.graphics.TypefaceCompat;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
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

/* JADX INFO: compiled from: Owner.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00192\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0018\u0019Bo\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJp\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\f\u001a\u00020\rJ\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0096\u0002J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0002H\u0016J\b\u0010\u0017\u001a\u00020\u0004H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/stripe/proto/model/rest/Owner;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/Owner$Builder;", "address", "", "email", "name", "phone", "verified_address", "verified_email", "verified_name", "verified_phone", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Owner extends Message<Owner, Builder> {
    public static final ProtoAdapter<Owner> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 0, tag = 1)
    public final String address;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 1, tag = 2)
    public final String email;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 2, tag = 3)
    public final String name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 3, tag = 4)
    public final String phone;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "verifiedAddress", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 4, tag = 5)
    public final String verified_address;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "verifiedEmail", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 5, tag = 6)
    public final String verified_email;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "verifiedName", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 6, tag = 7)
    public final String verified_name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "verifiedPhone", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 7, tag = 8)
    public final String verified_phone;

    public Owner() {
        this(null, null, null, null, null, null, null, null, null, 511, null);
    }

    public /* synthetic */ Owner(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : str5, (i & 32) != 0 ? null : str6, (i & 64) != 0 ? null : str7, (i & 128) != 0 ? null : str8, (i & 256) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Owner(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.address = str;
        this.email = str2;
        this.name = str3;
        this.phone = str4;
        this.verified_address = str5;
        this.verified_email = str6;
        this.verified_name = str7;
        this.verified_phone = str8;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.address = this.address;
        builder.email = this.email;
        builder.name = this.name;
        builder.phone = this.phone;
        builder.verified_address = this.verified_address;
        builder.verified_email = this.verified_email;
        builder.verified_name = this.verified_name;
        builder.verified_phone = this.verified_phone;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof Owner)) {
            return false;
        }
        Owner owner = (Owner) other;
        return Intrinsics.areEqual(unknownFields(), owner.unknownFields()) && Intrinsics.areEqual(this.address, owner.address) && Intrinsics.areEqual(this.email, owner.email) && Intrinsics.areEqual(this.name, owner.name) && Intrinsics.areEqual(this.phone, owner.phone) && Intrinsics.areEqual(this.verified_address, owner.verified_address) && Intrinsics.areEqual(this.verified_email, owner.verified_email) && Intrinsics.areEqual(this.verified_name, owner.verified_name) && Intrinsics.areEqual(this.verified_phone, owner.verified_phone);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.address;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.email;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
        String str3 = this.name;
        int iHashCode4 = (iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 37;
        String str4 = this.phone;
        int iHashCode5 = (iHashCode4 + (str4 != null ? str4.hashCode() : 0)) * 37;
        String str5 = this.verified_address;
        int iHashCode6 = (iHashCode5 + (str5 != null ? str5.hashCode() : 0)) * 37;
        String str6 = this.verified_email;
        int iHashCode7 = (iHashCode6 + (str6 != null ? str6.hashCode() : 0)) * 37;
        String str7 = this.verified_name;
        int iHashCode8 = (iHashCode7 + (str7 != null ? str7.hashCode() : 0)) * 37;
        String str8 = this.verified_phone;
        int iHashCode9 = iHashCode8 + (str8 != null ? str8.hashCode() : 0);
        this.hashCode = iHashCode9;
        return iHashCode9;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.address != null) {
            arrayList.add("address=██");
        }
        if (this.email != null) {
            arrayList.add("email=██");
        }
        if (this.name != null) {
            arrayList.add("name=██");
        }
        if (this.phone != null) {
            arrayList.add("phone=██");
        }
        if (this.verified_address != null) {
            arrayList.add("verified_address=██");
        }
        if (this.verified_email != null) {
            arrayList.add("verified_email=██");
        }
        if (this.verified_name != null) {
            arrayList.add("verified_name=██");
        }
        if (this.verified_phone != null) {
            arrayList.add("verified_phone=██");
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "Owner{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ Owner copy$default(Owner owner, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = owner.address;
        }
        if ((i & 2) != 0) {
            str2 = owner.email;
        }
        if ((i & 4) != 0) {
            str3 = owner.name;
        }
        if ((i & 8) != 0) {
            str4 = owner.phone;
        }
        if ((i & 16) != 0) {
            str5 = owner.verified_address;
        }
        if ((i & 32) != 0) {
            str6 = owner.verified_email;
        }
        if ((i & 64) != 0) {
            str7 = owner.verified_name;
        }
        if ((i & 128) != 0) {
            str8 = owner.verified_phone;
        }
        if ((i & 256) != 0) {
            byteString = owner.unknownFields();
        }
        String str9 = str8;
        ByteString byteString2 = byteString;
        String str10 = str6;
        String str11 = str7;
        String str12 = str5;
        String str13 = str3;
        return owner.copy(str, str2, str13, str4, str12, str10, str11, str9, byteString2);
    }

    public final Owner copy(String address, String email, String name, String phone, String verified_address, String verified_email, String verified_name, String verified_phone, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new Owner(address, email, name, phone, verified_address, verified_email, verified_name, verified_phone, unknownFields);
    }

    /* JADX INFO: compiled from: Owner.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/Owner$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/Owner;", "()V", "address", "", "email", "name", "phone", "verified_address", "verified_email", "verified_name", "verified_phone", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<Owner, Builder> {
        public String address;
        public String email;
        public String name;
        public String phone;
        public String verified_address;
        public String verified_email;
        public String verified_name;
        public String verified_phone;

        public final Builder address(String address) {
            this.address = address;
            return this;
        }

        public final Builder email(String email) {
            this.email = email;
            return this;
        }

        public final Builder name(String name) {
            this.name = name;
            return this;
        }

        public final Builder phone(String phone) {
            this.phone = phone;
            return this;
        }

        public final Builder verified_address(String verified_address) {
            this.verified_address = verified_address;
            return this;
        }

        public final Builder verified_email(String verified_email) {
            this.verified_email = verified_email;
            return this;
        }

        public final Builder verified_name(String verified_name) {
            this.verified_name = verified_name;
            return this;
        }

        public final Builder verified_phone(String verified_phone) {
            this.verified_phone = verified_phone;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public Owner build() {
            return new Owner(this.address, this.email, this.name, this.phone, this.verified_address, this.verified_email, this.verified_name, this.verified_phone, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: Owner.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/Owner$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/Owner;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/Owner$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ Owner build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Owner.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<Owner>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.Owner$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(Owner value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.address != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.address);
                }
                if (value.email != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.email);
                }
                if (value.name != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.name);
                }
                if (value.phone != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(4, value.phone);
                }
                if (value.verified_address != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(5, value.verified_address);
                }
                if (value.verified_email != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(6, value.verified_email);
                }
                if (value.verified_name != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(7, value.verified_name);
                }
                return value.verified_phone != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(8, value.verified_phone) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, Owner value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.address != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.address);
                }
                if (value.email != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.email);
                }
                if (value.name != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.name);
                }
                if (value.phone != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.phone);
                }
                if (value.verified_address != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.verified_address);
                }
                if (value.verified_email != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 6, value.verified_email);
                }
                if (value.verified_name != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 7, value.verified_name);
                }
                if (value.verified_phone != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 8, value.verified_phone);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, Owner value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.verified_phone != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 8, value.verified_phone);
                }
                if (value.verified_name != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 7, value.verified_name);
                }
                if (value.verified_email != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 6, value.verified_email);
                }
                if (value.verified_address != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.verified_address);
                }
                if (value.phone != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.phone);
                }
                if (value.name != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.name);
                }
                if (value.email != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.email);
                }
                if (value.address != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.address);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public Owner redact(Owner value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.copy(null, null, null, null, null, null, null, null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public Owner decode(ProtoReader reader) throws IOException {
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
                                strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 2:
                                strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 3:
                                strDecode3 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 4:
                                strDecode4 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 5:
                                strDecode5 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 6:
                                strDecode6 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 7:
                                strDecode7 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 8:
                                strDecode8 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new Owner(strDecode, strDecode2, strDecode3, strDecode4, strDecode5, strDecode6, strDecode7, strDecode8, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
