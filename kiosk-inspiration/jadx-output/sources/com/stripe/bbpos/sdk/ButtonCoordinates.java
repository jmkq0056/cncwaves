package com.stripe.bbpos.sdk;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
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

/* JADX INFO: compiled from: ButtonCoordinates.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B7\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ8\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0004H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/bbpos/sdk/ButtonCoordinates;", "Lcom/squareup/wire/Message;", "Lcom/stripe/bbpos/sdk/ButtonCoordinates$Builder;", "top", "", "bottom", "left", "right", "unknownFields", "Lokio/ByteString;", "(IIIILokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "", "Builder", "Companion", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ButtonCoordinates extends Message<ButtonCoordinates, Builder> {
    public static final ProtoAdapter<ButtonCoordinates> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final int bottom;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final int left;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final int right;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final int top;

    public ButtonCoordinates() {
        this(0, 0, 0, 0, null, 31, null);
    }

    public /* synthetic */ ButtonCoordinates(int i, int i2, int i3, int i4, ByteString byteString, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this((i5 & 1) != 0 ? 0 : i, (i5 & 2) != 0 ? 0 : i2, (i5 & 4) != 0 ? 0 : i3, (i5 & 8) != 0 ? 0 : i4, (i5 & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ButtonCoordinates(int i, int i2, int i3, int i4, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.top = i;
        this.bottom = i2;
        this.left = i3;
        this.right = i4;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.top = this.top;
        builder.bottom = this.bottom;
        builder.left = this.left;
        builder.right = this.right;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ButtonCoordinates)) {
            return false;
        }
        ButtonCoordinates buttonCoordinates = (ButtonCoordinates) other;
        return Intrinsics.areEqual(unknownFields(), buttonCoordinates.unknownFields()) && this.top == buttonCoordinates.top && this.bottom == buttonCoordinates.bottom && this.left == buttonCoordinates.left && this.right == buttonCoordinates.right;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((unknownFields().hashCode() * 37) + Integer.hashCode(this.top)) * 37) + Integer.hashCode(this.bottom)) * 37) + Integer.hashCode(this.left)) * 37) + Integer.hashCode(this.right);
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("top=" + this.top);
        arrayList2.add("bottom=" + this.bottom);
        arrayList2.add("left=" + this.left);
        arrayList2.add("right=" + this.right);
        return CollectionsKt.joinToString$default(arrayList, ", ", "ButtonCoordinates{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ButtonCoordinates copy$default(ButtonCoordinates buttonCoordinates, int i, int i2, int i3, int i4, ByteString byteString, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i = buttonCoordinates.top;
        }
        if ((i5 & 2) != 0) {
            i2 = buttonCoordinates.bottom;
        }
        if ((i5 & 4) != 0) {
            i3 = buttonCoordinates.left;
        }
        if ((i5 & 8) != 0) {
            i4 = buttonCoordinates.right;
        }
        if ((i5 & 16) != 0) {
            byteString = buttonCoordinates.unknownFields();
        }
        ByteString byteString2 = byteString;
        int i6 = i3;
        return buttonCoordinates.copy(i, i2, i6, i4, byteString2);
    }

    public final ButtonCoordinates copy(int top, int bottom, int left, int right, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ButtonCoordinates(top, bottom, left, right, unknownFields);
    }

    /* JADX INFO: compiled from: ButtonCoordinates.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/bbpos/sdk/ButtonCoordinates$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/bbpos/sdk/ButtonCoordinates;", "()V", "bottom", "", "left", "right", "top", "build", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ButtonCoordinates, Builder> {
        public int bottom;
        public int left;
        public int right;
        public int top;

        public final Builder top(int top) {
            this.top = top;
            return this;
        }

        public final Builder bottom(int bottom) {
            this.bottom = bottom;
            return this;
        }

        public final Builder left(int left) {
            this.left = left;
            return this;
        }

        public final Builder right(int right) {
            this.right = right;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ButtonCoordinates build() {
            return new ButtonCoordinates(this.top, this.bottom, this.left, this.right, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ButtonCoordinates.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/bbpos/sdk/ButtonCoordinates$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/bbpos/sdk/ButtonCoordinates;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/bbpos/sdk/ButtonCoordinates$Builder;", "", "Lkotlin/ExtensionFunctionType;", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ButtonCoordinates build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ButtonCoordinates.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ButtonCoordinates>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.bbpos.sdk.ButtonCoordinates$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ButtonCoordinates value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.top != 0) {
                    size += ProtoAdapter.UINT32.encodedSizeWithTag(1, Integer.valueOf(value.top));
                }
                if (value.bottom != 0) {
                    size += ProtoAdapter.UINT32.encodedSizeWithTag(2, Integer.valueOf(value.bottom));
                }
                if (value.left != 0) {
                    size += ProtoAdapter.UINT32.encodedSizeWithTag(3, Integer.valueOf(value.left));
                }
                return value.right != 0 ? size + ProtoAdapter.UINT32.encodedSizeWithTag(4, Integer.valueOf(value.right)) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ButtonCoordinates value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.top != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 1, Integer.valueOf(value.top));
                }
                if (value.bottom != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 2, Integer.valueOf(value.bottom));
                }
                if (value.left != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 3, Integer.valueOf(value.left));
                }
                if (value.right != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 4, Integer.valueOf(value.right));
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ButtonCoordinates value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.right != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 4, Integer.valueOf(value.right));
                }
                if (value.left != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 3, Integer.valueOf(value.left));
                }
                if (value.bottom != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 2, Integer.valueOf(value.bottom));
                }
                if (value.top != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 1, Integer.valueOf(value.top));
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ButtonCoordinates redact(ButtonCoordinates value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return ButtonCoordinates.copy$default(value, 0, 0, 0, 0, ByteString.EMPTY, 15, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ButtonCoordinates decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                int iIntValue = 0;
                int iIntValue2 = 0;
                int iIntValue3 = 0;
                int iIntValue4 = 0;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ButtonCoordinates(iIntValue, iIntValue2, iIntValue3, iIntValue4, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        iIntValue = ProtoAdapter.UINT32.decode(reader).intValue();
                    } else if (iNextTag == 2) {
                        iIntValue2 = ProtoAdapter.UINT32.decode(reader).intValue();
                    } else if (iNextTag == 3) {
                        iIntValue3 = ProtoAdapter.UINT32.decode(reader).intValue();
                    } else if (iNextTag == 4) {
                        iIntValue4 = ProtoAdapter.UINT32.decode(reader).intValue();
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
