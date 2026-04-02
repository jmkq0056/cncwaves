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

/* JADX INFO: compiled from: RedeemedForOfflineConnectionToken.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017B?\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJE\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000eJ\u0013\u0010\u000f\u001a\u00020\b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\b\u0010\u0015\u001a\u00020\u0004H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\fR\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Builder;", OfflineStorageConstantsKt.ACCOUNT_ID, "", "stripe_session_token", "sdk_rpc_session_token", "livemode", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lokio/ByteString;)V", "Ljava/lang/Boolean;", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lokio/ByteString;)Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RedeemedForOfflineConnectionToken extends Message<RedeemedForOfflineConnectionToken, Builder> {
    public static final ProtoAdapter<RedeemedForOfflineConnectionToken> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "accountId", schemaIndex = 0, tag = 1)
    public final String account_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", schemaIndex = 3, tag = 4)
    public final Boolean livemode;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "sdkRpcSessionToken", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 2, tag = 3)
    public final String sdk_rpc_session_token;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "stripeSessionToken", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 1, tag = 2)
    public final String stripe_session_token;

    public RedeemedForOfflineConnectionToken() {
        this(null, null, null, null, null, 31, null);
    }

    public /* synthetic */ RedeemedForOfflineConnectionToken(String str, String str2, String str3, Boolean bool, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : bool, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RedeemedForOfflineConnectionToken(String str, String str2, String str3, Boolean bool, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.account_id = str;
        this.stripe_session_token = str2;
        this.sdk_rpc_session_token = str3;
        this.livemode = bool;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.account_id = this.account_id;
        builder.stripe_session_token = this.stripe_session_token;
        builder.sdk_rpc_session_token = this.sdk_rpc_session_token;
        builder.livemode = this.livemode;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof RedeemedForOfflineConnectionToken)) {
            return false;
        }
        RedeemedForOfflineConnectionToken redeemedForOfflineConnectionToken = (RedeemedForOfflineConnectionToken) other;
        return Intrinsics.areEqual(unknownFields(), redeemedForOfflineConnectionToken.unknownFields()) && Intrinsics.areEqual(this.account_id, redeemedForOfflineConnectionToken.account_id) && Intrinsics.areEqual(this.stripe_session_token, redeemedForOfflineConnectionToken.stripe_session_token) && Intrinsics.areEqual(this.sdk_rpc_session_token, redeemedForOfflineConnectionToken.sdk_rpc_session_token) && Intrinsics.areEqual(this.livemode, redeemedForOfflineConnectionToken.livemode);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.account_id;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.stripe_session_token;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
        String str3 = this.sdk_rpc_session_token;
        int iHashCode4 = (iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 37;
        Boolean bool = this.livemode;
        int iHashCode5 = iHashCode4 + (bool != null ? bool.hashCode() : 0);
        this.hashCode = iHashCode5;
        return iHashCode5;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.account_id != null) {
            arrayList.add("account_id=" + this.account_id);
        }
        if (this.stripe_session_token != null) {
            arrayList.add("stripe_session_token=██");
        }
        if (this.sdk_rpc_session_token != null) {
            arrayList.add("sdk_rpc_session_token=██");
        }
        if (this.livemode != null) {
            arrayList.add("livemode=" + this.livemode);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "RedeemedForOfflineConnectionToken{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ RedeemedForOfflineConnectionToken copy$default(RedeemedForOfflineConnectionToken redeemedForOfflineConnectionToken, String str, String str2, String str3, Boolean bool, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = redeemedForOfflineConnectionToken.account_id;
        }
        if ((i & 2) != 0) {
            str2 = redeemedForOfflineConnectionToken.stripe_session_token;
        }
        if ((i & 4) != 0) {
            str3 = redeemedForOfflineConnectionToken.sdk_rpc_session_token;
        }
        if ((i & 8) != 0) {
            bool = redeemedForOfflineConnectionToken.livemode;
        }
        if ((i & 16) != 0) {
            byteString = redeemedForOfflineConnectionToken.unknownFields();
        }
        ByteString byteString2 = byteString;
        String str4 = str3;
        return redeemedForOfflineConnectionToken.copy(str, str2, str4, bool, byteString2);
    }

    public final RedeemedForOfflineConnectionToken copy(String account_id, String stripe_session_token, String sdk_rpc_session_token, Boolean livemode, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new RedeemedForOfflineConnectionToken(account_id, stripe_session_token, sdk_rpc_session_token, livemode, unknownFields);
    }

    /* JADX INFO: compiled from: RedeemedForOfflineConnectionToken.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010\u000b\u001a\u00020\u0002H\u0016J\u0015\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\fJ\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\bR\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;", "()V", OfflineStorageConstantsKt.ACCOUNT_ID, "", "livemode", "", "Ljava/lang/Boolean;", "sdk_rpc_session_token", "stripe_session_token", "build", "(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Builder;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<RedeemedForOfflineConnectionToken, Builder> {
        public String account_id;
        public Boolean livemode;
        public String sdk_rpc_session_token;
        public String stripe_session_token;

        public final Builder account_id(String account_id) {
            this.account_id = account_id;
            return this;
        }

        public final Builder stripe_session_token(String stripe_session_token) {
            this.stripe_session_token = stripe_session_token;
            return this;
        }

        public final Builder sdk_rpc_session_token(String sdk_rpc_session_token) {
            this.sdk_rpc_session_token = sdk_rpc_session_token;
            return this;
        }

        public final Builder livemode(Boolean livemode) {
            this.livemode = livemode;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public RedeemedForOfflineConnectionToken build() {
            return new RedeemedForOfflineConnectionToken(this.account_id, this.stripe_session_token, this.sdk_rpc_session_token, this.livemode, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: RedeemedForOfflineConnectionToken.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ RedeemedForOfflineConnectionToken build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(RedeemedForOfflineConnectionToken.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<RedeemedForOfflineConnectionToken>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.RedeemedForOfflineConnectionToken$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(RedeemedForOfflineConnectionToken value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.account_id != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.account_id);
                }
                if (value.stripe_session_token != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.stripe_session_token);
                }
                if (value.sdk_rpc_session_token != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.sdk_rpc_session_token);
                }
                return value.livemode != null ? size + ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(4, value.livemode) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, RedeemedForOfflineConnectionToken value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.account_id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.account_id);
                }
                if (value.stripe_session_token != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.stripe_session_token);
                }
                if (value.sdk_rpc_session_token != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.sdk_rpc_session_token);
                }
                if (value.livemode != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 4, value.livemode);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, RedeemedForOfflineConnectionToken value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.livemode != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 4, value.livemode);
                }
                if (value.sdk_rpc_session_token != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.sdk_rpc_session_token);
                }
                if (value.stripe_session_token != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.stripe_session_token);
                }
                if (value.account_id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.account_id);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public RedeemedForOfflineConnectionToken redact(RedeemedForOfflineConnectionToken value) {
                Intrinsics.checkNotNullParameter(value, "value");
                String str = value.account_id;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                Boolean bool = value.livemode;
                return value.copy(strRedact, null, null, bool != null ? ProtoAdapter.BOOL_VALUE.redact(bool) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public RedeemedForOfflineConnectionToken decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = null;
                String strDecode2 = null;
                String strDecode3 = null;
                Boolean boolDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new RedeemedForOfflineConnectionToken(strDecode, strDecode2, strDecode3, boolDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                    } else if (iNextTag == 2) {
                        strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                    } else if (iNextTag == 3) {
                        strDecode3 = ProtoAdapter.STRING_VALUE.decode(reader);
                    } else if (iNextTag == 4) {
                        boolDecode = ProtoAdapter.BOOL_VALUE.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
