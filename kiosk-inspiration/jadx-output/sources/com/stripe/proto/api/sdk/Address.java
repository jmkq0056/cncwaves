package com.stripe.proto.api.sdk;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
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

/* JADX INFO: compiled from: Address.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017BK\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJL\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u000bJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\b\u0010\u0015\u001a\u00020\u0004H\u0016R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/api/sdk/Address;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/Address$Builder;", "line1", "", "line2", "city", RemoteConfigConstants.ResponseFieldKey.STATE, "country", "postal_code", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Address extends Message<Address, Builder> {
    public static final ProtoAdapter<Address> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String city;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final String country;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String line1;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String line2;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "postalCode", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final String postal_code;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String state;

    public Address() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public /* synthetic */ Address(String str, String str2, String str3, String str4, String str5, String str6, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? "" : str4, (i & 16) != 0 ? "" : str5, (i & 32) != 0 ? "" : str6, (i & 64) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Address(String line1, String line2, String city, String state, String country, String postal_code, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(line1, "line1");
        Intrinsics.checkNotNullParameter(line2, "line2");
        Intrinsics.checkNotNullParameter(city, "city");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(country, "country");
        Intrinsics.checkNotNullParameter(postal_code, "postal_code");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.line1 = line1;
        this.line2 = line2;
        this.city = city;
        this.state = state;
        this.country = country;
        this.postal_code = postal_code;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.line1 = this.line1;
        builder.line2 = this.line2;
        builder.city = this.city;
        builder.state = this.state;
        builder.country = this.country;
        builder.postal_code = this.postal_code;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof Address)) {
            return false;
        }
        Address address = (Address) other;
        return Intrinsics.areEqual(unknownFields(), address.unknownFields()) && Intrinsics.areEqual(this.line1, address.line1) && Intrinsics.areEqual(this.line2, address.line2) && Intrinsics.areEqual(this.city, address.city) && Intrinsics.areEqual(this.state, address.state) && Intrinsics.areEqual(this.country, address.country) && Intrinsics.areEqual(this.postal_code, address.postal_code);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((((((unknownFields().hashCode() * 37) + this.line1.hashCode()) * 37) + this.line2.hashCode()) * 37) + this.city.hashCode()) * 37) + this.state.hashCode()) * 37) + this.country.hashCode()) * 37) + this.postal_code.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("line1=" + Internal.sanitize(this.line1));
        arrayList2.add("line2=" + Internal.sanitize(this.line2));
        arrayList2.add("city=" + Internal.sanitize(this.city));
        arrayList2.add("state=" + Internal.sanitize(this.state));
        arrayList2.add("country=" + Internal.sanitize(this.country));
        arrayList2.add("postal_code=" + Internal.sanitize(this.postal_code));
        return CollectionsKt.joinToString$default(arrayList, ", ", "Address{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ Address copy$default(Address address, String str, String str2, String str3, String str4, String str5, String str6, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = address.line1;
        }
        if ((i & 2) != 0) {
            str2 = address.line2;
        }
        if ((i & 4) != 0) {
            str3 = address.city;
        }
        if ((i & 8) != 0) {
            str4 = address.state;
        }
        if ((i & 16) != 0) {
            str5 = address.country;
        }
        if ((i & 32) != 0) {
            str6 = address.postal_code;
        }
        if ((i & 64) != 0) {
            byteString = address.unknownFields();
        }
        String str7 = str6;
        ByteString byteString2 = byteString;
        String str8 = str5;
        String str9 = str3;
        return address.copy(str, str2, str9, str4, str8, str7, byteString2);
    }

    public final Address copy(String line1, String line2, String city, String state, String country, String postal_code, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(line1, "line1");
        Intrinsics.checkNotNullParameter(line2, "line2");
        Intrinsics.checkNotNullParameter(city, "city");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(country, "country");
        Intrinsics.checkNotNullParameter(postal_code, "postal_code");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new Address(line1, line2, city, state, country, postal_code, unknownFields);
    }

    /* JADX INFO: compiled from: Address.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/proto/api/sdk/Address$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/Address;", "()V", "city", "", "country", "line1", "line2", "postal_code", RemoteConfigConstants.ResponseFieldKey.STATE, "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<Address, Builder> {
        public String line1 = "";
        public String line2 = "";
        public String city = "";
        public String state = "";
        public String country = "";
        public String postal_code = "";

        public final Builder line1(String line1) {
            Intrinsics.checkNotNullParameter(line1, "line1");
            this.line1 = line1;
            return this;
        }

        public final Builder line2(String line2) {
            Intrinsics.checkNotNullParameter(line2, "line2");
            this.line2 = line2;
            return this;
        }

        public final Builder city(String city) {
            Intrinsics.checkNotNullParameter(city, "city");
            this.city = city;
            return this;
        }

        public final Builder state(String state) {
            Intrinsics.checkNotNullParameter(state, "state");
            this.state = state;
            return this;
        }

        public final Builder country(String country) {
            Intrinsics.checkNotNullParameter(country, "country");
            this.country = country;
            return this;
        }

        public final Builder postal_code(String postal_code) {
            Intrinsics.checkNotNullParameter(postal_code, "postal_code");
            this.postal_code = postal_code;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public Address build() {
            return new Address(this.line1, this.line2, this.city, this.state, this.country, this.postal_code, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: Address.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/Address$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/Address;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/Address$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ Address build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Address.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<Address>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.Address$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(Address value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.line1, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.line1);
                }
                if (!Intrinsics.areEqual(value.line2, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.line2);
                }
                if (!Intrinsics.areEqual(value.city, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.city);
                }
                if (!Intrinsics.areEqual(value.state, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(4, value.state);
                }
                if (!Intrinsics.areEqual(value.country, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(5, value.country);
                }
                return !Intrinsics.areEqual(value.postal_code, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(6, value.postal_code) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, Address value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.line1, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.line1);
                }
                if (!Intrinsics.areEqual(value.line2, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.line2);
                }
                if (!Intrinsics.areEqual(value.city, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.city);
                }
                if (!Intrinsics.areEqual(value.state, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.state);
                }
                if (!Intrinsics.areEqual(value.country, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.country);
                }
                if (!Intrinsics.areEqual(value.postal_code, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.postal_code);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, Address value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.postal_code, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.postal_code);
                }
                if (!Intrinsics.areEqual(value.country, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.country);
                }
                if (!Intrinsics.areEqual(value.state, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.state);
                }
                if (!Intrinsics.areEqual(value.city, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.city);
                }
                if (!Intrinsics.areEqual(value.line2, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.line2);
                }
                if (Intrinsics.areEqual(value.line1, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.line1);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public Address redact(Address value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return Address.copy$default(value, null, null, null, null, null, null, ByteString.EMPTY, 63, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public Address decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = "";
                String strDecode3 = strDecode2;
                String strDecode4 = strDecode3;
                String strDecode5 = strDecode4;
                String strDecode6 = strDecode5;
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
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new Address(strDecode, strDecode2, strDecode3, strDecode4, strDecode5, strDecode6, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
