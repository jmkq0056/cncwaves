package com.stripe.proto.terminal.terminal.pub.message.common;

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
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.model.common.SignedAssetPb;
import com.stripe.proto.terminal.terminal.pub.message.common.ImagePb;
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

/* JADX INFO: compiled from: ImagePb.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0016\u0017\u0018B9\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0006¢\u0006\u0002\u0010\fJ:\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\u0006J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\b\u0010\u0015\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$Builder;", OfflineStorageConstantsKt.ID, "", "image_data", "Lokio/ByteString;", "image_format", "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$ImageFormat;", "image_hash", "Lcom/stripe/proto/model/common/SignedAssetPb;", "unknownFields", "(Ljava/lang/String;Lokio/ByteString;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$ImageFormat;Lcom/stripe/proto/model/common/SignedAssetPb;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "ImageFormat", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ImagePb extends Message<ImagePb, Builder> {
    public static final ProtoAdapter<ImagePb> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BYTES", jsonName = "imageData", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final ByteString image_data;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.common.ImagePb$ImageFormat#ADAPTER", jsonName = "imageFormat", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final ImageFormat image_format;

    @WireField(adapter = "com.stripe.proto.model.common.SignedAssetPb#ADAPTER", jsonName = "imageHash", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final SignedAssetPb image_hash;

    public ImagePb() {
        this(null, null, null, null, null, 31, null);
    }

    public /* synthetic */ ImagePb(String str, ByteString byteString, ImageFormat imageFormat, SignedAssetPb signedAssetPb, ByteString byteString2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? ByteString.EMPTY : byteString, (i & 4) != 0 ? ImageFormat.IMAGE_FORMAT_INVALID : imageFormat, (i & 8) != 0 ? null : signedAssetPb, (i & 16) != 0 ? ByteString.EMPTY : byteString2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImagePb(String id, ByteString image_data, ImageFormat image_format, SignedAssetPb signedAssetPb, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(image_data, "image_data");
        Intrinsics.checkNotNullParameter(image_format, "image_format");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.id = id;
        this.image_data = image_data;
        this.image_format = image_format;
        this.image_hash = signedAssetPb;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.id = this.id;
        builder.image_data = this.image_data;
        builder.image_format = this.image_format;
        builder.image_hash = this.image_hash;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ImagePb)) {
            return false;
        }
        ImagePb imagePb = (ImagePb) other;
        return Intrinsics.areEqual(unknownFields(), imagePb.unknownFields()) && Intrinsics.areEqual(this.id, imagePb.id) && Intrinsics.areEqual(this.image_data, imagePb.image_data) && this.image_format == imagePb.image_format && Intrinsics.areEqual(this.image_hash, imagePb.image_hash);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((unknownFields().hashCode() * 37) + this.id.hashCode()) * 37) + this.image_data.hashCode()) * 37) + this.image_format.hashCode()) * 37;
        SignedAssetPb signedAssetPb = this.image_hash;
        int iHashCode2 = iHashCode + (signedAssetPb != null ? signedAssetPb.hashCode() : 0);
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("id=" + Internal.sanitize(this.id));
        arrayList2.add("image_data=" + this.image_data);
        arrayList2.add("image_format=" + this.image_format);
        if (this.image_hash != null) {
            arrayList2.add("image_hash=" + this.image_hash);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ImagePb{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ImagePb copy$default(ImagePb imagePb, String str, ByteString byteString, ImageFormat imageFormat, SignedAssetPb signedAssetPb, ByteString byteString2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = imagePb.id;
        }
        if ((i & 2) != 0) {
            byteString = imagePb.image_data;
        }
        if ((i & 4) != 0) {
            imageFormat = imagePb.image_format;
        }
        if ((i & 8) != 0) {
            signedAssetPb = imagePb.image_hash;
        }
        if ((i & 16) != 0) {
            byteString2 = imagePb.unknownFields();
        }
        ByteString byteString3 = byteString2;
        ImageFormat imageFormat2 = imageFormat;
        return imagePb.copy(str, byteString, imageFormat2, signedAssetPb, byteString3);
    }

    public final ImagePb copy(String id, ByteString image_data, ImageFormat image_format, SignedAssetPb image_hash, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(image_data, "image_data");
        Intrinsics.checkNotNullParameter(image_format, "image_format");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ImagePb(id, image_data, image_format, image_hash, unknownFields);
    }

    /* JADX INFO: compiled from: ImagePb.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\f\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;", "()V", OfflineStorageConstantsKt.ID, "", "image_data", "Lokio/ByteString;", "image_format", "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$ImageFormat;", "image_hash", "Lcom/stripe/proto/model/common/SignedAssetPb;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ImagePb, Builder> {
        public String id = "";
        public ByteString image_data = ByteString.EMPTY;
        public ImageFormat image_format = ImageFormat.IMAGE_FORMAT_INVALID;
        public SignedAssetPb image_hash;

        public final Builder id(String id) {
            Intrinsics.checkNotNullParameter(id, "id");
            this.id = id;
            return this;
        }

        public final Builder image_data(ByteString image_data) {
            Intrinsics.checkNotNullParameter(image_data, "image_data");
            this.image_data = image_data;
            return this;
        }

        public final Builder image_format(ImageFormat image_format) {
            Intrinsics.checkNotNullParameter(image_format, "image_format");
            this.image_format = image_format;
            return this;
        }

        public final Builder image_hash(SignedAssetPb image_hash) {
            this.image_hash = image_hash;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ImagePb build() {
            return new ImagePb(this.id, this.image_data, this.image_format, this.image_hash, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ImagePb.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ImagePb build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ImagePb.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ImagePb>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.terminal.pub.message.common.ImagePb$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ImagePb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.id);
                }
                if (!Intrinsics.areEqual(value.image_data, ByteString.EMPTY)) {
                    size += ProtoAdapter.BYTES.encodedSizeWithTag(2, value.image_data);
                }
                if (value.image_format != ImagePb.ImageFormat.IMAGE_FORMAT_INVALID) {
                    size += ImagePb.ImageFormat.ADAPTER.encodedSizeWithTag(3, value.image_format);
                }
                return value.image_hash != null ? size + SignedAssetPb.ADAPTER.encodedSizeWithTag(4, value.image_hash) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ImagePb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.id);
                }
                if (!Intrinsics.areEqual(value.image_data, ByteString.EMPTY)) {
                    ProtoAdapter.BYTES.encodeWithTag(writer, 2, value.image_data);
                }
                if (value.image_format != ImagePb.ImageFormat.IMAGE_FORMAT_INVALID) {
                    ImagePb.ImageFormat.ADAPTER.encodeWithTag(writer, 3, value.image_format);
                }
                if (value.image_hash != null) {
                    SignedAssetPb.ADAPTER.encodeWithTag(writer, 4, value.image_hash);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ImagePb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.image_hash != null) {
                    SignedAssetPb.ADAPTER.encodeWithTag(writer, 4, value.image_hash);
                }
                if (value.image_format != ImagePb.ImageFormat.IMAGE_FORMAT_INVALID) {
                    ImagePb.ImageFormat.ADAPTER.encodeWithTag(writer, 3, value.image_format);
                }
                if (!Intrinsics.areEqual(value.image_data, ByteString.EMPTY)) {
                    ProtoAdapter.BYTES.encodeWithTag(writer, 2, value.image_data);
                }
                if (Intrinsics.areEqual(value.id, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.id);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ImagePb decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ByteString byteStringDecode = ByteString.EMPTY;
                ImagePb.ImageFormat imageFormat = ImagePb.ImageFormat.IMAGE_FORMAT_INVALID;
                long jBeginMessage = reader.beginMessage();
                SignedAssetPb signedAssetPbDecode = null;
                String strDecode = "";
                ImagePb.ImageFormat imageFormatDecode = imageFormat;
                while (true) {
                    ByteString byteString = byteStringDecode;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new ImagePb(strDecode, byteString, imageFormatDecode, signedAssetPbDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag != 2) {
                            if (iNextTag == 3) {
                                try {
                                    imageFormatDecode = ImagePb.ImageFormat.ADAPTER.decode(reader);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                }
                            } else if (iNextTag == 4) {
                                signedAssetPbDecode = SignedAssetPb.ADAPTER.decode(reader);
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }
                    byteStringDecode = ProtoAdapter.BYTES.decode(reader);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ImagePb redact(ImagePb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                SignedAssetPb signedAssetPb = value.image_hash;
                return ImagePb.copy$default(value, null, null, null, signedAssetPb != null ? SignedAssetPb.ADAPTER.redact(signedAssetPb) : null, ByteString.EMPTY, 7, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: ImagePb.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u0000 \r2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\rB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$ImageFormat;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "IMAGE_FORMAT_INVALID", "PNG", "JPG", "BMP", "GIF", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ImageFormat implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ImageFormat[] $VALUES;
        public static final ProtoAdapter<ImageFormat> ADAPTER;
        public static final ImageFormat BMP;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final ImageFormat GIF;
        public static final ImageFormat IMAGE_FORMAT_INVALID;
        public static final ImageFormat JPG;
        public static final ImageFormat PNG;
        private final int value;

        private static final /* synthetic */ ImageFormat[] $values() {
            return new ImageFormat[]{IMAGE_FORMAT_INVALID, PNG, JPG, BMP, GIF};
        }

        @JvmStatic
        public static final ImageFormat fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<ImageFormat> getEntries() {
            return $ENTRIES;
        }

        public static ImageFormat valueOf(String str) {
            return (ImageFormat) Enum.valueOf(ImageFormat.class, str);
        }

        public static ImageFormat[] values() {
            return (ImageFormat[]) $VALUES.clone();
        }

        private ImageFormat(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final ImageFormat imageFormat = new ImageFormat("IMAGE_FORMAT_INVALID", 0, 0);
            IMAGE_FORMAT_INVALID = imageFormat;
            PNG = new ImageFormat("PNG", 1, 1);
            JPG = new ImageFormat("JPG", 2, 2);
            BMP = new ImageFormat("BMP", 3, 3);
            GIF = new ImageFormat("GIF", 4, 4);
            ImageFormat[] imageFormatArr$values = $values();
            $VALUES = imageFormatArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(imageFormatArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ImageFormat.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<ImageFormat>(orCreateKotlinClass, syntax, imageFormat) { // from class: com.stripe.proto.terminal.terminal.pub.message.common.ImagePb$ImageFormat$Companion$ADAPTER$1
                {
                    ImagePb.ImageFormat imageFormat2 = imageFormat;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public ImagePb.ImageFormat fromValue(int value) {
                    return ImagePb.ImageFormat.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: ImagePb.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$ImageFormat$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb$ImageFormat;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final ImageFormat fromValue(int value) {
                if (value == 0) {
                    return ImageFormat.IMAGE_FORMAT_INVALID;
                }
                if (value == 1) {
                    return ImageFormat.PNG;
                }
                if (value == 2) {
                    return ImageFormat.JPG;
                }
                if (value == 3) {
                    return ImageFormat.BMP;
                }
                if (value != 4) {
                    return null;
                }
                return ImageFormat.GIF;
            }
        }
    }
}
