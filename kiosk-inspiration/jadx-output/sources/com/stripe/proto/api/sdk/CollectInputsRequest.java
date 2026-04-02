package com.stripe.proto.api.sdk;

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
import com.stripe.proto.api.sdk.CollectInputsRequest;
import io.ktor.http.LinkHeader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
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

/* JADX INFO: compiled from: CollectInputsRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0007\u0013\u0014\u0015\u0016\u0017\u0018\u0019B\u001f\u0012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ \u0010\t\u001a\u00020\u00002\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectInputsRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Builder;", "inputs", "", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input;", "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Choice", "Companion", "CustomText", "Input", "Selection", "Toggle", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CollectInputsRequest extends Message<CollectInputsRequest, Builder> {
    public static final ProtoAdapter<CollectInputsRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.api.sdk.CollectInputsRequest$Input#ADAPTER", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 1)
    public final List<Input> inputs;

    /* JADX WARN: Multi-variable type inference failed */
    public CollectInputsRequest() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ CollectInputsRequest(List list, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectInputsRequest(List<Input> inputs, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(inputs, "inputs");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.inputs = Internal.immutableCopyOf("inputs", inputs);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.inputs = this.inputs;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CollectInputsRequest)) {
            return false;
        }
        CollectInputsRequest collectInputsRequest = (CollectInputsRequest) other;
        return Intrinsics.areEqual(unknownFields(), collectInputsRequest.unknownFields()) && Intrinsics.areEqual(this.inputs, collectInputsRequest.inputs);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (unknownFields().hashCode() * 37) + this.inputs.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (!this.inputs.isEmpty()) {
            arrayList.add("inputs=" + this.inputs);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "CollectInputsRequest{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CollectInputsRequest copy$default(CollectInputsRequest collectInputsRequest, List list, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            list = collectInputsRequest.inputs;
        }
        if ((i & 2) != 0) {
            byteString = collectInputsRequest.unknownFields();
        }
        return collectInputsRequest.copy(list, byteString);
    }

    public final CollectInputsRequest copy(List<Input> inputs, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(inputs, "inputs");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CollectInputsRequest(inputs, unknownFields);
    }

    /* JADX INFO: compiled from: CollectInputsRequest.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005R\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectInputsRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/CollectInputsRequest;", "()V", "inputs", "", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CollectInputsRequest, Builder> {
        public List<Input> inputs = CollectionsKt.emptyList();

        public final Builder inputs(List<Input> inputs) {
            Intrinsics.checkNotNullParameter(inputs, "inputs");
            Internal.checkElementsNotNull(inputs);
            this.inputs = inputs;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CollectInputsRequest build() {
            return new CollectInputsRequest(this.inputs, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CollectInputsRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectInputsRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/CollectInputsRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CollectInputsRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CollectInputsRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CollectInputsRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.CollectInputsRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CollectInputsRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + CollectInputsRequest.Input.ADAPTER.asRepeated().encodedSizeWithTag(1, value.inputs);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CollectInputsRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                CollectInputsRequest.Input.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.inputs);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CollectInputsRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                CollectInputsRequest.Input.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.inputs);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CollectInputsRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CollectInputsRequest(arrayList, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        arrayList.add(CollectInputsRequest.Input.ADAPTER.decode(reader));
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CollectInputsRequest redact(CollectInputsRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.copy(Internal.m361redactElements(value.inputs, CollectInputsRequest.Input.ADAPTER), ByteString.EMPTY);
            }
        };
    }

    /* JADX INFO: compiled from: CollectInputsRequest.kt */
    @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u001b2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u001a\u001b\u001cBK\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010JL\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\n2\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f2\b\b\u0002\u0010\u000e\u001a\u00020\u000fJ\u0013\u0010\u0012\u001a\u00020\u00062\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0002H\u0016J\b\u0010\u0018\u001a\u00020\u0019H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$Builder;", "custom_text", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$CustomText;", "required", "", "selection", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Selection;", "type", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$InputType;", "toggles", "", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Toggle;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/sdk/CollectInputsRequest$CustomText;ZLcom/stripe/proto/api/sdk/CollectInputsRequest$Selection;Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$InputType;Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "InputType", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Input extends Message<Input, Builder> {
        public static final ProtoAdapter<Input> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.proto.api.sdk.CollectInputsRequest$CustomText#ADAPTER", jsonName = "customText", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final CustomText custom_text;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final boolean required;

        @WireField(adapter = "com.stripe.proto.api.sdk.CollectInputsRequest$Selection#ADAPTER", oneofName = "type_specific_fields", schemaIndex = 2, tag = 3)
        public final Selection selection;

        @WireField(adapter = "com.stripe.proto.api.sdk.CollectInputsRequest$Toggle#ADAPTER", label = WireField.Label.REPEATED, schemaIndex = 4, tag = 5)
        public final List<Toggle> toggles;

        @WireField(adapter = "com.stripe.proto.api.sdk.CollectInputsRequest$Input$InputType#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
        public final InputType type;

        public Input() {
            this(null, false, null, null, null, null, 63, null);
        }

        public /* synthetic */ Input(CustomText customText, boolean z, Selection selection, InputType inputType, List list, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : customText, (i & 2) != 0 ? false : z, (i & 4) != 0 ? null : selection, (i & 8) != 0 ? InputType.INPUT_TYPE_INVALID : inputType, (i & 16) != 0 ? CollectionsKt.emptyList() : list, (i & 32) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Input(CustomText customText, boolean z, Selection selection, InputType type, List<Toggle> toggles, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(toggles, "toggles");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.custom_text = customText;
            this.required = z;
            this.selection = selection;
            this.type = type;
            this.toggles = Internal.immutableCopyOf("toggles", toggles);
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.custom_text = this.custom_text;
            builder.required = this.required;
            builder.selection = this.selection;
            builder.type = this.type;
            builder.toggles = this.toggles;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof Input)) {
                return false;
            }
            Input input = (Input) other;
            return Intrinsics.areEqual(unknownFields(), input.unknownFields()) && Intrinsics.areEqual(this.custom_text, input.custom_text) && this.required == input.required && Intrinsics.areEqual(this.selection, input.selection) && this.type == input.type && Intrinsics.areEqual(this.toggles, input.toggles);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = unknownFields().hashCode() * 37;
            CustomText customText = this.custom_text;
            int iHashCode2 = (((iHashCode + (customText != null ? customText.hashCode() : 0)) * 37) + Boolean.hashCode(this.required)) * 37;
            Selection selection = this.selection;
            int iHashCode3 = ((((iHashCode2 + (selection != null ? selection.hashCode() : 0)) * 37) + this.type.hashCode()) * 37) + this.toggles.hashCode();
            this.hashCode = iHashCode3;
            return iHashCode3;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (this.custom_text != null) {
                arrayList.add("custom_text=" + this.custom_text);
            }
            ArrayList arrayList2 = arrayList;
            arrayList2.add("required=" + this.required);
            if (this.selection != null) {
                arrayList2.add("selection=" + this.selection);
            }
            arrayList2.add("type=" + this.type);
            if (!this.toggles.isEmpty()) {
                arrayList2.add("toggles=" + this.toggles);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "Input{", "}", 0, null, null, 56, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Input copy$default(Input input, CustomText customText, boolean z, Selection selection, InputType inputType, List list, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                customText = input.custom_text;
            }
            if ((i & 2) != 0) {
                z = input.required;
            }
            if ((i & 4) != 0) {
                selection = input.selection;
            }
            if ((i & 8) != 0) {
                inputType = input.type;
            }
            if ((i & 16) != 0) {
                list = input.toggles;
            }
            if ((i & 32) != 0) {
                byteString = input.unknownFields();
            }
            List list2 = list;
            ByteString byteString2 = byteString;
            return input.copy(customText, z, selection, inputType, list2, byteString2);
        }

        public final Input copy(CustomText custom_text, boolean required, Selection selection, InputType type, List<Toggle> toggles, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(toggles, "toggles");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new Input(custom_text, required, selection, type, toggles, unknownFields);
        }

        /* JADX INFO: compiled from: CollectInputsRequest.kt */
        @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0014\u0010\n\u001a\u00020\u00002\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input;", "()V", "custom_text", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$CustomText;", "required", "", "selection", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Selection;", "toggles", "", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Toggle;", "type", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$InputType;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<Input, Builder> {
            public CustomText custom_text;
            public boolean required;
            public Selection selection;
            public InputType type = InputType.INPUT_TYPE_INVALID;
            public List<Toggle> toggles = CollectionsKt.emptyList();

            public final Builder custom_text(CustomText custom_text) {
                this.custom_text = custom_text;
                return this;
            }

            public final Builder required(boolean required) {
                this.required = required;
                return this;
            }

            public final Builder type(InputType type) {
                Intrinsics.checkNotNullParameter(type, "type");
                this.type = type;
                return this;
            }

            public final Builder toggles(List<Toggle> toggles) {
                Intrinsics.checkNotNullParameter(toggles, "toggles");
                Internal.checkElementsNotNull(toggles);
                this.toggles = toggles;
                return this;
            }

            public final Builder selection(Selection selection) {
                this.selection = selection;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public Input build() {
                return new Input(this.custom_text, this.required, this.selection, this.type, this.toggles, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: CollectInputsRequest.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Input build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Input.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<Input>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.CollectInputsRequest$Input$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(CollectInputsRequest.Input value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.custom_text != null) {
                        size += CollectInputsRequest.CustomText.ADAPTER.encodedSizeWithTag(1, value.custom_text);
                    }
                    if (value.required) {
                        size += ProtoAdapter.BOOL.encodedSizeWithTag(2, Boolean.valueOf(value.required));
                    }
                    int iEncodedSizeWithTag = size + CollectInputsRequest.Selection.ADAPTER.encodedSizeWithTag(3, value.selection);
                    if (value.type != CollectInputsRequest.Input.InputType.INPUT_TYPE_INVALID) {
                        iEncodedSizeWithTag += CollectInputsRequest.Input.InputType.ADAPTER.encodedSizeWithTag(4, value.type);
                    }
                    return iEncodedSizeWithTag + CollectInputsRequest.Toggle.ADAPTER.asRepeated().encodedSizeWithTag(5, value.toggles);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, CollectInputsRequest.Input value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.custom_text != null) {
                        CollectInputsRequest.CustomText.ADAPTER.encodeWithTag(writer, 1, value.custom_text);
                    }
                    if (value.required) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 2, Boolean.valueOf(value.required));
                    }
                    if (value.type != CollectInputsRequest.Input.InputType.INPUT_TYPE_INVALID) {
                        CollectInputsRequest.Input.InputType.ADAPTER.encodeWithTag(writer, 4, value.type);
                    }
                    CollectInputsRequest.Toggle.ADAPTER.asRepeated().encodeWithTag(writer, 5, value.toggles);
                    CollectInputsRequest.Selection.ADAPTER.encodeWithTag(writer, 3, value.selection);
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, CollectInputsRequest.Input value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    CollectInputsRequest.Selection.ADAPTER.encodeWithTag(writer, 3, value.selection);
                    CollectInputsRequest.Toggle.ADAPTER.asRepeated().encodeWithTag(writer, 5, value.toggles);
                    if (value.type != CollectInputsRequest.Input.InputType.INPUT_TYPE_INVALID) {
                        CollectInputsRequest.Input.InputType.ADAPTER.encodeWithTag(writer, 4, value.type);
                    }
                    if (value.required) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 2, Boolean.valueOf(value.required));
                    }
                    if (value.custom_text != null) {
                        CollectInputsRequest.CustomText.ADAPTER.encodeWithTag(writer, 1, value.custom_text);
                    }
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public CollectInputsRequest.Input decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    CollectInputsRequest.Input.InputType inputType = CollectInputsRequest.Input.InputType.INPUT_TYPE_INVALID;
                    ArrayList arrayList = new ArrayList();
                    long jBeginMessage = reader.beginMessage();
                    CollectInputsRequest.Selection selectionDecode = null;
                    boolean zBooleanValue = false;
                    CollectInputsRequest.Input.InputType inputTypeDecode = inputType;
                    CollectInputsRequest.CustomText customTextDecode = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new CollectInputsRequest.Input(customTextDecode, zBooleanValue, selectionDecode, inputTypeDecode, arrayList, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            customTextDecode = CollectInputsRequest.CustomText.ADAPTER.decode(reader);
                        } else if (iNextTag == 2) {
                            zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                        } else if (iNextTag == 3) {
                            selectionDecode = CollectInputsRequest.Selection.ADAPTER.decode(reader);
                        } else if (iNextTag == 4) {
                            try {
                                inputTypeDecode = CollectInputsRequest.Input.InputType.ADAPTER.decode(reader);
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                            }
                        } else if (iNextTag == 5) {
                            arrayList.add(CollectInputsRequest.Toggle.ADAPTER.decode(reader));
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public CollectInputsRequest.Input redact(CollectInputsRequest.Input value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    CollectInputsRequest.CustomText customText = value.custom_text;
                    CollectInputsRequest.CustomText customTextRedact = customText != null ? CollectInputsRequest.CustomText.ADAPTER.redact(customText) : null;
                    CollectInputsRequest.Selection selection = value.selection;
                    return CollectInputsRequest.Input.copy$default(value, customTextRedact, false, selection != null ? CollectInputsRequest.Selection.ADAPTER.redact(selection) : null, null, Internal.m361redactElements(value.toggles, CollectInputsRequest.Toggle.ADAPTER), ByteString.EMPTY, 10, null);
                }
            };
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* JADX INFO: compiled from: CollectInputsRequest.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\r\b\u0086\u0081\u0002\u0018\u0000 \u00102\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0010B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0011"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$InputType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "INPUT_TYPE_INVALID", "SIGNATURE", "SELECTION", "PHONE", "EMAIL", "TEXT", "NUMERIC", "ADDRESS", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class InputType implements WireEnum {
            private static final /* synthetic */ EnumEntries $ENTRIES;
            private static final /* synthetic */ InputType[] $VALUES;
            public static final ProtoAdapter<InputType> ADAPTER;
            public static final InputType ADDRESS;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE;
            public static final InputType EMAIL;
            public static final InputType INPUT_TYPE_INVALID;
            public static final InputType NUMERIC;
            public static final InputType PHONE;
            public static final InputType SELECTION;
            public static final InputType SIGNATURE;
            public static final InputType TEXT;
            private final int value;

            private static final /* synthetic */ InputType[] $values() {
                return new InputType[]{INPUT_TYPE_INVALID, SIGNATURE, SELECTION, PHONE, EMAIL, TEXT, NUMERIC, ADDRESS};
            }

            @JvmStatic
            public static final InputType fromValue(int i) {
                return INSTANCE.fromValue(i);
            }

            public static EnumEntries<InputType> getEntries() {
                return $ENTRIES;
            }

            public static InputType valueOf(String str) {
                return (InputType) Enum.valueOf(InputType.class, str);
            }

            public static InputType[] values() {
                return (InputType[]) $VALUES.clone();
            }

            private InputType(String str, int i, int i2) {
                this.value = i2;
            }

            @Override // com.squareup.wire.WireEnum
            public int getValue() {
                return this.value;
            }

            static {
                final InputType inputType = new InputType("INPUT_TYPE_INVALID", 0, 0);
                INPUT_TYPE_INVALID = inputType;
                SIGNATURE = new InputType("SIGNATURE", 1, 1);
                SELECTION = new InputType("SELECTION", 2, 2);
                PHONE = new InputType("PHONE", 3, 3);
                EMAIL = new InputType("EMAIL", 4, 4);
                TEXT = new InputType("TEXT", 5, 5);
                NUMERIC = new InputType("NUMERIC", 6, 6);
                ADDRESS = new InputType("ADDRESS", 7, 7);
                InputType[] inputTypeArr$values = $values();
                $VALUES = inputTypeArr$values;
                $ENTRIES = EnumEntriesKt.enumEntries(inputTypeArr$values);
                INSTANCE = new Companion(null);
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(InputType.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new EnumAdapter<InputType>(orCreateKotlinClass, syntax, inputType) { // from class: com.stripe.proto.api.sdk.CollectInputsRequest$Input$InputType$Companion$ADAPTER$1
                    {
                        CollectInputsRequest.Input.InputType inputType2 = inputType;
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // com.squareup.wire.EnumAdapter
                    public CollectInputsRequest.Input.InputType fromValue(int value) {
                        return CollectInputsRequest.Input.InputType.INSTANCE.fromValue(value);
                    }
                };
            }

            /* JADX INFO: compiled from: CollectInputsRequest.kt */
            @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$InputType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$InputType;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                @JvmStatic
                public final InputType fromValue(int value) {
                    switch (value) {
                        case 0:
                            return InputType.INPUT_TYPE_INVALID;
                        case 1:
                            return InputType.SIGNATURE;
                        case 2:
                            return InputType.SELECTION;
                        case 3:
                            return InputType.PHONE;
                        case 4:
                            return InputType.EMAIL;
                        case 5:
                            return InputType.TEXT;
                        case 6:
                            return InputType.NUMERIC;
                        case 7:
                            return InputType.ADDRESS;
                        default:
                            return null;
                    }
                }
            }
        }
    }

    /* JADX INFO: compiled from: CollectInputsRequest.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B\u001f\u0012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ \u0010\t\u001a\u00020\u00002\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectInputsRequest$Selection;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Selection$Builder;", "choices", "", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Choice;", "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Selection extends Message<Selection, Builder> {
        public static final ProtoAdapter<Selection> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.proto.api.sdk.CollectInputsRequest$Choice#ADAPTER", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 1)
        public final List<Choice> choices;

        /* JADX WARN: Multi-variable type inference failed */
        public Selection() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        public /* synthetic */ Selection(List list, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Selection(List<Choice> choices, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(choices, "choices");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.choices = Internal.immutableCopyOf("choices", choices);
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.choices = this.choices;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof Selection)) {
                return false;
            }
            Selection selection = (Selection) other;
            return Intrinsics.areEqual(unknownFields(), selection.unknownFields()) && Intrinsics.areEqual(this.choices, selection.choices);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (unknownFields().hashCode() * 37) + this.choices.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (!this.choices.isEmpty()) {
                arrayList.add("choices=" + this.choices);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "Selection{", "}", 0, null, null, 56, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Selection copy$default(Selection selection, List list, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                list = selection.choices;
            }
            if ((i & 2) != 0) {
                byteString = selection.unknownFields();
            }
            return selection.copy(list, byteString);
        }

        public final Selection copy(List<Choice> choices, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(choices, "choices");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new Selection(choices, unknownFields);
        }

        /* JADX INFO: compiled from: CollectInputsRequest.kt */
        @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005R\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectInputsRequest$Selection$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Selection;", "()V", "choices", "", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Choice;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<Selection, Builder> {
            public List<Choice> choices = CollectionsKt.emptyList();

            public final Builder choices(List<Choice> choices) {
                Intrinsics.checkNotNullParameter(choices, "choices");
                Internal.checkElementsNotNull(choices);
                this.choices = choices;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public Selection build() {
                return new Selection(this.choices, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: CollectInputsRequest.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectInputsRequest$Selection$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Selection;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Selection$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Selection build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Selection.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<Selection>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.CollectInputsRequest$Selection$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(CollectInputsRequest.Selection value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.unknownFields().size() + CollectInputsRequest.Choice.ADAPTER.asRepeated().encodedSizeWithTag(1, value.choices);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, CollectInputsRequest.Selection value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    CollectInputsRequest.Choice.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.choices);
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, CollectInputsRequest.Selection value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    CollectInputsRequest.Choice.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.choices);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public CollectInputsRequest.Selection decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    ArrayList arrayList = new ArrayList();
                    long jBeginMessage = reader.beginMessage();
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new CollectInputsRequest.Selection(arrayList, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            arrayList.add(CollectInputsRequest.Choice.ADAPTER.decode(reader));
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public CollectInputsRequest.Selection redact(CollectInputsRequest.Selection value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.copy(Internal.m361redactElements(value.choices, CollectInputsRequest.Choice.ADAPTER), ByteString.EMPTY);
                }
            };
        }
    }

    /* JADX INFO: compiled from: CollectInputsRequest.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0013\u0014\u0015B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ$\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0006H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectInputsRequest$Choice;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Choice$Builder;", "style", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Choice$Style;", "value_", "", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/sdk/CollectInputsRequest$Choice$Style;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "Style", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Choice extends Message<Choice, Builder> {
        public static final ProtoAdapter<Choice> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.proto.api.sdk.CollectInputsRequest$Choice$Style#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final Style style;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", declaredName = "value", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final String value_;

        public Choice() {
            this(null, null, null, 7, null);
        }

        public /* synthetic */ Choice(Style style, String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? Style.STYLE_INVALID : style, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Choice(Style style, String value_, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(style, "style");
            Intrinsics.checkNotNullParameter(value_, "value_");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.style = style;
            this.value_ = value_;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.style = this.style;
            builder.value_ = this.value_;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof Choice)) {
                return false;
            }
            Choice choice = (Choice) other;
            return Intrinsics.areEqual(unknownFields(), choice.unknownFields()) && this.style == choice.style && Intrinsics.areEqual(this.value_, choice.value_);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((unknownFields().hashCode() * 37) + this.style.hashCode()) * 37) + this.value_.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("style=" + this.style);
            arrayList2.add("value_=" + Internal.sanitize(this.value_));
            return CollectionsKt.joinToString$default(arrayList, ", ", "Choice{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ Choice copy$default(Choice choice, Style style, String str, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                style = choice.style;
            }
            if ((i & 2) != 0) {
                str = choice.value_;
            }
            if ((i & 4) != 0) {
                byteString = choice.unknownFields();
            }
            return choice.copy(style, str, byteString);
        }

        public final Choice copy(Style style, String value_, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(style, "style");
            Intrinsics.checkNotNullParameter(value_, "value_");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new Choice(style, value_, unknownFields);
        }

        /* JADX INFO: compiled from: CollectInputsRequest.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectInputsRequest$Choice$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Choice;", "()V", "style", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Choice$Style;", "value_", "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<Choice, Builder> {
            public Style style = Style.STYLE_INVALID;
            public String value_ = "";

            public final Builder style(Style style) {
                Intrinsics.checkNotNullParameter(style, "style");
                this.style = style;
                return this;
            }

            public final Builder value_(String value_) {
                Intrinsics.checkNotNullParameter(value_, "value_");
                this.value_ = value_;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public Choice build() {
                return new Choice(this.style, this.value_, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: CollectInputsRequest.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectInputsRequest$Choice$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Choice;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Choice$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Choice build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Choice.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<Choice>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.CollectInputsRequest$Choice$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(CollectInputsRequest.Choice value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.style != CollectInputsRequest.Choice.Style.STYLE_INVALID) {
                        size += CollectInputsRequest.Choice.Style.ADAPTER.encodedSizeWithTag(1, value.style);
                    }
                    return !Intrinsics.areEqual(value.value_, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(2, value.value_) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, CollectInputsRequest.Choice value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.style != CollectInputsRequest.Choice.Style.STYLE_INVALID) {
                        CollectInputsRequest.Choice.Style.ADAPTER.encodeWithTag(writer, 1, value.style);
                    }
                    if (!Intrinsics.areEqual(value.value_, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.value_);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, CollectInputsRequest.Choice value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (!Intrinsics.areEqual(value.value_, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.value_);
                    }
                    if (value.style != CollectInputsRequest.Choice.Style.STYLE_INVALID) {
                        CollectInputsRequest.Choice.Style.ADAPTER.encodeWithTag(writer, 1, value.style);
                    }
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public CollectInputsRequest.Choice decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    CollectInputsRequest.Choice.Style styleDecode = CollectInputsRequest.Choice.Style.STYLE_INVALID;
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = "";
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new CollectInputsRequest.Choice(styleDecode, strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            try {
                                styleDecode = CollectInputsRequest.Choice.Style.ADAPTER.decode(reader);
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
                public CollectInputsRequest.Choice redact(CollectInputsRequest.Choice value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return CollectInputsRequest.Choice.copy$default(value, null, null, ByteString.EMPTY, 3, null);
                }
            };
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* JADX INFO: compiled from: CollectInputsRequest.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectInputsRequest$Choice$Style;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "STYLE_INVALID", "PRIMARY", "SECONDARY", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Style implements WireEnum {
            private static final /* synthetic */ EnumEntries $ENTRIES;
            private static final /* synthetic */ Style[] $VALUES;
            public static final ProtoAdapter<Style> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE;
            public static final Style PRIMARY;
            public static final Style SECONDARY;
            public static final Style STYLE_INVALID;
            private final int value;

            private static final /* synthetic */ Style[] $values() {
                return new Style[]{STYLE_INVALID, PRIMARY, SECONDARY};
            }

            @JvmStatic
            public static final Style fromValue(int i) {
                return INSTANCE.fromValue(i);
            }

            public static EnumEntries<Style> getEntries() {
                return $ENTRIES;
            }

            public static Style valueOf(String str) {
                return (Style) Enum.valueOf(Style.class, str);
            }

            public static Style[] values() {
                return (Style[]) $VALUES.clone();
            }

            private Style(String str, int i, int i2) {
                this.value = i2;
            }

            @Override // com.squareup.wire.WireEnum
            public int getValue() {
                return this.value;
            }

            static {
                final Style style = new Style("STYLE_INVALID", 0, 0);
                STYLE_INVALID = style;
                PRIMARY = new Style("PRIMARY", 1, 1);
                SECONDARY = new Style("SECONDARY", 2, 2);
                Style[] styleArr$values = $values();
                $VALUES = styleArr$values;
                $ENTRIES = EnumEntriesKt.enumEntries(styleArr$values);
                INSTANCE = new Companion(null);
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Style.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new EnumAdapter<Style>(orCreateKotlinClass, syntax, style) { // from class: com.stripe.proto.api.sdk.CollectInputsRequest$Choice$Style$Companion$ADAPTER$1
                    {
                        CollectInputsRequest.Choice.Style style2 = style;
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // com.squareup.wire.EnumAdapter
                    public CollectInputsRequest.Choice.Style fromValue(int value) {
                        return CollectInputsRequest.Choice.Style.INSTANCE.fromValue(value);
                    }
                };
            }

            /* JADX INFO: compiled from: CollectInputsRequest.kt */
            @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectInputsRequest$Choice$Style$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Choice$Style;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                @JvmStatic
                public final Style fromValue(int value) {
                    if (value == 0) {
                        return Style.STYLE_INVALID;
                    }
                    if (value == 1) {
                        return Style.PRIMARY;
                    }
                    if (value != 2) {
                        return null;
                    }
                    return Style.SECONDARY;
                }
            }
        }
    }

    /* JADX INFO: compiled from: CollectInputsRequest.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B7\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ8\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0004H\u0016R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectInputsRequest$CustomText;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$CustomText$Builder;", LinkHeader.Parameters.Title, "", "description", "submit_button", "skip_button", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class CustomText extends Message<CustomText, Builder> {
        public static final ProtoAdapter<CustomText> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final String description;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "skipButton", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
        public final String skip_button;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "submitButton", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
        public final String submit_button;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final String title;

        public CustomText() {
            this(null, null, null, null, null, 31, null);
        }

        public /* synthetic */ CustomText(String str, String str2, String str3, String str4, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? "" : str4, (i & 16) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CustomText(String title, String description, String submit_button, String skip_button, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(description, "description");
            Intrinsics.checkNotNullParameter(submit_button, "submit_button");
            Intrinsics.checkNotNullParameter(skip_button, "skip_button");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.title = title;
            this.description = description;
            this.submit_button = submit_button;
            this.skip_button = skip_button;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.title = this.title;
            builder.description = this.description;
            builder.submit_button = this.submit_button;
            builder.skip_button = this.skip_button;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof CustomText)) {
                return false;
            }
            CustomText customText = (CustomText) other;
            return Intrinsics.areEqual(unknownFields(), customText.unknownFields()) && Intrinsics.areEqual(this.title, customText.title) && Intrinsics.areEqual(this.description, customText.description) && Intrinsics.areEqual(this.submit_button, customText.submit_button) && Intrinsics.areEqual(this.skip_button, customText.skip_button);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((((((unknownFields().hashCode() * 37) + this.title.hashCode()) * 37) + this.description.hashCode()) * 37) + this.submit_button.hashCode()) * 37) + this.skip_button.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("title=" + Internal.sanitize(this.title));
            arrayList2.add("description=" + Internal.sanitize(this.description));
            arrayList2.add("submit_button=" + Internal.sanitize(this.submit_button));
            arrayList2.add("skip_button=" + Internal.sanitize(this.skip_button));
            return CollectionsKt.joinToString$default(arrayList, ", ", "CustomText{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ CustomText copy$default(CustomText customText, String str, String str2, String str3, String str4, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = customText.title;
            }
            if ((i & 2) != 0) {
                str2 = customText.description;
            }
            if ((i & 4) != 0) {
                str3 = customText.submit_button;
            }
            if ((i & 8) != 0) {
                str4 = customText.skip_button;
            }
            if ((i & 16) != 0) {
                byteString = customText.unknownFields();
            }
            ByteString byteString2 = byteString;
            String str5 = str3;
            return customText.copy(str, str2, str5, str4, byteString2);
        }

        public final CustomText copy(String title, String description, String submit_button, String skip_button, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(description, "description");
            Intrinsics.checkNotNullParameter(submit_button, "submit_button");
            Intrinsics.checkNotNullParameter(skip_button, "skip_button");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new CustomText(title, description, submit_button, skip_button, unknownFields);
        }

        /* JADX INFO: compiled from: CollectInputsRequest.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectInputsRequest$CustomText$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$CustomText;", "()V", "description", "", "skip_button", "submit_button", LinkHeader.Parameters.Title, "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<CustomText, Builder> {
            public String title = "";
            public String description = "";
            public String submit_button = "";
            public String skip_button = "";

            public final Builder title(String title) {
                Intrinsics.checkNotNullParameter(title, "title");
                this.title = title;
                return this;
            }

            public final Builder description(String description) {
                Intrinsics.checkNotNullParameter(description, "description");
                this.description = description;
                return this;
            }

            public final Builder submit_button(String submit_button) {
                Intrinsics.checkNotNullParameter(submit_button, "submit_button");
                this.submit_button = submit_button;
                return this;
            }

            public final Builder skip_button(String skip_button) {
                Intrinsics.checkNotNullParameter(skip_button, "skip_button");
                this.skip_button = skip_button;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public CustomText build() {
                return new CustomText(this.title, this.description, this.submit_button, this.skip_button, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: CollectInputsRequest.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectInputsRequest$CustomText$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$CustomText;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$CustomText$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ CustomText build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CustomText.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<CustomText>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.CollectInputsRequest$CustomText$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(CollectInputsRequest.CustomText value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (!Intrinsics.areEqual(value.title, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.title);
                    }
                    if (!Intrinsics.areEqual(value.description, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.description);
                    }
                    if (!Intrinsics.areEqual(value.submit_button, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.submit_button);
                    }
                    return !Intrinsics.areEqual(value.skip_button, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(4, value.skip_button) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, CollectInputsRequest.CustomText value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (!Intrinsics.areEqual(value.title, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.title);
                    }
                    if (!Intrinsics.areEqual(value.description, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.description);
                    }
                    if (!Intrinsics.areEqual(value.submit_button, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 3, value.submit_button);
                    }
                    if (!Intrinsics.areEqual(value.skip_button, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 4, value.skip_button);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, CollectInputsRequest.CustomText value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (!Intrinsics.areEqual(value.skip_button, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 4, value.skip_button);
                    }
                    if (!Intrinsics.areEqual(value.submit_button, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 3, value.submit_button);
                    }
                    if (!Intrinsics.areEqual(value.description, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.description);
                    }
                    if (Intrinsics.areEqual(value.title, "")) {
                        return;
                    }
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.title);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public CollectInputsRequest.CustomText redact(CollectInputsRequest.CustomText value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return CollectInputsRequest.CustomText.copy$default(value, null, null, null, null, ByteString.EMPTY, 15, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public CollectInputsRequest.CustomText decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = "";
                    String strDecode2 = "";
                    String strDecode3 = strDecode2;
                    String strDecode4 = strDecode3;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new CollectInputsRequest.CustomText(strDecode, strDecode2, strDecode3, strDecode4, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 2) {
                            strDecode2 = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 3) {
                            strDecode3 = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 4) {
                            strDecode4 = ProtoAdapter.STRING.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }

    /* JADX INFO: compiled from: CollectInputsRequest.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0014\u0015\u0016B-\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ.\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0004H\u0016R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectInputsRequest$Toggle;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Toggle$Builder;", LinkHeader.Parameters.Title, "", "description", "default_value", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Toggle$Value;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/sdk/CollectInputsRequest$Toggle$Value;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "Value", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Toggle extends Message<Toggle, Builder> {
        public static final ProtoAdapter<Toggle> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.proto.api.sdk.CollectInputsRequest$Toggle$Value#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
        public final Value default_value;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final String description;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final String title;

        public Toggle() {
            this(null, null, null, null, 15, null);
        }

        public /* synthetic */ Toggle(String str, String str2, Value value, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? Value.VALUE_INVALID : value, (i & 8) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Toggle(String title, String description, Value default_value, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(description, "description");
            Intrinsics.checkNotNullParameter(default_value, "default_value");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.title = title;
            this.description = description;
            this.default_value = default_value;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.title = this.title;
            builder.description = this.description;
            builder.default_value = this.default_value;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof Toggle)) {
                return false;
            }
            Toggle toggle = (Toggle) other;
            return Intrinsics.areEqual(unknownFields(), toggle.unknownFields()) && Intrinsics.areEqual(this.title, toggle.title) && Intrinsics.areEqual(this.description, toggle.description) && this.default_value == toggle.default_value;
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((((unknownFields().hashCode() * 37) + this.title.hashCode()) * 37) + this.description.hashCode()) * 37) + this.default_value.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("title=" + Internal.sanitize(this.title));
            arrayList2.add("description=" + Internal.sanitize(this.description));
            arrayList2.add("default_value=" + this.default_value);
            return CollectionsKt.joinToString$default(arrayList, ", ", "Toggle{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ Toggle copy$default(Toggle toggle, String str, String str2, Value value, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = toggle.title;
            }
            if ((i & 2) != 0) {
                str2 = toggle.description;
            }
            if ((i & 4) != 0) {
                value = toggle.default_value;
            }
            if ((i & 8) != 0) {
                byteString = toggle.unknownFields();
            }
            return toggle.copy(str, str2, value, byteString);
        }

        public final Toggle copy(String title, String description, Value default_value, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(description, "description");
            Intrinsics.checkNotNullParameter(default_value, "default_value");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new Toggle(title, description, default_value, unknownFields);
        }

        /* JADX INFO: compiled from: CollectInputsRequest.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectInputsRequest$Toggle$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Toggle;", "()V", "default_value", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Toggle$Value;", "description", "", LinkHeader.Parameters.Title, "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<Toggle, Builder> {
            public String title = "";
            public String description = "";
            public Value default_value = Value.VALUE_INVALID;

            public final Builder title(String title) {
                Intrinsics.checkNotNullParameter(title, "title");
                this.title = title;
                return this;
            }

            public final Builder description(String description) {
                Intrinsics.checkNotNullParameter(description, "description");
                this.description = description;
                return this;
            }

            public final Builder default_value(Value default_value) {
                Intrinsics.checkNotNullParameter(default_value, "default_value");
                this.default_value = default_value;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public Toggle build() {
                return new Toggle(this.title, this.description, this.default_value, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: CollectInputsRequest.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectInputsRequest$Toggle$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Toggle;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Toggle$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Toggle build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Toggle.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<Toggle>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.CollectInputsRequest$Toggle$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(CollectInputsRequest.Toggle value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (!Intrinsics.areEqual(value.title, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.title);
                    }
                    if (!Intrinsics.areEqual(value.description, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.description);
                    }
                    return value.default_value != CollectInputsRequest.Toggle.Value.VALUE_INVALID ? size + CollectInputsRequest.Toggle.Value.ADAPTER.encodedSizeWithTag(3, value.default_value) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, CollectInputsRequest.Toggle value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (!Intrinsics.areEqual(value.title, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.title);
                    }
                    if (!Intrinsics.areEqual(value.description, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.description);
                    }
                    if (value.default_value != CollectInputsRequest.Toggle.Value.VALUE_INVALID) {
                        CollectInputsRequest.Toggle.Value.ADAPTER.encodeWithTag(writer, 3, value.default_value);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, CollectInputsRequest.Toggle value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.default_value != CollectInputsRequest.Toggle.Value.VALUE_INVALID) {
                        CollectInputsRequest.Toggle.Value.ADAPTER.encodeWithTag(writer, 3, value.default_value);
                    }
                    if (!Intrinsics.areEqual(value.description, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.description);
                    }
                    if (Intrinsics.areEqual(value.title, "")) {
                        return;
                    }
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.title);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public CollectInputsRequest.Toggle decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    CollectInputsRequest.Toggle.Value valueDecode = CollectInputsRequest.Toggle.Value.VALUE_INVALID;
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = "";
                    String strDecode2 = "";
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new CollectInputsRequest.Toggle(strDecode, strDecode2, valueDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 2) {
                            strDecode2 = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 3) {
                            try {
                                valueDecode = CollectInputsRequest.Toggle.Value.ADAPTER.decode(reader);
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                            }
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public CollectInputsRequest.Toggle redact(CollectInputsRequest.Toggle value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return CollectInputsRequest.Toggle.copy$default(value, null, null, null, ByteString.EMPTY, 7, null);
                }
            };
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* JADX INFO: compiled from: CollectInputsRequest.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectInputsRequest$Toggle$Value;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "VALUE_INVALID", "ENABLED", "DISABLED", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Value implements WireEnum {
            private static final /* synthetic */ EnumEntries $ENTRIES;
            private static final /* synthetic */ Value[] $VALUES;
            public static final ProtoAdapter<Value> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE;
            public static final Value DISABLED;
            public static final Value ENABLED;
            public static final Value VALUE_INVALID;
            private final int value;

            private static final /* synthetic */ Value[] $values() {
                return new Value[]{VALUE_INVALID, ENABLED, DISABLED};
            }

            @JvmStatic
            public static final Value fromValue(int i) {
                return INSTANCE.fromValue(i);
            }

            public static EnumEntries<Value> getEntries() {
                return $ENTRIES;
            }

            public static Value valueOf(String str) {
                return (Value) Enum.valueOf(Value.class, str);
            }

            public static Value[] values() {
                return (Value[]) $VALUES.clone();
            }

            private Value(String str, int i, int i2) {
                this.value = i2;
            }

            @Override // com.squareup.wire.WireEnum
            public int getValue() {
                return this.value;
            }

            static {
                final Value value = new Value("VALUE_INVALID", 0, 0);
                VALUE_INVALID = value;
                ENABLED = new Value("ENABLED", 1, 1);
                DISABLED = new Value("DISABLED", 2, 2);
                Value[] valueArr$values = $values();
                $VALUES = valueArr$values;
                $ENTRIES = EnumEntriesKt.enumEntries(valueArr$values);
                INSTANCE = new Companion(null);
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Value.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new EnumAdapter<Value>(orCreateKotlinClass, syntax, value) { // from class: com.stripe.proto.api.sdk.CollectInputsRequest$Toggle$Value$Companion$ADAPTER$1
                    {
                        CollectInputsRequest.Toggle.Value value2 = value;
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // com.squareup.wire.EnumAdapter
                    public CollectInputsRequest.Toggle.Value fromValue(int value2) {
                        return CollectInputsRequest.Toggle.Value.INSTANCE.fromValue(value2);
                    }
                };
            }

            /* JADX INFO: compiled from: CollectInputsRequest.kt */
            @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectInputsRequest$Toggle$Value$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Toggle$Value;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                @JvmStatic
                public final Value fromValue(int value) {
                    if (value == 0) {
                        return Value.VALUE_INVALID;
                    }
                    if (value == 1) {
                        return Value.ENABLED;
                    }
                    if (value != 2) {
                        return null;
                    }
                    return Value.DISABLED;
                }
            }
        }
    }
}
