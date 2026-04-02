package com.stripe.proto.model.merchant;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
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

/* JADX INFO: compiled from: WrappedAddressPb.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017BW\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJX\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\n\u001a\u00020\u000bJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\b\u0010\u0015\u001a\u00020\u0004H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/model/merchant/WrappedAddressPb;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/merchant/WrappedAddressPb$Builder;", "line1", "", "city", RemoteConfigConstants.ResponseFieldKey.STATE, "postal_code", "country", "line2", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class WrappedAddressPb extends Message<WrappedAddressPb, Builder> {
    public static final ProtoAdapter<WrappedAddressPb> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 1, tag = 2)
    public final String city;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 4, tag = 5)
    public final String country;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 0, tag = 1)
    public final String line1;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 5, tag = 7)
    public final String line2;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "postalCode", schemaIndex = 3, tag = 4)
    public final String postal_code;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 2, tag = 3)
    public final String state;

    public WrappedAddressPb() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public /* synthetic */ WrappedAddressPb(String str, String str2, String str3, String str4, String str5, String str6, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : str5, (i & 32) != 0 ? null : str6, (i & 64) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WrappedAddressPb(String str, String str2, String str3, String str4, String str5, String str6, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.line1 = str;
        this.city = str2;
        this.state = str3;
        this.postal_code = str4;
        this.country = str5;
        this.line2 = str6;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.line1 = this.line1;
        builder.city = this.city;
        builder.state = this.state;
        builder.postal_code = this.postal_code;
        builder.country = this.country;
        builder.line2 = this.line2;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof WrappedAddressPb)) {
            return false;
        }
        WrappedAddressPb wrappedAddressPb = (WrappedAddressPb) other;
        return Intrinsics.areEqual(unknownFields(), wrappedAddressPb.unknownFields()) && Intrinsics.areEqual(this.line1, wrappedAddressPb.line1) && Intrinsics.areEqual(this.city, wrappedAddressPb.city) && Intrinsics.areEqual(this.state, wrappedAddressPb.state) && Intrinsics.areEqual(this.postal_code, wrappedAddressPb.postal_code) && Intrinsics.areEqual(this.country, wrappedAddressPb.country) && Intrinsics.areEqual(this.line2, wrappedAddressPb.line2);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.line1;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.city;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
        String str3 = this.state;
        int iHashCode4 = (iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 37;
        String str4 = this.postal_code;
        int iHashCode5 = (iHashCode4 + (str4 != null ? str4.hashCode() : 0)) * 37;
        String str5 = this.country;
        int iHashCode6 = (iHashCode5 + (str5 != null ? str5.hashCode() : 0)) * 37;
        String str6 = this.line2;
        int iHashCode7 = iHashCode6 + (str6 != null ? str6.hashCode() : 0);
        this.hashCode = iHashCode7;
        return iHashCode7;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.line1 != null) {
            arrayList.add("line1=" + this.line1);
        }
        if (this.city != null) {
            arrayList.add("city=" + this.city);
        }
        if (this.state != null) {
            arrayList.add("state=" + this.state);
        }
        if (this.postal_code != null) {
            arrayList.add("postal_code=" + this.postal_code);
        }
        if (this.country != null) {
            arrayList.add("country=" + this.country);
        }
        if (this.line2 != null) {
            arrayList.add("line2=" + this.line2);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "WrappedAddressPb{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ WrappedAddressPb copy$default(WrappedAddressPb wrappedAddressPb, String str, String str2, String str3, String str4, String str5, String str6, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = wrappedAddressPb.line1;
        }
        if ((i & 2) != 0) {
            str2 = wrappedAddressPb.city;
        }
        if ((i & 4) != 0) {
            str3 = wrappedAddressPb.state;
        }
        if ((i & 8) != 0) {
            str4 = wrappedAddressPb.postal_code;
        }
        if ((i & 16) != 0) {
            str5 = wrappedAddressPb.country;
        }
        if ((i & 32) != 0) {
            str6 = wrappedAddressPb.line2;
        }
        if ((i & 64) != 0) {
            byteString = wrappedAddressPb.unknownFields();
        }
        String str7 = str6;
        ByteString byteString2 = byteString;
        String str8 = str5;
        String str9 = str3;
        return wrappedAddressPb.copy(str, str2, str9, str4, str8, str7, byteString2);
    }

    public final WrappedAddressPb copy(String line1, String city, String state, String postal_code, String country, String line2, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new WrappedAddressPb(line1, city, state, postal_code, country, line2, unknownFields);
    }

    /* JADX INFO: compiled from: WrappedAddressPb.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/proto/model/merchant/WrappedAddressPb$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/merchant/WrappedAddressPb;", "()V", "city", "", "country", "line1", "line2", "postal_code", RemoteConfigConstants.ResponseFieldKey.STATE, "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<WrappedAddressPb, Builder> {
        public String city;
        public String country;
        public String line1;
        public String line2;
        public String postal_code;
        public String state;

        public final Builder line1(String line1) {
            this.line1 = line1;
            return this;
        }

        public final Builder city(String city) {
            this.city = city;
            return this;
        }

        public final Builder state(String state) {
            this.state = state;
            return this;
        }

        public final Builder postal_code(String postal_code) {
            this.postal_code = postal_code;
            return this;
        }

        public final Builder country(String country) {
            this.country = country;
            return this;
        }

        public final Builder line2(String line2) {
            this.line2 = line2;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public WrappedAddressPb build() {
            return new WrappedAddressPb(this.line1, this.city, this.state, this.postal_code, this.country, this.line2, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: WrappedAddressPb.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/merchant/WrappedAddressPb$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/merchant/WrappedAddressPb;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/merchant/WrappedAddressPb$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ WrappedAddressPb build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(WrappedAddressPb.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<WrappedAddressPb>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.merchant.WrappedAddressPb$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(WrappedAddressPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.line1 != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.line1);
                }
                if (value.city != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.city);
                }
                if (value.state != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.state);
                }
                if (value.postal_code != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(4, value.postal_code);
                }
                if (value.country != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(5, value.country);
                }
                return value.line2 != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(7, value.line2) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, WrappedAddressPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.line1 != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.line1);
                }
                if (value.city != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.city);
                }
                if (value.state != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.state);
                }
                if (value.postal_code != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.postal_code);
                }
                if (value.country != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.country);
                }
                if (value.line2 != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 7, value.line2);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, WrappedAddressPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.line2 != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 7, value.line2);
                }
                if (value.country != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.country);
                }
                if (value.postal_code != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.postal_code);
                }
                if (value.state != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.state);
                }
                if (value.city != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.city);
                }
                if (value.line1 != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.line1);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public WrappedAddressPb redact(WrappedAddressPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                String str = value.line1;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                String str2 = value.city;
                String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                String str3 = value.state;
                String strRedact3 = str3 != null ? ProtoAdapter.STRING_VALUE.redact(str3) : null;
                String str4 = value.postal_code;
                String strRedact4 = str4 != null ? ProtoAdapter.STRING_VALUE.redact(str4) : null;
                String str5 = value.country;
                String strRedact5 = str5 != null ? ProtoAdapter.STRING_VALUE.redact(str5) : null;
                String str6 = value.line2;
                return value.copy(strRedact, strRedact2, strRedact3, strRedact4, strRedact5, str6 != null ? ProtoAdapter.STRING_VALUE.redact(str6) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public WrappedAddressPb decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = null;
                String strDecode2 = null;
                String strDecode3 = null;
                String strDecode4 = null;
                String strDecode5 = null;
                String strDecode6 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new WrappedAddressPb(strDecode, strDecode2, strDecode3, strDecode4, strDecode5, strDecode6, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                    } else if (iNextTag == 2) {
                        strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                    } else if (iNextTag == 3) {
                        strDecode3 = ProtoAdapter.STRING_VALUE.decode(reader);
                    } else if (iNextTag == 4) {
                        strDecode4 = ProtoAdapter.STRING_VALUE.decode(reader);
                    } else if (iNextTag == 5) {
                        strDecode5 = ProtoAdapter.STRING_VALUE.decode(reader);
                    } else if (iNextTag == 7) {
                        strDecode6 = ProtoAdapter.STRING_VALUE.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
