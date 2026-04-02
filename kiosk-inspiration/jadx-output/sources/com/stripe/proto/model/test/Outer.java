package com.stripe.proto.model.test;

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

/* JADX INFO: compiled from: Outer.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017BA\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006\u0012\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00040\b\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJB\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00062\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00040\b2\b\b\u0002\u0010\n\u001a\u00020\u000bJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\b\u0010\u0015\u001a\u00020\tH\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00040\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/model/test/Outer;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/test/Outer$Builder;", "inner_", "Lcom/stripe/proto/model/test/Inner;", "inners", "", "inner_map", "", "", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/test/Inner;Ljava/util/List;Ljava/util/Map;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Outer extends Message<Outer, Builder> {
    public static final ProtoAdapter<Outer> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.test.Inner#ADAPTER", declaredName = "inner", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final Inner inner_;

    @WireField(adapter = "com.stripe.proto.model.test.Inner#ADAPTER", jsonName = "innerMap", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 2, tag = 3)
    public final Map<String, Inner> inner_map;

    @WireField(adapter = "com.stripe.proto.model.test.Inner#ADAPTER", label = WireField.Label.REPEATED, schemaIndex = 1, tag = 2)
    public final List<Inner> inners;

    public Outer() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ Outer(Inner inner, List list, Map map, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : inner, (i & 2) != 0 ? CollectionsKt.emptyList() : list, (i & 4) != 0 ? MapsKt.emptyMap() : map, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Outer(Inner inner, List<Inner> inners, Map<String, Inner> inner_map, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(inners, "inners");
        Intrinsics.checkNotNullParameter(inner_map, "inner_map");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.inner_ = inner;
        this.inners = Internal.immutableCopyOf("inners", inners);
        this.inner_map = Internal.immutableCopyOf("inner_map", inner_map);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.inner_ = this.inner_;
        builder.inners = this.inners;
        builder.inner_map = this.inner_map;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof Outer)) {
            return false;
        }
        Outer outer = (Outer) other;
        return Intrinsics.areEqual(unknownFields(), outer.unknownFields()) && Intrinsics.areEqual(this.inner_, outer.inner_) && Intrinsics.areEqual(this.inners, outer.inners) && Intrinsics.areEqual(this.inner_map, outer.inner_map);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Inner inner = this.inner_;
        int iHashCode2 = ((((iHashCode + (inner != null ? inner.hashCode() : 0)) * 37) + this.inners.hashCode()) * 37) + this.inner_map.hashCode();
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.inner_ != null) {
            arrayList.add("inner_=" + this.inner_);
        }
        if (!this.inners.isEmpty()) {
            arrayList.add("inners=" + this.inners);
        }
        if (!this.inner_map.isEmpty()) {
            arrayList.add("inner_map=" + this.inner_map);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "Outer{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Outer copy$default(Outer outer, Inner inner, List list, Map map, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            inner = outer.inner_;
        }
        if ((i & 2) != 0) {
            list = outer.inners;
        }
        if ((i & 4) != 0) {
            map = outer.inner_map;
        }
        if ((i & 8) != 0) {
            byteString = outer.unknownFields();
        }
        return outer.copy(inner, list, map, byteString);
    }

    public final Outer copy(Inner inner_, List<Inner> inners, Map<String, Inner> inner_map, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(inners, "inners");
        Intrinsics.checkNotNullParameter(inner_map, "inner_map");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new Outer(inner_, inners, inner_map, unknownFields);
    }

    /* JADX INFO: compiled from: Outer.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u001a\u0010\u0006\u001a\u00020\u00002\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00050\u0007J\u0014\u0010\t\u001a\u00020\u00002\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\nR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00050\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/proto/model/test/Outer$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/test/Outer;", "()V", "inner_", "Lcom/stripe/proto/model/test/Inner;", "inner_map", "", "", "inners", "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<Outer, Builder> {
        public Inner inner_;
        public List<Inner> inners = CollectionsKt.emptyList();
        public Map<String, Inner> inner_map = MapsKt.emptyMap();

        public final Builder inner_(Inner inner_) {
            this.inner_ = inner_;
            return this;
        }

        public final Builder inners(List<Inner> inners) {
            Intrinsics.checkNotNullParameter(inners, "inners");
            Internal.checkElementsNotNull(inners);
            this.inners = inners;
            return this;
        }

        public final Builder inner_map(Map<String, Inner> inner_map) {
            Intrinsics.checkNotNullParameter(inner_map, "inner_map");
            this.inner_map = inner_map;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public Outer build() {
            return new Outer(this.inner_, this.inners, this.inner_map, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: Outer.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/test/Outer$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/test/Outer;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/test/Outer$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ Outer build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Outer.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<Outer>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.test.Outer$Companion$ADAPTER$1

            /* JADX INFO: renamed from: inner_mapAdapter$delegate, reason: from kotlin metadata */
            private final Lazy inner_mapAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends Inner>>>() { // from class: com.stripe.proto.model.test.Outer$Companion$ADAPTER$1$inner_mapAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends Inner>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, Inner.ADAPTER);
                }
            });

            private final ProtoAdapter<Map<String, Inner>> getInner_mapAdapter() {
                return (ProtoAdapter) this.inner_mapAdapter.getValue();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(Outer value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.inner_ != null) {
                    size += Inner.ADAPTER.encodedSizeWithTag(1, value.inner_);
                }
                return size + Inner.ADAPTER.asRepeated().encodedSizeWithTag(2, value.inners) + getInner_mapAdapter().encodedSizeWithTag(3, value.inner_map);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, Outer value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.inner_ != null) {
                    Inner.ADAPTER.encodeWithTag(writer, 1, value.inner_);
                }
                Inner.ADAPTER.asRepeated().encodeWithTag(writer, 2, value.inners);
                getInner_mapAdapter().encodeWithTag(writer, 3, value.inner_map);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, Outer value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                getInner_mapAdapter().encodeWithTag(writer, 3, value.inner_map);
                Inner.ADAPTER.asRepeated().encodeWithTag(writer, 2, value.inners);
                if (value.inner_ != null) {
                    Inner.ADAPTER.encodeWithTag(writer, 1, value.inner_);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public Outer decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                long jBeginMessage = reader.beginMessage();
                Inner innerDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new Outer(innerDecode, arrayList, linkedHashMap, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        innerDecode = Inner.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        arrayList.add(Inner.ADAPTER.decode(reader));
                    } else if (iNextTag == 3) {
                        linkedHashMap.putAll(getInner_mapAdapter().decode(reader));
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public Outer redact(Outer value) {
                Intrinsics.checkNotNullParameter(value, "value");
                Inner inner = value.inner_;
                return value.copy(inner != null ? Inner.ADAPTER.redact(inner) : null, Internal.m361redactElements(value.inners, Inner.ADAPTER), Internal.m362redactElements(value.inner_map, Inner.ADAPTER), ByteString.EMPTY);
            }
        };
    }
}
