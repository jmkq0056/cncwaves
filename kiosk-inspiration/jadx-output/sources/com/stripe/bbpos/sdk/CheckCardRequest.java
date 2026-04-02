package com.stripe.bbpos.sdk;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
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

/* JADX INFO: compiled from: CheckCardRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ$\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0006H\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/bbpos/sdk/CheckCardRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/bbpos/sdk/CheckCardRequest$Builder;", BbposDeviceControllerImpl.CHECK_CARD_MODE_PARAM_NAME, "Lcom/stripe/bbpos/sdk/CheckCardMode;", BbposDeviceControllerImpl.CHECK_CARD_TIMEOUT_PARAM_NAME, "", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/bbpos/sdk/CheckCardMode;ILokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "", "Builder", "Companion", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CheckCardRequest extends Message<CheckCardRequest, Builder> {
    public static final ProtoAdapter<CheckCardRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.bbpos.sdk.CheckCardMode#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final CheckCardMode checkCardMode;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final int checkCardTimeout;

    public CheckCardRequest() {
        this(null, 0, null, 7, null);
    }

    public /* synthetic */ CheckCardRequest(CheckCardMode checkCardMode, int i, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? CheckCardMode.CHECK_CARD_MODE_UNKNOWN : checkCardMode, (i2 & 2) != 0 ? 0 : i, (i2 & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CheckCardRequest(CheckCardMode checkCardMode, int i, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(checkCardMode, "checkCardMode");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.checkCardMode = checkCardMode;
        this.checkCardTimeout = i;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.checkCardMode = this.checkCardMode;
        builder.checkCardTimeout = this.checkCardTimeout;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CheckCardRequest)) {
            return false;
        }
        CheckCardRequest checkCardRequest = (CheckCardRequest) other;
        return Intrinsics.areEqual(unknownFields(), checkCardRequest.unknownFields()) && this.checkCardMode == checkCardRequest.checkCardMode && this.checkCardTimeout == checkCardRequest.checkCardTimeout;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((unknownFields().hashCode() * 37) + this.checkCardMode.hashCode()) * 37) + Integer.hashCode(this.checkCardTimeout);
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("checkCardMode=" + this.checkCardMode);
        arrayList2.add("checkCardTimeout=" + this.checkCardTimeout);
        return CollectionsKt.joinToString$default(arrayList, ", ", "CheckCardRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CheckCardRequest copy$default(CheckCardRequest checkCardRequest, CheckCardMode checkCardMode, int i, ByteString byteString, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            checkCardMode = checkCardRequest.checkCardMode;
        }
        if ((i2 & 2) != 0) {
            i = checkCardRequest.checkCardTimeout;
        }
        if ((i2 & 4) != 0) {
            byteString = checkCardRequest.unknownFields();
        }
        return checkCardRequest.copy(checkCardMode, i, byteString);
    }

    public final CheckCardRequest copy(CheckCardMode checkCardMode, int checkCardTimeout, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(checkCardMode, "checkCardMode");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CheckCardRequest(checkCardMode, checkCardTimeout, unknownFields);
    }

    /* JADX INFO: compiled from: CheckCardRequest.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/bbpos/sdk/CheckCardRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/bbpos/sdk/CheckCardRequest;", "()V", BbposDeviceControllerImpl.CHECK_CARD_MODE_PARAM_NAME, "Lcom/stripe/bbpos/sdk/CheckCardMode;", BbposDeviceControllerImpl.CHECK_CARD_TIMEOUT_PARAM_NAME, "", "build", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CheckCardRequest, Builder> {
        public CheckCardMode checkCardMode = CheckCardMode.CHECK_CARD_MODE_UNKNOWN;
        public int checkCardTimeout;

        public final Builder checkCardMode(CheckCardMode checkCardMode) {
            Intrinsics.checkNotNullParameter(checkCardMode, "checkCardMode");
            this.checkCardMode = checkCardMode;
            return this;
        }

        public final Builder checkCardTimeout(int checkCardTimeout) {
            this.checkCardTimeout = checkCardTimeout;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CheckCardRequest build() {
            return new CheckCardRequest(this.checkCardMode, this.checkCardTimeout, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CheckCardRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/bbpos/sdk/CheckCardRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/bbpos/sdk/CheckCardRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/bbpos/sdk/CheckCardRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CheckCardRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CheckCardRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CheckCardRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.bbpos.sdk.CheckCardRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CheckCardRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.checkCardMode != CheckCardMode.CHECK_CARD_MODE_UNKNOWN) {
                    size += CheckCardMode.ADAPTER.encodedSizeWithTag(1, value.checkCardMode);
                }
                return value.checkCardTimeout != 0 ? size + ProtoAdapter.UINT32.encodedSizeWithTag(2, Integer.valueOf(value.checkCardTimeout)) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CheckCardRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.checkCardMode != CheckCardMode.CHECK_CARD_MODE_UNKNOWN) {
                    CheckCardMode.ADAPTER.encodeWithTag(writer, 1, value.checkCardMode);
                }
                if (value.checkCardTimeout != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 2, Integer.valueOf(value.checkCardTimeout));
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CheckCardRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.checkCardTimeout != 0) {
                    ProtoAdapter.UINT32.encodeWithTag(writer, 2, Integer.valueOf(value.checkCardTimeout));
                }
                if (value.checkCardMode != CheckCardMode.CHECK_CARD_MODE_UNKNOWN) {
                    CheckCardMode.ADAPTER.encodeWithTag(writer, 1, value.checkCardMode);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CheckCardRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                CheckCardMode checkCardModeDecode = CheckCardMode.CHECK_CARD_MODE_UNKNOWN;
                long jBeginMessage = reader.beginMessage();
                int iIntValue = 0;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CheckCardRequest(checkCardModeDecode, iIntValue, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        try {
                            checkCardModeDecode = CheckCardMode.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else if (iNextTag == 2) {
                        iIntValue = ProtoAdapter.UINT32.decode(reader).intValue();
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CheckCardRequest redact(CheckCardRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return CheckCardRequest.copy$default(value, null, 0, ByteString.EMPTY, 3, null);
            }
        };
    }
}
