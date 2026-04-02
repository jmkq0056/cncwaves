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

/* JADX INFO: compiled from: InteracParameters.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016BA\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJB\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0004H\u0016R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/model/config/InteracParameters;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/config/InteracParameters$Builder;", "contactless_transaction_limit", "", "contactless_cvm_required_limit", "tac_default", "tac_denial", "tac_online", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class InteracParameters extends Message<InteracParameters, Builder> {
    public static final ProtoAdapter<InteracParameters> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "contactlessCvmRequiredLimit", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String contactless_cvm_required_limit;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "contactlessTransactionLimit", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String contactless_transaction_limit;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "tacDefault", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String tac_default;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "tacDenial", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String tac_denial;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "tacOnline", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final String tac_online;

    public InteracParameters() {
        this(null, null, null, null, null, null, 63, null);
    }

    public /* synthetic */ InteracParameters(String str, String str2, String str3, String str4, String str5, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? "" : str4, (i & 16) != 0 ? "" : str5, (i & 32) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InteracParameters(String contactless_transaction_limit, String contactless_cvm_required_limit, String tac_default, String tac_denial, String tac_online, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(contactless_transaction_limit, "contactless_transaction_limit");
        Intrinsics.checkNotNullParameter(contactless_cvm_required_limit, "contactless_cvm_required_limit");
        Intrinsics.checkNotNullParameter(tac_default, "tac_default");
        Intrinsics.checkNotNullParameter(tac_denial, "tac_denial");
        Intrinsics.checkNotNullParameter(tac_online, "tac_online");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.contactless_transaction_limit = contactless_transaction_limit;
        this.contactless_cvm_required_limit = contactless_cvm_required_limit;
        this.tac_default = tac_default;
        this.tac_denial = tac_denial;
        this.tac_online = tac_online;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.contactless_transaction_limit = this.contactless_transaction_limit;
        builder.contactless_cvm_required_limit = this.contactless_cvm_required_limit;
        builder.tac_default = this.tac_default;
        builder.tac_denial = this.tac_denial;
        builder.tac_online = this.tac_online;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof InteracParameters)) {
            return false;
        }
        InteracParameters interacParameters = (InteracParameters) other;
        return Intrinsics.areEqual(unknownFields(), interacParameters.unknownFields()) && Intrinsics.areEqual(this.contactless_transaction_limit, interacParameters.contactless_transaction_limit) && Intrinsics.areEqual(this.contactless_cvm_required_limit, interacParameters.contactless_cvm_required_limit) && Intrinsics.areEqual(this.tac_default, interacParameters.tac_default) && Intrinsics.areEqual(this.tac_denial, interacParameters.tac_denial) && Intrinsics.areEqual(this.tac_online, interacParameters.tac_online);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((((unknownFields().hashCode() * 37) + this.contactless_transaction_limit.hashCode()) * 37) + this.contactless_cvm_required_limit.hashCode()) * 37) + this.tac_default.hashCode()) * 37) + this.tac_denial.hashCode()) * 37) + this.tac_online.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("contactless_transaction_limit=" + Internal.sanitize(this.contactless_transaction_limit));
        arrayList2.add("contactless_cvm_required_limit=" + Internal.sanitize(this.contactless_cvm_required_limit));
        arrayList2.add("tac_default=" + Internal.sanitize(this.tac_default));
        arrayList2.add("tac_denial=" + Internal.sanitize(this.tac_denial));
        arrayList2.add("tac_online=" + Internal.sanitize(this.tac_online));
        return CollectionsKt.joinToString$default(arrayList, ", ", "InteracParameters{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ InteracParameters copy$default(InteracParameters interacParameters, String str, String str2, String str3, String str4, String str5, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = interacParameters.contactless_transaction_limit;
        }
        if ((i & 2) != 0) {
            str2 = interacParameters.contactless_cvm_required_limit;
        }
        if ((i & 4) != 0) {
            str3 = interacParameters.tac_default;
        }
        if ((i & 8) != 0) {
            str4 = interacParameters.tac_denial;
        }
        if ((i & 16) != 0) {
            str5 = interacParameters.tac_online;
        }
        if ((i & 32) != 0) {
            byteString = interacParameters.unknownFields();
        }
        String str6 = str5;
        ByteString byteString2 = byteString;
        return interacParameters.copy(str, str2, str3, str4, str6, byteString2);
    }

    public final InteracParameters copy(String contactless_transaction_limit, String contactless_cvm_required_limit, String tac_default, String tac_denial, String tac_online, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(contactless_transaction_limit, "contactless_transaction_limit");
        Intrinsics.checkNotNullParameter(contactless_cvm_required_limit, "contactless_cvm_required_limit");
        Intrinsics.checkNotNullParameter(tac_default, "tac_default");
        Intrinsics.checkNotNullParameter(tac_denial, "tac_denial");
        Intrinsics.checkNotNullParameter(tac_online, "tac_online");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new InteracParameters(contactless_transaction_limit, contactless_cvm_required_limit, tac_default, tac_denial, tac_online, unknownFields);
    }

    /* JADX INFO: compiled from: InteracParameters.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/config/InteracParameters$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/config/InteracParameters;", "()V", "contactless_cvm_required_limit", "", "contactless_transaction_limit", "tac_default", "tac_denial", "tac_online", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<InteracParameters, Builder> {
        public String contactless_transaction_limit = "";
        public String contactless_cvm_required_limit = "";
        public String tac_default = "";
        public String tac_denial = "";
        public String tac_online = "";

        public final Builder contactless_transaction_limit(String contactless_transaction_limit) {
            Intrinsics.checkNotNullParameter(contactless_transaction_limit, "contactless_transaction_limit");
            this.contactless_transaction_limit = contactless_transaction_limit;
            return this;
        }

        public final Builder contactless_cvm_required_limit(String contactless_cvm_required_limit) {
            Intrinsics.checkNotNullParameter(contactless_cvm_required_limit, "contactless_cvm_required_limit");
            this.contactless_cvm_required_limit = contactless_cvm_required_limit;
            return this;
        }

        public final Builder tac_default(String tac_default) {
            Intrinsics.checkNotNullParameter(tac_default, "tac_default");
            this.tac_default = tac_default;
            return this;
        }

        public final Builder tac_denial(String tac_denial) {
            Intrinsics.checkNotNullParameter(tac_denial, "tac_denial");
            this.tac_denial = tac_denial;
            return this;
        }

        public final Builder tac_online(String tac_online) {
            Intrinsics.checkNotNullParameter(tac_online, "tac_online");
            this.tac_online = tac_online;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public InteracParameters build() {
            return new InteracParameters(this.contactless_transaction_limit, this.contactless_cvm_required_limit, this.tac_default, this.tac_denial, this.tac_online, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: InteracParameters.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/config/InteracParameters$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/InteracParameters;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/config/InteracParameters$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ InteracParameters build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(InteracParameters.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<InteracParameters>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.config.InteracParameters$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(InteracParameters value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.contactless_transaction_limit, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.contactless_transaction_limit);
                }
                if (!Intrinsics.areEqual(value.contactless_cvm_required_limit, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.contactless_cvm_required_limit);
                }
                if (!Intrinsics.areEqual(value.tac_default, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.tac_default);
                }
                if (!Intrinsics.areEqual(value.tac_denial, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(4, value.tac_denial);
                }
                return !Intrinsics.areEqual(value.tac_online, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(5, value.tac_online) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, InteracParameters value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.contactless_transaction_limit, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.contactless_transaction_limit);
                }
                if (!Intrinsics.areEqual(value.contactless_cvm_required_limit, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.contactless_cvm_required_limit);
                }
                if (!Intrinsics.areEqual(value.tac_default, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.tac_default);
                }
                if (!Intrinsics.areEqual(value.tac_denial, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.tac_denial);
                }
                if (!Intrinsics.areEqual(value.tac_online, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.tac_online);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, InteracParameters value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.tac_online, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.tac_online);
                }
                if (!Intrinsics.areEqual(value.tac_denial, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.tac_denial);
                }
                if (!Intrinsics.areEqual(value.tac_default, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.tac_default);
                }
                if (!Intrinsics.areEqual(value.contactless_cvm_required_limit, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.contactless_cvm_required_limit);
                }
                if (Intrinsics.areEqual(value.contactless_transaction_limit, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.contactless_transaction_limit);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public InteracParameters redact(InteracParameters value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return InteracParameters.copy$default(value, null, null, null, null, null, ByteString.EMPTY, 31, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public InteracParameters decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = "";
                String strDecode3 = strDecode2;
                String strDecode4 = strDecode3;
                String strDecode5 = strDecode4;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new InteracParameters(strDecode, strDecode2, strDecode3, strDecode4, strDecode5, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 2) {
                        strDecode2 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 3) {
                        strDecode3 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 4) {
                        strDecode4 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 5) {
                        strDecode5 = ProtoAdapter.STRING.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
