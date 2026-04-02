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

/* JADX INFO: compiled from: EpalParameters.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017BK\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJL\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u000bJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\b\u0010\u0015\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/model/config/EpalParameters;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/config/EpalParameters$Builder;", "contactless_floor_limit", "", "contactless_transaction_limit", "contactless_transaction_limit_for_cash", "tac_default", "tac_denial", "tac_online", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class EpalParameters extends Message<EpalParameters, Builder> {
    public static final ProtoAdapter<EpalParameters> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "contactlessFloorLimit", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String contactless_floor_limit;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "contactlessTransactionLimit", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String contactless_transaction_limit;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "contactlessTransactionLimitForCash", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String contactless_transaction_limit_for_cash;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "tacDefault", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String tac_default;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "tacDenial", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final String tac_denial;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "tacOnline", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final String tac_online;

    public EpalParameters() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public /* synthetic */ EpalParameters(String str, String str2, String str3, String str4, String str5, String str6, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? "" : str4, (i & 16) != 0 ? "" : str5, (i & 32) != 0 ? "" : str6, (i & 64) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EpalParameters(String contactless_floor_limit, String contactless_transaction_limit, String contactless_transaction_limit_for_cash, String tac_default, String tac_denial, String tac_online, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(contactless_floor_limit, "contactless_floor_limit");
        Intrinsics.checkNotNullParameter(contactless_transaction_limit, "contactless_transaction_limit");
        Intrinsics.checkNotNullParameter(contactless_transaction_limit_for_cash, "contactless_transaction_limit_for_cash");
        Intrinsics.checkNotNullParameter(tac_default, "tac_default");
        Intrinsics.checkNotNullParameter(tac_denial, "tac_denial");
        Intrinsics.checkNotNullParameter(tac_online, "tac_online");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.contactless_floor_limit = contactless_floor_limit;
        this.contactless_transaction_limit = contactless_transaction_limit;
        this.contactless_transaction_limit_for_cash = contactless_transaction_limit_for_cash;
        this.tac_default = tac_default;
        this.tac_denial = tac_denial;
        this.tac_online = tac_online;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.contactless_floor_limit = this.contactless_floor_limit;
        builder.contactless_transaction_limit = this.contactless_transaction_limit;
        builder.contactless_transaction_limit_for_cash = this.contactless_transaction_limit_for_cash;
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
        if (!(other instanceof EpalParameters)) {
            return false;
        }
        EpalParameters epalParameters = (EpalParameters) other;
        return Intrinsics.areEqual(unknownFields(), epalParameters.unknownFields()) && Intrinsics.areEqual(this.contactless_floor_limit, epalParameters.contactless_floor_limit) && Intrinsics.areEqual(this.contactless_transaction_limit, epalParameters.contactless_transaction_limit) && Intrinsics.areEqual(this.contactless_transaction_limit_for_cash, epalParameters.contactless_transaction_limit_for_cash) && Intrinsics.areEqual(this.tac_default, epalParameters.tac_default) && Intrinsics.areEqual(this.tac_denial, epalParameters.tac_denial) && Intrinsics.areEqual(this.tac_online, epalParameters.tac_online);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((((((unknownFields().hashCode() * 37) + this.contactless_floor_limit.hashCode()) * 37) + this.contactless_transaction_limit.hashCode()) * 37) + this.contactless_transaction_limit_for_cash.hashCode()) * 37) + this.tac_default.hashCode()) * 37) + this.tac_denial.hashCode()) * 37) + this.tac_online.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("contactless_floor_limit=" + Internal.sanitize(this.contactless_floor_limit));
        arrayList2.add("contactless_transaction_limit=" + Internal.sanitize(this.contactless_transaction_limit));
        arrayList2.add("contactless_transaction_limit_for_cash=" + Internal.sanitize(this.contactless_transaction_limit_for_cash));
        arrayList2.add("tac_default=" + Internal.sanitize(this.tac_default));
        arrayList2.add("tac_denial=" + Internal.sanitize(this.tac_denial));
        arrayList2.add("tac_online=" + Internal.sanitize(this.tac_online));
        return CollectionsKt.joinToString$default(arrayList, ", ", "EpalParameters{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ EpalParameters copy$default(EpalParameters epalParameters, String str, String str2, String str3, String str4, String str5, String str6, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = epalParameters.contactless_floor_limit;
        }
        if ((i & 2) != 0) {
            str2 = epalParameters.contactless_transaction_limit;
        }
        if ((i & 4) != 0) {
            str3 = epalParameters.contactless_transaction_limit_for_cash;
        }
        if ((i & 8) != 0) {
            str4 = epalParameters.tac_default;
        }
        if ((i & 16) != 0) {
            str5 = epalParameters.tac_denial;
        }
        if ((i & 32) != 0) {
            str6 = epalParameters.tac_online;
        }
        if ((i & 64) != 0) {
            byteString = epalParameters.unknownFields();
        }
        String str7 = str6;
        ByteString byteString2 = byteString;
        String str8 = str5;
        String str9 = str3;
        return epalParameters.copy(str, str2, str9, str4, str8, str7, byteString2);
    }

    public final EpalParameters copy(String contactless_floor_limit, String contactless_transaction_limit, String contactless_transaction_limit_for_cash, String tac_default, String tac_denial, String tac_online, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(contactless_floor_limit, "contactless_floor_limit");
        Intrinsics.checkNotNullParameter(contactless_transaction_limit, "contactless_transaction_limit");
        Intrinsics.checkNotNullParameter(contactless_transaction_limit_for_cash, "contactless_transaction_limit_for_cash");
        Intrinsics.checkNotNullParameter(tac_default, "tac_default");
        Intrinsics.checkNotNullParameter(tac_denial, "tac_denial");
        Intrinsics.checkNotNullParameter(tac_online, "tac_online");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new EpalParameters(contactless_floor_limit, contactless_transaction_limit, contactless_transaction_limit_for_cash, tac_default, tac_denial, tac_online, unknownFields);
    }

    /* JADX INFO: compiled from: EpalParameters.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/proto/model/config/EpalParameters$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/config/EpalParameters;", "()V", "contactless_floor_limit", "", "contactless_transaction_limit", "contactless_transaction_limit_for_cash", "tac_default", "tac_denial", "tac_online", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<EpalParameters, Builder> {
        public String contactless_floor_limit = "";
        public String contactless_transaction_limit = "";
        public String contactless_transaction_limit_for_cash = "";
        public String tac_default = "";
        public String tac_denial = "";
        public String tac_online = "";

        public final Builder contactless_floor_limit(String contactless_floor_limit) {
            Intrinsics.checkNotNullParameter(contactless_floor_limit, "contactless_floor_limit");
            this.contactless_floor_limit = contactless_floor_limit;
            return this;
        }

        public final Builder contactless_transaction_limit(String contactless_transaction_limit) {
            Intrinsics.checkNotNullParameter(contactless_transaction_limit, "contactless_transaction_limit");
            this.contactless_transaction_limit = contactless_transaction_limit;
            return this;
        }

        public final Builder contactless_transaction_limit_for_cash(String contactless_transaction_limit_for_cash) {
            Intrinsics.checkNotNullParameter(contactless_transaction_limit_for_cash, "contactless_transaction_limit_for_cash");
            this.contactless_transaction_limit_for_cash = contactless_transaction_limit_for_cash;
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
        public EpalParameters build() {
            return new EpalParameters(this.contactless_floor_limit, this.contactless_transaction_limit, this.contactless_transaction_limit_for_cash, this.tac_default, this.tac_denial, this.tac_online, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: EpalParameters.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/config/EpalParameters$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/EpalParameters;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/config/EpalParameters$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ EpalParameters build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(EpalParameters.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<EpalParameters>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.config.EpalParameters$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(EpalParameters value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.contactless_floor_limit, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.contactless_floor_limit);
                }
                if (!Intrinsics.areEqual(value.contactless_transaction_limit, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.contactless_transaction_limit);
                }
                if (!Intrinsics.areEqual(value.contactless_transaction_limit_for_cash, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.contactless_transaction_limit_for_cash);
                }
                if (!Intrinsics.areEqual(value.tac_default, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(4, value.tac_default);
                }
                if (!Intrinsics.areEqual(value.tac_denial, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(5, value.tac_denial);
                }
                return !Intrinsics.areEqual(value.tac_online, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(6, value.tac_online) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, EpalParameters value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.contactless_floor_limit, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.contactless_floor_limit);
                }
                if (!Intrinsics.areEqual(value.contactless_transaction_limit, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.contactless_transaction_limit);
                }
                if (!Intrinsics.areEqual(value.contactless_transaction_limit_for_cash, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.contactless_transaction_limit_for_cash);
                }
                if (!Intrinsics.areEqual(value.tac_default, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.tac_default);
                }
                if (!Intrinsics.areEqual(value.tac_denial, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.tac_denial);
                }
                if (!Intrinsics.areEqual(value.tac_online, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.tac_online);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, EpalParameters value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.tac_online, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.tac_online);
                }
                if (!Intrinsics.areEqual(value.tac_denial, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.tac_denial);
                }
                if (!Intrinsics.areEqual(value.tac_default, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.tac_default);
                }
                if (!Intrinsics.areEqual(value.contactless_transaction_limit_for_cash, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.contactless_transaction_limit_for_cash);
                }
                if (!Intrinsics.areEqual(value.contactless_transaction_limit, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.contactless_transaction_limit);
                }
                if (Intrinsics.areEqual(value.contactless_floor_limit, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.contactless_floor_limit);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public EpalParameters redact(EpalParameters value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return EpalParameters.copy$default(value, null, null, null, null, null, null, ByteString.EMPTY, 63, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public EpalParameters decode(ProtoReader reader) throws IOException {
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
                        return new EpalParameters(strDecode, strDecode2, strDecode3, strDecode4, strDecode5, strDecode6, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
