package com.stripe.proto.model.config;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.stripe.proto.terminal.terminal.pub.message.common.ImageRef;
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

/* JADX INFO: compiled from: PinpadImageAssets.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ(\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/model/config/PinpadImageAssets;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/config/PinpadImageAssets$Builder;", "splash_screen", "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;", "close_screen", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PinpadImageAssets extends Message<PinpadImageAssets, Builder> {
    public static final ProtoAdapter<PinpadImageAssets> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.common.ImageRef#ADAPTER", jsonName = "closeScreen", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final ImageRef close_screen;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.common.ImageRef#ADAPTER", jsonName = "splashScreen", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final ImageRef splash_screen;

    public PinpadImageAssets() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ PinpadImageAssets(ImageRef imageRef, ImageRef imageRef2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : imageRef, (i & 2) != 0 ? null : imageRef2, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PinpadImageAssets(ImageRef imageRef, ImageRef imageRef2, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.splash_screen = imageRef;
        this.close_screen = imageRef2;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.splash_screen = this.splash_screen;
        builder.close_screen = this.close_screen;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof PinpadImageAssets)) {
            return false;
        }
        PinpadImageAssets pinpadImageAssets = (PinpadImageAssets) other;
        return Intrinsics.areEqual(unknownFields(), pinpadImageAssets.unknownFields()) && Intrinsics.areEqual(this.splash_screen, pinpadImageAssets.splash_screen) && Intrinsics.areEqual(this.close_screen, pinpadImageAssets.close_screen);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        ImageRef imageRef = this.splash_screen;
        int iHashCode2 = (iHashCode + (imageRef != null ? imageRef.hashCode() : 0)) * 37;
        ImageRef imageRef2 = this.close_screen;
        int iHashCode3 = iHashCode2 + (imageRef2 != null ? imageRef2.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.splash_screen != null) {
            arrayList.add("splash_screen=" + this.splash_screen);
        }
        if (this.close_screen != null) {
            arrayList.add("close_screen=" + this.close_screen);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "PinpadImageAssets{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ PinpadImageAssets copy$default(PinpadImageAssets pinpadImageAssets, ImageRef imageRef, ImageRef imageRef2, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            imageRef = pinpadImageAssets.splash_screen;
        }
        if ((i & 2) != 0) {
            imageRef2 = pinpadImageAssets.close_screen;
        }
        if ((i & 4) != 0) {
            byteString = pinpadImageAssets.unknownFields();
        }
        return pinpadImageAssets.copy(imageRef, imageRef2, byteString);
    }

    public final PinpadImageAssets copy(ImageRef splash_screen, ImageRef close_screen, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new PinpadImageAssets(splash_screen, close_screen, unknownFields);
    }

    /* JADX INFO: compiled from: PinpadImageAssets.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/proto/model/config/PinpadImageAssets$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/config/PinpadImageAssets;", "()V", "close_screen", "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;", "splash_screen", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<PinpadImageAssets, Builder> {
        public ImageRef close_screen;
        public ImageRef splash_screen;

        public final Builder splash_screen(ImageRef splash_screen) {
            this.splash_screen = splash_screen;
            return this;
        }

        public final Builder close_screen(ImageRef close_screen) {
            this.close_screen = close_screen;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public PinpadImageAssets build() {
            return new PinpadImageAssets(this.splash_screen, this.close_screen, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: PinpadImageAssets.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/config/PinpadImageAssets$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/PinpadImageAssets;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/config/PinpadImageAssets$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ PinpadImageAssets build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(PinpadImageAssets.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<PinpadImageAssets>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.config.PinpadImageAssets$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(PinpadImageAssets value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.splash_screen != null) {
                    size += ImageRef.ADAPTER.encodedSizeWithTag(1, value.splash_screen);
                }
                return value.close_screen != null ? size + ImageRef.ADAPTER.encodedSizeWithTag(2, value.close_screen) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, PinpadImageAssets value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.splash_screen != null) {
                    ImageRef.ADAPTER.encodeWithTag(writer, 1, value.splash_screen);
                }
                if (value.close_screen != null) {
                    ImageRef.ADAPTER.encodeWithTag(writer, 2, value.close_screen);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, PinpadImageAssets value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.close_screen != null) {
                    ImageRef.ADAPTER.encodeWithTag(writer, 2, value.close_screen);
                }
                if (value.splash_screen != null) {
                    ImageRef.ADAPTER.encodeWithTag(writer, 1, value.splash_screen);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public PinpadImageAssets redact(PinpadImageAssets value) {
                Intrinsics.checkNotNullParameter(value, "value");
                ImageRef imageRef = value.splash_screen;
                ImageRef imageRefRedact = imageRef != null ? ImageRef.ADAPTER.redact(imageRef) : null;
                ImageRef imageRef2 = value.close_screen;
                return value.copy(imageRefRedact, imageRef2 != null ? ImageRef.ADAPTER.redact(imageRef2) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public PinpadImageAssets decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                ImageRef imageRefDecode = null;
                ImageRef imageRefDecode2 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new PinpadImageAssets(imageRefDecode, imageRefDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        imageRefDecode = ImageRef.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        imageRefDecode2 = ImageRef.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
