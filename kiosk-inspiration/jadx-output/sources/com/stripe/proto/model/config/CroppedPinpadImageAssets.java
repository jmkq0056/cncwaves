package com.stripe.proto.model.config;

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

/* JADX INFO: compiled from: CroppedPinpadImageAssets.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ(\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/model/config/CroppedPinpadImageAssets;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/config/CroppedPinpadImageAssets$Builder;", "splash_screen", "Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;", "close_screen", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CroppedPinpadImageAssets extends Message<CroppedPinpadImageAssets, Builder> {
    public static final ProtoAdapter<CroppedPinpadImageAssets> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.common.CroppedImagePackage#ADAPTER", jsonName = "closeScreen", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final CroppedImagePackage close_screen;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.common.CroppedImagePackage#ADAPTER", jsonName = "splashScreen", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final CroppedImagePackage splash_screen;

    public CroppedPinpadImageAssets() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ CroppedPinpadImageAssets(CroppedImagePackage croppedImagePackage, CroppedImagePackage croppedImagePackage2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : croppedImagePackage, (i & 2) != 0 ? null : croppedImagePackage2, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CroppedPinpadImageAssets(CroppedImagePackage croppedImagePackage, CroppedImagePackage croppedImagePackage2, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.splash_screen = croppedImagePackage;
        this.close_screen = croppedImagePackage2;
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
        if (!(other instanceof CroppedPinpadImageAssets)) {
            return false;
        }
        CroppedPinpadImageAssets croppedPinpadImageAssets = (CroppedPinpadImageAssets) other;
        return Intrinsics.areEqual(unknownFields(), croppedPinpadImageAssets.unknownFields()) && Intrinsics.areEqual(this.splash_screen, croppedPinpadImageAssets.splash_screen) && Intrinsics.areEqual(this.close_screen, croppedPinpadImageAssets.close_screen);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        CroppedImagePackage croppedImagePackage = this.splash_screen;
        int iHashCode2 = (iHashCode + (croppedImagePackage != null ? croppedImagePackage.hashCode() : 0)) * 37;
        CroppedImagePackage croppedImagePackage2 = this.close_screen;
        int iHashCode3 = iHashCode2 + (croppedImagePackage2 != null ? croppedImagePackage2.hashCode() : 0);
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
        return CollectionsKt.joinToString$default(arrayList, ", ", "CroppedPinpadImageAssets{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CroppedPinpadImageAssets copy$default(CroppedPinpadImageAssets croppedPinpadImageAssets, CroppedImagePackage croppedImagePackage, CroppedImagePackage croppedImagePackage2, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            croppedImagePackage = croppedPinpadImageAssets.splash_screen;
        }
        if ((i & 2) != 0) {
            croppedImagePackage2 = croppedPinpadImageAssets.close_screen;
        }
        if ((i & 4) != 0) {
            byteString = croppedPinpadImageAssets.unknownFields();
        }
        return croppedPinpadImageAssets.copy(croppedImagePackage, croppedImagePackage2, byteString);
    }

    public final CroppedPinpadImageAssets copy(CroppedImagePackage splash_screen, CroppedImagePackage close_screen, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CroppedPinpadImageAssets(splash_screen, close_screen, unknownFields);
    }

    /* JADX INFO: compiled from: CroppedPinpadImageAssets.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/proto/model/config/CroppedPinpadImageAssets$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/config/CroppedPinpadImageAssets;", "()V", "close_screen", "Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;", "splash_screen", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CroppedPinpadImageAssets, Builder> {
        public CroppedImagePackage close_screen;
        public CroppedImagePackage splash_screen;

        public final Builder splash_screen(CroppedImagePackage splash_screen) {
            this.splash_screen = splash_screen;
            return this;
        }

        public final Builder close_screen(CroppedImagePackage close_screen) {
            this.close_screen = close_screen;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CroppedPinpadImageAssets build() {
            return new CroppedPinpadImageAssets(this.splash_screen, this.close_screen, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CroppedPinpadImageAssets.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/config/CroppedPinpadImageAssets$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/CroppedPinpadImageAssets;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/config/CroppedPinpadImageAssets$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CroppedPinpadImageAssets build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CroppedPinpadImageAssets.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CroppedPinpadImageAssets>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.config.CroppedPinpadImageAssets$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CroppedPinpadImageAssets value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.splash_screen != null) {
                    size += CroppedImagePackage.ADAPTER.encodedSizeWithTag(1, value.splash_screen);
                }
                return value.close_screen != null ? size + CroppedImagePackage.ADAPTER.encodedSizeWithTag(2, value.close_screen) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CroppedPinpadImageAssets value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.splash_screen != null) {
                    CroppedImagePackage.ADAPTER.encodeWithTag(writer, 1, value.splash_screen);
                }
                if (value.close_screen != null) {
                    CroppedImagePackage.ADAPTER.encodeWithTag(writer, 2, value.close_screen);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CroppedPinpadImageAssets value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.close_screen != null) {
                    CroppedImagePackage.ADAPTER.encodeWithTag(writer, 2, value.close_screen);
                }
                if (value.splash_screen != null) {
                    CroppedImagePackage.ADAPTER.encodeWithTag(writer, 1, value.splash_screen);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CroppedPinpadImageAssets redact(CroppedPinpadImageAssets value) {
                Intrinsics.checkNotNullParameter(value, "value");
                CroppedImagePackage croppedImagePackage = value.splash_screen;
                CroppedImagePackage croppedImagePackageRedact = croppedImagePackage != null ? CroppedImagePackage.ADAPTER.redact(croppedImagePackage) : null;
                CroppedImagePackage croppedImagePackage2 = value.close_screen;
                return value.copy(croppedImagePackageRedact, croppedImagePackage2 != null ? CroppedImagePackage.ADAPTER.redact(croppedImagePackage2) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CroppedPinpadImageAssets decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                CroppedImagePackage croppedImagePackageDecode = null;
                CroppedImagePackage croppedImagePackageDecode2 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CroppedPinpadImageAssets(croppedImagePackageDecode, croppedImagePackageDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        croppedImagePackageDecode = CroppedImagePackage.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        croppedImagePackageDecode2 = CroppedImagePackage.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
