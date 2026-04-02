package com.stripe.bbpos.sdk;

import androidx.core.app.NotificationCompat;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
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

/* JADX INFO: compiled from: ReturnAccessiblePinPadTouchEventResult.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ$\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0006H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/bbpos/sdk/ReturnAccessiblePinPadTouchEventResult;", "Lcom/squareup/wire/Message;", "Lcom/stripe/bbpos/sdk/ReturnAccessiblePinPadTouchEventResult$Builder;", NotificationCompat.CATEGORY_EVENT, "Lcom/stripe/bbpos/sdk/PinPadTouchEvent;", "uuid", "", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/bbpos/sdk/PinPadTouchEvent;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReturnAccessiblePinPadTouchEventResult extends Message<ReturnAccessiblePinPadTouchEventResult, Builder> {
    public static final ProtoAdapter<ReturnAccessiblePinPadTouchEventResult> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.bbpos.sdk.PinPadTouchEvent#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final PinPadTouchEvent event;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String uuid;

    public ReturnAccessiblePinPadTouchEventResult() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ ReturnAccessiblePinPadTouchEventResult(PinPadTouchEvent pinPadTouchEvent, String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? PinPadTouchEvent.PIN_PAD_TOUCH_EVENT_UNKNOWN : pinPadTouchEvent, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReturnAccessiblePinPadTouchEventResult(PinPadTouchEvent event, String uuid, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(uuid, "uuid");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.event = event;
        this.uuid = uuid;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.event = this.event;
        builder.uuid = this.uuid;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ReturnAccessiblePinPadTouchEventResult)) {
            return false;
        }
        ReturnAccessiblePinPadTouchEventResult returnAccessiblePinPadTouchEventResult = (ReturnAccessiblePinPadTouchEventResult) other;
        return Intrinsics.areEqual(unknownFields(), returnAccessiblePinPadTouchEventResult.unknownFields()) && this.event == returnAccessiblePinPadTouchEventResult.event && Intrinsics.areEqual(this.uuid, returnAccessiblePinPadTouchEventResult.uuid);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((unknownFields().hashCode() * 37) + this.event.hashCode()) * 37) + this.uuid.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("event=" + this.event);
        arrayList2.add("uuid=" + Internal.sanitize(this.uuid));
        return CollectionsKt.joinToString$default(arrayList, ", ", "ReturnAccessiblePinPadTouchEventResult{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ReturnAccessiblePinPadTouchEventResult copy$default(ReturnAccessiblePinPadTouchEventResult returnAccessiblePinPadTouchEventResult, PinPadTouchEvent pinPadTouchEvent, String str, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            pinPadTouchEvent = returnAccessiblePinPadTouchEventResult.event;
        }
        if ((i & 2) != 0) {
            str = returnAccessiblePinPadTouchEventResult.uuid;
        }
        if ((i & 4) != 0) {
            byteString = returnAccessiblePinPadTouchEventResult.unknownFields();
        }
        return returnAccessiblePinPadTouchEventResult.copy(pinPadTouchEvent, str, byteString);
    }

    public final ReturnAccessiblePinPadTouchEventResult copy(PinPadTouchEvent event, String uuid, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(uuid, "uuid");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ReturnAccessiblePinPadTouchEventResult(event, uuid, unknownFields);
    }

    /* JADX INFO: compiled from: ReturnAccessiblePinPadTouchEventResult.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/bbpos/sdk/ReturnAccessiblePinPadTouchEventResult$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/bbpos/sdk/ReturnAccessiblePinPadTouchEventResult;", "()V", NotificationCompat.CATEGORY_EVENT, "Lcom/stripe/bbpos/sdk/PinPadTouchEvent;", "uuid", "", "build", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ReturnAccessiblePinPadTouchEventResult, Builder> {
        public PinPadTouchEvent event = PinPadTouchEvent.PIN_PAD_TOUCH_EVENT_UNKNOWN;
        public String uuid = "";

        public final Builder event(PinPadTouchEvent event) {
            Intrinsics.checkNotNullParameter(event, "event");
            this.event = event;
            return this;
        }

        public final Builder uuid(String uuid) {
            Intrinsics.checkNotNullParameter(uuid, "uuid");
            this.uuid = uuid;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ReturnAccessiblePinPadTouchEventResult build() {
            return new ReturnAccessiblePinPadTouchEventResult(this.event, this.uuid, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ReturnAccessiblePinPadTouchEventResult.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/bbpos/sdk/ReturnAccessiblePinPadTouchEventResult$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/bbpos/sdk/ReturnAccessiblePinPadTouchEventResult;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/bbpos/sdk/ReturnAccessiblePinPadTouchEventResult$Builder;", "", "Lkotlin/ExtensionFunctionType;", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ReturnAccessiblePinPadTouchEventResult build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ReturnAccessiblePinPadTouchEventResult.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ReturnAccessiblePinPadTouchEventResult>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.bbpos.sdk.ReturnAccessiblePinPadTouchEventResult$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ReturnAccessiblePinPadTouchEventResult value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.event != PinPadTouchEvent.PIN_PAD_TOUCH_EVENT_UNKNOWN) {
                    size += PinPadTouchEvent.ADAPTER.encodedSizeWithTag(1, value.event);
                }
                return !Intrinsics.areEqual(value.uuid, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(2, value.uuid) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ReturnAccessiblePinPadTouchEventResult value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.event != PinPadTouchEvent.PIN_PAD_TOUCH_EVENT_UNKNOWN) {
                    PinPadTouchEvent.ADAPTER.encodeWithTag(writer, 1, value.event);
                }
                if (!Intrinsics.areEqual(value.uuid, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.uuid);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ReturnAccessiblePinPadTouchEventResult value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.uuid, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.uuid);
                }
                if (value.event != PinPadTouchEvent.PIN_PAD_TOUCH_EVENT_UNKNOWN) {
                    PinPadTouchEvent.ADAPTER.encodeWithTag(writer, 1, value.event);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ReturnAccessiblePinPadTouchEventResult decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                PinPadTouchEvent pinPadTouchEventDecode = PinPadTouchEvent.PIN_PAD_TOUCH_EVENT_UNKNOWN;
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ReturnAccessiblePinPadTouchEventResult(pinPadTouchEventDecode, strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        try {
                            pinPadTouchEventDecode = PinPadTouchEvent.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else if (iNextTag == 2) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ReturnAccessiblePinPadTouchEventResult redact(ReturnAccessiblePinPadTouchEventResult value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return ReturnAccessiblePinPadTouchEventResult.copy$default(value, null, null, ByteString.EMPTY, 3, null);
            }
        };
    }
}
