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
import com.stripe.cots.aidlservice.CotsReader;
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

/* JADX INFO: compiled from: CotsReader.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0015\u0016\u0017B7\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ8\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000bJ\u0013\u0010\u000e\u001a\u00020\t2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0004H\u0016R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsReader;", "Lcom/squareup/wire/Message;", "Lcom/stripe/cots/aidlservice/CotsReader$Builder;", "serial", "", "errorCode", "Lcom/stripe/cots/aidlservice/CotsReader$CotsError;", "errorMessage", "isSimulated", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lcom/stripe/cots/aidlservice/CotsReader$CotsError;Ljava/lang/String;ZLokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "CotsError", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CotsReader extends Message<CotsReader, Builder> {
    public static final ProtoAdapter<CotsReader> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.cots.aidlservice.CotsReader$CotsError#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final CotsError errorCode;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String errorMessage;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final boolean isSimulated;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String serial;

    public CotsReader() {
        this(null, null, null, false, null, 31, null);
    }

    public /* synthetic */ CotsReader(String str, CotsError cotsError, String str2, boolean z, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? CotsError.UNKNOWN : cotsError, (i & 4) != 0 ? "" : str2, (i & 8) != 0 ? false : z, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CotsReader(String serial, CotsError errorCode, String errorMessage, boolean z, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(serial, "serial");
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.serial = serial;
        this.errorCode = errorCode;
        this.errorMessage = errorMessage;
        this.isSimulated = z;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.serial = this.serial;
        builder.errorCode = this.errorCode;
        builder.errorMessage = this.errorMessage;
        builder.isSimulated = this.isSimulated;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CotsReader)) {
            return false;
        }
        CotsReader cotsReader = (CotsReader) other;
        return Intrinsics.areEqual(unknownFields(), cotsReader.unknownFields()) && Intrinsics.areEqual(this.serial, cotsReader.serial) && this.errorCode == cotsReader.errorCode && Intrinsics.areEqual(this.errorMessage, cotsReader.errorMessage) && this.isSimulated == cotsReader.isSimulated;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((unknownFields().hashCode() * 37) + this.serial.hashCode()) * 37) + this.errorCode.hashCode()) * 37) + this.errorMessage.hashCode()) * 37) + Boolean.hashCode(this.isSimulated);
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("serial=" + Internal.sanitize(this.serial));
        arrayList2.add("errorCode=" + this.errorCode);
        arrayList2.add("errorMessage=" + Internal.sanitize(this.errorMessage));
        arrayList2.add("isSimulated=" + this.isSimulated);
        return CollectionsKt.joinToString$default(arrayList, ", ", "CotsReader{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CotsReader copy$default(CotsReader cotsReader, String str, CotsError cotsError, String str2, boolean z, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = cotsReader.serial;
        }
        if ((i & 2) != 0) {
            cotsError = cotsReader.errorCode;
        }
        if ((i & 4) != 0) {
            str2 = cotsReader.errorMessage;
        }
        if ((i & 8) != 0) {
            z = cotsReader.isSimulated;
        }
        if ((i & 16) != 0) {
            byteString = cotsReader.unknownFields();
        }
        ByteString byteString2 = byteString;
        String str3 = str2;
        return cotsReader.copy(str, cotsError, str3, z, byteString2);
    }

    public final CotsReader copy(String serial, CotsError errorCode, String errorMessage, boolean isSimulated, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(serial, "serial");
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CotsReader(serial, errorCode, errorMessage, isSimulated, unknownFields);
    }

    /* JADX INFO: compiled from: CotsReader.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsReader$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/cots/aidlservice/CotsReader;", "()V", "errorCode", "Lcom/stripe/cots/aidlservice/CotsReader$CotsError;", "errorMessage", "", "isSimulated", "", "serial", "build", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CotsReader, Builder> {
        public boolean isSimulated;
        public String serial = "";
        public CotsError errorCode = CotsError.UNKNOWN;
        public String errorMessage = "";

        public final Builder serial(String serial) {
            Intrinsics.checkNotNullParameter(serial, "serial");
            this.serial = serial;
            return this;
        }

        public final Builder errorCode(CotsError errorCode) {
            Intrinsics.checkNotNullParameter(errorCode, "errorCode");
            this.errorCode = errorCode;
            return this;
        }

        public final Builder errorMessage(String errorMessage) {
            Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
            this.errorMessage = errorMessage;
            return this;
        }

        public final Builder isSimulated(boolean isSimulated) {
            this.isSimulated = isSimulated;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CotsReader build() {
            return new CotsReader(this.serial, this.errorCode, this.errorMessage, this.isSimulated, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CotsReader.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsReader$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/cots/aidlservice/CotsReader;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/cots/aidlservice/CotsReader$Builder;", "", "Lkotlin/ExtensionFunctionType;", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CotsReader build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CotsReader.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CotsReader>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.cots.aidlservice.CotsReader$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CotsReader value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.serial, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.serial);
                }
                if (value.errorCode != CotsReader.CotsError.UNKNOWN) {
                    size += CotsReader.CotsError.ADAPTER.encodedSizeWithTag(2, value.errorCode);
                }
                if (!Intrinsics.areEqual(value.errorMessage, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.errorMessage);
                }
                return value.isSimulated ? size + ProtoAdapter.BOOL.encodedSizeWithTag(4, Boolean.valueOf(value.isSimulated)) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CotsReader value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.serial, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.serial);
                }
                if (value.errorCode != CotsReader.CotsError.UNKNOWN) {
                    CotsReader.CotsError.ADAPTER.encodeWithTag(writer, 2, value.errorCode);
                }
                if (!Intrinsics.areEqual(value.errorMessage, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.errorMessage);
                }
                if (value.isSimulated) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 4, Boolean.valueOf(value.isSimulated));
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CotsReader value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.isSimulated) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 4, Boolean.valueOf(value.isSimulated));
                }
                if (!Intrinsics.areEqual(value.errorMessage, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.errorMessage);
                }
                if (value.errorCode != CotsReader.CotsError.UNKNOWN) {
                    CotsReader.CotsError.ADAPTER.encodeWithTag(writer, 2, value.errorCode);
                }
                if (Intrinsics.areEqual(value.serial, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.serial);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CotsReader decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                CotsReader.CotsError cotsError = CotsReader.CotsError.UNKNOWN;
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                boolean zBooleanValue = false;
                CotsReader.CotsError cotsErrorDecode = cotsError;
                String strDecode2 = strDecode;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CotsReader(strDecode2, cotsErrorDecode, strDecode, zBooleanValue, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode2 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 2) {
                        try {
                            cotsErrorDecode = CotsReader.CotsError.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else if (iNextTag == 3) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 4) {
                        zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CotsReader redact(CotsReader value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return CotsReader.copy$default(value, null, null, null, false, ByteString.EMPTY, 15, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: CotsReader.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0012\b\u0086\u0081\u0002\u0018\u0000 \u00152\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0015B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014¨\u0006\u0016"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsReader$CotsError;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "UNKNOWN", "NONE", "DISCOVERY_MISSING_KEY_CERTIFICATES", "DISCOVERY_UNSUPPORTED_ANDROID_VERSION", "DISCOVERY_MISSING_NFC_READER", "DISCOVERY_UNTRUSTED_HARDWARE", "ATTESTATION_DEVICE_TAMPERED", "ATTESTATION_API_CONNECTION_ERROR", "ATTESTATION_SERVER_ERROR", "ATTESTATION_API_RESPONSE_DECODING", "UNEXPECTED_ERROR", "DISCOVERY_DEBUG_NOT_ALLOWED", "DISCOVERY_UNTRUSTED_SOFTWARE", "Companion", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class CotsError implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ CotsError[] $VALUES;
        public static final ProtoAdapter<CotsError> ADAPTER;
        public static final CotsError ATTESTATION_API_CONNECTION_ERROR;
        public static final CotsError ATTESTATION_API_RESPONSE_DECODING;
        public static final CotsError ATTESTATION_DEVICE_TAMPERED;
        public static final CotsError ATTESTATION_SERVER_ERROR;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final CotsError DISCOVERY_DEBUG_NOT_ALLOWED;
        public static final CotsError DISCOVERY_MISSING_KEY_CERTIFICATES;
        public static final CotsError DISCOVERY_MISSING_NFC_READER;
        public static final CotsError DISCOVERY_UNSUPPORTED_ANDROID_VERSION;
        public static final CotsError DISCOVERY_UNTRUSTED_HARDWARE;
        public static final CotsError DISCOVERY_UNTRUSTED_SOFTWARE;
        public static final CotsError NONE;
        public static final CotsError UNEXPECTED_ERROR;
        public static final CotsError UNKNOWN;
        private final int value;

        private static final /* synthetic */ CotsError[] $values() {
            return new CotsError[]{UNKNOWN, NONE, DISCOVERY_MISSING_KEY_CERTIFICATES, DISCOVERY_UNSUPPORTED_ANDROID_VERSION, DISCOVERY_MISSING_NFC_READER, DISCOVERY_UNTRUSTED_HARDWARE, ATTESTATION_DEVICE_TAMPERED, ATTESTATION_API_CONNECTION_ERROR, ATTESTATION_SERVER_ERROR, ATTESTATION_API_RESPONSE_DECODING, UNEXPECTED_ERROR, DISCOVERY_DEBUG_NOT_ALLOWED, DISCOVERY_UNTRUSTED_SOFTWARE};
        }

        @JvmStatic
        public static final CotsError fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<CotsError> getEntries() {
            return $ENTRIES;
        }

        public static CotsError valueOf(String str) {
            return (CotsError) Enum.valueOf(CotsError.class, str);
        }

        public static CotsError[] values() {
            return (CotsError[]) $VALUES.clone();
        }

        private CotsError(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final CotsError cotsError = new CotsError("UNKNOWN", 0, 0);
            UNKNOWN = cotsError;
            NONE = new CotsError("NONE", 1, 1);
            DISCOVERY_MISSING_KEY_CERTIFICATES = new CotsError("DISCOVERY_MISSING_KEY_CERTIFICATES", 2, 2);
            DISCOVERY_UNSUPPORTED_ANDROID_VERSION = new CotsError("DISCOVERY_UNSUPPORTED_ANDROID_VERSION", 3, 3);
            DISCOVERY_MISSING_NFC_READER = new CotsError("DISCOVERY_MISSING_NFC_READER", 4, 4);
            DISCOVERY_UNTRUSTED_HARDWARE = new CotsError("DISCOVERY_UNTRUSTED_HARDWARE", 5, 5);
            ATTESTATION_DEVICE_TAMPERED = new CotsError("ATTESTATION_DEVICE_TAMPERED", 6, 6);
            ATTESTATION_API_CONNECTION_ERROR = new CotsError("ATTESTATION_API_CONNECTION_ERROR", 7, 7);
            ATTESTATION_SERVER_ERROR = new CotsError("ATTESTATION_SERVER_ERROR", 8, 8);
            ATTESTATION_API_RESPONSE_DECODING = new CotsError("ATTESTATION_API_RESPONSE_DECODING", 9, 9);
            UNEXPECTED_ERROR = new CotsError("UNEXPECTED_ERROR", 10, 10);
            DISCOVERY_DEBUG_NOT_ALLOWED = new CotsError("DISCOVERY_DEBUG_NOT_ALLOWED", 11, 12);
            DISCOVERY_UNTRUSTED_SOFTWARE = new CotsError("DISCOVERY_UNTRUSTED_SOFTWARE", 12, 13);
            CotsError[] cotsErrorArr$values = $values();
            $VALUES = cotsErrorArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(cotsErrorArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CotsError.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<CotsError>(orCreateKotlinClass, syntax, cotsError) { // from class: com.stripe.cots.aidlservice.CotsReader$CotsError$Companion$ADAPTER$1
                {
                    CotsReader.CotsError cotsError2 = cotsError;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public CotsReader.CotsError fromValue(int value) {
                    return CotsReader.CotsError.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: CotsReader.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/cots/aidlservice/CotsReader$CotsError$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/cots/aidlservice/CotsReader$CotsError;", "fromValue", "value", "", "proto_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final CotsError fromValue(int value) {
                switch (value) {
                    case 0:
                        return CotsError.UNKNOWN;
                    case 1:
                        return CotsError.NONE;
                    case 2:
                        return CotsError.DISCOVERY_MISSING_KEY_CERTIFICATES;
                    case 3:
                        return CotsError.DISCOVERY_UNSUPPORTED_ANDROID_VERSION;
                    case 4:
                        return CotsError.DISCOVERY_MISSING_NFC_READER;
                    case 5:
                        return CotsError.DISCOVERY_UNTRUSTED_HARDWARE;
                    case 6:
                        return CotsError.ATTESTATION_DEVICE_TAMPERED;
                    case 7:
                        return CotsError.ATTESTATION_API_CONNECTION_ERROR;
                    case 8:
                        return CotsError.ATTESTATION_SERVER_ERROR;
                    case 9:
                        return CotsError.ATTESTATION_API_RESPONSE_DECODING;
                    case 10:
                        return CotsError.UNEXPECTED_ERROR;
                    case 11:
                    default:
                        return null;
                    case 12:
                        return CotsError.DISCOVERY_DEBUG_NOT_ALLOWED;
                    case 13:
                        return CotsError.DISCOVERY_UNTRUSTED_SOFTWARE;
                }
            }
        }
    }
}
