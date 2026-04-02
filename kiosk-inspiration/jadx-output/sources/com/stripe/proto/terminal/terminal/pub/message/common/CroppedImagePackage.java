package com.stripe.proto.terminal.terminal.pub.message.common;

import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.stripe.proto.terminal.terminal.pub.message.common.CroppedImagePackage;
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

/* JADX INFO: compiled from: CroppedImagePackage.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0015\u0016\u0017B3\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ4\u0010\u000b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0014H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$Builder;", "cropped_image_ref", "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;", "cropping_dimensions", "Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions;", "original_image_ref", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "RectangleDimensions", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CroppedImagePackage extends Message<CroppedImagePackage, Builder> {
    public static final ProtoAdapter<CroppedImagePackage> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.common.ImageRef#ADAPTER", jsonName = "croppedImageRef", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final ImageRef cropped_image_ref;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.common.CroppedImagePackage$RectangleDimensions#ADAPTER", jsonName = "croppingDimensions", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final RectangleDimensions cropping_dimensions;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.common.ImageRef#ADAPTER", jsonName = "originalImageRef", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final ImageRef original_image_ref;

    public CroppedImagePackage() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ CroppedImagePackage(ImageRef imageRef, RectangleDimensions rectangleDimensions, ImageRef imageRef2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : imageRef, (i & 2) != 0 ? null : rectangleDimensions, (i & 4) != 0 ? null : imageRef2, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CroppedImagePackage(ImageRef imageRef, RectangleDimensions rectangleDimensions, ImageRef imageRef2, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.cropped_image_ref = imageRef;
        this.cropping_dimensions = rectangleDimensions;
        this.original_image_ref = imageRef2;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.cropped_image_ref = this.cropped_image_ref;
        builder.cropping_dimensions = this.cropping_dimensions;
        builder.original_image_ref = this.original_image_ref;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CroppedImagePackage)) {
            return false;
        }
        CroppedImagePackage croppedImagePackage = (CroppedImagePackage) other;
        return Intrinsics.areEqual(unknownFields(), croppedImagePackage.unknownFields()) && Intrinsics.areEqual(this.cropped_image_ref, croppedImagePackage.cropped_image_ref) && Intrinsics.areEqual(this.cropping_dimensions, croppedImagePackage.cropping_dimensions) && Intrinsics.areEqual(this.original_image_ref, croppedImagePackage.original_image_ref);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        ImageRef imageRef = this.cropped_image_ref;
        int iHashCode2 = (iHashCode + (imageRef != null ? imageRef.hashCode() : 0)) * 37;
        RectangleDimensions rectangleDimensions = this.cropping_dimensions;
        int iHashCode3 = (iHashCode2 + (rectangleDimensions != null ? rectangleDimensions.hashCode() : 0)) * 37;
        ImageRef imageRef2 = this.original_image_ref;
        int iHashCode4 = iHashCode3 + (imageRef2 != null ? imageRef2.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.cropped_image_ref != null) {
            arrayList.add("cropped_image_ref=" + this.cropped_image_ref);
        }
        if (this.cropping_dimensions != null) {
            arrayList.add("cropping_dimensions=" + this.cropping_dimensions);
        }
        if (this.original_image_ref != null) {
            arrayList.add("original_image_ref=" + this.original_image_ref);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "CroppedImagePackage{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CroppedImagePackage copy$default(CroppedImagePackage croppedImagePackage, ImageRef imageRef, RectangleDimensions rectangleDimensions, ImageRef imageRef2, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            imageRef = croppedImagePackage.cropped_image_ref;
        }
        if ((i & 2) != 0) {
            rectangleDimensions = croppedImagePackage.cropping_dimensions;
        }
        if ((i & 4) != 0) {
            imageRef2 = croppedImagePackage.original_image_ref;
        }
        if ((i & 8) != 0) {
            byteString = croppedImagePackage.unknownFields();
        }
        return croppedImagePackage.copy(imageRef, rectangleDimensions, imageRef2, byteString);
    }

    public final CroppedImagePackage copy(ImageRef cropped_image_ref, RectangleDimensions cropping_dimensions, ImageRef original_image_ref, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CroppedImagePackage(cropped_image_ref, cropping_dimensions, original_image_ref, unknownFields);
    }

    /* JADX INFO: compiled from: CroppedImagePackage.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;", "()V", "cropped_image_ref", "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;", "cropping_dimensions", "Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions;", "original_image_ref", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CroppedImagePackage, Builder> {
        public ImageRef cropped_image_ref;
        public RectangleDimensions cropping_dimensions;
        public ImageRef original_image_ref;

        public final Builder cropped_image_ref(ImageRef cropped_image_ref) {
            this.cropped_image_ref = cropped_image_ref;
            return this;
        }

        public final Builder cropping_dimensions(RectangleDimensions cropping_dimensions) {
            this.cropping_dimensions = cropping_dimensions;
            return this;
        }

        public final Builder original_image_ref(ImageRef original_image_ref) {
            this.original_image_ref = original_image_ref;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CroppedImagePackage build() {
            return new CroppedImagePackage(this.cropped_image_ref, this.cropping_dimensions, this.original_image_ref, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CroppedImagePackage.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CroppedImagePackage build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CroppedImagePackage.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CroppedImagePackage>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.terminal.pub.message.common.CroppedImagePackage$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CroppedImagePackage value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.cropped_image_ref != null) {
                    size += ImageRef.ADAPTER.encodedSizeWithTag(1, value.cropped_image_ref);
                }
                if (value.cropping_dimensions != null) {
                    size += CroppedImagePackage.RectangleDimensions.ADAPTER.encodedSizeWithTag(2, value.cropping_dimensions);
                }
                return value.original_image_ref != null ? size + ImageRef.ADAPTER.encodedSizeWithTag(3, value.original_image_ref) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CroppedImagePackage value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.cropped_image_ref != null) {
                    ImageRef.ADAPTER.encodeWithTag(writer, 1, value.cropped_image_ref);
                }
                if (value.cropping_dimensions != null) {
                    CroppedImagePackage.RectangleDimensions.ADAPTER.encodeWithTag(writer, 2, value.cropping_dimensions);
                }
                if (value.original_image_ref != null) {
                    ImageRef.ADAPTER.encodeWithTag(writer, 3, value.original_image_ref);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CroppedImagePackage value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.original_image_ref != null) {
                    ImageRef.ADAPTER.encodeWithTag(writer, 3, value.original_image_ref);
                }
                if (value.cropping_dimensions != null) {
                    CroppedImagePackage.RectangleDimensions.ADAPTER.encodeWithTag(writer, 2, value.cropping_dimensions);
                }
                if (value.cropped_image_ref != null) {
                    ImageRef.ADAPTER.encodeWithTag(writer, 1, value.cropped_image_ref);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CroppedImagePackage redact(CroppedImagePackage value) {
                Intrinsics.checkNotNullParameter(value, "value");
                ImageRef imageRef = value.cropped_image_ref;
                ImageRef imageRefRedact = imageRef != null ? ImageRef.ADAPTER.redact(imageRef) : null;
                CroppedImagePackage.RectangleDimensions rectangleDimensions = value.cropping_dimensions;
                CroppedImagePackage.RectangleDimensions rectangleDimensionsRedact = rectangleDimensions != null ? CroppedImagePackage.RectangleDimensions.ADAPTER.redact(rectangleDimensions) : null;
                ImageRef imageRef2 = value.original_image_ref;
                return value.copy(imageRefRedact, rectangleDimensionsRedact, imageRef2 != null ? ImageRef.ADAPTER.redact(imageRef2) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CroppedImagePackage decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                ImageRef imageRefDecode = null;
                CroppedImagePackage.RectangleDimensions rectangleDimensionsDecode = null;
                ImageRef imageRefDecode2 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CroppedImagePackage(imageRefDecode, rectangleDimensionsDecode, imageRefDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        imageRefDecode = ImageRef.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        rectangleDimensionsDecode = CroppedImagePackage.RectangleDimensions.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        imageRefDecode2 = ImageRef.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }

    /* JADX INFO: compiled from: CroppedImagePackage.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B7\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ8\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0004H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions$Builder;", "upper_left_x", "", "upper_left_y", PrinterTextParser.ATTR_BARCODE_WIDTH, PrinterTextParser.ATTR_BARCODE_HEIGHT, "unknownFields", "Lokio/ByteString;", "(IIIILokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class RectangleDimensions extends Message<RectangleDimensions, Builder> {
        public static final ProtoAdapter<RectangleDimensions> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
        public final int height;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "upperLeftX", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final int upper_left_x;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "upperLeftY", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final int upper_left_y;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
        public final int width;

        public RectangleDimensions() {
            this(0, 0, 0, 0, null, 31, null);
        }

        public /* synthetic */ RectangleDimensions(int i, int i2, int i3, int i4, ByteString byteString, int i5, DefaultConstructorMarker defaultConstructorMarker) {
            this((i5 & 1) != 0 ? 0 : i, (i5 & 2) != 0 ? 0 : i2, (i5 & 4) != 0 ? 0 : i3, (i5 & 8) != 0 ? 0 : i4, (i5 & 16) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RectangleDimensions(int i, int i2, int i3, int i4, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.upper_left_x = i;
            this.upper_left_y = i2;
            this.width = i3;
            this.height = i4;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.upper_left_x = this.upper_left_x;
            builder.upper_left_y = this.upper_left_y;
            builder.width = this.width;
            builder.height = this.height;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof RectangleDimensions)) {
                return false;
            }
            RectangleDimensions rectangleDimensions = (RectangleDimensions) other;
            return Intrinsics.areEqual(unknownFields(), rectangleDimensions.unknownFields()) && this.upper_left_x == rectangleDimensions.upper_left_x && this.upper_left_y == rectangleDimensions.upper_left_y && this.width == rectangleDimensions.width && this.height == rectangleDimensions.height;
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((((((unknownFields().hashCode() * 37) + Integer.hashCode(this.upper_left_x)) * 37) + Integer.hashCode(this.upper_left_y)) * 37) + Integer.hashCode(this.width)) * 37) + Integer.hashCode(this.height);
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("upper_left_x=" + this.upper_left_x);
            arrayList2.add("upper_left_y=" + this.upper_left_y);
            arrayList2.add("width=" + this.width);
            arrayList2.add("height=" + this.height);
            return CollectionsKt.joinToString$default(arrayList, ", ", "RectangleDimensions{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ RectangleDimensions copy$default(RectangleDimensions rectangleDimensions, int i, int i2, int i3, int i4, ByteString byteString, int i5, Object obj) {
            if ((i5 & 1) != 0) {
                i = rectangleDimensions.upper_left_x;
            }
            if ((i5 & 2) != 0) {
                i2 = rectangleDimensions.upper_left_y;
            }
            if ((i5 & 4) != 0) {
                i3 = rectangleDimensions.width;
            }
            if ((i5 & 8) != 0) {
                i4 = rectangleDimensions.height;
            }
            if ((i5 & 16) != 0) {
                byteString = rectangleDimensions.unknownFields();
            }
            ByteString byteString2 = byteString;
            int i6 = i3;
            return rectangleDimensions.copy(i, i2, i6, i4, byteString2);
        }

        public final RectangleDimensions copy(int upper_left_x, int upper_left_y, int width, int height, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new RectangleDimensions(upper_left_x, upper_left_y, width, height, unknownFields);
        }

        /* JADX INFO: compiled from: CroppedImagePackage.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions;", "()V", PrinterTextParser.ATTR_BARCODE_HEIGHT, "", "upper_left_x", "upper_left_y", PrinterTextParser.ATTR_BARCODE_WIDTH, "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<RectangleDimensions, Builder> {
            public int height;
            public int upper_left_x;
            public int upper_left_y;
            public int width;

            public final Builder upper_left_x(int upper_left_x) {
                this.upper_left_x = upper_left_x;
                return this;
            }

            public final Builder upper_left_y(int upper_left_y) {
                this.upper_left_y = upper_left_y;
                return this;
            }

            public final Builder width(int width) {
                this.width = width;
                return this;
            }

            public final Builder height(int height) {
                this.height = height;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public RectangleDimensions build() {
                return new RectangleDimensions(this.upper_left_x, this.upper_left_y, this.width, this.height, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: CroppedImagePackage.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ RectangleDimensions build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(RectangleDimensions.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<RectangleDimensions>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.terminal.pub.message.common.CroppedImagePackage$RectangleDimensions$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(CroppedImagePackage.RectangleDimensions value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.upper_left_x != 0) {
                        size += ProtoAdapter.INT32.encodedSizeWithTag(1, Integer.valueOf(value.upper_left_x));
                    }
                    if (value.upper_left_y != 0) {
                        size += ProtoAdapter.INT32.encodedSizeWithTag(2, Integer.valueOf(value.upper_left_y));
                    }
                    if (value.width != 0) {
                        size += ProtoAdapter.INT32.encodedSizeWithTag(3, Integer.valueOf(value.width));
                    }
                    return value.height != 0 ? size + ProtoAdapter.INT32.encodedSizeWithTag(4, Integer.valueOf(value.height)) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, CroppedImagePackage.RectangleDimensions value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.upper_left_x != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 1, Integer.valueOf(value.upper_left_x));
                    }
                    if (value.upper_left_y != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 2, Integer.valueOf(value.upper_left_y));
                    }
                    if (value.width != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 3, Integer.valueOf(value.width));
                    }
                    if (value.height != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 4, Integer.valueOf(value.height));
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, CroppedImagePackage.RectangleDimensions value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.height != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 4, Integer.valueOf(value.height));
                    }
                    if (value.width != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 3, Integer.valueOf(value.width));
                    }
                    if (value.upper_left_y != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 2, Integer.valueOf(value.upper_left_y));
                    }
                    if (value.upper_left_x != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 1, Integer.valueOf(value.upper_left_x));
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public CroppedImagePackage.RectangleDimensions redact(CroppedImagePackage.RectangleDimensions value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return CroppedImagePackage.RectangleDimensions.copy$default(value, 0, 0, 0, 0, ByteString.EMPTY, 15, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public CroppedImagePackage.RectangleDimensions decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    int iIntValue = 0;
                    int iIntValue2 = 0;
                    int iIntValue3 = 0;
                    int iIntValue4 = 0;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new CroppedImagePackage.RectangleDimensions(iIntValue, iIntValue2, iIntValue3, iIntValue4, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            iIntValue = ProtoAdapter.INT32.decode(reader).intValue();
                        } else if (iNextTag == 2) {
                            iIntValue2 = ProtoAdapter.INT32.decode(reader).intValue();
                        } else if (iNextTag == 3) {
                            iIntValue3 = ProtoAdapter.INT32.decode(reader).intValue();
                        } else if (iNextTag == 4) {
                            iIntValue4 = ProtoAdapter.INT32.decode(reader).intValue();
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }
}
