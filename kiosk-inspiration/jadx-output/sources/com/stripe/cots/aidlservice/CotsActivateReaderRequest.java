package com.stripe.cots.aidlservice;

import androidx.core.graphics.TypefaceCompat;
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

/* JADX INFO: compiled from: CotsActivateReaderRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017BK\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJL\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u000bJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\b\u0010\u0015\u001a\u00020\u0004H\u0016R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsActivateReaderRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/cots/aidlservice/CotsActivateReaderRequest$Builder;", "sessionToken", "", "rpcSessionToken", "clientType", "clientVersion", "deviceUuid", RemoteConfigConstants.RequestFieldKey.COUNTRY_CODE, "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CotsActivateReaderRequest extends Message<CotsActivateReaderRequest, Builder> {
    public static final ProtoAdapter<CotsActivateReaderRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String clientType;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String clientVersion;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final String countryCode;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final String deviceUuid;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 1, tag = 2)
    public final String rpcSessionToken;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 0, tag = 1)
    public final String sessionToken;

    public CotsActivateReaderRequest() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public /* synthetic */ CotsActivateReaderRequest(String str, String str2, String str3, String str4, String str5, String str6, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? "" : str4, (i & 16) != 0 ? "" : str5, (i & 32) != 0 ? "" : str6, (i & 64) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CotsActivateReaderRequest(String sessionToken, String rpcSessionToken, String clientType, String clientVersion, String deviceUuid, String countryCode, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(sessionToken, "sessionToken");
        Intrinsics.checkNotNullParameter(rpcSessionToken, "rpcSessionToken");
        Intrinsics.checkNotNullParameter(clientType, "clientType");
        Intrinsics.checkNotNullParameter(clientVersion, "clientVersion");
        Intrinsics.checkNotNullParameter(deviceUuid, "deviceUuid");
        Intrinsics.checkNotNullParameter(countryCode, "countryCode");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.sessionToken = sessionToken;
        this.rpcSessionToken = rpcSessionToken;
        this.clientType = clientType;
        this.clientVersion = clientVersion;
        this.deviceUuid = deviceUuid;
        this.countryCode = countryCode;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.sessionToken = this.sessionToken;
        builder.rpcSessionToken = this.rpcSessionToken;
        builder.clientType = this.clientType;
        builder.clientVersion = this.clientVersion;
        builder.deviceUuid = this.deviceUuid;
        builder.countryCode = this.countryCode;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CotsActivateReaderRequest)) {
            return false;
        }
        CotsActivateReaderRequest cotsActivateReaderRequest = (CotsActivateReaderRequest) other;
        return Intrinsics.areEqual(unknownFields(), cotsActivateReaderRequest.unknownFields()) && Intrinsics.areEqual(this.sessionToken, cotsActivateReaderRequest.sessionToken) && Intrinsics.areEqual(this.rpcSessionToken, cotsActivateReaderRequest.rpcSessionToken) && Intrinsics.areEqual(this.clientType, cotsActivateReaderRequest.clientType) && Intrinsics.areEqual(this.clientVersion, cotsActivateReaderRequest.clientVersion) && Intrinsics.areEqual(this.deviceUuid, cotsActivateReaderRequest.deviceUuid) && Intrinsics.areEqual(this.countryCode, cotsActivateReaderRequest.countryCode);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((((((unknownFields().hashCode() * 37) + this.sessionToken.hashCode()) * 37) + this.rpcSessionToken.hashCode()) * 37) + this.clientType.hashCode()) * 37) + this.clientVersion.hashCode()) * 37) + this.deviceUuid.hashCode()) * 37) + this.countryCode.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("sessionToken=██");
        arrayList2.add("rpcSessionToken=██");
        arrayList2.add("clientType=" + Internal.sanitize(this.clientType));
        arrayList2.add("clientVersion=" + Internal.sanitize(this.clientVersion));
        arrayList2.add("deviceUuid=" + Internal.sanitize(this.deviceUuid));
        arrayList2.add("countryCode=" + Internal.sanitize(this.countryCode));
        return CollectionsKt.joinToString$default(arrayList, ", ", "CotsActivateReaderRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CotsActivateReaderRequest copy$default(CotsActivateReaderRequest cotsActivateReaderRequest, String str, String str2, String str3, String str4, String str5, String str6, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = cotsActivateReaderRequest.sessionToken;
        }
        if ((i & 2) != 0) {
            str2 = cotsActivateReaderRequest.rpcSessionToken;
        }
        if ((i & 4) != 0) {
            str3 = cotsActivateReaderRequest.clientType;
        }
        if ((i & 8) != 0) {
            str4 = cotsActivateReaderRequest.clientVersion;
        }
        if ((i & 16) != 0) {
            str5 = cotsActivateReaderRequest.deviceUuid;
        }
        if ((i & 32) != 0) {
            str6 = cotsActivateReaderRequest.countryCode;
        }
        if ((i & 64) != 0) {
            byteString = cotsActivateReaderRequest.unknownFields();
        }
        String str7 = str6;
        ByteString byteString2 = byteString;
        String str8 = str5;
        String str9 = str3;
        return cotsActivateReaderRequest.copy(str, str2, str9, str4, str8, str7, byteString2);
    }

    public final CotsActivateReaderRequest copy(String sessionToken, String rpcSessionToken, String clientType, String clientVersion, String deviceUuid, String countryCode, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(sessionToken, "sessionToken");
        Intrinsics.checkNotNullParameter(rpcSessionToken, "rpcSessionToken");
        Intrinsics.checkNotNullParameter(clientType, "clientType");
        Intrinsics.checkNotNullParameter(clientVersion, "clientVersion");
        Intrinsics.checkNotNullParameter(deviceUuid, "deviceUuid");
        Intrinsics.checkNotNullParameter(countryCode, "countryCode");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CotsActivateReaderRequest(sessionToken, rpcSessionToken, clientType, clientVersion, deviceUuid, countryCode, unknownFields);
    }

    /* JADX INFO: compiled from: CotsActivateReaderRequest.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsActivateReaderRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/cots/aidlservice/CotsActivateReaderRequest;", "()V", "clientType", "", "clientVersion", RemoteConfigConstants.RequestFieldKey.COUNTRY_CODE, "deviceUuid", "rpcSessionToken", "sessionToken", "build", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CotsActivateReaderRequest, Builder> {
        public String sessionToken = "";
        public String rpcSessionToken = "";
        public String clientType = "";
        public String clientVersion = "";
        public String deviceUuid = "";
        public String countryCode = "";

        public final Builder sessionToken(String sessionToken) {
            Intrinsics.checkNotNullParameter(sessionToken, "sessionToken");
            this.sessionToken = sessionToken;
            return this;
        }

        public final Builder rpcSessionToken(String rpcSessionToken) {
            Intrinsics.checkNotNullParameter(rpcSessionToken, "rpcSessionToken");
            this.rpcSessionToken = rpcSessionToken;
            return this;
        }

        public final Builder clientType(String clientType) {
            Intrinsics.checkNotNullParameter(clientType, "clientType");
            this.clientType = clientType;
            return this;
        }

        public final Builder clientVersion(String clientVersion) {
            Intrinsics.checkNotNullParameter(clientVersion, "clientVersion");
            this.clientVersion = clientVersion;
            return this;
        }

        public final Builder deviceUuid(String deviceUuid) {
            Intrinsics.checkNotNullParameter(deviceUuid, "deviceUuid");
            this.deviceUuid = deviceUuid;
            return this;
        }

        public final Builder countryCode(String countryCode) {
            Intrinsics.checkNotNullParameter(countryCode, "countryCode");
            this.countryCode = countryCode;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CotsActivateReaderRequest build() {
            return new CotsActivateReaderRequest(this.sessionToken, this.rpcSessionToken, this.clientType, this.clientVersion, this.deviceUuid, this.countryCode, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CotsActivateReaderRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsActivateReaderRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/cots/aidlservice/CotsActivateReaderRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/cots/aidlservice/CotsActivateReaderRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CotsActivateReaderRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CotsActivateReaderRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CotsActivateReaderRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.cots.aidlservice.CotsActivateReaderRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CotsActivateReaderRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.sessionToken, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.sessionToken);
                }
                if (!Intrinsics.areEqual(value.rpcSessionToken, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.rpcSessionToken);
                }
                if (!Intrinsics.areEqual(value.clientType, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.clientType);
                }
                if (!Intrinsics.areEqual(value.clientVersion, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(4, value.clientVersion);
                }
                if (!Intrinsics.areEqual(value.deviceUuid, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(5, value.deviceUuid);
                }
                return !Intrinsics.areEqual(value.countryCode, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(6, value.countryCode) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CotsActivateReaderRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.sessionToken, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.sessionToken);
                }
                if (!Intrinsics.areEqual(value.rpcSessionToken, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.rpcSessionToken);
                }
                if (!Intrinsics.areEqual(value.clientType, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.clientType);
                }
                if (!Intrinsics.areEqual(value.clientVersion, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.clientVersion);
                }
                if (!Intrinsics.areEqual(value.deviceUuid, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.deviceUuid);
                }
                if (!Intrinsics.areEqual(value.countryCode, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.countryCode);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CotsActivateReaderRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.countryCode, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.countryCode);
                }
                if (!Intrinsics.areEqual(value.deviceUuid, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.deviceUuid);
                }
                if (!Intrinsics.areEqual(value.clientVersion, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.clientVersion);
                }
                if (!Intrinsics.areEqual(value.clientType, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.clientType);
                }
                if (!Intrinsics.areEqual(value.rpcSessionToken, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.rpcSessionToken);
                }
                if (Intrinsics.areEqual(value.sessionToken, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.sessionToken);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CotsActivateReaderRequest redact(CotsActivateReaderRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return CotsActivateReaderRequest.copy$default(value, "", "", null, null, null, null, ByteString.EMPTY, 60, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CotsActivateReaderRequest decode(ProtoReader reader) throws IOException {
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
                        return new CotsActivateReaderRequest(strDecode, strDecode2, strDecode3, strDecode4, strDecode5, strDecode6, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
