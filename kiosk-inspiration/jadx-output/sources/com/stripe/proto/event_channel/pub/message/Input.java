package com.stripe.proto.event_channel.pub.message;

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
import com.stripe.proto.event_channel.pub.message.Input;
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

/* JADX INFO: compiled from: Input.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u001b2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u001a\u001b\u001cBK\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010JL\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f2\b\b\u0002\u0010\u000e\u001a\u00020\u000fJ\u0013\u0010\u0012\u001a\u00020\b2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0002H\u0016J\b\u0010\u0018\u001a\u00020\u0019H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/Input;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/event_channel/pub/message/Input$Builder;", "type", "Lcom/stripe/proto/event_channel/pub/message/Input$InputType;", "custom_text", "Lcom/stripe/proto/event_channel/pub/message/CustomText;", "required", "", "selection", "Lcom/stripe/proto/event_channel/pub/message/Selection;", "toggles", "", "Lcom/stripe/proto/event_channel/pub/message/Toggle;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/event_channel/pub/message/Input$InputType;Lcom/stripe/proto/event_channel/pub/message/CustomText;ZLcom/stripe/proto/event_channel/pub/message/Selection;Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "InputType", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Input extends Message<Input, Builder> {
    public static final ProtoAdapter<Input> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.event_channel.pub.message.CustomText#ADAPTER", jsonName = "customText", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final CustomText custom_text;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final boolean required;

    @WireField(adapter = "com.stripe.proto.event_channel.pub.message.Selection#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final Selection selection;

    @WireField(adapter = "com.stripe.proto.event_channel.pub.message.Toggle#ADAPTER", label = WireField.Label.REPEATED, schemaIndex = 4, tag = 5)
    public final List<Toggle> toggles;

    @WireField(adapter = "com.stripe.proto.event_channel.pub.message.Input$InputType#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final InputType type;

    public Input() {
        this(null, null, false, null, null, null, 63, null);
    }

    public /* synthetic */ Input(InputType inputType, CustomText customText, boolean z, Selection selection, List list, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? InputType.INPUT_TYPE_INVALID : inputType, (i & 2) != 0 ? null : customText, (i & 4) != 0 ? false : z, (i & 8) != 0 ? null : selection, (i & 16) != 0 ? CollectionsKt.emptyList() : list, (i & 32) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Input(InputType type, CustomText customText, boolean z, Selection selection, List<Toggle> toggles, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(toggles, "toggles");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.type = type;
        this.custom_text = customText;
        this.required = z;
        this.selection = selection;
        this.toggles = Internal.immutableCopyOf("toggles", toggles);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.type = this.type;
        builder.custom_text = this.custom_text;
        builder.required = this.required;
        builder.selection = this.selection;
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
        return Intrinsics.areEqual(unknownFields(), input.unknownFields()) && this.type == input.type && Intrinsics.areEqual(this.custom_text, input.custom_text) && this.required == input.required && Intrinsics.areEqual(this.selection, input.selection) && Intrinsics.areEqual(this.toggles, input.toggles);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + this.type.hashCode()) * 37;
        CustomText customText = this.custom_text;
        int iHashCode2 = (((iHashCode + (customText != null ? customText.hashCode() : 0)) * 37) + Boolean.hashCode(this.required)) * 37;
        Selection selection = this.selection;
        int iHashCode3 = ((iHashCode2 + (selection != null ? selection.hashCode() : 0)) * 37) + this.toggles.hashCode();
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("type=" + this.type);
        if (this.custom_text != null) {
            arrayList2.add("custom_text=" + this.custom_text);
        }
        arrayList2.add("required=" + this.required);
        if (this.selection != null) {
            arrayList2.add("selection=" + this.selection);
        }
        if (!this.toggles.isEmpty()) {
            arrayList2.add("toggles=" + this.toggles);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "Input{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Input copy$default(Input input, InputType inputType, CustomText customText, boolean z, Selection selection, List list, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            inputType = input.type;
        }
        if ((i & 2) != 0) {
            customText = input.custom_text;
        }
        if ((i & 4) != 0) {
            z = input.required;
        }
        if ((i & 8) != 0) {
            selection = input.selection;
        }
        if ((i & 16) != 0) {
            list = input.toggles;
        }
        if ((i & 32) != 0) {
            byteString = input.unknownFields();
        }
        List list2 = list;
        ByteString byteString2 = byteString;
        return input.copy(inputType, customText, z, selection, list2, byteString2);
    }

    public final Input copy(InputType type, CustomText custom_text, boolean required, Selection selection, List<Toggle> toggles, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(toggles, "toggles");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new Input(type, custom_text, required, selection, toggles, unknownFields);
    }

    /* JADX INFO: compiled from: Input.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0014\u0010\n\u001a\u00020\u00002\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/Input$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/event_channel/pub/message/Input;", "()V", "custom_text", "Lcom/stripe/proto/event_channel/pub/message/CustomText;", "required", "", "selection", "Lcom/stripe/proto/event_channel/pub/message/Selection;", "toggles", "", "Lcom/stripe/proto/event_channel/pub/message/Toggle;", "type", "Lcom/stripe/proto/event_channel/pub/message/Input$InputType;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<Input, Builder> {
        public CustomText custom_text;
        public boolean required;
        public Selection selection;
        public InputType type = InputType.INPUT_TYPE_INVALID;
        public List<Toggle> toggles = CollectionsKt.emptyList();

        public final Builder type(InputType type) {
            Intrinsics.checkNotNullParameter(type, "type");
            this.type = type;
            return this;
        }

        public final Builder custom_text(CustomText custom_text) {
            this.custom_text = custom_text;
            return this;
        }

        public final Builder required(boolean required) {
            this.required = required;
            return this;
        }

        public final Builder selection(Selection selection) {
            this.selection = selection;
            return this;
        }

        public final Builder toggles(List<Toggle> toggles) {
            Intrinsics.checkNotNullParameter(toggles, "toggles");
            Internal.checkElementsNotNull(toggles);
            this.toggles = toggles;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public Input build() {
            return new Input(this.type, this.custom_text, this.required, this.selection, this.toggles, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: Input.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/Input$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/event_channel/pub/message/Input;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/event_channel/pub/message/Input$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
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
        ADAPTER = new ProtoAdapter<Input>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.event_channel.pub.message.Input$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(Input value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.type != Input.InputType.INPUT_TYPE_INVALID) {
                    size += Input.InputType.ADAPTER.encodedSizeWithTag(1, value.type);
                }
                if (value.custom_text != null) {
                    size += CustomText.ADAPTER.encodedSizeWithTag(2, value.custom_text);
                }
                if (value.required) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(3, Boolean.valueOf(value.required));
                }
                if (value.selection != null) {
                    size += Selection.ADAPTER.encodedSizeWithTag(4, value.selection);
                }
                return size + Toggle.ADAPTER.asRepeated().encodedSizeWithTag(5, value.toggles);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, Input value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.type != Input.InputType.INPUT_TYPE_INVALID) {
                    Input.InputType.ADAPTER.encodeWithTag(writer, 1, value.type);
                }
                if (value.custom_text != null) {
                    CustomText.ADAPTER.encodeWithTag(writer, 2, value.custom_text);
                }
                if (value.required) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 3, Boolean.valueOf(value.required));
                }
                if (value.selection != null) {
                    Selection.ADAPTER.encodeWithTag(writer, 4, value.selection);
                }
                Toggle.ADAPTER.asRepeated().encodeWithTag(writer, 5, value.toggles);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, Input value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                Toggle.ADAPTER.asRepeated().encodeWithTag(writer, 5, value.toggles);
                if (value.selection != null) {
                    Selection.ADAPTER.encodeWithTag(writer, 4, value.selection);
                }
                if (value.required) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 3, Boolean.valueOf(value.required));
                }
                if (value.custom_text != null) {
                    CustomText.ADAPTER.encodeWithTag(writer, 2, value.custom_text);
                }
                if (value.type != Input.InputType.INPUT_TYPE_INVALID) {
                    Input.InputType.ADAPTER.encodeWithTag(writer, 1, value.type);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public Input decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                Input.InputType inputType = Input.InputType.INPUT_TYPE_INVALID;
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                Selection selectionDecode = null;
                boolean zBooleanValue = false;
                Input.InputType inputTypeDecode = inputType;
                CustomText customTextDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new Input(inputTypeDecode, customTextDecode, zBooleanValue, selectionDecode, arrayList, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        try {
                            inputTypeDecode = Input.InputType.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else if (iNextTag == 2) {
                        customTextDecode = CustomText.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                    } else if (iNextTag == 4) {
                        selectionDecode = Selection.ADAPTER.decode(reader);
                    } else if (iNextTag == 5) {
                        arrayList.add(Toggle.ADAPTER.decode(reader));
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public Input redact(Input value) {
                Intrinsics.checkNotNullParameter(value, "value");
                CustomText customText = value.custom_text;
                CustomText customTextRedact = customText != null ? CustomText.ADAPTER.redact(customText) : null;
                Selection selection = value.selection;
                return Input.copy$default(value, null, customTextRedact, false, selection != null ? Selection.ADAPTER.redact(selection) : null, Internal.m361redactElements(value.toggles, Toggle.ADAPTER), ByteString.EMPTY, 5, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: Input.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\r\b\u0086\u0081\u0002\u0018\u0000 \u00102\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0010B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0011"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/Input$InputType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "INPUT_TYPE_INVALID", "SIGNATURE", "SELECTION", "PHONE", "EMAIL", "TEXT", "NUMERIC", "ADDRESS", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
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
            ADAPTER = new EnumAdapter<InputType>(orCreateKotlinClass, syntax, inputType) { // from class: com.stripe.proto.event_channel.pub.message.Input$InputType$Companion$ADAPTER$1
                {
                    Input.InputType inputType2 = inputType;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public Input.InputType fromValue(int value) {
                    return Input.InputType.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: Input.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/Input$InputType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/event_channel/pub/message/Input$InputType;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
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
