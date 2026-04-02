package com.stripe.proto.terminal.terminal.pub.message.common;

import androidx.core.provider.FontsContractCompat;
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
import com.stripe.proto.terminal.terminal.pub.message.common.ImageRef;
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

/* JADX INFO: compiled from: ImageRef.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0016\u0017\u0018BA\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJB\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000bJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\b\u0010\u0015\u001a\u00020\u0004H\u0016R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$Builder;", "image_id", "", "image_url", "image_color", FontsContractCompat.Columns.FILE_ID, "image_format", "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "ImageFormat", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ImageRef extends Message<ImageRef, Builder> {
    public static final ProtoAdapter<ImageRef> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "fileId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String file_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "imageColor", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String image_color;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.common.ImageRef$ImageFormat#ADAPTER", jsonName = "imageFormat", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final ImageFormat image_format;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "imageId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String image_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "imageUrl", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String image_url;

    public ImageRef() {
        this(null, null, null, null, null, null, 63, null);
    }

    public /* synthetic */ ImageRef(String str, String str2, String str3, String str4, ImageFormat imageFormat, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? "" : str4, (i & 16) != 0 ? ImageFormat.IMAGE_FORMAT_INVALID : imageFormat, (i & 32) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImageRef(String image_id, String image_url, String image_color, String file_id, ImageFormat image_format, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(image_id, "image_id");
        Intrinsics.checkNotNullParameter(image_url, "image_url");
        Intrinsics.checkNotNullParameter(image_color, "image_color");
        Intrinsics.checkNotNullParameter(file_id, "file_id");
        Intrinsics.checkNotNullParameter(image_format, "image_format");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.image_id = image_id;
        this.image_url = image_url;
        this.image_color = image_color;
        this.file_id = file_id;
        this.image_format = image_format;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.image_id = this.image_id;
        builder.image_url = this.image_url;
        builder.image_color = this.image_color;
        builder.file_id = this.file_id;
        builder.image_format = this.image_format;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ImageRef)) {
            return false;
        }
        ImageRef imageRef = (ImageRef) other;
        return Intrinsics.areEqual(unknownFields(), imageRef.unknownFields()) && Intrinsics.areEqual(this.image_id, imageRef.image_id) && Intrinsics.areEqual(this.image_url, imageRef.image_url) && Intrinsics.areEqual(this.image_color, imageRef.image_color) && Intrinsics.areEqual(this.file_id, imageRef.file_id) && this.image_format == imageRef.image_format;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((((unknownFields().hashCode() * 37) + this.image_id.hashCode()) * 37) + this.image_url.hashCode()) * 37) + this.image_color.hashCode()) * 37) + this.file_id.hashCode()) * 37) + this.image_format.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("image_id=" + Internal.sanitize(this.image_id));
        arrayList2.add("image_url=" + Internal.sanitize(this.image_url));
        arrayList2.add("image_color=" + Internal.sanitize(this.image_color));
        arrayList2.add("file_id=" + Internal.sanitize(this.file_id));
        arrayList2.add("image_format=" + this.image_format);
        return CollectionsKt.joinToString$default(arrayList, ", ", "ImageRef{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ImageRef copy$default(ImageRef imageRef, String str, String str2, String str3, String str4, ImageFormat imageFormat, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = imageRef.image_id;
        }
        if ((i & 2) != 0) {
            str2 = imageRef.image_url;
        }
        if ((i & 4) != 0) {
            str3 = imageRef.image_color;
        }
        if ((i & 8) != 0) {
            str4 = imageRef.file_id;
        }
        if ((i & 16) != 0) {
            imageFormat = imageRef.image_format;
        }
        if ((i & 32) != 0) {
            byteString = imageRef.unknownFields();
        }
        ImageFormat imageFormat2 = imageFormat;
        ByteString byteString2 = byteString;
        return imageRef.copy(str, str2, str3, str4, imageFormat2, byteString2);
    }

    public final ImageRef copy(String image_id, String image_url, String image_color, String file_id, ImageFormat image_format, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(image_id, "image_id");
        Intrinsics.checkNotNullParameter(image_url, "image_url");
        Intrinsics.checkNotNullParameter(image_color, "image_color");
        Intrinsics.checkNotNullParameter(file_id, "file_id");
        Intrinsics.checkNotNullParameter(image_format, "image_format");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ImageRef(image_id, image_url, image_color, file_id, image_format, unknownFields);
    }

    /* JADX INFO: compiled from: ImageRef.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;", "()V", FontsContractCompat.Columns.FILE_ID, "", "image_color", "image_format", "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;", "image_id", "image_url", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ImageRef, Builder> {
        public String image_id = "";
        public String image_url = "";
        public String image_color = "";
        public String file_id = "";
        public ImageFormat image_format = ImageFormat.IMAGE_FORMAT_INVALID;

        public final Builder image_id(String image_id) {
            Intrinsics.checkNotNullParameter(image_id, "image_id");
            this.image_id = image_id;
            return this;
        }

        public final Builder image_url(String image_url) {
            Intrinsics.checkNotNullParameter(image_url, "image_url");
            this.image_url = image_url;
            return this;
        }

        public final Builder image_color(String image_color) {
            Intrinsics.checkNotNullParameter(image_color, "image_color");
            this.image_color = image_color;
            return this;
        }

        public final Builder file_id(String file_id) {
            Intrinsics.checkNotNullParameter(file_id, "file_id");
            this.file_id = file_id;
            return this;
        }

        public final Builder image_format(ImageFormat image_format) {
            Intrinsics.checkNotNullParameter(image_format, "image_format");
            this.image_format = image_format;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ImageRef build() {
            return new ImageRef(this.image_id, this.image_url, this.image_color, this.file_id, this.image_format, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ImageRef.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ImageRef build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ImageRef.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ImageRef>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.terminal.pub.message.common.ImageRef$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ImageRef value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.image_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.image_id);
                }
                if (!Intrinsics.areEqual(value.image_url, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.image_url);
                }
                if (!Intrinsics.areEqual(value.image_color, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.image_color);
                }
                if (!Intrinsics.areEqual(value.file_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(4, value.file_id);
                }
                return value.image_format != ImageRef.ImageFormat.IMAGE_FORMAT_INVALID ? size + ImageRef.ImageFormat.ADAPTER.encodedSizeWithTag(5, value.image_format) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ImageRef value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.image_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.image_id);
                }
                if (!Intrinsics.areEqual(value.image_url, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.image_url);
                }
                if (!Intrinsics.areEqual(value.image_color, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.image_color);
                }
                if (!Intrinsics.areEqual(value.file_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.file_id);
                }
                if (value.image_format != ImageRef.ImageFormat.IMAGE_FORMAT_INVALID) {
                    ImageRef.ImageFormat.ADAPTER.encodeWithTag(writer, 5, value.image_format);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ImageRef value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.image_format != ImageRef.ImageFormat.IMAGE_FORMAT_INVALID) {
                    ImageRef.ImageFormat.ADAPTER.encodeWithTag(writer, 5, value.image_format);
                }
                if (!Intrinsics.areEqual(value.file_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.file_id);
                }
                if (!Intrinsics.areEqual(value.image_color, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.image_color);
                }
                if (!Intrinsics.areEqual(value.image_url, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.image_url);
                }
                if (Intrinsics.areEqual(value.image_id, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.image_id);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ImageRef decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ImageRef.ImageFormat imageFormatDecode = ImageRef.ImageFormat.IMAGE_FORMAT_INVALID;
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = strDecode;
                String strDecode3 = strDecode2;
                String strDecode4 = strDecode3;
                while (true) {
                    ImageRef.ImageFormat imageFormat = imageFormatDecode;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new ImageRef(strDecode, strDecode2, strDecode3, strDecode4, imageFormat, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 2) {
                            strDecode2 = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 3) {
                            strDecode3 = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 4) {
                            strDecode4 = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 5) {
                            try {
                                imageFormatDecode = ImageRef.ImageFormat.ADAPTER.decode(reader);
                                break;
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                            }
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ImageRef redact(ImageRef value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return ImageRef.copy$default(value, null, null, null, null, null, ByteString.EMPTY, 31, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: ImageRef.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u0000 \r2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\rB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "IMAGE_FORMAT_INVALID", "PNG", "JPG", "GIF", "WEBP", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ImageFormat implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ImageFormat[] $VALUES;
        public static final ProtoAdapter<ImageFormat> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final ImageFormat GIF;
        public static final ImageFormat IMAGE_FORMAT_INVALID;
        public static final ImageFormat JPG;
        public static final ImageFormat PNG;
        public static final ImageFormat WEBP;
        private final int value;

        private static final /* synthetic */ ImageFormat[] $values() {
            return new ImageFormat[]{IMAGE_FORMAT_INVALID, PNG, JPG, GIF, WEBP};
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
            GIF = new ImageFormat("GIF", 3, 3);
            WEBP = new ImageFormat("WEBP", 4, 4);
            ImageFormat[] imageFormatArr$values = $values();
            $VALUES = imageFormatArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(imageFormatArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ImageFormat.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<ImageFormat>(orCreateKotlinClass, syntax, imageFormat) { // from class: com.stripe.proto.terminal.terminal.pub.message.common.ImageRef$ImageFormat$Companion$ADAPTER$1
                {
                    ImageRef.ImageFormat imageFormat2 = imageFormat;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public ImageRef.ImageFormat fromValue(int value) {
                    return ImageRef.ImageFormat.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: ImageRef.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef$ImageFormat;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
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
                    return ImageFormat.GIF;
                }
                if (value != 4) {
                    return null;
                }
                return ImageFormat.WEBP;
            }
        }
    }
}
