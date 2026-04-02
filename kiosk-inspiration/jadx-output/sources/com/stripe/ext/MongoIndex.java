package com.stripe.ext;

import com.google.android.gms.actions.SearchIntents;
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
import com.stripe.ext.MongoIndex;
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

/* JADX INFO: compiled from: MongoIndex.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u0000 \u00192\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\b\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001fB;\u0012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJA\u0010\u000e\u001a\u00020\u00002\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u00042\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00072\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0002H\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0016R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\r¨\u0006 "}, d2 = {"Lcom/stripe/ext/MongoIndex;", "Lcom/squareup/wire/Message;", "Lcom/stripe/ext/MongoIndex$Builder;", "field_", "", "Lcom/stripe/ext/MongoIndex$Field;", "unique", "", SearchIntents.EXTRA_QUERY, "Lcom/stripe/ext/MongoIndex$Query;", "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Lokio/ByteString;)V", "Ljava/lang/Boolean;", "copy", "(Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Lokio/ByteString;)Lcom/stripe/ext/MongoIndex;", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "Field", "Operator", "Order", "Prop", "Query", "Sort", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MongoIndex extends Message<MongoIndex, Builder> {
    public static final ProtoAdapter<MongoIndex> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.ext.MongoIndex$Field#ADAPTER", declaredName = "field", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 1)
    public final List<Field> field_;

    @WireField(adapter = "com.stripe.ext.MongoIndex$Query#ADAPTER", label = WireField.Label.REPEATED, schemaIndex = 2, tag = 3)
    public final List<Query> query;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", schemaIndex = 1, tag = 2)
    public final Boolean unique;

    public MongoIndex() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ MongoIndex(List list, Boolean bool, List list2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? null : bool, (i & 4) != 0 ? CollectionsKt.emptyList() : list2, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MongoIndex(List<Field> field_, Boolean bool, List<Query> query, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(field_, "field_");
        Intrinsics.checkNotNullParameter(query, "query");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.unique = bool;
        this.field_ = Internal.immutableCopyOf("field_", field_);
        this.query = Internal.immutableCopyOf(SearchIntents.EXTRA_QUERY, query);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.field_ = this.field_;
        builder.unique = this.unique;
        builder.query = this.query;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof MongoIndex)) {
            return false;
        }
        MongoIndex mongoIndex = (MongoIndex) other;
        return Intrinsics.areEqual(unknownFields(), mongoIndex.unknownFields()) && Intrinsics.areEqual(this.field_, mongoIndex.field_) && Intrinsics.areEqual(this.unique, mongoIndex.unique) && Intrinsics.areEqual(this.query, mongoIndex.query);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + this.field_.hashCode()) * 37;
        Boolean bool = this.unique;
        int iHashCode2 = ((iHashCode + (bool != null ? bool.hashCode() : 0)) * 37) + this.query.hashCode();
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (!this.field_.isEmpty()) {
            arrayList.add("field_=" + this.field_);
        }
        if (this.unique != null) {
            arrayList.add("unique=" + this.unique);
        }
        if (!this.query.isEmpty()) {
            arrayList.add("query=" + this.query);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "MongoIndex{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ MongoIndex copy$default(MongoIndex mongoIndex, List list, Boolean bool, List list2, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            list = mongoIndex.field_;
        }
        if ((i & 2) != 0) {
            bool = mongoIndex.unique;
        }
        if ((i & 4) != 0) {
            list2 = mongoIndex.query;
        }
        if ((i & 8) != 0) {
            byteString = mongoIndex.unknownFields();
        }
        return mongoIndex.copy(list, bool, list2, byteString);
    }

    public final MongoIndex copy(List<Field> field_, Boolean unique, List<Query> query, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(field_, "field_");
        Intrinsics.checkNotNullParameter(query, "query");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new MongoIndex(field_, unique, query, unknownFields);
    }

    /* JADX INFO: compiled from: MongoIndex.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\f\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0014\u0010\u0007\u001a\u00020\u00002\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0005J\u0015\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\rR\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/stripe/ext/MongoIndex$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/ext/MongoIndex;", "()V", "field_", "", "Lcom/stripe/ext/MongoIndex$Field;", SearchIntents.EXTRA_QUERY, "Lcom/stripe/ext/MongoIndex$Query;", "unique", "", "Ljava/lang/Boolean;", "build", "(Ljava/lang/Boolean;)Lcom/stripe/ext/MongoIndex$Builder;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<MongoIndex, Builder> {
        public List<Field> field_ = CollectionsKt.emptyList();
        public List<Query> query = CollectionsKt.emptyList();
        public Boolean unique;

        public final Builder field_(List<Field> field_) {
            Intrinsics.checkNotNullParameter(field_, "field_");
            Internal.checkElementsNotNull(field_);
            this.field_ = field_;
            return this;
        }

        public final Builder unique(Boolean unique) {
            this.unique = unique;
            return this;
        }

        public final Builder query(List<Query> query) {
            Intrinsics.checkNotNullParameter(query, "query");
            Internal.checkElementsNotNull(query);
            this.query = query;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public MongoIndex build() {
            return new MongoIndex(this.field_, this.unique, this.query, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: MongoIndex.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/ext/MongoIndex$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/ext/MongoIndex;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/ext/MongoIndex$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ MongoIndex build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(MongoIndex.class);
        final Syntax syntax = Syntax.PROTO_2;
        ADAPTER = new ProtoAdapter<MongoIndex>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.ext.MongoIndex$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(MongoIndex value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + MongoIndex.Field.ADAPTER.asRepeated().encodedSizeWithTag(1, value.field_) + ProtoAdapter.BOOL.encodedSizeWithTag(2, value.unique) + MongoIndex.Query.ADAPTER.asRepeated().encodedSizeWithTag(3, value.query);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, MongoIndex value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                MongoIndex.Field.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.field_);
                ProtoAdapter.BOOL.encodeWithTag(writer, 2, value.unique);
                MongoIndex.Query.ADAPTER.asRepeated().encodeWithTag(writer, 3, value.query);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, MongoIndex value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                MongoIndex.Query.ADAPTER.asRepeated().encodeWithTag(writer, 3, value.query);
                ProtoAdapter.BOOL.encodeWithTag(writer, 2, value.unique);
                MongoIndex.Field.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.field_);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public MongoIndex decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                Boolean boolDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new MongoIndex(arrayList, boolDecode, arrayList2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        arrayList.add(MongoIndex.Field.ADAPTER.decode(reader));
                    } else if (iNextTag == 2) {
                        boolDecode = ProtoAdapter.BOOL.decode(reader);
                    } else if (iNextTag == 3) {
                        arrayList2.add(MongoIndex.Query.ADAPTER.decode(reader));
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public MongoIndex redact(MongoIndex value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return MongoIndex.copy$default(value, Internal.m361redactElements(value.field_, MongoIndex.Field.ADAPTER), null, Internal.m361redactElements(value.query, MongoIndex.Query.ADAPTER), ByteString.EMPTY, 2, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: MongoIndex.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/stripe/ext/MongoIndex$Order;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "ASC", "DESC", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Order implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Order[] $VALUES;
        public static final ProtoAdapter<Order> ADAPTER;
        public static final Order ASC;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final Order DESC;
        private final int value;

        private static final /* synthetic */ Order[] $values() {
            return new Order[]{ASC, DESC};
        }

        @JvmStatic
        public static final Order fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<Order> getEntries() {
            return $ENTRIES;
        }

        public static Order valueOf(String str) {
            return (Order) Enum.valueOf(Order.class, str);
        }

        public static Order[] values() {
            return (Order[]) $VALUES.clone();
        }

        private Order(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final Order order = new Order("ASC", 0, 0);
            ASC = order;
            DESC = new Order("DESC", 1, 1);
            Order[] orderArr$values = $values();
            $VALUES = orderArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(orderArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Order.class);
            final Syntax syntax = Syntax.PROTO_2;
            ADAPTER = new EnumAdapter<Order>(orCreateKotlinClass, syntax, order) { // from class: com.stripe.ext.MongoIndex$Order$Companion$ADAPTER$1
                {
                    MongoIndex.Order order2 = order;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public MongoIndex.Order fromValue(int value) {
                    return MongoIndex.Order.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: MongoIndex.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/ext/MongoIndex$Order$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/ext/MongoIndex$Order;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final Order fromValue(int value) {
                if (value == 0) {
                    return Order.ASC;
                }
                if (value != 1) {
                    return null;
                }
                return Order.DESC;
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: MongoIndex.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\b\u0086\u0081\u0002\u0018\u0000 \u00112\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0011B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0012"}, d2 = {"Lcom/stripe/ext/MongoIndex$Operator;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "EQ", "NE", "GT", "GTE", "LT", "LTE", "IN", "NIN", "REGEX", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Operator implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Operator[] $VALUES;
        public static final ProtoAdapter<Operator> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final Operator EQ;
        public static final Operator GT;
        public static final Operator GTE;
        public static final Operator IN;
        public static final Operator LT;
        public static final Operator LTE;
        public static final Operator NE;
        public static final Operator NIN;
        public static final Operator REGEX;
        private final int value;

        private static final /* synthetic */ Operator[] $values() {
            return new Operator[]{EQ, NE, GT, GTE, LT, LTE, IN, NIN, REGEX};
        }

        @JvmStatic
        public static final Operator fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<Operator> getEntries() {
            return $ENTRIES;
        }

        public static Operator valueOf(String str) {
            return (Operator) Enum.valueOf(Operator.class, str);
        }

        public static Operator[] values() {
            return (Operator[]) $VALUES.clone();
        }

        private Operator(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final Operator operator = new Operator("EQ", 0, 0);
            EQ = operator;
            NE = new Operator("NE", 1, 1);
            GT = new Operator("GT", 2, 2);
            GTE = new Operator("GTE", 3, 3);
            LT = new Operator("LT", 4, 4);
            LTE = new Operator("LTE", 5, 5);
            IN = new Operator("IN", 6, 6);
            NIN = new Operator("NIN", 7, 7);
            REGEX = new Operator("REGEX", 8, 8);
            Operator[] operatorArr$values = $values();
            $VALUES = operatorArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(operatorArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Operator.class);
            final Syntax syntax = Syntax.PROTO_2;
            ADAPTER = new EnumAdapter<Operator>(orCreateKotlinClass, syntax, operator) { // from class: com.stripe.ext.MongoIndex$Operator$Companion$ADAPTER$1
                {
                    MongoIndex.Operator operator2 = operator;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public MongoIndex.Operator fromValue(int value) {
                    return MongoIndex.Operator.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: MongoIndex.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/ext/MongoIndex$Operator$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/ext/MongoIndex$Operator;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final Operator fromValue(int value) {
                switch (value) {
                    case 0:
                        return Operator.EQ;
                    case 1:
                        return Operator.NE;
                    case 2:
                        return Operator.GT;
                    case 3:
                        return Operator.GTE;
                    case 4:
                        return Operator.LT;
                    case 5:
                        return Operator.LTE;
                    case 6:
                        return Operator.IN;
                    case 7:
                        return Operator.NIN;
                    case 8:
                        return Operator.REGEX;
                    default:
                        return null;
                }
            }
        }
    }

    /* JADX INFO: compiled from: MongoIndex.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B#\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ&\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/ext/MongoIndex$Field;", "Lcom/squareup/wire/Message;", "Lcom/stripe/ext/MongoIndex$Field$Builder;", "name", "", "order", "Lcom/stripe/ext/MongoIndex$Order;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lcom/stripe/ext/MongoIndex$Order;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Field extends Message<Field, Builder> {
        public static final ProtoAdapter<Field> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.REQUIRED, schemaIndex = 0, tag = 1)
        public final String name;

        @WireField(adapter = "com.stripe.ext.MongoIndex$Order#ADAPTER", schemaIndex = 1, tag = 2)
        public final Order order;

        public /* synthetic */ Field(String str, Order order, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i & 2) != 0 ? null : order, (i & 4) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Field(String name, Order order, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.name = name;
            this.order = order;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.name = this.name;
            builder.order = this.order;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof Field)) {
                return false;
            }
            Field field = (Field) other;
            return Intrinsics.areEqual(unknownFields(), field.unknownFields()) && Intrinsics.areEqual(this.name, field.name) && this.order == field.order;
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = ((unknownFields().hashCode() * 37) + this.name.hashCode()) * 37;
            Order order = this.order;
            int iHashCode2 = iHashCode + (order != null ? order.hashCode() : 0);
            this.hashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("name=" + Internal.sanitize(this.name));
            if (this.order != null) {
                arrayList2.add("order=" + this.order);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "Field{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ Field copy$default(Field field, String str, Order order, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = field.name;
            }
            if ((i & 2) != 0) {
                order = field.order;
            }
            if ((i & 4) != 0) {
                byteString = field.unknownFields();
            }
            return field.copy(str, order, byteString);
        }

        public final Field copy(String name, Order order, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new Field(name, order, unknownFields);
        }

        /* JADX INFO: compiled from: MongoIndex.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/ext/MongoIndex$Field$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/ext/MongoIndex$Field;", "()V", "name", "", "order", "Lcom/stripe/ext/MongoIndex$Order;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<Field, Builder> {
            public String name;
            public Order order;

            public final Builder name(String name) {
                Intrinsics.checkNotNullParameter(name, "name");
                this.name = name;
                return this;
            }

            public final Builder order(Order order) {
                this.order = order;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public Field build() {
                String str = this.name;
                if (str != null) {
                    return new Field(str, this.order, buildUnknownFields());
                }
                throw Internal.missingRequiredFields(str, "name");
            }
        }

        /* JADX INFO: compiled from: MongoIndex.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/ext/MongoIndex$Field$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/ext/MongoIndex$Field;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/ext/MongoIndex$Field$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Field build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Field.class);
            final Syntax syntax = Syntax.PROTO_2;
            ADAPTER = new ProtoAdapter<Field>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.ext.MongoIndex$Field$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(MongoIndex.Field value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.unknownFields().size() + ProtoAdapter.STRING.encodedSizeWithTag(1, value.name) + MongoIndex.Order.ADAPTER.encodedSizeWithTag(2, value.order);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, MongoIndex.Field value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.name);
                    MongoIndex.Order.ADAPTER.encodeWithTag(writer, 2, value.order);
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, MongoIndex.Field value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    MongoIndex.Order.ADAPTER.encodeWithTag(writer, 2, value.order);
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.name);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public MongoIndex.Field redact(MongoIndex.Field value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return MongoIndex.Field.copy$default(value, null, null, ByteString.EMPTY, 3, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public MongoIndex.Field decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = null;
                    MongoIndex.Order orderDecode = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            break;
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 2) {
                            try {
                                orderDecode = MongoIndex.Order.ADAPTER.decode(reader);
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                            }
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                    ByteString byteStringEndMessageAndGetUnknownFields = reader.endMessageAndGetUnknownFields(jBeginMessage);
                    String str = strDecode;
                    if (str != null) {
                        return new MongoIndex.Field(str, orderDecode, byteStringEndMessageAndGetUnknownFields);
                    }
                    throw Internal.missingRequiredFields(strDecode, "name");
                }
            };
        }
    }

    /* JADX INFO: compiled from: MongoIndex.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B#\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ&\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0004H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/ext/MongoIndex$Prop;", "Lcom/squareup/wire/Message;", "Lcom/stripe/ext/MongoIndex$Prop$Builder;", "name", "", "is_", "Lcom/stripe/ext/MongoIndex$Operator;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lcom/stripe/ext/MongoIndex$Operator;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Prop extends Message<Prop, Builder> {
        public static final ProtoAdapter<Prop> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.ext.MongoIndex$Operator#ADAPTER", declaredName = "is", schemaIndex = 1, tag = 2)
        public final Operator is_;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.REQUIRED, schemaIndex = 0, tag = 1)
        public final String name;

        public /* synthetic */ Prop(String str, Operator operator, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i & 2) != 0 ? null : operator, (i & 4) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Prop(String name, Operator operator, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.name = name;
            this.is_ = operator;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.name = this.name;
            builder.is_ = this.is_;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof Prop)) {
                return false;
            }
            Prop prop = (Prop) other;
            return Intrinsics.areEqual(unknownFields(), prop.unknownFields()) && Intrinsics.areEqual(this.name, prop.name) && this.is_ == prop.is_;
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = ((unknownFields().hashCode() * 37) + this.name.hashCode()) * 37;
            Operator operator = this.is_;
            int iHashCode2 = iHashCode + (operator != null ? operator.hashCode() : 0);
            this.hashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("name=" + Internal.sanitize(this.name));
            if (this.is_ != null) {
                arrayList2.add("is_=" + this.is_);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "Prop{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ Prop copy$default(Prop prop, String str, Operator operator, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = prop.name;
            }
            if ((i & 2) != 0) {
                operator = prop.is_;
            }
            if ((i & 4) != 0) {
                byteString = prop.unknownFields();
            }
            return prop.copy(str, operator, byteString);
        }

        public final Prop copy(String name, Operator is_, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new Prop(name, is_, unknownFields);
        }

        /* JADX INFO: compiled from: MongoIndex.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/ext/MongoIndex$Prop$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/ext/MongoIndex$Prop;", "()V", "is_", "Lcom/stripe/ext/MongoIndex$Operator;", "name", "", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<Prop, Builder> {
            public Operator is_;
            public String name;

            public final Builder name(String name) {
                Intrinsics.checkNotNullParameter(name, "name");
                this.name = name;
                return this;
            }

            public final Builder is_(Operator is_) {
                this.is_ = is_;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public Prop build() {
                String str = this.name;
                if (str != null) {
                    return new Prop(str, this.is_, buildUnknownFields());
                }
                throw Internal.missingRequiredFields(str, "name");
            }
        }

        /* JADX INFO: compiled from: MongoIndex.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/ext/MongoIndex$Prop$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/ext/MongoIndex$Prop;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/ext/MongoIndex$Prop$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Prop build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Prop.class);
            final Syntax syntax = Syntax.PROTO_2;
            ADAPTER = new ProtoAdapter<Prop>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.ext.MongoIndex$Prop$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(MongoIndex.Prop value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.unknownFields().size() + ProtoAdapter.STRING.encodedSizeWithTag(1, value.name) + MongoIndex.Operator.ADAPTER.encodedSizeWithTag(2, value.is_);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, MongoIndex.Prop value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.name);
                    MongoIndex.Operator.ADAPTER.encodeWithTag(writer, 2, value.is_);
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, MongoIndex.Prop value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    MongoIndex.Operator.ADAPTER.encodeWithTag(writer, 2, value.is_);
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.name);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public MongoIndex.Prop redact(MongoIndex.Prop value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return MongoIndex.Prop.copy$default(value, null, null, ByteString.EMPTY, 3, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public MongoIndex.Prop decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = null;
                    MongoIndex.Operator operatorDecode = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            break;
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 2) {
                            try {
                                operatorDecode = MongoIndex.Operator.ADAPTER.decode(reader);
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                            }
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                    ByteString byteStringEndMessageAndGetUnknownFields = reader.endMessageAndGetUnknownFields(jBeginMessage);
                    String str = strDecode;
                    if (str != null) {
                        return new MongoIndex.Prop(str, operatorDecode, byteStringEndMessageAndGetUnknownFields);
                    }
                    throw Internal.missingRequiredFields(strDecode, "name");
                }
            };
        }
    }

    /* JADX INFO: compiled from: MongoIndex.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B/\u0012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ0\u0010\n\u001a\u00020\u00002\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0005H\u0016R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/ext/MongoIndex$Sort;", "Lcom/squareup/wire/Message;", "Lcom/stripe/ext/MongoIndex$Sort$Builder;", "asc", "", "", "desc", "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Sort extends Message<Sort, Builder> {
        public static final ProtoAdapter<Sort> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 3)
        public final List<String> asc;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.REPEATED, schemaIndex = 1, tag = 4)
        public final List<String> desc;

        public Sort() {
            this(null, null, null, 7, null);
        }

        public /* synthetic */ Sort(List list, List list2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? CollectionsKt.emptyList() : list2, (i & 4) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Sort(List<String> asc, List<String> desc, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(asc, "asc");
            Intrinsics.checkNotNullParameter(desc, "desc");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.asc = Internal.immutableCopyOf("asc", asc);
            this.desc = Internal.immutableCopyOf("desc", desc);
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.asc = this.asc;
            builder.desc = this.desc;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof Sort)) {
                return false;
            }
            Sort sort = (Sort) other;
            return Intrinsics.areEqual(unknownFields(), sort.unknownFields()) && Intrinsics.areEqual(this.asc, sort.asc) && Intrinsics.areEqual(this.desc, sort.desc);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((unknownFields().hashCode() * 37) + this.asc.hashCode()) * 37) + this.desc.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (!this.asc.isEmpty()) {
                arrayList.add("asc=" + Internal.sanitize(this.asc));
            }
            if (!this.desc.isEmpty()) {
                arrayList.add("desc=" + Internal.sanitize(this.desc));
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "Sort{", "}", 0, null, null, 56, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Sort copy$default(Sort sort, List list, List list2, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                list = sort.asc;
            }
            if ((i & 2) != 0) {
                list2 = sort.desc;
            }
            if ((i & 4) != 0) {
                byteString = sort.unknownFields();
            }
            return sort.copy(list, list2, byteString);
        }

        public final Sort copy(List<String> asc, List<String> desc, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(asc, "asc");
            Intrinsics.checkNotNullParameter(desc, "desc");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new Sort(asc, desc, unknownFields);
        }

        /* JADX INFO: compiled from: MongoIndex.kt */
        @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0014\u0010\u0007\u001a\u00020\u00002\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005R\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/ext/MongoIndex$Sort$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/ext/MongoIndex$Sort;", "()V", "asc", "", "", "desc", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<Sort, Builder> {
            public List<String> asc = CollectionsKt.emptyList();
            public List<String> desc = CollectionsKt.emptyList();

            public final Builder asc(List<String> asc) {
                Intrinsics.checkNotNullParameter(asc, "asc");
                Internal.checkElementsNotNull(asc);
                this.asc = asc;
                return this;
            }

            public final Builder desc(List<String> desc) {
                Intrinsics.checkNotNullParameter(desc, "desc");
                Internal.checkElementsNotNull(desc);
                this.desc = desc;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public Sort build() {
                return new Sort(this.asc, this.desc, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: MongoIndex.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/ext/MongoIndex$Sort$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/ext/MongoIndex$Sort;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/ext/MongoIndex$Sort$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Sort build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Sort.class);
            final Syntax syntax = Syntax.PROTO_2;
            ADAPTER = new ProtoAdapter<Sort>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.ext.MongoIndex$Sort$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(MongoIndex.Sort value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.unknownFields().size() + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(3, value.asc) + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(4, value.desc);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, MongoIndex.Sort value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 3, value.asc);
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 4, value.desc);
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, MongoIndex.Sort value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 4, value.desc);
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 3, value.asc);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public MongoIndex.Sort decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    long jBeginMessage = reader.beginMessage();
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new MongoIndex.Sort(arrayList, arrayList2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 3) {
                            arrayList.add(ProtoAdapter.STRING.decode(reader));
                        } else if (iNextTag == 4) {
                            arrayList2.add(ProtoAdapter.STRING.decode(reader));
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public MongoIndex.Sort redact(MongoIndex.Sort value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return MongoIndex.Sort.copy$default(value, null, null, ByteString.EMPTY, 3, null);
                }
            };
        }
    }

    /* JADX INFO: compiled from: MongoIndex.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u0000  2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001f B³\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006\u0012\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006\u0012\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006\u0012\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006\u0012\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006\u0012\u000e\b\u0002\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006\u0012\u000e\b\u0002\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0013¢\u0006\u0002\u0010\u0014J»\u0001\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u00062\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00062\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u00062\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\u00062\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00040\u00062\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u00062\u000e\b\u0002\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u00062\u000e\b\u0002\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\u00062\b\b\u0002\u0010\u0012\u001a\u00020\u0013¢\u0006\u0002\u0010\u0017J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0096\u0002J\b\u0010\u001c\u001a\u00020\tH\u0016J\b\u0010\u001d\u001a\u00020\u0002H\u0016J\b\u0010\u001e\u001a\u00020\u0004H\u0016R\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0015R\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00040\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/stripe/ext/MongoIndex$Query;", "Lcom/squareup/wire/Message;", "Lcom/stripe/ext/MongoIndex$Query$Builder;", "name", "", "sort", "", "Lcom/stripe/ext/MongoIndex$Sort;", "limit", "", "eq", "ne", "gt", "gte", "lt", "lte", "in_", "regex", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lokio/ByteString;)V", "Ljava/lang/Integer;", "copy", "(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lokio/ByteString;)Lcom/stripe/ext/MongoIndex$Query;", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Query extends Message<Query, Builder> {
        public static final ProtoAdapter<Query> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.REPEATED, schemaIndex = 3, tag = 5)
        public final List<String> eq;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.REPEATED, schemaIndex = 5, tag = 7)
        public final List<String> gt;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.REPEATED, schemaIndex = 6, tag = 8)
        public final List<String> gte;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", declaredName = "in", label = WireField.Label.REPEATED, schemaIndex = 9, tag = 11)
        public final List<String> in_;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", schemaIndex = 2, tag = 4)
        public final Integer limit;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.REPEATED, schemaIndex = 7, tag = 9)
        public final List<String> lt;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.REPEATED, schemaIndex = 8, tag = 10)
        public final List<String> lte;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.REQUIRED, schemaIndex = 0, tag = 1)
        public final String name;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.REPEATED, schemaIndex = 4, tag = 6)
        public final List<String> ne;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.REPEATED, schemaIndex = 10, tag = 12)
        public final List<String> regex;

        @WireField(adapter = "com.stripe.ext.MongoIndex$Sort#ADAPTER", label = WireField.Label.REPEATED, schemaIndex = 1, tag = 3)
        public final List<Sort> sort;

        public /* synthetic */ Query(String str, List list, Integer num, List list2, List list3, List list4, List list5, List list6, List list7, List list8, List list9, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i & 2) != 0 ? CollectionsKt.emptyList() : list, (i & 4) != 0 ? null : num, (i & 8) != 0 ? CollectionsKt.emptyList() : list2, (i & 16) != 0 ? CollectionsKt.emptyList() : list3, (i & 32) != 0 ? CollectionsKt.emptyList() : list4, (i & 64) != 0 ? CollectionsKt.emptyList() : list5, (i & 128) != 0 ? CollectionsKt.emptyList() : list6, (i & 256) != 0 ? CollectionsKt.emptyList() : list7, (i & 512) != 0 ? CollectionsKt.emptyList() : list8, (i & 1024) != 0 ? CollectionsKt.emptyList() : list9, (i & 2048) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Query(String name, List<Sort> sort, Integer num, List<String> eq, List<String> ne, List<String> gt, List<String> gte, List<String> lt, List<String> lte, List<String> in_, List<String> regex, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(sort, "sort");
            Intrinsics.checkNotNullParameter(eq, "eq");
            Intrinsics.checkNotNullParameter(ne, "ne");
            Intrinsics.checkNotNullParameter(gt, "gt");
            Intrinsics.checkNotNullParameter(gte, "gte");
            Intrinsics.checkNotNullParameter(lt, "lt");
            Intrinsics.checkNotNullParameter(lte, "lte");
            Intrinsics.checkNotNullParameter(in_, "in_");
            Intrinsics.checkNotNullParameter(regex, "regex");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.name = name;
            this.limit = num;
            this.sort = Internal.immutableCopyOf("sort", sort);
            this.eq = Internal.immutableCopyOf("eq", eq);
            this.ne = Internal.immutableCopyOf("ne", ne);
            this.gt = Internal.immutableCopyOf("gt", gt);
            this.gte = Internal.immutableCopyOf("gte", gte);
            this.lt = Internal.immutableCopyOf("lt", lt);
            this.lte = Internal.immutableCopyOf("lte", lte);
            this.in_ = Internal.immutableCopyOf("in_", in_);
            this.regex = Internal.immutableCopyOf("regex", regex);
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.name = this.name;
            builder.sort = this.sort;
            builder.limit = this.limit;
            builder.eq = this.eq;
            builder.ne = this.ne;
            builder.gt = this.gt;
            builder.gte = this.gte;
            builder.lt = this.lt;
            builder.lte = this.lte;
            builder.in_ = this.in_;
            builder.regex = this.regex;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof Query)) {
                return false;
            }
            Query query = (Query) other;
            return Intrinsics.areEqual(unknownFields(), query.unknownFields()) && Intrinsics.areEqual(this.name, query.name) && Intrinsics.areEqual(this.sort, query.sort) && Intrinsics.areEqual(this.limit, query.limit) && Intrinsics.areEqual(this.eq, query.eq) && Intrinsics.areEqual(this.ne, query.ne) && Intrinsics.areEqual(this.gt, query.gt) && Intrinsics.areEqual(this.gte, query.gte) && Intrinsics.areEqual(this.lt, query.lt) && Intrinsics.areEqual(this.lte, query.lte) && Intrinsics.areEqual(this.in_, query.in_) && Intrinsics.areEqual(this.regex, query.regex);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = ((((unknownFields().hashCode() * 37) + this.name.hashCode()) * 37) + this.sort.hashCode()) * 37;
            Integer num = this.limit;
            int iHashCode2 = ((((((((((((((((iHashCode + (num != null ? num.hashCode() : 0)) * 37) + this.eq.hashCode()) * 37) + this.ne.hashCode()) * 37) + this.gt.hashCode()) * 37) + this.gte.hashCode()) * 37) + this.lt.hashCode()) * 37) + this.lte.hashCode()) * 37) + this.in_.hashCode()) * 37) + this.regex.hashCode();
            this.hashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("name=" + Internal.sanitize(this.name));
            if (!this.sort.isEmpty()) {
                arrayList2.add("sort=" + this.sort);
            }
            if (this.limit != null) {
                arrayList2.add("limit=" + this.limit);
            }
            if (!this.eq.isEmpty()) {
                arrayList2.add("eq=" + Internal.sanitize(this.eq));
            }
            if (!this.ne.isEmpty()) {
                arrayList2.add("ne=" + Internal.sanitize(this.ne));
            }
            if (!this.gt.isEmpty()) {
                arrayList2.add("gt=" + Internal.sanitize(this.gt));
            }
            if (!this.gte.isEmpty()) {
                arrayList2.add("gte=" + Internal.sanitize(this.gte));
            }
            if (!this.lt.isEmpty()) {
                arrayList2.add("lt=" + Internal.sanitize(this.lt));
            }
            if (!this.lte.isEmpty()) {
                arrayList2.add("lte=" + Internal.sanitize(this.lte));
            }
            if (!this.in_.isEmpty()) {
                arrayList2.add("in_=" + Internal.sanitize(this.in_));
            }
            if (!this.regex.isEmpty()) {
                arrayList2.add("regex=" + Internal.sanitize(this.regex));
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "Query{", "}", 0, null, null, 56, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Query copy$default(Query query, String str, List list, Integer num, List list2, List list3, List list4, List list5, List list6, List list7, List list8, List list9, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = query.name;
            }
            if ((i & 2) != 0) {
                list = query.sort;
            }
            if ((i & 4) != 0) {
                num = query.limit;
            }
            if ((i & 8) != 0) {
                list2 = query.eq;
            }
            if ((i & 16) != 0) {
                list3 = query.ne;
            }
            if ((i & 32) != 0) {
                list4 = query.gt;
            }
            if ((i & 64) != 0) {
                list5 = query.gte;
            }
            if ((i & 128) != 0) {
                list6 = query.lt;
            }
            if ((i & 256) != 0) {
                list7 = query.lte;
            }
            if ((i & 512) != 0) {
                list8 = query.in_;
            }
            if ((i & 1024) != 0) {
                list9 = query.regex;
            }
            if ((i & 2048) != 0) {
                byteString = query.unknownFields();
            }
            List list10 = list9;
            ByteString byteString2 = byteString;
            List list11 = list7;
            List list12 = list8;
            List list13 = list5;
            List list14 = list6;
            List list15 = list3;
            List list16 = list4;
            return query.copy(str, list, num, list2, list15, list16, list13, list14, list11, list12, list10, byteString2);
        }

        public final Query copy(String name, List<Sort> sort, Integer limit, List<String> eq, List<String> ne, List<String> gt, List<String> gte, List<String> lt, List<String> lte, List<String> in_, List<String> regex, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(sort, "sort");
            Intrinsics.checkNotNullParameter(eq, "eq");
            Intrinsics.checkNotNullParameter(ne, "ne");
            Intrinsics.checkNotNullParameter(gt, "gt");
            Intrinsics.checkNotNullParameter(gte, "gte");
            Intrinsics.checkNotNullParameter(lt, "lt");
            Intrinsics.checkNotNullParameter(lte, "lte");
            Intrinsics.checkNotNullParameter(in_, "in_");
            Intrinsics.checkNotNullParameter(regex, "regex");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new Query(name, sort, limit, eq, ne, gt, gte, lt, lte, in_, regex, unknownFields);
        }

        /* JADX INFO: compiled from: MongoIndex.kt */
        @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0014\u0010\u0007\u001a\u00020\u00002\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0014\u0010\b\u001a\u00020\u00002\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0014\u0010\t\u001a\u00020\u00002\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0015\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\u0015J\u0014\u0010\r\u001a\u00020\u00002\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0014\u0010\u000e\u001a\u00020\u00002\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0006J\u0014\u0010\u0010\u001a\u00020\u00002\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0014\u0010\u0011\u001a\u00020\u00002\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0014\u0010\u0012\u001a\u00020\u00002\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\u0005R\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\fR\u0018\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/ext/MongoIndex$Query$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/ext/MongoIndex$Query;", "()V", "eq", "", "", "gt", "gte", "in_", "limit", "", "Ljava/lang/Integer;", "lt", "lte", "name", "ne", "regex", "sort", "Lcom/stripe/ext/MongoIndex$Sort;", "build", "(Ljava/lang/Integer;)Lcom/stripe/ext/MongoIndex$Query$Builder;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<Query, Builder> {
            public Integer limit;
            public String name;
            public List<Sort> sort = CollectionsKt.emptyList();
            public List<String> eq = CollectionsKt.emptyList();
            public List<String> ne = CollectionsKt.emptyList();
            public List<String> gt = CollectionsKt.emptyList();
            public List<String> gte = CollectionsKt.emptyList();
            public List<String> lt = CollectionsKt.emptyList();
            public List<String> lte = CollectionsKt.emptyList();
            public List<String> in_ = CollectionsKt.emptyList();
            public List<String> regex = CollectionsKt.emptyList();

            public final Builder name(String name) {
                Intrinsics.checkNotNullParameter(name, "name");
                this.name = name;
                return this;
            }

            public final Builder sort(List<Sort> sort) {
                Intrinsics.checkNotNullParameter(sort, "sort");
                Internal.checkElementsNotNull(sort);
                this.sort = sort;
                return this;
            }

            public final Builder limit(Integer limit) {
                this.limit = limit;
                return this;
            }

            public final Builder eq(List<String> eq) {
                Intrinsics.checkNotNullParameter(eq, "eq");
                Internal.checkElementsNotNull(eq);
                this.eq = eq;
                return this;
            }

            public final Builder ne(List<String> ne) {
                Intrinsics.checkNotNullParameter(ne, "ne");
                Internal.checkElementsNotNull(ne);
                this.ne = ne;
                return this;
            }

            public final Builder gt(List<String> gt) {
                Intrinsics.checkNotNullParameter(gt, "gt");
                Internal.checkElementsNotNull(gt);
                this.gt = gt;
                return this;
            }

            public final Builder gte(List<String> gte) {
                Intrinsics.checkNotNullParameter(gte, "gte");
                Internal.checkElementsNotNull(gte);
                this.gte = gte;
                return this;
            }

            public final Builder lt(List<String> lt) {
                Intrinsics.checkNotNullParameter(lt, "lt");
                Internal.checkElementsNotNull(lt);
                this.lt = lt;
                return this;
            }

            public final Builder lte(List<String> lte) {
                Intrinsics.checkNotNullParameter(lte, "lte");
                Internal.checkElementsNotNull(lte);
                this.lte = lte;
                return this;
            }

            public final Builder in_(List<String> in_) {
                Intrinsics.checkNotNullParameter(in_, "in_");
                Internal.checkElementsNotNull(in_);
                this.in_ = in_;
                return this;
            }

            public final Builder regex(List<String> regex) {
                Intrinsics.checkNotNullParameter(regex, "regex");
                Internal.checkElementsNotNull(regex);
                this.regex = regex;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public Query build() {
                String str = this.name;
                if (str != null) {
                    return new Query(str, this.sort, this.limit, this.eq, this.ne, this.gt, this.gte, this.lt, this.lte, this.in_, this.regex, buildUnknownFields());
                }
                throw Internal.missingRequiredFields(str, "name");
            }
        }

        /* JADX INFO: compiled from: MongoIndex.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/ext/MongoIndex$Query$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/ext/MongoIndex$Query;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/ext/MongoIndex$Query$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Query build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Query.class);
            final Syntax syntax = Syntax.PROTO_2;
            ADAPTER = new ProtoAdapter<Query>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.ext.MongoIndex$Query$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(MongoIndex.Query value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.unknownFields().size() + ProtoAdapter.STRING.encodedSizeWithTag(1, value.name) + MongoIndex.Sort.ADAPTER.asRepeated().encodedSizeWithTag(3, value.sort) + ProtoAdapter.INT32.encodedSizeWithTag(4, value.limit) + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(5, value.eq) + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(6, value.ne) + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(7, value.gt) + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(8, value.gte) + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(9, value.lt) + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(10, value.lte) + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(11, value.in_) + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(12, value.regex);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, MongoIndex.Query value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.name);
                    MongoIndex.Sort.ADAPTER.asRepeated().encodeWithTag(writer, 3, value.sort);
                    ProtoAdapter.INT32.encodeWithTag(writer, 4, value.limit);
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 5, value.eq);
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 6, value.ne);
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 7, value.gt);
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 8, value.gte);
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 9, value.lt);
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 10, value.lte);
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 11, value.in_);
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 12, value.regex);
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, MongoIndex.Query value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 12, value.regex);
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 11, value.in_);
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 10, value.lte);
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 9, value.lt);
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 8, value.gte);
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 7, value.gt);
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 6, value.ne);
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 5, value.eq);
                    ProtoAdapter.INT32.encodeWithTag(writer, 4, value.limit);
                    MongoIndex.Sort.ADAPTER.asRepeated().encodeWithTag(writer, 3, value.sort);
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.name);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public MongoIndex.Query decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    ArrayList arrayList3 = new ArrayList();
                    ArrayList arrayList4 = new ArrayList();
                    ArrayList arrayList5 = new ArrayList();
                    ArrayList arrayList6 = new ArrayList();
                    ArrayList arrayList7 = new ArrayList();
                    ArrayList arrayList8 = new ArrayList();
                    ArrayList arrayList9 = new ArrayList();
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = null;
                    Integer numDecode = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag != -1) {
                            switch (iNextTag) {
                                case 1:
                                    strDecode = ProtoAdapter.STRING.decode(reader);
                                    break;
                                case 2:
                                default:
                                    reader.readUnknownField(iNextTag);
                                    break;
                                case 3:
                                    arrayList.add(MongoIndex.Sort.ADAPTER.decode(reader));
                                    break;
                                case 4:
                                    numDecode = ProtoAdapter.INT32.decode(reader);
                                    break;
                                case 5:
                                    arrayList2.add(ProtoAdapter.STRING.decode(reader));
                                    break;
                                case 6:
                                    arrayList3.add(ProtoAdapter.STRING.decode(reader));
                                    break;
                                case 7:
                                    arrayList4.add(ProtoAdapter.STRING.decode(reader));
                                    break;
                                case 8:
                                    arrayList5.add(ProtoAdapter.STRING.decode(reader));
                                    break;
                                case 9:
                                    arrayList6.add(ProtoAdapter.STRING.decode(reader));
                                    break;
                                case 10:
                                    arrayList7.add(ProtoAdapter.STRING.decode(reader));
                                    break;
                                case 11:
                                    arrayList8.add(ProtoAdapter.STRING.decode(reader));
                                    break;
                                case 12:
                                    arrayList9.add(ProtoAdapter.STRING.decode(reader));
                                    break;
                            }
                        } else {
                            ByteString byteStringEndMessageAndGetUnknownFields = reader.endMessageAndGetUnknownFields(jBeginMessage);
                            String str = strDecode;
                            String str2 = str;
                            if (str2 != null) {
                                return new MongoIndex.Query(str2, arrayList, numDecode, arrayList2, arrayList3, arrayList4, arrayList5, arrayList6, arrayList7, arrayList8, arrayList9, byteStringEndMessageAndGetUnknownFields);
                            }
                            throw Internal.missingRequiredFields(str, "name");
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public MongoIndex.Query redact(MongoIndex.Query value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return MongoIndex.Query.copy$default(value, null, Internal.m361redactElements(value.sort, MongoIndex.Sort.ADAPTER), null, null, null, null, null, null, null, null, null, ByteString.EMPTY, 2045, null);
                }
            };
        }
    }
}
