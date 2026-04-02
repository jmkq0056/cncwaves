package com.stripe.proto.event_channel.pub.message;

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
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: CollectInputsPayload.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B5\u0012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0014\b\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ6\u0010\f\u001a\u00020\u00002\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0014\b\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u00072\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\bH\u0016R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload$Builder;", "inputs", "", "Lcom/stripe/proto/event_channel/pub/message/Input;", "metadata", "", "", "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Ljava/util/Map;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CollectInputsPayload extends Message<CollectInputsPayload, Builder> {
    public static final ProtoAdapter<CollectInputsPayload> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.event_channel.pub.message.Input#ADAPTER", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 1)
    public final List<Input> inputs;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 1, tag = 2)
    public final Map<String, String> metadata;

    public CollectInputsPayload() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ CollectInputsPayload(List list, Map map, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? MapsKt.emptyMap() : map, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectInputsPayload(List<Input> inputs, Map<String, String> metadata, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(inputs, "inputs");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.inputs = Internal.immutableCopyOf("inputs", inputs);
        this.metadata = Internal.immutableCopyOf("metadata", metadata);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.inputs = this.inputs;
        builder.metadata = this.metadata;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CollectInputsPayload)) {
            return false;
        }
        CollectInputsPayload collectInputsPayload = (CollectInputsPayload) other;
        return Intrinsics.areEqual(unknownFields(), collectInputsPayload.unknownFields()) && Intrinsics.areEqual(this.inputs, collectInputsPayload.inputs) && Intrinsics.areEqual(this.metadata, collectInputsPayload.metadata);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((unknownFields().hashCode() * 37) + this.inputs.hashCode()) * 37) + this.metadata.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (!this.inputs.isEmpty()) {
            arrayList.add("inputs=" + this.inputs);
        }
        if (!this.metadata.isEmpty()) {
            arrayList.add("metadata=" + this.metadata);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "CollectInputsPayload{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CollectInputsPayload copy$default(CollectInputsPayload collectInputsPayload, List list, Map map, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            list = collectInputsPayload.inputs;
        }
        if ((i & 2) != 0) {
            map = collectInputsPayload.metadata;
        }
        if ((i & 4) != 0) {
            byteString = collectInputsPayload.unknownFields();
        }
        return collectInputsPayload.copy(list, map, byteString);
    }

    public final CollectInputsPayload copy(List<Input> inputs, Map<String, String> metadata, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(inputs, "inputs");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CollectInputsPayload(inputs, metadata, unknownFields);
    }

    /* JADX INFO: compiled from: CollectInputsPayload.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u001a\u0010\u0007\u001a\u00020\u00002\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\bR\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;", "()V", "inputs", "", "Lcom/stripe/proto/event_channel/pub/message/Input;", "metadata", "", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CollectInputsPayload, Builder> {
        public List<Input> inputs = CollectionsKt.emptyList();
        public Map<String, String> metadata = MapsKt.emptyMap();

        public final Builder inputs(List<Input> inputs) {
            Intrinsics.checkNotNullParameter(inputs, "inputs");
            Internal.checkElementsNotNull(inputs);
            this.inputs = inputs;
            return this;
        }

        public final Builder metadata(Map<String, String> metadata) {
            Intrinsics.checkNotNullParameter(metadata, "metadata");
            this.metadata = metadata;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CollectInputsPayload build() {
            return new CollectInputsPayload(this.inputs, this.metadata, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CollectInputsPayload.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CollectInputsPayload build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CollectInputsPayload.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CollectInputsPayload>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.event_channel.pub.message.CollectInputsPayload$Companion$ADAPTER$1

            /* JADX INFO: renamed from: metadataAdapter$delegate, reason: from kotlin metadata */
            private final Lazy metadataAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends String>>>() { // from class: com.stripe.proto.event_channel.pub.message.CollectInputsPayload$Companion$ADAPTER$1$metadataAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends String>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.STRING);
                }
            });

            private final ProtoAdapter<Map<String, String>> getMetadataAdapter() {
                return (ProtoAdapter) this.metadataAdapter.getValue();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CollectInputsPayload value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + Input.ADAPTER.asRepeated().encodedSizeWithTag(1, value.inputs) + getMetadataAdapter().encodedSizeWithTag(2, value.metadata);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CollectInputsPayload value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                Input.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.inputs);
                getMetadataAdapter().encodeWithTag(writer, 2, value.metadata);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CollectInputsPayload value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                getMetadataAdapter().encodeWithTag(writer, 2, value.metadata);
                Input.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.inputs);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CollectInputsPayload decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                long jBeginMessage = reader.beginMessage();
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CollectInputsPayload(arrayList, linkedHashMap, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        arrayList.add(Input.ADAPTER.decode(reader));
                    } else if (iNextTag == 2) {
                        linkedHashMap.putAll(getMetadataAdapter().decode(reader));
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CollectInputsPayload redact(CollectInputsPayload value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return CollectInputsPayload.copy$default(value, Internal.m361redactElements(value.inputs, Input.ADAPTER), null, ByteString.EMPTY, 2, null);
            }
        };
    }
}
