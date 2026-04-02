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
import com.stripe.proto.model.rest.ActivatedConnectionToken;
import com.sun.jna.platform.win32.WinUser;
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

/* JADX INFO: compiled from: ActivatedConnectionToken.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u001e2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u001c\u001d\u001eB{\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010¢\u0006\u0002\u0010\u0011J\u0081\u0001\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u0010¢\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u000b2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0096\u0002J\b\u0010\u0018\u001a\u00020\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u0002H\u0016J\b\u0010\u001b\u001a\u00020\u0006H\u0016R\u0012\u0010\f\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0012R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/stripe/proto/model/rest/ActivatedConnectionToken;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/ActivatedConnectionToken$Builder;", "account_ref", "Lcom/stripe/proto/model/rest/ActivatedConnectionToken$AccountRef;", "sdk_rpc_session_token", "", "reader_rpc_session_token", "stripe_session_token", OfflineStorageConstantsKt.READER_ID, "livemode", "", OfflineStorageConstantsKt.ACCOUNT_ID, "connection_context_id", "offline_stripe_session_token", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/rest/ActivatedConnectionToken$AccountRef;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "Ljava/lang/Boolean;", "copy", "(Lcom/stripe/proto/model/rest/ActivatedConnectionToken$AccountRef;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/rest/ActivatedConnectionToken;", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "AccountRef", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ActivatedConnectionToken extends Message<ActivatedConnectionToken, Builder> {
    public static final ProtoAdapter<ActivatedConnectionToken> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "accountId", schemaIndex = 6, tag = 7)
    public final String account_id;

    @WireField(adapter = "com.stripe.proto.model.rest.ActivatedConnectionToken$AccountRef#ADAPTER", jsonName = "accountRef", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final AccountRef account_ref;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "connectionContextId", schemaIndex = 7, tag = 8)
    public final String connection_context_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", schemaIndex = 5, tag = 6)
    public final Boolean livemode;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "offlineStripeSessionToken", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 8, tag = 9)
    public final String offline_stripe_session_token;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "readerId", schemaIndex = 4, tag = 5)
    public final String reader_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "readerRpcSessionToken", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 2, tag = 3)
    public final String reader_rpc_session_token;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "sdkRpcSessionToken", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 1, tag = 2)
    public final String sdk_rpc_session_token;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "stripeSessionToken", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 3, tag = 4)
    public final String stripe_session_token;

    public ActivatedConnectionToken() {
        this(null, null, null, null, null, null, null, null, null, null, WinUser.CF_GDIOBJLAST, null);
    }

    public /* synthetic */ ActivatedConnectionToken(AccountRef accountRef, String str, String str2, String str3, String str4, Boolean bool, String str5, String str6, String str7, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : accountRef, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? null : str4, (i & 32) != 0 ? null : bool, (i & 64) != 0 ? null : str5, (i & 128) != 0 ? null : str6, (i & 256) != 0 ? null : str7, (i & 512) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActivatedConnectionToken(AccountRef accountRef, String str, String str2, String str3, String str4, Boolean bool, String str5, String str6, String str7, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.account_ref = accountRef;
        this.sdk_rpc_session_token = str;
        this.reader_rpc_session_token = str2;
        this.stripe_session_token = str3;
        this.reader_id = str4;
        this.livemode = bool;
        this.account_id = str5;
        this.connection_context_id = str6;
        this.offline_stripe_session_token = str7;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.account_ref = this.account_ref;
        builder.sdk_rpc_session_token = this.sdk_rpc_session_token;
        builder.reader_rpc_session_token = this.reader_rpc_session_token;
        builder.stripe_session_token = this.stripe_session_token;
        builder.reader_id = this.reader_id;
        builder.livemode = this.livemode;
        builder.account_id = this.account_id;
        builder.connection_context_id = this.connection_context_id;
        builder.offline_stripe_session_token = this.offline_stripe_session_token;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ActivatedConnectionToken)) {
            return false;
        }
        ActivatedConnectionToken activatedConnectionToken = (ActivatedConnectionToken) other;
        return Intrinsics.areEqual(unknownFields(), activatedConnectionToken.unknownFields()) && Intrinsics.areEqual(this.account_ref, activatedConnectionToken.account_ref) && Intrinsics.areEqual(this.sdk_rpc_session_token, activatedConnectionToken.sdk_rpc_session_token) && Intrinsics.areEqual(this.reader_rpc_session_token, activatedConnectionToken.reader_rpc_session_token) && Intrinsics.areEqual(this.stripe_session_token, activatedConnectionToken.stripe_session_token) && Intrinsics.areEqual(this.reader_id, activatedConnectionToken.reader_id) && Intrinsics.areEqual(this.livemode, activatedConnectionToken.livemode) && Intrinsics.areEqual(this.account_id, activatedConnectionToken.account_id) && Intrinsics.areEqual(this.connection_context_id, activatedConnectionToken.connection_context_id) && Intrinsics.areEqual(this.offline_stripe_session_token, activatedConnectionToken.offline_stripe_session_token);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        AccountRef accountRef = this.account_ref;
        int iHashCode2 = (iHashCode + (accountRef != null ? accountRef.hashCode() : 0)) * 37;
        String str = this.sdk_rpc_session_token;
        int iHashCode3 = (iHashCode2 + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.reader_rpc_session_token;
        int iHashCode4 = (iHashCode3 + (str2 != null ? str2.hashCode() : 0)) * 37;
        String str3 = this.stripe_session_token;
        int iHashCode5 = (iHashCode4 + (str3 != null ? str3.hashCode() : 0)) * 37;
        String str4 = this.reader_id;
        int iHashCode6 = (iHashCode5 + (str4 != null ? str4.hashCode() : 0)) * 37;
        Boolean bool = this.livemode;
        int iHashCode7 = (iHashCode6 + (bool != null ? bool.hashCode() : 0)) * 37;
        String str5 = this.account_id;
        int iHashCode8 = (iHashCode7 + (str5 != null ? str5.hashCode() : 0)) * 37;
        String str6 = this.connection_context_id;
        int iHashCode9 = (iHashCode8 + (str6 != null ? str6.hashCode() : 0)) * 37;
        String str7 = this.offline_stripe_session_token;
        int iHashCode10 = iHashCode9 + (str7 != null ? str7.hashCode() : 0);
        this.hashCode = iHashCode10;
        return iHashCode10;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.account_ref != null) {
            arrayList.add("account_ref=" + this.account_ref);
        }
        if (this.sdk_rpc_session_token != null) {
            arrayList.add("sdk_rpc_session_token=██");
        }
        if (this.reader_rpc_session_token != null) {
            arrayList.add("reader_rpc_session_token=██");
        }
        if (this.stripe_session_token != null) {
            arrayList.add("stripe_session_token=██");
        }
        if (this.reader_id != null) {
            arrayList.add("reader_id=" + this.reader_id);
        }
        if (this.livemode != null) {
            arrayList.add("livemode=" + this.livemode);
        }
        if (this.account_id != null) {
            arrayList.add("account_id=" + this.account_id);
        }
        if (this.connection_context_id != null) {
            arrayList.add("connection_context_id=" + this.connection_context_id);
        }
        if (this.offline_stripe_session_token != null) {
            arrayList.add("offline_stripe_session_token=██");
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ActivatedConnectionToken{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ActivatedConnectionToken copy$default(ActivatedConnectionToken activatedConnectionToken, AccountRef accountRef, String str, String str2, String str3, String str4, Boolean bool, String str5, String str6, String str7, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            accountRef = activatedConnectionToken.account_ref;
        }
        if ((i & 2) != 0) {
            str = activatedConnectionToken.sdk_rpc_session_token;
        }
        if ((i & 4) != 0) {
            str2 = activatedConnectionToken.reader_rpc_session_token;
        }
        if ((i & 8) != 0) {
            str3 = activatedConnectionToken.stripe_session_token;
        }
        if ((i & 16) != 0) {
            str4 = activatedConnectionToken.reader_id;
        }
        if ((i & 32) != 0) {
            bool = activatedConnectionToken.livemode;
        }
        if ((i & 64) != 0) {
            str5 = activatedConnectionToken.account_id;
        }
        if ((i & 128) != 0) {
            str6 = activatedConnectionToken.connection_context_id;
        }
        if ((i & 256) != 0) {
            str7 = activatedConnectionToken.offline_stripe_session_token;
        }
        if ((i & 512) != 0) {
            byteString = activatedConnectionToken.unknownFields();
        }
        String str8 = str7;
        ByteString byteString2 = byteString;
        String str9 = str5;
        String str10 = str6;
        String str11 = str4;
        Boolean bool2 = bool;
        return activatedConnectionToken.copy(accountRef, str, str2, str3, str11, bool2, str9, str10, str8, byteString2);
    }

    public final ActivatedConnectionToken copy(AccountRef account_ref, String sdk_rpc_session_token, String reader_rpc_session_token, String stripe_session_token, String reader_id, Boolean livemode, String account_id, String connection_context_id, String offline_stripe_session_token, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ActivatedConnectionToken(account_ref, sdk_rpc_session_token, reader_rpc_session_token, stripe_session_token, reader_id, livemode, account_id, connection_context_id, offline_stripe_session_token, unknownFields);
    }

    /* JADX INFO: compiled from: ActivatedConnectionToken.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0005J\u0015\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u0012J\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u000bR\u0014\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/model/rest/ActivatedConnectionToken$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/ActivatedConnectionToken;", "()V", OfflineStorageConstantsKt.ACCOUNT_ID, "", "account_ref", "Lcom/stripe/proto/model/rest/ActivatedConnectionToken$AccountRef;", "connection_context_id", "livemode", "", "Ljava/lang/Boolean;", "offline_stripe_session_token", OfflineStorageConstantsKt.READER_ID, "reader_rpc_session_token", "sdk_rpc_session_token", "stripe_session_token", "build", "(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/ActivatedConnectionToken$Builder;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ActivatedConnectionToken, Builder> {
        public String account_id;
        public AccountRef account_ref;
        public String connection_context_id;
        public Boolean livemode;
        public String offline_stripe_session_token;
        public String reader_id;
        public String reader_rpc_session_token;
        public String sdk_rpc_session_token;
        public String stripe_session_token;

        public final Builder account_ref(AccountRef account_ref) {
            this.account_ref = account_ref;
            return this;
        }

        public final Builder sdk_rpc_session_token(String sdk_rpc_session_token) {
            this.sdk_rpc_session_token = sdk_rpc_session_token;
            return this;
        }

        public final Builder reader_rpc_session_token(String reader_rpc_session_token) {
            this.reader_rpc_session_token = reader_rpc_session_token;
            return this;
        }

        public final Builder stripe_session_token(String stripe_session_token) {
            this.stripe_session_token = stripe_session_token;
            return this;
        }

        public final Builder reader_id(String reader_id) {
            this.reader_id = reader_id;
            return this;
        }

        public final Builder livemode(Boolean livemode) {
            this.livemode = livemode;
            return this;
        }

        public final Builder account_id(String account_id) {
            this.account_id = account_id;
            return this;
        }

        public final Builder connection_context_id(String connection_context_id) {
            this.connection_context_id = connection_context_id;
            return this;
        }

        public final Builder offline_stripe_session_token(String offline_stripe_session_token) {
            this.offline_stripe_session_token = offline_stripe_session_token;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ActivatedConnectionToken build() {
            return new ActivatedConnectionToken(this.account_ref, this.sdk_rpc_session_token, this.reader_rpc_session_token, this.stripe_session_token, this.reader_id, this.livemode, this.account_id, this.connection_context_id, this.offline_stripe_session_token, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ActivatedConnectionToken.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/ActivatedConnectionToken$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/ActivatedConnectionToken;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/ActivatedConnectionToken$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ActivatedConnectionToken build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ActivatedConnectionToken.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ActivatedConnectionToken>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.ActivatedConnectionToken$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ActivatedConnectionToken value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.account_ref != null) {
                    size += ActivatedConnectionToken.AccountRef.ADAPTER.encodedSizeWithTag(1, value.account_ref);
                }
                if (value.sdk_rpc_session_token != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.sdk_rpc_session_token);
                }
                if (value.reader_rpc_session_token != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.reader_rpc_session_token);
                }
                if (value.stripe_session_token != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(4, value.stripe_session_token);
                }
                if (value.reader_id != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(5, value.reader_id);
                }
                if (value.livemode != null) {
                    size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(6, value.livemode);
                }
                if (value.account_id != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(7, value.account_id);
                }
                if (value.connection_context_id != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(8, value.connection_context_id);
                }
                return value.offline_stripe_session_token != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(9, value.offline_stripe_session_token) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ActivatedConnectionToken value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.account_ref != null) {
                    ActivatedConnectionToken.AccountRef.ADAPTER.encodeWithTag(writer, 1, value.account_ref);
                }
                if (value.sdk_rpc_session_token != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.sdk_rpc_session_token);
                }
                if (value.reader_rpc_session_token != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.reader_rpc_session_token);
                }
                if (value.stripe_session_token != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.stripe_session_token);
                }
                if (value.reader_id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.reader_id);
                }
                if (value.livemode != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 6, value.livemode);
                }
                if (value.account_id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 7, value.account_id);
                }
                if (value.connection_context_id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 8, value.connection_context_id);
                }
                if (value.offline_stripe_session_token != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 9, value.offline_stripe_session_token);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ActivatedConnectionToken value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.offline_stripe_session_token != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 9, value.offline_stripe_session_token);
                }
                if (value.connection_context_id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 8, value.connection_context_id);
                }
                if (value.account_id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 7, value.account_id);
                }
                if (value.livemode != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 6, value.livemode);
                }
                if (value.reader_id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.reader_id);
                }
                if (value.stripe_session_token != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.stripe_session_token);
                }
                if (value.reader_rpc_session_token != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.reader_rpc_session_token);
                }
                if (value.sdk_rpc_session_token != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.sdk_rpc_session_token);
                }
                if (value.account_ref != null) {
                    ActivatedConnectionToken.AccountRef.ADAPTER.encodeWithTag(writer, 1, value.account_ref);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ActivatedConnectionToken redact(ActivatedConnectionToken value) {
                Intrinsics.checkNotNullParameter(value, "value");
                ActivatedConnectionToken.AccountRef accountRef = value.account_ref;
                ActivatedConnectionToken.AccountRef accountRefRedact = accountRef != null ? ActivatedConnectionToken.AccountRef.ADAPTER.redact(accountRef) : null;
                String str = value.reader_id;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                Boolean bool = value.livemode;
                Boolean boolRedact = bool != null ? ProtoAdapter.BOOL_VALUE.redact(bool) : null;
                String str2 = value.account_id;
                String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                String str3 = value.connection_context_id;
                return value.copy(accountRefRedact, null, null, null, strRedact, boolRedact, strRedact2, str3 != null ? ProtoAdapter.STRING_VALUE.redact(str3) : null, null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ActivatedConnectionToken decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                ActivatedConnectionToken.AccountRef accountRefDecode = null;
                String strDecode = null;
                String strDecode2 = null;
                String strDecode3 = null;
                String strDecode4 = null;
                Boolean boolDecode = null;
                String strDecode5 = null;
                String strDecode6 = null;
                String strDecode7 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                accountRefDecode = ActivatedConnectionToken.AccountRef.ADAPTER.decode(reader);
                                break;
                            case 2:
                                strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 3:
                                strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 4:
                                strDecode3 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 5:
                                strDecode4 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 6:
                                boolDecode = ProtoAdapter.BOOL_VALUE.decode(reader);
                                break;
                            case 7:
                                strDecode5 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 8:
                                strDecode6 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 9:
                                strDecode7 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new ActivatedConnectionToken(accountRefDecode, strDecode, strDecode2, strDecode3, strDecode4, boolDecode, strDecode5, strDecode6, strDecode7, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }

    /* JADX INFO: compiled from: ActivatedConnectionToken.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001c\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/model/rest/ActivatedConnectionToken$AccountRef;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/ActivatedConnectionToken$AccountRef$Builder;", "store_id", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class AccountRef extends Message<AccountRef, Builder> {
        public static final ProtoAdapter<AccountRef> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "storeId", schemaIndex = 0, tag = 1)
        public final String store_id;

        /* JADX WARN: Multi-variable type inference failed */
        public AccountRef() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        public /* synthetic */ AccountRef(String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AccountRef(String str, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.store_id = str;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.store_id = this.store_id;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof AccountRef)) {
                return false;
            }
            AccountRef accountRef = (AccountRef) other;
            return Intrinsics.areEqual(unknownFields(), accountRef.unknownFields()) && Intrinsics.areEqual(this.store_id, accountRef.store_id);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = unknownFields().hashCode() * 37;
            String str = this.store_id;
            int iHashCode2 = iHashCode + (str != null ? str.hashCode() : 0);
            this.hashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (this.store_id != null) {
                arrayList.add("store_id=" + this.store_id);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "AccountRef{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ AccountRef copy$default(AccountRef accountRef, String str, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = accountRef.store_id;
            }
            if ((i & 2) != 0) {
                byteString = accountRef.unknownFields();
            }
            return accountRef.copy(str, byteString);
        }

        public final AccountRef copy(String store_id, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new AccountRef(store_id, unknownFields);
        }

        /* JADX INFO: compiled from: ActivatedConnectionToken.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/model/rest/ActivatedConnectionToken$AccountRef$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/ActivatedConnectionToken$AccountRef;", "()V", "store_id", "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<AccountRef, Builder> {
            public String store_id;

            public final Builder store_id(String store_id) {
                this.store_id = store_id;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public AccountRef build() {
                return new AccountRef(this.store_id, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: ActivatedConnectionToken.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/ActivatedConnectionToken$AccountRef$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/ActivatedConnectionToken$AccountRef;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/ActivatedConnectionToken$AccountRef$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ AccountRef build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AccountRef.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<AccountRef>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.ActivatedConnectionToken$AccountRef$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(ActivatedConnectionToken.AccountRef value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    return value.store_id != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.store_id) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, ActivatedConnectionToken.AccountRef value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.store_id != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.store_id);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, ActivatedConnectionToken.AccountRef value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.store_id != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.store_id);
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public ActivatedConnectionToken.AccountRef redact(ActivatedConnectionToken.AccountRef value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    String str = value.store_id;
                    return value.copy(str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null, ByteString.EMPTY);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public ActivatedConnectionToken.AccountRef decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new ActivatedConnectionToken.AccountRef(strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }
}
