package com.stripe.bbpos.sdk;

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

/* JADX INFO: compiled from: RequestDisplayTextResult.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ$\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0006H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/bbpos/sdk/RequestDisplayTextResult;", "Lcom/squareup/wire/Message;", "Lcom/stripe/bbpos/sdk/RequestDisplayTextResult$Builder;", "displayText", "Lcom/stripe/bbpos/sdk/DisplayText;", "displayTextLanguage", "", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/bbpos/sdk/DisplayText;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RequestDisplayTextResult extends Message<RequestDisplayTextResult, Builder> {
    public static final ProtoAdapter<RequestDisplayTextResult> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.bbpos.sdk.DisplayText#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final DisplayText displayText;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String displayTextLanguage;

    public RequestDisplayTextResult() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ RequestDisplayTextResult(DisplayText displayText, String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? DisplayText.DISPLAY_TEXT_UNKNOWN : displayText, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RequestDisplayTextResult(DisplayText displayText, String displayTextLanguage, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(displayText, "displayText");
        Intrinsics.checkNotNullParameter(displayTextLanguage, "displayTextLanguage");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.displayText = displayText;
        this.displayTextLanguage = displayTextLanguage;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.displayText = this.displayText;
        builder.displayTextLanguage = this.displayTextLanguage;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof RequestDisplayTextResult)) {
            return false;
        }
        RequestDisplayTextResult requestDisplayTextResult = (RequestDisplayTextResult) other;
        return Intrinsics.areEqual(unknownFields(), requestDisplayTextResult.unknownFields()) && this.displayText == requestDisplayTextResult.displayText && Intrinsics.areEqual(this.displayTextLanguage, requestDisplayTextResult.displayTextLanguage);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((unknownFields().hashCode() * 37) + this.displayText.hashCode()) * 37) + this.displayTextLanguage.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("displayText=" + this.displayText);
        arrayList2.add("displayTextLanguage=" + Internal.sanitize(this.displayTextLanguage));
        return CollectionsKt.joinToString$default(arrayList, ", ", "RequestDisplayTextResult{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ RequestDisplayTextResult copy$default(RequestDisplayTextResult requestDisplayTextResult, DisplayText displayText, String str, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            displayText = requestDisplayTextResult.displayText;
        }
        if ((i & 2) != 0) {
            str = requestDisplayTextResult.displayTextLanguage;
        }
        if ((i & 4) != 0) {
            byteString = requestDisplayTextResult.unknownFields();
        }
        return requestDisplayTextResult.copy(displayText, str, byteString);
    }

    public final RequestDisplayTextResult copy(DisplayText displayText, String displayTextLanguage, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(displayText, "displayText");
        Intrinsics.checkNotNullParameter(displayTextLanguage, "displayTextLanguage");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new RequestDisplayTextResult(displayText, displayTextLanguage, unknownFields);
    }

    /* JADX INFO: compiled from: RequestDisplayTextResult.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/bbpos/sdk/RequestDisplayTextResult$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/bbpos/sdk/RequestDisplayTextResult;", "()V", "displayText", "Lcom/stripe/bbpos/sdk/DisplayText;", "displayTextLanguage", "", "build", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<RequestDisplayTextResult, Builder> {
        public DisplayText displayText = DisplayText.DISPLAY_TEXT_UNKNOWN;
        public String displayTextLanguage = "";

        public final Builder displayText(DisplayText displayText) {
            Intrinsics.checkNotNullParameter(displayText, "displayText");
            this.displayText = displayText;
            return this;
        }

        public final Builder displayTextLanguage(String displayTextLanguage) {
            Intrinsics.checkNotNullParameter(displayTextLanguage, "displayTextLanguage");
            this.displayTextLanguage = displayTextLanguage;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public RequestDisplayTextResult build() {
            return new RequestDisplayTextResult(this.displayText, this.displayTextLanguage, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: RequestDisplayTextResult.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/bbpos/sdk/RequestDisplayTextResult$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/bbpos/sdk/RequestDisplayTextResult;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/bbpos/sdk/RequestDisplayTextResult$Builder;", "", "Lkotlin/ExtensionFunctionType;", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ RequestDisplayTextResult build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(RequestDisplayTextResult.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<RequestDisplayTextResult>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.bbpos.sdk.RequestDisplayTextResult$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(RequestDisplayTextResult value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.displayText != DisplayText.DISPLAY_TEXT_UNKNOWN) {
                    size += DisplayText.ADAPTER.encodedSizeWithTag(1, value.displayText);
                }
                return !Intrinsics.areEqual(value.displayTextLanguage, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(2, value.displayTextLanguage) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, RequestDisplayTextResult value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.displayText != DisplayText.DISPLAY_TEXT_UNKNOWN) {
                    DisplayText.ADAPTER.encodeWithTag(writer, 1, value.displayText);
                }
                if (!Intrinsics.areEqual(value.displayTextLanguage, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.displayTextLanguage);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, RequestDisplayTextResult value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.displayTextLanguage, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.displayTextLanguage);
                }
                if (value.displayText != DisplayText.DISPLAY_TEXT_UNKNOWN) {
                    DisplayText.ADAPTER.encodeWithTag(writer, 1, value.displayText);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public RequestDisplayTextResult decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                DisplayText displayTextDecode = DisplayText.DISPLAY_TEXT_UNKNOWN;
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new RequestDisplayTextResult(displayTextDecode, strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        try {
                            displayTextDecode = DisplayText.ADAPTER.decode(reader);
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
            public RequestDisplayTextResult redact(RequestDisplayTextResult value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return RequestDisplayTextResult.copy$default(value, null, null, ByteString.EMPTY, 3, null);
            }
        };
    }
}
