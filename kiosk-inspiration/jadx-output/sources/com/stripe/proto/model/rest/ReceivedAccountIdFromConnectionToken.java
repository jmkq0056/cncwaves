package com.stripe.proto.model.rest;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
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

/* JADX INFO: compiled from: ReceivedAccountIdFromConnectionToken.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ-\u0010\u000b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\fJ\u0013\u0010\r\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0004H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\n¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken$Builder;", OfflineStorageConstantsKt.ACCOUNT_ID, "", "livemode", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/Boolean;Lokio/ByteString;)V", "Ljava/lang/Boolean;", "copy", "(Ljava/lang/String;Ljava/lang/Boolean;Lokio/ByteString;)Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken;", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReceivedAccountIdFromConnectionToken extends Message<ReceivedAccountIdFromConnectionToken, Builder> {
    public static final ProtoAdapter<ReceivedAccountIdFromConnectionToken> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "accountId", schemaIndex = 0, tag = 1)
    public final String account_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", schemaIndex = 1, tag = 2)
    public final Boolean livemode;

    public ReceivedAccountIdFromConnectionToken() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ ReceivedAccountIdFromConnectionToken(String str, Boolean bool, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : bool, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReceivedAccountIdFromConnectionToken(String str, Boolean bool, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.account_id = str;
        this.livemode = bool;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.account_id = this.account_id;
        builder.livemode = this.livemode;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ReceivedAccountIdFromConnectionToken)) {
            return false;
        }
        ReceivedAccountIdFromConnectionToken receivedAccountIdFromConnectionToken = (ReceivedAccountIdFromConnectionToken) other;
        return Intrinsics.areEqual(unknownFields(), receivedAccountIdFromConnectionToken.unknownFields()) && Intrinsics.areEqual(this.account_id, receivedAccountIdFromConnectionToken.account_id) && Intrinsics.areEqual(this.livemode, receivedAccountIdFromConnectionToken.livemode);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.account_id;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        Boolean bool = this.livemode;
        int iHashCode3 = iHashCode2 + (bool != null ? bool.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.account_id != null) {
            arrayList.add("account_id=" + this.account_id);
        }
        if (this.livemode != null) {
            arrayList.add("livemode=" + this.livemode);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ReceivedAccountIdFromConnectionToken{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ReceivedAccountIdFromConnectionToken copy$default(ReceivedAccountIdFromConnectionToken receivedAccountIdFromConnectionToken, String str, Boolean bool, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = receivedAccountIdFromConnectionToken.account_id;
        }
        if ((i & 2) != 0) {
            bool = receivedAccountIdFromConnectionToken.livemode;
        }
        if ((i & 4) != 0) {
            byteString = receivedAccountIdFromConnectionToken.unknownFields();
        }
        return receivedAccountIdFromConnectionToken.copy(str, bool, byteString);
    }

    public final ReceivedAccountIdFromConnectionToken copy(String account_id, Boolean livemode, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ReceivedAccountIdFromConnectionToken(account_id, livemode, unknownFields);
    }

    /* JADX INFO: compiled from: ReceivedAccountIdFromConnectionToken.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010\t\u001a\u00020\u0002H\u0016J\u0015\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\nR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken;", "()V", OfflineStorageConstantsKt.ACCOUNT_ID, "", "livemode", "", "Ljava/lang/Boolean;", "build", "(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken$Builder;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ReceivedAccountIdFromConnectionToken, Builder> {
        public String account_id;
        public Boolean livemode;

        public final Builder account_id(String account_id) {
            this.account_id = account_id;
            return this;
        }

        public final Builder livemode(Boolean livemode) {
            this.livemode = livemode;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ReceivedAccountIdFromConnectionToken build() {
            return new ReceivedAccountIdFromConnectionToken(this.account_id, this.livemode, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ReceivedAccountIdFromConnectionToken.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ReceivedAccountIdFromConnectionToken build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ReceivedAccountIdFromConnectionToken.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ReceivedAccountIdFromConnectionToken>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.ReceivedAccountIdFromConnectionToken$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ReceivedAccountIdFromConnectionToken value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.account_id != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.account_id);
                }
                return value.livemode != null ? size + ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(2, value.livemode) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ReceivedAccountIdFromConnectionToken value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.account_id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.account_id);
                }
                if (value.livemode != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 2, value.livemode);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ReceivedAccountIdFromConnectionToken value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.livemode != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 2, value.livemode);
                }
                if (value.account_id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.account_id);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ReceivedAccountIdFromConnectionToken redact(ReceivedAccountIdFromConnectionToken value) {
                Intrinsics.checkNotNullParameter(value, "value");
                String str = value.account_id;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                Boolean bool = value.livemode;
                return value.copy(strRedact, bool != null ? ProtoAdapter.BOOL_VALUE.redact(bool) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ReceivedAccountIdFromConnectionToken decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = null;
                Boolean boolDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ReceivedAccountIdFromConnectionToken(strDecode, boolDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                    } else if (iNextTag == 2) {
                        boolDecode = ProtoAdapter.BOOL_VALUE.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
