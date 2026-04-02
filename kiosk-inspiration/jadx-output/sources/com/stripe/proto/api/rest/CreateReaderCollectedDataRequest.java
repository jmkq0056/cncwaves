package com.stripe.proto.api.rest;

import androidx.core.graphics.TypefaceCompat;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.api.rest.CreateReaderCollectedDataRequest;
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

/* JADX INFO: compiled from: CreateReaderCollectedDataRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0013\u0014\u0015B%\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ&\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0004H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest$Builder;", "type", "", "magstripe", "Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest$MagstripeCollectedData;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest$MagstripeCollectedData;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "MagstripeCollectedData", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CreateReaderCollectedDataRequest extends Message<CreateReaderCollectedDataRequest, Builder> {
    public static final ProtoAdapter<CreateReaderCollectedDataRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.api.rest.CreateReaderCollectedDataRequest$MagstripeCollectedData#ADAPTER", oneofName = "type_specific_fields", schemaIndex = 1, tag = 2)
    public final MagstripeCollectedData magstripe;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String type;

    public CreateReaderCollectedDataRequest() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ CreateReaderCollectedDataRequest(String str, MagstripeCollectedData magstripeCollectedData, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? null : magstripeCollectedData, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateReaderCollectedDataRequest(String type, MagstripeCollectedData magstripeCollectedData, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.type = type;
        this.magstripe = magstripeCollectedData;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.type = this.type;
        builder.magstripe = this.magstripe;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CreateReaderCollectedDataRequest)) {
            return false;
        }
        CreateReaderCollectedDataRequest createReaderCollectedDataRequest = (CreateReaderCollectedDataRequest) other;
        return Intrinsics.areEqual(unknownFields(), createReaderCollectedDataRequest.unknownFields()) && Intrinsics.areEqual(this.type, createReaderCollectedDataRequest.type) && Intrinsics.areEqual(this.magstripe, createReaderCollectedDataRequest.magstripe);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + this.type.hashCode()) * 37;
        MagstripeCollectedData magstripeCollectedData = this.magstripe;
        int iHashCode2 = iHashCode + (magstripeCollectedData != null ? magstripeCollectedData.hashCode() : 0);
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("type=" + Internal.sanitize(this.type));
        if (this.magstripe != null) {
            arrayList2.add("magstripe=" + this.magstripe);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "CreateReaderCollectedDataRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CreateReaderCollectedDataRequest copy$default(CreateReaderCollectedDataRequest createReaderCollectedDataRequest, String str, MagstripeCollectedData magstripeCollectedData, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = createReaderCollectedDataRequest.type;
        }
        if ((i & 2) != 0) {
            magstripeCollectedData = createReaderCollectedDataRequest.magstripe;
        }
        if ((i & 4) != 0) {
            byteString = createReaderCollectedDataRequest.unknownFields();
        }
        return createReaderCollectedDataRequest.copy(str, magstripeCollectedData, byteString);
    }

    public final CreateReaderCollectedDataRequest copy(String type, MagstripeCollectedData magstripe, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CreateReaderCollectedDataRequest(type, magstripe, unknownFields);
    }

    /* JADX INFO: compiled from: CreateReaderCollectedDataRequest.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest;", "()V", "magstripe", "Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest$MagstripeCollectedData;", "type", "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CreateReaderCollectedDataRequest, Builder> {
        public MagstripeCollectedData magstripe;
        public String type = "";

        public final Builder type(String type) {
            Intrinsics.checkNotNullParameter(type, "type");
            this.type = type;
            return this;
        }

        public final Builder magstripe(MagstripeCollectedData magstripe) {
            this.magstripe = magstripe;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CreateReaderCollectedDataRequest build() {
            return new CreateReaderCollectedDataRequest(this.type, this.magstripe, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CreateReaderCollectedDataRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CreateReaderCollectedDataRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CreateReaderCollectedDataRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CreateReaderCollectedDataRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.CreateReaderCollectedDataRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CreateReaderCollectedDataRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.type, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.type);
                }
                return size + CreateReaderCollectedDataRequest.MagstripeCollectedData.ADAPTER.encodedSizeWithTag(2, value.magstripe);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CreateReaderCollectedDataRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.type, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.type);
                }
                CreateReaderCollectedDataRequest.MagstripeCollectedData.ADAPTER.encodeWithTag(writer, 2, value.magstripe);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CreateReaderCollectedDataRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                CreateReaderCollectedDataRequest.MagstripeCollectedData.ADAPTER.encodeWithTag(writer, 2, value.magstripe);
                if (Intrinsics.areEqual(value.type, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.type);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CreateReaderCollectedDataRequest redact(CreateReaderCollectedDataRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                CreateReaderCollectedDataRequest.MagstripeCollectedData magstripeCollectedData = value.magstripe;
                return CreateReaderCollectedDataRequest.copy$default(value, null, magstripeCollectedData != null ? CreateReaderCollectedDataRequest.MagstripeCollectedData.ADAPTER.redact(magstripeCollectedData) : null, ByteString.EMPTY, 1, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CreateReaderCollectedDataRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                CreateReaderCollectedDataRequest.MagstripeCollectedData magstripeCollectedDataDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CreateReaderCollectedDataRequest(strDecode, magstripeCollectedDataDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 2) {
                        magstripeCollectedDataDecode = CreateReaderCollectedDataRequest.MagstripeCollectedData.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }

    /* JADX INFO: compiled from: CreateReaderCollectedDataRequest.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ(\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0004H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest$MagstripeCollectedData;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest$MagstripeCollectedData$Builder;", "data_", "", "track_2_ksn", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class MagstripeCollectedData extends Message<MagstripeCollectedData, Builder> {
        public static final ProtoAdapter<MagstripeCollectedData> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", declaredName = "data", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 0, tag = 1)
        public final String data_;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "track2Ksn", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 1, tag = 2)
        public final String track_2_ksn;

        public MagstripeCollectedData() {
            this(null, null, null, 7, null);
        }

        public /* synthetic */ MagstripeCollectedData(String str, String str2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MagstripeCollectedData(String str, String str2, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.data_ = str;
            this.track_2_ksn = str2;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.data_ = this.data_;
            builder.track_2_ksn = this.track_2_ksn;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof MagstripeCollectedData)) {
                return false;
            }
            MagstripeCollectedData magstripeCollectedData = (MagstripeCollectedData) other;
            return Intrinsics.areEqual(unknownFields(), magstripeCollectedData.unknownFields()) && Intrinsics.areEqual(this.data_, magstripeCollectedData.data_) && Intrinsics.areEqual(this.track_2_ksn, magstripeCollectedData.track_2_ksn);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = unknownFields().hashCode() * 37;
            String str = this.data_;
            int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
            String str2 = this.track_2_ksn;
            int iHashCode3 = iHashCode2 + (str2 != null ? str2.hashCode() : 0);
            this.hashCode = iHashCode3;
            return iHashCode3;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (this.data_ != null) {
                arrayList.add("data_=██");
            }
            if (this.track_2_ksn != null) {
                arrayList.add("track_2_ksn=██");
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "MagstripeCollectedData{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ MagstripeCollectedData copy$default(MagstripeCollectedData magstripeCollectedData, String str, String str2, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = magstripeCollectedData.data_;
            }
            if ((i & 2) != 0) {
                str2 = magstripeCollectedData.track_2_ksn;
            }
            if ((i & 4) != 0) {
                byteString = magstripeCollectedData.unknownFields();
            }
            return magstripeCollectedData.copy(str, str2, byteString);
        }

        public final MagstripeCollectedData copy(String data_, String track_2_ksn, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new MagstripeCollectedData(data_, track_2_ksn, unknownFields);
        }

        /* JADX INFO: compiled from: CreateReaderCollectedDataRequest.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest$MagstripeCollectedData$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest$MagstripeCollectedData;", "()V", "data_", "", "track_2_ksn", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<MagstripeCollectedData, Builder> {
            public String data_;
            public String track_2_ksn;

            public final Builder data_(String data_) {
                this.data_ = data_;
                return this;
            }

            public final Builder track_2_ksn(String track_2_ksn) {
                this.track_2_ksn = track_2_ksn;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public MagstripeCollectedData build() {
                return new MagstripeCollectedData(this.data_, this.track_2_ksn, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: CreateReaderCollectedDataRequest.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest$MagstripeCollectedData$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest$MagstripeCollectedData;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest$MagstripeCollectedData$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ MagstripeCollectedData build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(MagstripeCollectedData.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<MagstripeCollectedData>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.CreateReaderCollectedDataRequest$MagstripeCollectedData$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(CreateReaderCollectedDataRequest.MagstripeCollectedData value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.data_ != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.data_);
                    }
                    return value.track_2_ksn != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.track_2_ksn) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, CreateReaderCollectedDataRequest.MagstripeCollectedData value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.data_ != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.data_);
                    }
                    if (value.track_2_ksn != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.track_2_ksn);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, CreateReaderCollectedDataRequest.MagstripeCollectedData value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.track_2_ksn != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.track_2_ksn);
                    }
                    if (value.data_ != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.data_);
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public CreateReaderCollectedDataRequest.MagstripeCollectedData redact(CreateReaderCollectedDataRequest.MagstripeCollectedData value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.copy(null, null, ByteString.EMPTY);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public CreateReaderCollectedDataRequest.MagstripeCollectedData decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = null;
                    String strDecode2 = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new CreateReaderCollectedDataRequest.MagstripeCollectedData(strDecode, strDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                        } else if (iNextTag == 2) {
                            strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }
}
