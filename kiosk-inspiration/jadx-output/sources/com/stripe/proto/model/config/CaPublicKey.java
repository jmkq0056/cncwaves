package com.stripe.proto.model.config;

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

/* JADX INFO: compiled from: CaPublicKey.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B7\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ8\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0007H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0004H\u0016R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/model/config/CaPublicKey;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/config/CaPublicKey$Builder;", "key_index", "", "registered_application_provider_identifier", "exponent", "", "modulus", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CaPublicKey extends Message<CaPublicKey, Builder> {
    public static final ProtoAdapter<CaPublicKey> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final int exponent;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "keyIndex", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String key_index;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String modulus;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "registeredApplicationProviderIdentifier", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String registered_application_provider_identifier;

    public CaPublicKey() {
        this(null, null, 0, null, null, 31, null);
    }

    public /* synthetic */ CaPublicKey(String str, String str2, int i, String str3, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? "" : str2, (i2 & 4) != 0 ? 0 : i, (i2 & 8) != 0 ? "" : str3, (i2 & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CaPublicKey(String key_index, String registered_application_provider_identifier, int i, String modulus, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(key_index, "key_index");
        Intrinsics.checkNotNullParameter(registered_application_provider_identifier, "registered_application_provider_identifier");
        Intrinsics.checkNotNullParameter(modulus, "modulus");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.key_index = key_index;
        this.registered_application_provider_identifier = registered_application_provider_identifier;
        this.exponent = i;
        this.modulus = modulus;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.key_index = this.key_index;
        builder.registered_application_provider_identifier = this.registered_application_provider_identifier;
        builder.exponent = this.exponent;
        builder.modulus = this.modulus;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CaPublicKey)) {
            return false;
        }
        CaPublicKey caPublicKey = (CaPublicKey) other;
        return Intrinsics.areEqual(unknownFields(), caPublicKey.unknownFields()) && Intrinsics.areEqual(this.key_index, caPublicKey.key_index) && Intrinsics.areEqual(this.registered_application_provider_identifier, caPublicKey.registered_application_provider_identifier) && this.exponent == caPublicKey.exponent && Intrinsics.areEqual(this.modulus, caPublicKey.modulus);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((unknownFields().hashCode() * 37) + this.key_index.hashCode()) * 37) + this.registered_application_provider_identifier.hashCode()) * 37) + Integer.hashCode(this.exponent)) * 37) + this.modulus.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("key_index=" + Internal.sanitize(this.key_index));
        arrayList2.add("registered_application_provider_identifier=" + Internal.sanitize(this.registered_application_provider_identifier));
        arrayList2.add("exponent=" + this.exponent);
        arrayList2.add("modulus=" + Internal.sanitize(this.modulus));
        return CollectionsKt.joinToString$default(arrayList, ", ", "CaPublicKey{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CaPublicKey copy$default(CaPublicKey caPublicKey, String str, String str2, int i, String str3, ByteString byteString, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = caPublicKey.key_index;
        }
        if ((i2 & 2) != 0) {
            str2 = caPublicKey.registered_application_provider_identifier;
        }
        if ((i2 & 4) != 0) {
            i = caPublicKey.exponent;
        }
        if ((i2 & 8) != 0) {
            str3 = caPublicKey.modulus;
        }
        if ((i2 & 16) != 0) {
            byteString = caPublicKey.unknownFields();
        }
        ByteString byteString2 = byteString;
        int i3 = i;
        return caPublicKey.copy(str, str2, i3, str3, byteString2);
    }

    public final CaPublicKey copy(String key_index, String registered_application_provider_identifier, int exponent, String modulus, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(key_index, "key_index");
        Intrinsics.checkNotNullParameter(registered_application_provider_identifier, "registered_application_provider_identifier");
        Intrinsics.checkNotNullParameter(modulus, "modulus");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CaPublicKey(key_index, registered_application_provider_identifier, exponent, modulus, unknownFields);
    }

    /* JADX INFO: compiled from: CaPublicKey.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/config/CaPublicKey$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/config/CaPublicKey;", "()V", "exponent", "", "key_index", "", "modulus", "registered_application_provider_identifier", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CaPublicKey, Builder> {
        public int exponent;
        public String key_index = "";
        public String registered_application_provider_identifier = "";
        public String modulus = "";

        public final Builder key_index(String key_index) {
            Intrinsics.checkNotNullParameter(key_index, "key_index");
            this.key_index = key_index;
            return this;
        }

        public final Builder registered_application_provider_identifier(String registered_application_provider_identifier) {
            Intrinsics.checkNotNullParameter(registered_application_provider_identifier, "registered_application_provider_identifier");
            this.registered_application_provider_identifier = registered_application_provider_identifier;
            return this;
        }

        public final Builder exponent(int exponent) {
            this.exponent = exponent;
            return this;
        }

        public final Builder modulus(String modulus) {
            Intrinsics.checkNotNullParameter(modulus, "modulus");
            this.modulus = modulus;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CaPublicKey build() {
            return new CaPublicKey(this.key_index, this.registered_application_provider_identifier, this.exponent, this.modulus, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CaPublicKey.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/config/CaPublicKey$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/CaPublicKey;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/config/CaPublicKey$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CaPublicKey build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CaPublicKey.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CaPublicKey>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.config.CaPublicKey$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CaPublicKey value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.key_index, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.key_index);
                }
                if (!Intrinsics.areEqual(value.registered_application_provider_identifier, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.registered_application_provider_identifier);
                }
                if (value.exponent != 0) {
                    size += ProtoAdapter.UINT32.encodedSizeWithTag(3, Integer.valueOf(value.exponent));
                }
                return !Intrinsics.areEqual(value.modulus, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(4, value.modulus) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CaPublicKey value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.key_index, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.key_index);
                }
                if (!Intrinsics.areEqual(value.registered_application_provider_identifier, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.registered_application_provider_identifier);
                }
                if (value.exponent != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 3, Integer.valueOf(value.exponent));
                }
                if (!Intrinsics.areEqual(value.modulus, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.modulus);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CaPublicKey value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.modulus, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.modulus);
                }
                if (value.exponent != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 3, Integer.valueOf(value.exponent));
                }
                if (!Intrinsics.areEqual(value.registered_application_provider_identifier, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.registered_application_provider_identifier);
                }
                if (Intrinsics.areEqual(value.key_index, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.key_index);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CaPublicKey redact(CaPublicKey value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return CaPublicKey.copy$default(value, null, null, 0, null, ByteString.EMPTY, 15, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CaPublicKey decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = "";
                int iIntValue = 0;
                String strDecode3 = strDecode2;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CaPublicKey(strDecode, strDecode3, iIntValue, strDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 2) {
                        strDecode3 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 3) {
                        iIntValue = ProtoAdapter.UINT32.decode(reader).intValue();
                    } else if (iNextTag == 4) {
                        strDecode2 = ProtoAdapter.STRING.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
