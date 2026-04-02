package com.stripe.proto.model.rest;

import androidx.core.graphics.TypefaceCompat;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.model.rest.Source;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
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

/* JADX INFO: compiled from: Source.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u001b2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0019\u001a\u001bBa\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0014\b\u0002\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fJb\u0010\u0010\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\u0014\b\u0002\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\r\u001a\u00020\u000eJ\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0002H\u0016J\b\u0010\u0018\u001a\u00020\u0004H\u0016R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/stripe/proto/model/rest/Source;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/Source$Builder;", OfflineStorageConstantsKt.ID, "", "type", "card_present", "Lcom/stripe/proto/model/rest/Source$CardPresent;", "interac_present", "metadata", "", "owner", "Lcom/stripe/proto/model/rest/Owner;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Source$CardPresent;Lcom/stripe/proto/model/rest/Source$CardPresent;Ljava/util/Map;Lcom/stripe/proto/model/rest/Owner;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "CardPresent", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Source extends Message<Source, Builder> {
    public static final ProtoAdapter<Source> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.rest.Source$CardPresent#ADAPTER", jsonName = "cardPresent", oneofName = "source_object", schemaIndex = 2, tag = 3)
    public final CardPresent card_present;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 0, tag = 1)
    public final String id;

    @WireField(adapter = "com.stripe.proto.model.rest.Source$CardPresent#ADAPTER", jsonName = "interacPresent", oneofName = "source_object", schemaIndex = 3, tag = 6)
    public final CardPresent interac_present;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 4, tag = 4)
    public final Map<String, String> metadata;

    @WireField(adapter = "com.stripe.proto.model.rest.Owner#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 5)
    public final Owner owner;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 1, tag = 2)
    public final String type;

    public Source() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public /* synthetic */ Source(String str, String str2, CardPresent cardPresent, CardPresent cardPresent2, Map map, Owner owner, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : cardPresent, (i & 8) != 0 ? null : cardPresent2, (i & 16) != 0 ? MapsKt.emptyMap() : map, (i & 32) != 0 ? null : owner, (i & 64) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Source(String str, String str2, CardPresent cardPresent, CardPresent cardPresent2, Map<String, String> metadata, Owner owner, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.id = str;
        this.type = str2;
        this.card_present = cardPresent;
        this.interac_present = cardPresent2;
        this.owner = owner;
        this.metadata = Internal.immutableCopyOf("metadata", metadata);
        if (Internal.countNonNull(cardPresent, cardPresent2) > 1) {
            throw new IllegalArgumentException("At most one of card_present, interac_present may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.id = this.id;
        builder.type = this.type;
        builder.card_present = this.card_present;
        builder.interac_present = this.interac_present;
        builder.metadata = this.metadata;
        builder.owner = this.owner;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof Source)) {
            return false;
        }
        Source source = (Source) other;
        return Intrinsics.areEqual(unknownFields(), source.unknownFields()) && Intrinsics.areEqual(this.id, source.id) && Intrinsics.areEqual(this.type, source.type) && Intrinsics.areEqual(this.card_present, source.card_present) && Intrinsics.areEqual(this.interac_present, source.interac_present) && Intrinsics.areEqual(this.metadata, source.metadata) && Intrinsics.areEqual(this.owner, source.owner);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.id;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.type;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
        CardPresent cardPresent = this.card_present;
        int iHashCode4 = (iHashCode3 + (cardPresent != null ? cardPresent.hashCode() : 0)) * 37;
        CardPresent cardPresent2 = this.interac_present;
        int iHashCode5 = (((iHashCode4 + (cardPresent2 != null ? cardPresent2.hashCode() : 0)) * 37) + this.metadata.hashCode()) * 37;
        Owner owner = this.owner;
        int iHashCode6 = iHashCode5 + (owner != null ? owner.hashCode() : 0);
        this.hashCode = iHashCode6;
        return iHashCode6;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.id != null) {
            arrayList.add("id=" + this.id);
        }
        if (this.type != null) {
            arrayList.add("type=" + this.type);
        }
        if (this.card_present != null) {
            arrayList.add("card_present=" + this.card_present);
        }
        if (this.interac_present != null) {
            arrayList.add("interac_present=" + this.interac_present);
        }
        if (!this.metadata.isEmpty()) {
            arrayList.add("metadata=" + this.metadata);
        }
        if (this.owner != null) {
            arrayList.add("owner=" + this.owner);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "Source{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Source copy$default(Source source, String str, String str2, CardPresent cardPresent, CardPresent cardPresent2, Map map, Owner owner, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = source.id;
        }
        if ((i & 2) != 0) {
            str2 = source.type;
        }
        if ((i & 4) != 0) {
            cardPresent = source.card_present;
        }
        if ((i & 8) != 0) {
            cardPresent2 = source.interac_present;
        }
        if ((i & 16) != 0) {
            map = source.metadata;
        }
        if ((i & 32) != 0) {
            owner = source.owner;
        }
        if ((i & 64) != 0) {
            byteString = source.unknownFields();
        }
        Owner owner2 = owner;
        ByteString byteString2 = byteString;
        Map map2 = map;
        CardPresent cardPresent3 = cardPresent;
        return source.copy(str, str2, cardPresent3, cardPresent2, map2, owner2, byteString2);
    }

    public final Source copy(String id, String type, CardPresent card_present, CardPresent interac_present, Map<String, String> metadata, Owner owner, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new Source(id, type, card_present, interac_present, metadata, owner, unknownFields);
    }

    /* JADX INFO: compiled from: Source.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0005J\u001a\u0010\t\u001a\u00020\u00002\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\nJ\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\fJ\u0010\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/proto/model/rest/Source$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/Source;", "()V", "card_present", "Lcom/stripe/proto/model/rest/Source$CardPresent;", OfflineStorageConstantsKt.ID, "", "interac_present", "metadata", "", "owner", "Lcom/stripe/proto/model/rest/Owner;", "type", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<Source, Builder> {
        public CardPresent card_present;
        public String id;
        public CardPresent interac_present;
        public Map<String, String> metadata = MapsKt.emptyMap();
        public Owner owner;
        public String type;

        public final Builder id(String id) {
            this.id = id;
            return this;
        }

        public final Builder type(String type) {
            this.type = type;
            return this;
        }

        public final Builder metadata(Map<String, String> metadata) {
            Intrinsics.checkNotNullParameter(metadata, "metadata");
            this.metadata = metadata;
            return this;
        }

        public final Builder owner(Owner owner) {
            this.owner = owner;
            return this;
        }

        public final Builder card_present(CardPresent card_present) {
            this.card_present = card_present;
            this.interac_present = null;
            return this;
        }

        public final Builder interac_present(CardPresent interac_present) {
            this.interac_present = interac_present;
            this.card_present = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public Source build() {
            return new Source(this.id, this.type, this.card_present, this.interac_present, this.metadata, this.owner, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: Source.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/Source$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/Source;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/Source$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ Source build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Source.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<Source>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.Source$Companion$ADAPTER$1

            /* JADX INFO: renamed from: metadataAdapter$delegate, reason: from kotlin metadata */
            private final Lazy metadataAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends String>>>() { // from class: com.stripe.proto.model.rest.Source$Companion$ADAPTER$1$metadataAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends String>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.STRING);
                }
            });

            private final ProtoAdapter<Map<String, String>> getMetadataAdapter() {
                return (ProtoAdapter) this.metadataAdapter.getValue();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(Source value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.id != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.id);
                }
                if (value.type != null) {
                    size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.type);
                }
                int iEncodedSizeWithTag = size + Source.CardPresent.ADAPTER.encodedSizeWithTag(3, value.card_present) + Source.CardPresent.ADAPTER.encodedSizeWithTag(6, value.interac_present) + getMetadataAdapter().encodedSizeWithTag(4, value.metadata);
                return value.owner != null ? iEncodedSizeWithTag + Owner.ADAPTER.encodedSizeWithTag(5, value.owner) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, Source value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.id);
                }
                if (value.type != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.type);
                }
                getMetadataAdapter().encodeWithTag(writer, 4, value.metadata);
                if (value.owner != null) {
                    Owner.ADAPTER.encodeWithTag(writer, 5, value.owner);
                }
                Source.CardPresent.ADAPTER.encodeWithTag(writer, 3, value.card_present);
                Source.CardPresent.ADAPTER.encodeWithTag(writer, 6, value.interac_present);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, Source value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                Source.CardPresent.ADAPTER.encodeWithTag(writer, 6, value.interac_present);
                Source.CardPresent.ADAPTER.encodeWithTag(writer, 3, value.card_present);
                if (value.owner != null) {
                    Owner.ADAPTER.encodeWithTag(writer, 5, value.owner);
                }
                getMetadataAdapter().encodeWithTag(writer, 4, value.metadata);
                if (value.type != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.type);
                }
                if (value.id != null) {
                    ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.id);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public Source decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                long jBeginMessage = reader.beginMessage();
                String strDecode = null;
                String strDecode2 = null;
                Source.CardPresent cardPresentDecode = null;
                Source.CardPresent cardPresentDecode2 = null;
                Owner ownerDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 2:
                                strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                                break;
                            case 3:
                                cardPresentDecode = Source.CardPresent.ADAPTER.decode(reader);
                                break;
                            case 4:
                                linkedHashMap.putAll(getMetadataAdapter().decode(reader));
                                break;
                            case 5:
                                ownerDecode = Owner.ADAPTER.decode(reader);
                                break;
                            case 6:
                                cardPresentDecode2 = Source.CardPresent.ADAPTER.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new Source(strDecode, strDecode2, cardPresentDecode, cardPresentDecode2, linkedHashMap, ownerDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public Source redact(Source value) {
                Intrinsics.checkNotNullParameter(value, "value");
                String str = value.id;
                String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                String str2 = value.type;
                String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                Source.CardPresent cardPresent = value.card_present;
                Source.CardPresent cardPresentRedact = cardPresent != null ? Source.CardPresent.ADAPTER.redact(cardPresent) : null;
                Source.CardPresent cardPresent2 = value.interac_present;
                Source.CardPresent cardPresentRedact2 = cardPresent2 != null ? Source.CardPresent.ADAPTER.redact(cardPresent2) : null;
                Owner owner = value.owner;
                return Source.copy$default(value, strRedact, strRedact2, cardPresentRedact, cardPresentRedact2, null, owner != null ? Owner.ADAPTER.redact(owner) : null, ByteString.EMPTY, 16, null);
            }
        };
    }

    /* JADX INFO: compiled from: Source.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001f2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001e\u001fB·\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0013¢\u0006\u0002\u0010\u0014J¸\u0001\u0010\u0015\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0012\u001a\u00020\u0013J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0096\u0002J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\b\u0010\u001c\u001a\u00020\u0002H\u0016J\b\u0010\u001d\u001a\u00020\u0004H\u0016R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcom/stripe/proto/model/rest/Source$CardPresent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;", "last4", "", "brand", "evidence_customer_signature", "read_method", "emv_auth_data", "authorization_response_code", "dedicated_file_name", "application_preferred_name", "terminal_verification_results", "transaction_status_information", "cvm_type", "reader_", "fingerprint", "authorization_code", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class CardPresent extends Message<CardPresent, Builder> {
        public static final ProtoAdapter<CardPresent> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "applicationPreferredName", schemaIndex = 7, tag = 8)
        public final String application_preferred_name;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "authorizationCode", schemaIndex = 13, tag = 14)
        public final String authorization_code;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "authorizationResponseCode", schemaIndex = 5, tag = 6)
        public final String authorization_response_code;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 1, tag = 2)
        public final String brand;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "cvmType", schemaIndex = 10, tag = 11)
        public final String cvm_type;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "dedicatedFileName", schemaIndex = 6, tag = 7)
        public final String dedicated_file_name;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "emvAuthData", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 4, tag = 5)
        public final String emv_auth_data;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "evidenceCustomerSignature", schemaIndex = 2, tag = 3)
        public final String evidence_customer_signature;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", redacted = TypefaceCompat.DOWNLOADABLE_FONT_TRACING, schemaIndex = 12, tag = 13)
        public final String fingerprint;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", schemaIndex = 0, tag = 1)
        public final String last4;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "readMethod", schemaIndex = 3, tag = 4)
        public final String read_method;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", declaredName = OfflineStorageConstantsKt.READER, schemaIndex = 11, tag = 12)
        public final String reader_;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "terminalVerificationResults", schemaIndex = 8, tag = 9)
        public final String terminal_verification_results;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE", jsonName = "transactionStatusInformation", schemaIndex = 9, tag = 10)
        public final String transaction_status_information;

        public CardPresent() {
            this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 32767, null);
        }

        public /* synthetic */ CardPresent(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : str5, (i & 32) != 0 ? null : str6, (i & 64) != 0 ? null : str7, (i & 128) != 0 ? null : str8, (i & 256) != 0 ? null : str9, (i & 512) != 0 ? null : str10, (i & 1024) != 0 ? null : str11, (i & 2048) != 0 ? null : str12, (i & 4096) != 0 ? null : str13, (i & 8192) == 0 ? str14 : null, (i & 16384) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CardPresent(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.last4 = str;
            this.brand = str2;
            this.evidence_customer_signature = str3;
            this.read_method = str4;
            this.emv_auth_data = str5;
            this.authorization_response_code = str6;
            this.dedicated_file_name = str7;
            this.application_preferred_name = str8;
            this.terminal_verification_results = str9;
            this.transaction_status_information = str10;
            this.cvm_type = str11;
            this.reader_ = str12;
            this.fingerprint = str13;
            this.authorization_code = str14;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.last4 = this.last4;
            builder.brand = this.brand;
            builder.evidence_customer_signature = this.evidence_customer_signature;
            builder.read_method = this.read_method;
            builder.emv_auth_data = this.emv_auth_data;
            builder.authorization_response_code = this.authorization_response_code;
            builder.dedicated_file_name = this.dedicated_file_name;
            builder.application_preferred_name = this.application_preferred_name;
            builder.terminal_verification_results = this.terminal_verification_results;
            builder.transaction_status_information = this.transaction_status_information;
            builder.cvm_type = this.cvm_type;
            builder.reader_ = this.reader_;
            builder.fingerprint = this.fingerprint;
            builder.authorization_code = this.authorization_code;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof CardPresent)) {
                return false;
            }
            CardPresent cardPresent = (CardPresent) other;
            return Intrinsics.areEqual(unknownFields(), cardPresent.unknownFields()) && Intrinsics.areEqual(this.last4, cardPresent.last4) && Intrinsics.areEqual(this.brand, cardPresent.brand) && Intrinsics.areEqual(this.evidence_customer_signature, cardPresent.evidence_customer_signature) && Intrinsics.areEqual(this.read_method, cardPresent.read_method) && Intrinsics.areEqual(this.emv_auth_data, cardPresent.emv_auth_data) && Intrinsics.areEqual(this.authorization_response_code, cardPresent.authorization_response_code) && Intrinsics.areEqual(this.dedicated_file_name, cardPresent.dedicated_file_name) && Intrinsics.areEqual(this.application_preferred_name, cardPresent.application_preferred_name) && Intrinsics.areEqual(this.terminal_verification_results, cardPresent.terminal_verification_results) && Intrinsics.areEqual(this.transaction_status_information, cardPresent.transaction_status_information) && Intrinsics.areEqual(this.cvm_type, cardPresent.cvm_type) && Intrinsics.areEqual(this.reader_, cardPresent.reader_) && Intrinsics.areEqual(this.fingerprint, cardPresent.fingerprint) && Intrinsics.areEqual(this.authorization_code, cardPresent.authorization_code);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = unknownFields().hashCode() * 37;
            String str = this.last4;
            int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
            String str2 = this.brand;
            int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
            String str3 = this.evidence_customer_signature;
            int iHashCode4 = (iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 37;
            String str4 = this.read_method;
            int iHashCode5 = (iHashCode4 + (str4 != null ? str4.hashCode() : 0)) * 37;
            String str5 = this.emv_auth_data;
            int iHashCode6 = (iHashCode5 + (str5 != null ? str5.hashCode() : 0)) * 37;
            String str6 = this.authorization_response_code;
            int iHashCode7 = (iHashCode6 + (str6 != null ? str6.hashCode() : 0)) * 37;
            String str7 = this.dedicated_file_name;
            int iHashCode8 = (iHashCode7 + (str7 != null ? str7.hashCode() : 0)) * 37;
            String str8 = this.application_preferred_name;
            int iHashCode9 = (iHashCode8 + (str8 != null ? str8.hashCode() : 0)) * 37;
            String str9 = this.terminal_verification_results;
            int iHashCode10 = (iHashCode9 + (str9 != null ? str9.hashCode() : 0)) * 37;
            String str10 = this.transaction_status_information;
            int iHashCode11 = (iHashCode10 + (str10 != null ? str10.hashCode() : 0)) * 37;
            String str11 = this.cvm_type;
            int iHashCode12 = (iHashCode11 + (str11 != null ? str11.hashCode() : 0)) * 37;
            String str12 = this.reader_;
            int iHashCode13 = (iHashCode12 + (str12 != null ? str12.hashCode() : 0)) * 37;
            String str13 = this.fingerprint;
            int iHashCode14 = (iHashCode13 + (str13 != null ? str13.hashCode() : 0)) * 37;
            String str14 = this.authorization_code;
            int iHashCode15 = iHashCode14 + (str14 != null ? str14.hashCode() : 0);
            this.hashCode = iHashCode15;
            return iHashCode15;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (this.last4 != null) {
                arrayList.add("last4=" + this.last4);
            }
            if (this.brand != null) {
                arrayList.add("brand=" + this.brand);
            }
            if (this.evidence_customer_signature != null) {
                arrayList.add("evidence_customer_signature=" + this.evidence_customer_signature);
            }
            if (this.read_method != null) {
                arrayList.add("read_method=" + this.read_method);
            }
            if (this.emv_auth_data != null) {
                arrayList.add("emv_auth_data=██");
            }
            if (this.authorization_response_code != null) {
                arrayList.add("authorization_response_code=" + this.authorization_response_code);
            }
            if (this.dedicated_file_name != null) {
                arrayList.add("dedicated_file_name=" + this.dedicated_file_name);
            }
            if (this.application_preferred_name != null) {
                arrayList.add("application_preferred_name=" + this.application_preferred_name);
            }
            if (this.terminal_verification_results != null) {
                arrayList.add("terminal_verification_results=" + this.terminal_verification_results);
            }
            if (this.transaction_status_information != null) {
                arrayList.add("transaction_status_information=" + this.transaction_status_information);
            }
            if (this.cvm_type != null) {
                arrayList.add("cvm_type=" + this.cvm_type);
            }
            if (this.reader_ != null) {
                arrayList.add("reader_=" + this.reader_);
            }
            if (this.fingerprint != null) {
                arrayList.add("fingerprint=██");
            }
            if (this.authorization_code != null) {
                arrayList.add("authorization_code=" + this.authorization_code);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "CardPresent{", "}", 0, null, null, 56, null);
        }

        public final CardPresent copy(String last4, String brand, String evidence_customer_signature, String read_method, String emv_auth_data, String authorization_response_code, String dedicated_file_name, String application_preferred_name, String terminal_verification_results, String transaction_status_information, String cvm_type, String reader_, String fingerprint, String authorization_code, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new CardPresent(last4, brand, evidence_customer_signature, read_method, emv_auth_data, authorization_response_code, dedicated_file_name, application_preferred_name, terminal_verification_results, transaction_status_information, cvm_type, reader_, fingerprint, authorization_code, unknownFields);
        }

        /* JADX INFO: compiled from: Source.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000f\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0005J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0012\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/rest/Source$CardPresent;", "()V", "application_preferred_name", "", "authorization_code", "authorization_response_code", "brand", "cvm_type", "dedicated_file_name", "emv_auth_data", "evidence_customer_signature", "fingerprint", "last4", "read_method", "reader_", "terminal_verification_results", "transaction_status_information", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<CardPresent, Builder> {
            public String application_preferred_name;
            public String authorization_code;
            public String authorization_response_code;
            public String brand;
            public String cvm_type;
            public String dedicated_file_name;
            public String emv_auth_data;
            public String evidence_customer_signature;
            public String fingerprint;
            public String last4;
            public String read_method;
            public String reader_;
            public String terminal_verification_results;
            public String transaction_status_information;

            public final Builder last4(String last4) {
                this.last4 = last4;
                return this;
            }

            public final Builder brand(String brand) {
                this.brand = brand;
                return this;
            }

            public final Builder evidence_customer_signature(String evidence_customer_signature) {
                this.evidence_customer_signature = evidence_customer_signature;
                return this;
            }

            public final Builder read_method(String read_method) {
                this.read_method = read_method;
                return this;
            }

            public final Builder emv_auth_data(String emv_auth_data) {
                this.emv_auth_data = emv_auth_data;
                return this;
            }

            public final Builder authorization_response_code(String authorization_response_code) {
                this.authorization_response_code = authorization_response_code;
                return this;
            }

            public final Builder dedicated_file_name(String dedicated_file_name) {
                this.dedicated_file_name = dedicated_file_name;
                return this;
            }

            public final Builder application_preferred_name(String application_preferred_name) {
                this.application_preferred_name = application_preferred_name;
                return this;
            }

            public final Builder terminal_verification_results(String terminal_verification_results) {
                this.terminal_verification_results = terminal_verification_results;
                return this;
            }

            public final Builder transaction_status_information(String transaction_status_information) {
                this.transaction_status_information = transaction_status_information;
                return this;
            }

            public final Builder cvm_type(String cvm_type) {
                this.cvm_type = cvm_type;
                return this;
            }

            public final Builder reader_(String reader_) {
                this.reader_ = reader_;
                return this;
            }

            public final Builder fingerprint(String fingerprint) {
                this.fingerprint = fingerprint;
                return this;
            }

            public final Builder authorization_code(String authorization_code) {
                this.authorization_code = authorization_code;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public CardPresent build() {
                return new CardPresent(this.last4, this.brand, this.evidence_customer_signature, this.read_method, this.emv_auth_data, this.authorization_response_code, this.dedicated_file_name, this.application_preferred_name, this.terminal_verification_results, this.transaction_status_information, this.cvm_type, this.reader_, this.fingerprint, this.authorization_code, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: Source.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/rest/Source$CardPresent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/Source$CardPresent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/rest/Source$CardPresent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ CardPresent build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CardPresent.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<CardPresent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.rest.Source$CardPresent$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(Source.CardPresent value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.last4 != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(1, value.last4);
                    }
                    if (value.brand != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(2, value.brand);
                    }
                    if (value.evidence_customer_signature != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(3, value.evidence_customer_signature);
                    }
                    if (value.read_method != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(4, value.read_method);
                    }
                    if (value.emv_auth_data != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(5, value.emv_auth_data);
                    }
                    if (value.authorization_response_code != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(6, value.authorization_response_code);
                    }
                    if (value.dedicated_file_name != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(7, value.dedicated_file_name);
                    }
                    if (value.application_preferred_name != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(8, value.application_preferred_name);
                    }
                    if (value.terminal_verification_results != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(9, value.terminal_verification_results);
                    }
                    if (value.transaction_status_information != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(10, value.transaction_status_information);
                    }
                    if (value.cvm_type != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(11, value.cvm_type);
                    }
                    if (value.reader_ != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(12, value.reader_);
                    }
                    if (value.fingerprint != null) {
                        size += ProtoAdapter.STRING_VALUE.encodedSizeWithTag(13, value.fingerprint);
                    }
                    return value.authorization_code != null ? size + ProtoAdapter.STRING_VALUE.encodedSizeWithTag(14, value.authorization_code) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, Source.CardPresent value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.last4 != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.last4);
                    }
                    if (value.brand != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.brand);
                    }
                    if (value.evidence_customer_signature != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.evidence_customer_signature);
                    }
                    if (value.read_method != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.read_method);
                    }
                    if (value.emv_auth_data != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.emv_auth_data);
                    }
                    if (value.authorization_response_code != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 6, value.authorization_response_code);
                    }
                    if (value.dedicated_file_name != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 7, value.dedicated_file_name);
                    }
                    if (value.application_preferred_name != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 8, value.application_preferred_name);
                    }
                    if (value.terminal_verification_results != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 9, value.terminal_verification_results);
                    }
                    if (value.transaction_status_information != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 10, value.transaction_status_information);
                    }
                    if (value.cvm_type != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 11, value.cvm_type);
                    }
                    if (value.reader_ != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 12, value.reader_);
                    }
                    if (value.fingerprint != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 13, value.fingerprint);
                    }
                    if (value.authorization_code != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 14, value.authorization_code);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, Source.CardPresent value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.authorization_code != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 14, value.authorization_code);
                    }
                    if (value.fingerprint != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 13, value.fingerprint);
                    }
                    if (value.reader_ != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 12, value.reader_);
                    }
                    if (value.cvm_type != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 11, value.cvm_type);
                    }
                    if (value.transaction_status_information != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 10, value.transaction_status_information);
                    }
                    if (value.terminal_verification_results != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 9, value.terminal_verification_results);
                    }
                    if (value.application_preferred_name != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 8, value.application_preferred_name);
                    }
                    if (value.dedicated_file_name != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 7, value.dedicated_file_name);
                    }
                    if (value.authorization_response_code != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 6, value.authorization_response_code);
                    }
                    if (value.emv_auth_data != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 5, value.emv_auth_data);
                    }
                    if (value.read_method != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 4, value.read_method);
                    }
                    if (value.evidence_customer_signature != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 3, value.evidence_customer_signature);
                    }
                    if (value.brand != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 2, value.brand);
                    }
                    if (value.last4 != null) {
                        ProtoAdapter.STRING_VALUE.encodeWithTag(writer, 1, value.last4);
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public Source.CardPresent redact(Source.CardPresent value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    String str = value.last4;
                    String strRedact = str != null ? ProtoAdapter.STRING_VALUE.redact(str) : null;
                    String str2 = value.brand;
                    String strRedact2 = str2 != null ? ProtoAdapter.STRING_VALUE.redact(str2) : null;
                    String str3 = value.evidence_customer_signature;
                    String strRedact3 = str3 != null ? ProtoAdapter.STRING_VALUE.redact(str3) : null;
                    String str4 = value.read_method;
                    String strRedact4 = str4 != null ? ProtoAdapter.STRING_VALUE.redact(str4) : null;
                    String str5 = value.authorization_response_code;
                    String strRedact5 = str5 != null ? ProtoAdapter.STRING_VALUE.redact(str5) : null;
                    String str6 = value.dedicated_file_name;
                    String strRedact6 = str6 != null ? ProtoAdapter.STRING_VALUE.redact(str6) : null;
                    String str7 = value.application_preferred_name;
                    String strRedact7 = str7 != null ? ProtoAdapter.STRING_VALUE.redact(str7) : null;
                    String str8 = value.terminal_verification_results;
                    String strRedact8 = str8 != null ? ProtoAdapter.STRING_VALUE.redact(str8) : null;
                    String str9 = value.transaction_status_information;
                    String strRedact9 = str9 != null ? ProtoAdapter.STRING_VALUE.redact(str9) : null;
                    String str10 = value.cvm_type;
                    String strRedact10 = str10 != null ? ProtoAdapter.STRING_VALUE.redact(str10) : null;
                    String str11 = value.reader_;
                    String strRedact11 = str11 != null ? ProtoAdapter.STRING_VALUE.redact(str11) : null;
                    String str12 = value.authorization_code;
                    return value.copy(strRedact, strRedact2, strRedact3, strRedact4, null, strRedact5, strRedact6, strRedact7, strRedact8, strRedact9, strRedact10, strRedact11, null, str12 != null ? ProtoAdapter.STRING_VALUE.redact(str12) : null, ByteString.EMPTY);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public Source.CardPresent decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = null;
                    String strDecode2 = null;
                    String strDecode3 = null;
                    String strDecode4 = null;
                    String strDecode5 = null;
                    String strDecode6 = null;
                    String strDecode7 = null;
                    String strDecode8 = null;
                    String strDecode9 = null;
                    String strDecode10 = null;
                    String strDecode11 = null;
                    String strDecode12 = null;
                    String strDecode13 = null;
                    String strDecode14 = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        String str = strDecode;
                        if (iNextTag != -1) {
                            switch (iNextTag) {
                                case 1:
                                    strDecode14 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 2:
                                    strDecode = ProtoAdapter.STRING_VALUE.decode(reader);
                                    continue;
                                case 3:
                                    strDecode2 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 4:
                                    strDecode3 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 5:
                                    strDecode4 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 6:
                                    strDecode5 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 7:
                                    strDecode6 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 8:
                                    strDecode7 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 9:
                                    strDecode8 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 10:
                                    strDecode9 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 11:
                                    strDecode10 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 12:
                                    strDecode11 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 13:
                                    strDecode12 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                case 14:
                                    strDecode13 = ProtoAdapter.STRING_VALUE.decode(reader);
                                    break;
                                default:
                                    reader.readUnknownField(iNextTag);
                                    break;
                            }
                            strDecode = str;
                        } else {
                            return new Source.CardPresent(strDecode14, str, strDecode2, strDecode3, strDecode4, strDecode5, strDecode6, strDecode7, strDecode8, strDecode9, strDecode10, strDecode11, strDecode12, strDecode13, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                    }
                }
            };
        }
    }
}
