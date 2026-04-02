package com.stripe.proto.iot_relay.pub.api;

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
import com.stripe.proto.iot_relay.pub.api.ReaderResponse;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Deprecated;
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

/* JADX INFO: compiled from: ReaderResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00182\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0017\u0018\u0019B7\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ8\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0002H\u0016J\b\u0010\u0016\u001a\u00020\u0004H\u0016R\u0016\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\f\u0010\rR\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Builder;", "code", "", "message", "response_code", "Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;", "terminal_action_id", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;Ljava/lang/String;Lokio/ByteString;)V", "getCode$annotations", "()V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "ResponseCode", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReaderResponse extends Message<ReaderResponse, Builder> {
    public static final ProtoAdapter<ReaderResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String code;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String message;

    @WireField(adapter = "com.stripe.proto.iot_relay.pub.api.ReaderResponse$ResponseCode#ADAPTER", jsonName = "responseCode", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final ResponseCode response_code;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "terminalActionId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String terminal_action_id;

    public ReaderResponse() {
        this(null, null, null, null, null, 31, null);
    }

    @Deprecated(message = "code is deprecated")
    public static /* synthetic */ void getCode$annotations() {
    }

    public /* synthetic */ ReaderResponse(String str, String str2, ResponseCode responseCode, String str3, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? ResponseCode.RESPONSE_CODE_INVALID : responseCode, (i & 8) != 0 ? "" : str3, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReaderResponse(String code, String message, ResponseCode response_code, String terminal_action_id, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(response_code, "response_code");
        Intrinsics.checkNotNullParameter(terminal_action_id, "terminal_action_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.code = code;
        this.message = message;
        this.response_code = response_code;
        this.terminal_action_id = terminal_action_id;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.code = this.code;
        builder.message = this.message;
        builder.response_code = this.response_code;
        builder.terminal_action_id = this.terminal_action_id;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ReaderResponse)) {
            return false;
        }
        ReaderResponse readerResponse = (ReaderResponse) other;
        return Intrinsics.areEqual(unknownFields(), readerResponse.unknownFields()) && Intrinsics.areEqual(this.code, readerResponse.code) && Intrinsics.areEqual(this.message, readerResponse.message) && this.response_code == readerResponse.response_code && Intrinsics.areEqual(this.terminal_action_id, readerResponse.terminal_action_id);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((unknownFields().hashCode() * 37) + this.code.hashCode()) * 37) + this.message.hashCode()) * 37) + this.response_code.hashCode()) * 37) + this.terminal_action_id.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("code=" + Internal.sanitize(this.code));
        arrayList2.add("message=" + Internal.sanitize(this.message));
        arrayList2.add("response_code=" + this.response_code);
        arrayList2.add("terminal_action_id=" + Internal.sanitize(this.terminal_action_id));
        return CollectionsKt.joinToString$default(arrayList, ", ", "ReaderResponse{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ReaderResponse copy$default(ReaderResponse readerResponse, String str, String str2, ResponseCode responseCode, String str3, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = readerResponse.code;
        }
        if ((i & 2) != 0) {
            str2 = readerResponse.message;
        }
        if ((i & 4) != 0) {
            responseCode = readerResponse.response_code;
        }
        if ((i & 8) != 0) {
            str3 = readerResponse.terminal_action_id;
        }
        if ((i & 16) != 0) {
            byteString = readerResponse.unknownFields();
        }
        ByteString byteString2 = byteString;
        ResponseCode responseCode2 = responseCode;
        return readerResponse.copy(str, str2, responseCode2, str3, byteString2);
    }

    public final ReaderResponse copy(String code, String message, ResponseCode response_code, String terminal_action_id, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(response_code, "response_code");
        Intrinsics.checkNotNullParameter(terminal_action_id, "terminal_action_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ReaderResponse(code, message, response_code, terminal_action_id, unknownFields);
    }

    /* JADX INFO: compiled from: ReaderResponse.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005H\u0007J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;", "()V", "code", "", "message", "response_code", "Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;", "terminal_action_id", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ReaderResponse, Builder> {
        public String code = "";
        public String message = "";
        public ResponseCode response_code = ResponseCode.RESPONSE_CODE_INVALID;
        public String terminal_action_id = "";

        @Deprecated(message = "code is deprecated")
        public final Builder code(String code) {
            Intrinsics.checkNotNullParameter(code, "code");
            this.code = code;
            return this;
        }

        public final Builder message(String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            this.message = message;
            return this;
        }

        public final Builder response_code(ResponseCode response_code) {
            Intrinsics.checkNotNullParameter(response_code, "response_code");
            this.response_code = response_code;
            return this;
        }

        public final Builder terminal_action_id(String terminal_action_id) {
            Intrinsics.checkNotNullParameter(terminal_action_id, "terminal_action_id");
            this.terminal_action_id = terminal_action_id;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ReaderResponse build() {
            return new ReaderResponse(this.code, this.message, this.response_code, this.terminal_action_id, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ReaderResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ReaderResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ReaderResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ReaderResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.iot_relay.pub.api.ReaderResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ReaderResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.code, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.code);
                }
                if (!Intrinsics.areEqual(value.message, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.message);
                }
                if (value.response_code != ReaderResponse.ResponseCode.RESPONSE_CODE_INVALID) {
                    size += ReaderResponse.ResponseCode.ADAPTER.encodedSizeWithTag(3, value.response_code);
                }
                return !Intrinsics.areEqual(value.terminal_action_id, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(4, value.terminal_action_id) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ReaderResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.code, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.code);
                }
                if (!Intrinsics.areEqual(value.message, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.message);
                }
                if (value.response_code != ReaderResponse.ResponseCode.RESPONSE_CODE_INVALID) {
                    ReaderResponse.ResponseCode.ADAPTER.encodeWithTag(writer, 3, value.response_code);
                }
                if (!Intrinsics.areEqual(value.terminal_action_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.terminal_action_id);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ReaderResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.terminal_action_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.terminal_action_id);
                }
                if (value.response_code != ReaderResponse.ResponseCode.RESPONSE_CODE_INVALID) {
                    ReaderResponse.ResponseCode.ADAPTER.encodeWithTag(writer, 3, value.response_code);
                }
                if (!Intrinsics.areEqual(value.message, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.message);
                }
                if (Intrinsics.areEqual(value.code, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.code);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ReaderResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ReaderResponse.ResponseCode responseCodeDecode = ReaderResponse.ResponseCode.RESPONSE_CODE_INVALID;
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = strDecode;
                String strDecode3 = strDecode2;
                while (true) {
                    ReaderResponse.ResponseCode responseCode = responseCodeDecode;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new ReaderResponse(strDecode, strDecode2, responseCode, strDecode3, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 2) {
                            strDecode2 = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 3) {
                            try {
                                responseCodeDecode = ReaderResponse.ResponseCode.ADAPTER.decode(reader);
                                break;
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                            }
                        } else if (iNextTag == 4) {
                            strDecode3 = ProtoAdapter.STRING.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ReaderResponse redact(ReaderResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return ReaderResponse.copy$default(value, null, null, null, null, ByteString.EMPTY, 15, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: ReaderResponse.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\b\u0086\u0081\u0002\u0018\u0000 \u000e2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000eB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000f"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "RESPONSE_CODE_INVALID", "SUCCESS", "INVALID_COMMAND", "MALFORMED_COMMAND", "READER_BUSY", "INTEGRATION_MODE_MISMATCH", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ResponseCode implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ResponseCode[] $VALUES;
        public static final ProtoAdapter<ResponseCode> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final ResponseCode INTEGRATION_MODE_MISMATCH;
        public static final ResponseCode INVALID_COMMAND;
        public static final ResponseCode MALFORMED_COMMAND;
        public static final ResponseCode READER_BUSY;
        public static final ResponseCode RESPONSE_CODE_INVALID;
        public static final ResponseCode SUCCESS;
        private final int value;

        private static final /* synthetic */ ResponseCode[] $values() {
            return new ResponseCode[]{RESPONSE_CODE_INVALID, SUCCESS, INVALID_COMMAND, MALFORMED_COMMAND, READER_BUSY, INTEGRATION_MODE_MISMATCH};
        }

        @JvmStatic
        public static final ResponseCode fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<ResponseCode> getEntries() {
            return $ENTRIES;
        }

        public static ResponseCode valueOf(String str) {
            return (ResponseCode) Enum.valueOf(ResponseCode.class, str);
        }

        public static ResponseCode[] values() {
            return (ResponseCode[]) $VALUES.clone();
        }

        private ResponseCode(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final ResponseCode responseCode = new ResponseCode("RESPONSE_CODE_INVALID", 0, 0);
            RESPONSE_CODE_INVALID = responseCode;
            SUCCESS = new ResponseCode("SUCCESS", 1, 1);
            INVALID_COMMAND = new ResponseCode("INVALID_COMMAND", 2, 2);
            MALFORMED_COMMAND = new ResponseCode("MALFORMED_COMMAND", 3, 3);
            READER_BUSY = new ResponseCode("READER_BUSY", 4, 4);
            INTEGRATION_MODE_MISMATCH = new ResponseCode("INTEGRATION_MODE_MISMATCH", 5, 5);
            ResponseCode[] responseCodeArr$values = $values();
            $VALUES = responseCodeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(responseCodeArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ResponseCode.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<ResponseCode>(orCreateKotlinClass, syntax, responseCode) { // from class: com.stripe.proto.iot_relay.pub.api.ReaderResponse$ResponseCode$Companion$ADAPTER$1
                {
                    ReaderResponse.ResponseCode responseCode2 = responseCode;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public ReaderResponse.ResponseCode fromValue(int value) {
                    return ReaderResponse.ResponseCode.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: ReaderResponse.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final ResponseCode fromValue(int value) {
                if (value == 0) {
                    return ResponseCode.RESPONSE_CODE_INVALID;
                }
                if (value == 1) {
                    return ResponseCode.SUCCESS;
                }
                if (value == 2) {
                    return ResponseCode.INVALID_COMMAND;
                }
                if (value == 3) {
                    return ResponseCode.MALFORMED_COMMAND;
                }
                if (value == 4) {
                    return ResponseCode.READER_BUSY;
                }
                if (value != 5) {
                    return null;
                }
                return ResponseCode.INTEGRATION_MODE_MISMATCH;
            }
        }
    }
}
