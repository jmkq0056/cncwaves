package com.stripe.cots.aidlservice;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.cots.aidlservice.CotsCollectPinResponse;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: CotsCollectPinResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0015\u0016\u0017B7\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ8\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0006H\u0016R\u0010\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsCollectPinResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Builder;", "result", "Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Result;", "pinBlock", "", "clientPublicKey", "serverPublicKeyHash", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "Result", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CotsCollectPinResponse extends Message<CotsCollectPinResponse, Builder> {
    public static final ProtoAdapter<CotsCollectPinResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String clientPublicKey;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String pinBlock;

    @WireField(adapter = "com.stripe.cots.aidlservice.CotsCollectPinResponse$Result#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final Result result;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String serverPublicKeyHash;

    public CotsCollectPinResponse() {
        this(null, null, null, null, null, 31, null);
    }

    public /* synthetic */ CotsCollectPinResponse(Result result, String str, String str2, String str3, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? Result.FAILURE : result, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? "" : str2, (i & 8) != 0 ? "" : str3, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CotsCollectPinResponse(Result result, String pinBlock, String clientPublicKey, String serverPublicKeyHash, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(pinBlock, "pinBlock");
        Intrinsics.checkNotNullParameter(clientPublicKey, "clientPublicKey");
        Intrinsics.checkNotNullParameter(serverPublicKeyHash, "serverPublicKeyHash");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.result = result;
        this.pinBlock = pinBlock;
        this.clientPublicKey = clientPublicKey;
        this.serverPublicKeyHash = serverPublicKeyHash;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.result = this.result;
        builder.pinBlock = this.pinBlock;
        builder.clientPublicKey = this.clientPublicKey;
        builder.serverPublicKeyHash = this.serverPublicKeyHash;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CotsCollectPinResponse)) {
            return false;
        }
        CotsCollectPinResponse cotsCollectPinResponse = (CotsCollectPinResponse) other;
        return Intrinsics.areEqual(unknownFields(), cotsCollectPinResponse.unknownFields()) && this.result == cotsCollectPinResponse.result && Intrinsics.areEqual(this.pinBlock, cotsCollectPinResponse.pinBlock) && Intrinsics.areEqual(this.clientPublicKey, cotsCollectPinResponse.clientPublicKey) && Intrinsics.areEqual(this.serverPublicKeyHash, cotsCollectPinResponse.serverPublicKeyHash);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((unknownFields().hashCode() * 37) + this.result.hashCode()) * 37) + this.pinBlock.hashCode()) * 37) + this.clientPublicKey.hashCode()) * 37) + this.serverPublicKeyHash.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("result=" + this.result);
        arrayList2.add("pinBlock=" + Internal.sanitize(this.pinBlock));
        arrayList2.add("clientPublicKey=" + Internal.sanitize(this.clientPublicKey));
        arrayList2.add("serverPublicKeyHash=" + Internal.sanitize(this.serverPublicKeyHash));
        return CollectionsKt.joinToString$default(arrayList, ", ", "CotsCollectPinResponse{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CotsCollectPinResponse copy$default(CotsCollectPinResponse cotsCollectPinResponse, Result result, String str, String str2, String str3, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            result = cotsCollectPinResponse.result;
        }
        if ((i & 2) != 0) {
            str = cotsCollectPinResponse.pinBlock;
        }
        if ((i & 4) != 0) {
            str2 = cotsCollectPinResponse.clientPublicKey;
        }
        if ((i & 8) != 0) {
            str3 = cotsCollectPinResponse.serverPublicKeyHash;
        }
        if ((i & 16) != 0) {
            byteString = cotsCollectPinResponse.unknownFields();
        }
        ByteString byteString2 = byteString;
        String str4 = str2;
        return cotsCollectPinResponse.copy(result, str, str4, str3, byteString2);
    }

    public final CotsCollectPinResponse copy(Result result, String pinBlock, String clientPublicKey, String serverPublicKeyHash, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(pinBlock, "pinBlock");
        Intrinsics.checkNotNullParameter(clientPublicKey, "clientPublicKey");
        Intrinsics.checkNotNullParameter(serverPublicKeyHash, "serverPublicKeyHash");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CotsCollectPinResponse(result, pinBlock, clientPublicKey, serverPublicKeyHash, unknownFields);
    }

    /* JADX INFO: compiled from: CotsCollectPinResponse.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/cots/aidlservice/CotsCollectPinResponse;", "()V", "clientPublicKey", "", "pinBlock", "result", "Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Result;", "serverPublicKeyHash", "build", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CotsCollectPinResponse, Builder> {
        public Result result = Result.FAILURE;
        public String pinBlock = "";
        public String clientPublicKey = "";
        public String serverPublicKeyHash = "";

        public final Builder result(Result result) {
            Intrinsics.checkNotNullParameter(result, "result");
            this.result = result;
            return this;
        }

        public final Builder pinBlock(String pinBlock) {
            Intrinsics.checkNotNullParameter(pinBlock, "pinBlock");
            this.pinBlock = pinBlock;
            return this;
        }

        public final Builder clientPublicKey(String clientPublicKey) {
            Intrinsics.checkNotNullParameter(clientPublicKey, "clientPublicKey");
            this.clientPublicKey = clientPublicKey;
            return this;
        }

        public final Builder serverPublicKeyHash(String serverPublicKeyHash) {
            Intrinsics.checkNotNullParameter(serverPublicKeyHash, "serverPublicKeyHash");
            this.serverPublicKeyHash = serverPublicKeyHash;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CotsCollectPinResponse build() {
            return new CotsCollectPinResponse(this.result, this.pinBlock, this.clientPublicKey, this.serverPublicKeyHash, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CotsCollectPinResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/cots/aidlservice/CotsCollectPinResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CotsCollectPinResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CotsCollectPinResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CotsCollectPinResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.cots.aidlservice.CotsCollectPinResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CotsCollectPinResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.result != CotsCollectPinResponse.Result.FAILURE) {
                    size += CotsCollectPinResponse.Result.ADAPTER.encodedSizeWithTag(1, value.result);
                }
                if (!Intrinsics.areEqual(value.pinBlock, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.pinBlock);
                }
                if (!Intrinsics.areEqual(value.clientPublicKey, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.clientPublicKey);
                }
                return !Intrinsics.areEqual(value.serverPublicKeyHash, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(4, value.serverPublicKeyHash) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CotsCollectPinResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.result != CotsCollectPinResponse.Result.FAILURE) {
                    CotsCollectPinResponse.Result.ADAPTER.encodeWithTag(writer, 1, value.result);
                }
                if (!Intrinsics.areEqual(value.pinBlock, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.pinBlock);
                }
                if (!Intrinsics.areEqual(value.clientPublicKey, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.clientPublicKey);
                }
                if (!Intrinsics.areEqual(value.serverPublicKeyHash, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.serverPublicKeyHash);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CotsCollectPinResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.serverPublicKeyHash, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.serverPublicKeyHash);
                }
                if (!Intrinsics.areEqual(value.clientPublicKey, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.clientPublicKey);
                }
                if (!Intrinsics.areEqual(value.pinBlock, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.pinBlock);
                }
                if (value.result != CotsCollectPinResponse.Result.FAILURE) {
                    CotsCollectPinResponse.Result.ADAPTER.encodeWithTag(writer, 1, value.result);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CotsCollectPinResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                CotsCollectPinResponse.Result resultDecode = CotsCollectPinResponse.Result.FAILURE;
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = strDecode;
                String strDecode3 = strDecode2;
                while (true) {
                    CotsCollectPinResponse.Result result = resultDecode;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new CotsCollectPinResponse(result, strDecode, strDecode2, strDecode3, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            try {
                                resultDecode = CotsCollectPinResponse.Result.ADAPTER.decode(reader);
                                break;
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                            }
                        } else if (iNextTag == 2) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 3) {
                            strDecode2 = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 4) {
                            strDecode3 = ProtoAdapter.STRING.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CotsCollectPinResponse redact(CotsCollectPinResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return CotsCollectPinResponse.copy$default(value, null, null, null, null, ByteString.EMPTY, 15, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: CotsCollectPinResponse.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Result;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "FAILURE", "SUCCESS", "CANCELED", "ATTESTATION_FAILURE", "Companion", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Result implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Result[] $VALUES;
        public static final ProtoAdapter<Result> ADAPTER;
        public static final Result ATTESTATION_FAILURE;
        public static final Result CANCELED;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final Result FAILURE;
        public static final Result SUCCESS;
        private final int value;

        private static final /* synthetic */ Result[] $values() {
            return new Result[]{FAILURE, SUCCESS, CANCELED, ATTESTATION_FAILURE};
        }

        @JvmStatic
        public static final Result fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<Result> getEntries() {
            return $ENTRIES;
        }

        public static Result valueOf(String str) {
            return (Result) Enum.valueOf(Result.class, str);
        }

        public static Result[] values() {
            return (Result[]) $VALUES.clone();
        }

        private Result(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final Result result = new Result("FAILURE", 0, 0);
            FAILURE = result;
            SUCCESS = new Result("SUCCESS", 1, 1);
            CANCELED = new Result("CANCELED", 2, 2);
            ATTESTATION_FAILURE = new Result("ATTESTATION_FAILURE", 3, 3);
            Result[] resultArr$values = $values();
            $VALUES = resultArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(resultArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Result.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<Result>(orCreateKotlinClass, syntax, result) { // from class: com.stripe.cots.aidlservice.CotsCollectPinResponse$Result$Companion$ADAPTER$1
                {
                    CotsCollectPinResponse.Result result2 = result;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public CotsCollectPinResponse.Result fromValue(int value) {
                    return CotsCollectPinResponse.Result.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: CotsCollectPinResponse.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Result$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Result;", "fromValue", "value", "", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final Result fromValue(int value) {
                if (value == 0) {
                    return Result.FAILURE;
                }
                if (value == 1) {
                    return Result.SUCCESS;
                }
                if (value == 2) {
                    return Result.CANCELED;
                }
                if (value != 3) {
                    return null;
                }
                return Result.ATTESTATION_FAILURE;
            }
        }
    }
}
