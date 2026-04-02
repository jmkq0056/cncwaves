package com.stripe.proto.api.rest;

import com.google.android.gms.common.internal.ImagesContract;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import io.ktor.http.ContentDisposition;
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

/* JADX INFO: compiled from: UploadFileResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001a2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0019\u001aBW\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ]\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\u0010J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0002H\u0016J\b\u0010\u0018\u001a\u00020\u0004H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u000eR\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/stripe/proto/api/rest/UploadFileResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/rest/UploadFileResponse$Builder;", OfflineStorageConstantsKt.ID, "", ContentDisposition.Parameters.FileName, "purpose", "size", "", "type", ImagesContract.URL, "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "Ljava/lang/Long;", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/api/rest/UploadFileResponse;", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UploadFileResponse extends Message<UploadFileResponse, Builder> {
    public static final ProtoAdapter<UploadFileResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 1, tag = 2)
    public final String filename;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 0, tag = 1)
    public final String id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 2, tag = 3)
    public final String purpose;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", schemaIndex = 3, tag = 4)
    public final Long size;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 4, tag = 5)
    public final String type;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 5, tag = 6)
    public final String url;

    public UploadFileResponse() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public /* synthetic */ UploadFileResponse(String str, String str2, String str3, Long l, String str4, String str5, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : l, (i & 16) != 0 ? null : str4, (i & 32) != 0 ? null : str5, (i & 64) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UploadFileResponse(String str, String str2, String str3, Long l, String str4, String str5, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.id = str;
        this.filename = str2;
        this.purpose = str3;
        this.size = l;
        this.type = str4;
        this.url = str5;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.id = this.id;
        builder.filename = this.filename;
        builder.purpose = this.purpose;
        builder.size = this.size;
        builder.type = this.type;
        builder.url = this.url;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof UploadFileResponse)) {
            return false;
        }
        UploadFileResponse uploadFileResponse = (UploadFileResponse) other;
        return Intrinsics.areEqual(unknownFields(), uploadFileResponse.unknownFields()) && Intrinsics.areEqual(this.id, uploadFileResponse.id) && Intrinsics.areEqual(this.filename, uploadFileResponse.filename) && Intrinsics.areEqual(this.purpose, uploadFileResponse.purpose) && Intrinsics.areEqual(this.size, uploadFileResponse.size) && Intrinsics.areEqual(this.type, uploadFileResponse.type) && Intrinsics.areEqual(this.url, uploadFileResponse.url);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.id;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.filename;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
        String str3 = this.purpose;
        int iHashCode4 = (iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 37;
        Long l = this.size;
        int iHashCode5 = (iHashCode4 + (l != null ? l.hashCode() : 0)) * 37;
        String str4 = this.type;
        int iHashCode6 = (iHashCode5 + (str4 != null ? str4.hashCode() : 0)) * 37;
        String str5 = this.url;
        int iHashCode7 = iHashCode6 + (str5 != null ? str5.hashCode() : 0);
        this.hashCode = iHashCode7;
        return iHashCode7;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.id != null) {
            arrayList.add("id=" + this.id);
        }
        if (this.filename != null) {
            arrayList.add("filename=" + this.filename);
        }
        if (this.purpose != null) {
            arrayList.add("purpose=" + this.purpose);
        }
        if (this.size != null) {
            arrayList.add("size=" + this.size);
        }
        if (this.type != null) {
            arrayList.add("type=" + this.type);
        }
        if (this.url != null) {
            arrayList.add("url=" + this.url);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "UploadFileResponse{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ UploadFileResponse copy$default(UploadFileResponse uploadFileResponse, String str, String str2, String str3, Long l, String str4, String str5, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = uploadFileResponse.id;
        }
        if ((i & 2) != 0) {
            str2 = uploadFileResponse.filename;
        }
        if ((i & 4) != 0) {
            str3 = uploadFileResponse.purpose;
        }
        if ((i & 8) != 0) {
            l = uploadFileResponse.size;
        }
        if ((i & 16) != 0) {
            str4 = uploadFileResponse.type;
        }
        if ((i & 32) != 0) {
            str5 = uploadFileResponse.url;
        }
        if ((i & 64) != 0) {
            byteString = uploadFileResponse.unknownFields();
        }
        String str6 = str5;
        ByteString byteString2 = byteString;
        String str7 = str4;
        String str8 = str3;
        return uploadFileResponse.copy(str, str2, str8, l, str7, str6, byteString2);
    }

    public final UploadFileResponse copy(String id, String filename, String purpose, Long size, String type, String url, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new UploadFileResponse(id, filename, purpose, size, type, url, unknownFields);
    }

    /* JADX INFO: compiled from: UploadFileResponse.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0015\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\u000eJ\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\nR\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/proto/api/rest/UploadFileResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/rest/UploadFileResponse;", "()V", ContentDisposition.Parameters.FileName, "", OfflineStorageConstantsKt.ID, "purpose", "size", "", "Ljava/lang/Long;", "type", ImagesContract.URL, "build", "(Ljava/lang/Long;)Lcom/stripe/proto/api/rest/UploadFileResponse$Builder;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<UploadFileResponse, Builder> {
        public String filename;
        public String id;
        public String purpose;
        public Long size;
        public String type;
        public String url;

        public final Builder id(String id) {
            this.id = id;
            return this;
        }

        public final Builder filename(String filename) {
            this.filename = filename;
            return this;
        }

        public final Builder purpose(String purpose) {
            this.purpose = purpose;
            return this;
        }

        public final Builder size(Long size) {
            this.size = size;
            return this;
        }

        public final Builder type(String type) {
            this.type = type;
            return this;
        }

        public final Builder url(String url) {
            this.url = url;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public UploadFileResponse build() {
            return new UploadFileResponse(this.id, this.filename, this.purpose, this.size, this.type, this.url, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: UploadFileResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/rest/UploadFileResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/UploadFileResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/rest/UploadFileResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ UploadFileResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(UploadFileResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<UploadFileResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.rest.UploadFileResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(UploadFileResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.id != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.id);
                }
                if (value.filename != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.filename);
                }
                if (value.purpose != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.purpose);
                }
                if (value.size != null) {
                    size += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(4, value.size);
                }
                if (value.type != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(5, value.type);
                }
                return value.url != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(6, value.url) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, UploadFileResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.id);
                }
                if (value.filename != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.filename);
                }
                if (value.purpose != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.purpose);
                }
                if (value.size != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 4, value.size);
                }
                if (value.type != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.type);
                }
                if (value.url != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 6, value.url);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, UploadFileResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.url != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 6, value.url);
                }
                if (value.type != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.type);
                }
                if (value.size != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 4, value.size);
                }
                if (value.purpose != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.purpose);
                }
                if (value.filename != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.filename);
                }
                if (value.id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.id);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public UploadFileResponse redact(UploadFileResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                String str = value.id;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                String str2 = value.filename;
                String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                String str3 = value.purpose;
                String strRedact3 = str3 != null ? ProtoAdapter.STRING_VALUE.redact(str3) : null;
                Long l = value.size;
                Long lRedact = l != null ? ProtoAdapter.INT64_VALUE.redact(l) : null;
                String str4 = value.type;
                String strRedact4 = str4 != null ? ProtoAdapter.STRING_VALUE.redact(str4) : null;
                String str5 = value.url;
                return value.copy(strRedact, strRedact2, strRedact3, lRedact, strRedact4, str5 != null ? ProtoAdapter.STRING_VALUE.redact(str5) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public UploadFileResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = null;
                String strDecode2 = null;
                String strDecode3 = null;
                Long lDecode = null;
                String strDecode4 = null;
                String strDecode5 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 2:
                                strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 3:
                                strDecode3 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 4:
                                lDecode = ProtoAdapter.INT64_VALUE.decode(reader);
                                break;
                            case 5:
                                strDecode4 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 6:
                                strDecode5 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new UploadFileResponse(strDecode, strDecode2, strDecode3, lDecode, strDecode4, strDecode5, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
