package com.stripe.proto.api.rest;

import com.google.common.net.HttpHeaders;
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
import com.stripe.proto.api.rest.UploadFileRequest;
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

/* JADX INFO: compiled from: UploadFileRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0014\u0015\u0016B%\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ&\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/api/rest/UploadFileRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/UploadFileRequest$Builder;", "file_", "Lcom/stripe/proto/api/rest/MultiPartFormData;", "purpose", "Lcom/stripe/proto/api/rest/UploadFileRequest$Purpose;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/rest/MultiPartFormData;Lcom/stripe/proto/api/rest/UploadFileRequest$Purpose;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", HttpHeaders.PURPOSE, "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UploadFileRequest extends Message<UploadFileRequest, Builder> {
    public static final ProtoAdapter<UploadFileRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.api.rest.MultiPartFormData#ADAPTER", declaredName = "file", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final MultiPartFormData file_;

    @WireField(adapter = "com.stripe.proto.api.rest.UploadFileRequest$Purpose#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final Purpose purpose;

    public UploadFileRequest() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ UploadFileRequest(MultiPartFormData multiPartFormData, Purpose purpose, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : multiPartFormData, (i & 2) != 0 ? Purpose.customer_signature : purpose, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UploadFileRequest(MultiPartFormData multiPartFormData, Purpose purpose, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.file_ = multiPartFormData;
        this.purpose = purpose;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.file_ = this.file_;
        builder.purpose = this.purpose;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof UploadFileRequest)) {
            return false;
        }
        UploadFileRequest uploadFileRequest = (UploadFileRequest) other;
        return Intrinsics.areEqual(unknownFields(), uploadFileRequest.unknownFields()) && Intrinsics.areEqual(this.file_, uploadFileRequest.file_) && this.purpose == uploadFileRequest.purpose;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        MultiPartFormData multiPartFormData = this.file_;
        int iHashCode2 = ((iHashCode + (multiPartFormData != null ? multiPartFormData.hashCode() : 0)) * 37) + this.purpose.hashCode();
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.file_ != null) {
            arrayList.add("file_=" + this.file_);
        }
        arrayList.add("purpose=" + this.purpose);
        return CollectionsKt.joinToString$default(arrayList, ", ", "UploadFileRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ UploadFileRequest copy$default(UploadFileRequest uploadFileRequest, MultiPartFormData multiPartFormData, Purpose purpose, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            multiPartFormData = uploadFileRequest.file_;
        }
        if ((i & 2) != 0) {
            purpose = uploadFileRequest.purpose;
        }
        if ((i & 4) != 0) {
            byteString = uploadFileRequest.unknownFields();
        }
        return uploadFileRequest.copy(multiPartFormData, purpose, byteString);
    }

    public final UploadFileRequest copy(MultiPartFormData file_, Purpose purpose, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new UploadFileRequest(file_, purpose, unknownFields);
    }

    /* JADX INFO: compiled from: UploadFileRequest.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/rest/UploadFileRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/UploadFileRequest;", "()V", "file_", "Lcom/stripe/proto/api/rest/MultiPartFormData;", "purpose", "Lcom/stripe/proto/api/rest/UploadFileRequest$Purpose;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<UploadFileRequest, Builder> {
        public MultiPartFormData file_;
        public Purpose purpose = Purpose.customer_signature;

        public final Builder file_(MultiPartFormData file_) {
            this.file_ = file_;
            return this;
        }

        public final Builder purpose(Purpose purpose) {
            Intrinsics.checkNotNullParameter(purpose, "purpose");
            this.purpose = purpose;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public UploadFileRequest build() {
            return new UploadFileRequest(this.file_, this.purpose, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: UploadFileRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/UploadFileRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/UploadFileRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/UploadFileRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ UploadFileRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(UploadFileRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<UploadFileRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.UploadFileRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(UploadFileRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.file_ != null) {
                    size += MultiPartFormData.ADAPTER.encodedSizeWithTag(1, value.file_);
                }
                return value.purpose != UploadFileRequest.Purpose.customer_signature ? size + UploadFileRequest.Purpose.ADAPTER.encodedSizeWithTag(2, value.purpose) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, UploadFileRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.file_ != null) {
                    MultiPartFormData.ADAPTER.encodeWithTag(writer, 1, value.file_);
                }
                if (value.purpose != UploadFileRequest.Purpose.customer_signature) {
                    UploadFileRequest.Purpose.ADAPTER.encodeWithTag(writer, 2, value.purpose);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, UploadFileRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.purpose != UploadFileRequest.Purpose.customer_signature) {
                    UploadFileRequest.Purpose.ADAPTER.encodeWithTag(writer, 2, value.purpose);
                }
                if (value.file_ != null) {
                    MultiPartFormData.ADAPTER.encodeWithTag(writer, 1, value.file_);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public UploadFileRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                UploadFileRequest.Purpose purposeDecode = UploadFileRequest.Purpose.customer_signature;
                long jBeginMessage = reader.beginMessage();
                MultiPartFormData multiPartFormDataDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new UploadFileRequest(multiPartFormDataDecode, purposeDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        multiPartFormDataDecode = MultiPartFormData.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        try {
                            purposeDecode = UploadFileRequest.Purpose.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public UploadFileRequest redact(UploadFileRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                MultiPartFormData multiPartFormData = value.file_;
                return UploadFileRequest.copy$default(value, multiPartFormData != null ? MultiPartFormData.ADAPTER.redact(multiPartFormData) : null, null, ByteString.EMPTY, 2, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: UploadFileRequest.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u0000 \t2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\tB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\b¨\u0006\n"}, d2 = {"Lcom/stripe/proto/api/rest/UploadFileRequest$Purpose;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "customer_signature", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Purpose implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Purpose[] $VALUES;
        public static final ProtoAdapter<Purpose> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final Purpose customer_signature;
        private final int value;

        private static final /* synthetic */ Purpose[] $values() {
            return new Purpose[]{customer_signature};
        }

        @JvmStatic
        public static final Purpose fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<Purpose> getEntries() {
            return $ENTRIES;
        }

        public static Purpose valueOf(String str) {
            return (Purpose) Enum.valueOf(Purpose.class, str);
        }

        public static Purpose[] values() {
            return (Purpose[]) $VALUES.clone();
        }

        private Purpose(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final Purpose purpose = new Purpose("customer_signature", 0, 0);
            customer_signature = purpose;
            Purpose[] purposeArr$values = $values();
            $VALUES = purposeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(purposeArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Purpose.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<Purpose>(orCreateKotlinClass, syntax, purpose) { // from class: com.stripe.proto.api.rest.UploadFileRequest$Purpose$Companion$ADAPTER$1
                {
                    UploadFileRequest.Purpose purpose2 = purpose;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public UploadFileRequest.Purpose fromValue(int value) {
                    return UploadFileRequest.Purpose.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: UploadFileRequest.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/rest/UploadFileRequest$Purpose$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/UploadFileRequest$Purpose;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final Purpose fromValue(int value) {
                if (value == 0) {
                    return Purpose.customer_signature;
                }
                return null;
            }
        }
    }
}
