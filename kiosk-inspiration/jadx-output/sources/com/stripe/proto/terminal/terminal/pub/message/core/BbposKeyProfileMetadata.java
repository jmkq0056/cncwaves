package com.stripe.proto.terminal.terminal.pub.message.core;

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
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.terminal.terminal.pub.message.core.BbposKeyProfileMetadata;
import java.io.IOException;
import java.util.ArrayList;
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

/* JADX INFO: compiled from: BbposKeyProfileMetadata.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00182\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0017\u0018\u0019BK\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJL\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\rJ\u0013\u0010\u0010\u001a\u00020\n2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0002H\u0016J\b\u0010\u0016\u001a\u00020\u0004H\u0016R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;", "name", "", OfflineStorageConstantsKt.ID, "pek0_keyset_id", "p2pe_type", "Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;", "is_dual_slot_pek", "", "is_test", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;ZZLokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "KeyProfileP2PEType", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BbposKeyProfileMetadata extends Message<BbposKeyProfileMetadata, Builder> {
    public static final ProtoAdapter<BbposKeyProfileMetadata> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "isDualSlotPek", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final boolean is_dual_slot_pek;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "isTest", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final boolean is_test;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String name;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.core.BbposKeyProfileMetadata$KeyProfileP2PEType#ADAPTER", jsonName = "p2peType", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 7)
    public final KeyProfileP2PEType p2pe_type;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "pek0KeysetId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String pek0_keyset_id;

    public BbposKeyProfileMetadata() {
        this(null, null, null, null, false, false, null, 127, null);
    }

    public /* synthetic */ BbposKeyProfileMetadata(String str, String str2, String str3, KeyProfileP2PEType keyProfileP2PEType, boolean z, boolean z2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? KeyProfileP2PEType.KEY_PROFILE__P_2_PE_TYPE_INVALID : keyProfileP2PEType, (i & 16) != 0 ? false : z, (i & 32) != 0 ? false : z2, (i & 64) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BbposKeyProfileMetadata(String name, String id, String pek0_keyset_id, KeyProfileP2PEType p2pe_type, boolean z, boolean z2, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(pek0_keyset_id, "pek0_keyset_id");
        Intrinsics.checkNotNullParameter(p2pe_type, "p2pe_type");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.name = name;
        this.id = id;
        this.pek0_keyset_id = pek0_keyset_id;
        this.p2pe_type = p2pe_type;
        this.is_dual_slot_pek = z;
        this.is_test = z2;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.name = this.name;
        builder.id = this.id;
        builder.pek0_keyset_id = this.pek0_keyset_id;
        builder.p2pe_type = this.p2pe_type;
        builder.is_dual_slot_pek = this.is_dual_slot_pek;
        builder.is_test = this.is_test;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof BbposKeyProfileMetadata)) {
            return false;
        }
        BbposKeyProfileMetadata bbposKeyProfileMetadata = (BbposKeyProfileMetadata) other;
        return Intrinsics.areEqual(unknownFields(), bbposKeyProfileMetadata.unknownFields()) && Intrinsics.areEqual(this.name, bbposKeyProfileMetadata.name) && Intrinsics.areEqual(this.id, bbposKeyProfileMetadata.id) && Intrinsics.areEqual(this.pek0_keyset_id, bbposKeyProfileMetadata.pek0_keyset_id) && this.p2pe_type == bbposKeyProfileMetadata.p2pe_type && this.is_dual_slot_pek == bbposKeyProfileMetadata.is_dual_slot_pek && this.is_test == bbposKeyProfileMetadata.is_test;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((((((unknownFields().hashCode() * 37) + this.name.hashCode()) * 37) + this.id.hashCode()) * 37) + this.pek0_keyset_id.hashCode()) * 37) + this.p2pe_type.hashCode()) * 37) + Boolean.hashCode(this.is_dual_slot_pek)) * 37) + Boolean.hashCode(this.is_test);
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("name=" + Internal.sanitize(this.name));
        arrayList2.add("id=" + Internal.sanitize(this.id));
        arrayList2.add("pek0_keyset_id=" + Internal.sanitize(this.pek0_keyset_id));
        arrayList2.add("p2pe_type=" + this.p2pe_type);
        arrayList2.add("is_dual_slot_pek=" + this.is_dual_slot_pek);
        arrayList2.add("is_test=" + this.is_test);
        return CollectionsKt.joinToString$default(arrayList, ", ", "BbposKeyProfileMetadata{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ BbposKeyProfileMetadata copy$default(BbposKeyProfileMetadata bbposKeyProfileMetadata, String str, String str2, String str3, KeyProfileP2PEType keyProfileP2PEType, boolean z, boolean z2, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = bbposKeyProfileMetadata.name;
        }
        if ((i & 2) != 0) {
            str2 = bbposKeyProfileMetadata.id;
        }
        if ((i & 4) != 0) {
            str3 = bbposKeyProfileMetadata.pek0_keyset_id;
        }
        if ((i & 8) != 0) {
            keyProfileP2PEType = bbposKeyProfileMetadata.p2pe_type;
        }
        if ((i & 16) != 0) {
            z = bbposKeyProfileMetadata.is_dual_slot_pek;
        }
        if ((i & 32) != 0) {
            z2 = bbposKeyProfileMetadata.is_test;
        }
        if ((i & 64) != 0) {
            byteString = bbposKeyProfileMetadata.unknownFields();
        }
        boolean z3 = z2;
        ByteString byteString2 = byteString;
        boolean z4 = z;
        String str4 = str3;
        return bbposKeyProfileMetadata.copy(str, str2, str4, keyProfileP2PEType, z4, z3, byteString2);
    }

    public final BbposKeyProfileMetadata copy(String name, String id, String pek0_keyset_id, KeyProfileP2PEType p2pe_type, boolean is_dual_slot_pek, boolean is_test, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(pek0_keyset_id, "pek0_keyset_id");
        Intrinsics.checkNotNullParameter(p2pe_type, "p2pe_type");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new BbposKeyProfileMetadata(name, id, pek0_keyset_id, p2pe_type, is_dual_slot_pek, is_test, unknownFields);
    }

    /* JADX INFO: compiled from: BbposKeyProfileMetadata.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\r\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;", "()V", OfflineStorageConstantsKt.ID, "", "is_dual_slot_pek", "", "is_test", "name", "p2pe_type", "Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;", "pek0_keyset_id", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<BbposKeyProfileMetadata, Builder> {
        public boolean is_dual_slot_pek;
        public boolean is_test;
        public String name = "";
        public String id = "";
        public String pek0_keyset_id = "";
        public KeyProfileP2PEType p2pe_type = KeyProfileP2PEType.KEY_PROFILE__P_2_PE_TYPE_INVALID;

        public final Builder name(String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            this.name = name;
            return this;
        }

        public final Builder id(String id) {
            Intrinsics.checkNotNullParameter(id, "id");
            this.id = id;
            return this;
        }

        public final Builder pek0_keyset_id(String pek0_keyset_id) {
            Intrinsics.checkNotNullParameter(pek0_keyset_id, "pek0_keyset_id");
            this.pek0_keyset_id = pek0_keyset_id;
            return this;
        }

        public final Builder p2pe_type(KeyProfileP2PEType p2pe_type) {
            Intrinsics.checkNotNullParameter(p2pe_type, "p2pe_type");
            this.p2pe_type = p2pe_type;
            return this;
        }

        public final Builder is_dual_slot_pek(boolean is_dual_slot_pek) {
            this.is_dual_slot_pek = is_dual_slot_pek;
            return this;
        }

        public final Builder is_test(boolean is_test) {
            this.is_test = is_test;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public BbposKeyProfileMetadata build() {
            return new BbposKeyProfileMetadata(this.name, this.id, this.pek0_keyset_id, this.p2pe_type, this.is_dual_slot_pek, this.is_test, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: BbposKeyProfileMetadata.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ BbposKeyProfileMetadata build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(BbposKeyProfileMetadata.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<BbposKeyProfileMetadata>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.terminal.pub.message.core.BbposKeyProfileMetadata$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(BbposKeyProfileMetadata value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.name, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.name);
                }
                if (!Intrinsics.areEqual(value.id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.id);
                }
                if (!Intrinsics.areEqual(value.pek0_keyset_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.pek0_keyset_id);
                }
                if (value.p2pe_type != BbposKeyProfileMetadata.KeyProfileP2PEType.KEY_PROFILE__P_2_PE_TYPE_INVALID) {
                    size += BbposKeyProfileMetadata.KeyProfileP2PEType.ADAPTER.encodedSizeWithTag(7, value.p2pe_type);
                }
                if (value.is_dual_slot_pek) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(5, Boolean.valueOf(value.is_dual_slot_pek));
                }
                return value.is_test ? size + ProtoAdapter.BOOL.encodedSizeWithTag(6, Boolean.valueOf(value.is_test)) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, BbposKeyProfileMetadata value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.name);
                }
                if (!Intrinsics.areEqual(value.id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.id);
                }
                if (!Intrinsics.areEqual(value.pek0_keyset_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.pek0_keyset_id);
                }
                if (value.p2pe_type != BbposKeyProfileMetadata.KeyProfileP2PEType.KEY_PROFILE__P_2_PE_TYPE_INVALID) {
                    BbposKeyProfileMetadata.KeyProfileP2PEType.ADAPTER.encodeWithTag(writer, 7, value.p2pe_type);
                }
                if (value.is_dual_slot_pek) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 5, Boolean.valueOf(value.is_dual_slot_pek));
                }
                if (value.is_test) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 6, Boolean.valueOf(value.is_test));
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, BbposKeyProfileMetadata value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.is_test) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 6, Boolean.valueOf(value.is_test));
                }
                if (value.is_dual_slot_pek) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 5, Boolean.valueOf(value.is_dual_slot_pek));
                }
                if (value.p2pe_type != BbposKeyProfileMetadata.KeyProfileP2PEType.KEY_PROFILE__P_2_PE_TYPE_INVALID) {
                    BbposKeyProfileMetadata.KeyProfileP2PEType.ADAPTER.encodeWithTag(writer, 7, value.p2pe_type);
                }
                if (!Intrinsics.areEqual(value.pek0_keyset_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.pek0_keyset_id);
                }
                if (!Intrinsics.areEqual(value.id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.id);
                }
                if (Intrinsics.areEqual(value.name, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.name);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public BbposKeyProfileMetadata decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                BbposKeyProfileMetadata.KeyProfileP2PEType keyProfileP2PEType = BbposKeyProfileMetadata.KeyProfileP2PEType.KEY_PROFILE__P_2_PE_TYPE_INVALID;
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = strDecode;
                boolean zBooleanValue = false;
                boolean zBooleanValue2 = false;
                BbposKeyProfileMetadata.KeyProfileP2PEType keyProfileP2PETypeDecode = keyProfileP2PEType;
                String strDecode3 = strDecode2;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new BbposKeyProfileMetadata(strDecode3, strDecode, strDecode2, keyProfileP2PETypeDecode, zBooleanValue, zBooleanValue2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode3 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 2) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 3) {
                        strDecode2 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 5) {
                        zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                    } else if (iNextTag == 6) {
                        zBooleanValue2 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                    } else if (iNextTag == 7) {
                        try {
                            keyProfileP2PETypeDecode = BbposKeyProfileMetadata.KeyProfileP2PEType.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public BbposKeyProfileMetadata redact(BbposKeyProfileMetadata value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return BbposKeyProfileMetadata.copy$default(value, null, null, null, null, false, false, ByteString.EMPTY, 63, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: BbposKeyProfileMetadata.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "KEY_PROFILE__P_2_PE_TYPE_INVALID", "NOT_P2PE_CAPABLE", "P2PE_CAPABLE_MERCHANT_DISABLED", "P2PE_CAPABLE_MERCHANT_ENABLED", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class KeyProfileP2PEType implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ KeyProfileP2PEType[] $VALUES;
        public static final ProtoAdapter<KeyProfileP2PEType> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final KeyProfileP2PEType KEY_PROFILE__P_2_PE_TYPE_INVALID;
        public static final KeyProfileP2PEType NOT_P2PE_CAPABLE;
        public static final KeyProfileP2PEType P2PE_CAPABLE_MERCHANT_DISABLED;
        public static final KeyProfileP2PEType P2PE_CAPABLE_MERCHANT_ENABLED;
        private final int value;

        private static final /* synthetic */ KeyProfileP2PEType[] $values() {
            return new KeyProfileP2PEType[]{KEY_PROFILE__P_2_PE_TYPE_INVALID, NOT_P2PE_CAPABLE, P2PE_CAPABLE_MERCHANT_DISABLED, P2PE_CAPABLE_MERCHANT_ENABLED};
        }

        @JvmStatic
        public static final KeyProfileP2PEType fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<KeyProfileP2PEType> getEntries() {
            return $ENTRIES;
        }

        public static KeyProfileP2PEType valueOf(String str) {
            return (KeyProfileP2PEType) Enum.valueOf(KeyProfileP2PEType.class, str);
        }

        public static KeyProfileP2PEType[] values() {
            return (KeyProfileP2PEType[]) $VALUES.clone();
        }

        private KeyProfileP2PEType(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final KeyProfileP2PEType keyProfileP2PEType = new KeyProfileP2PEType("KEY_PROFILE__P_2_PE_TYPE_INVALID", 0, 0);
            KEY_PROFILE__P_2_PE_TYPE_INVALID = keyProfileP2PEType;
            NOT_P2PE_CAPABLE = new KeyProfileP2PEType("NOT_P2PE_CAPABLE", 1, 1);
            P2PE_CAPABLE_MERCHANT_DISABLED = new KeyProfileP2PEType("P2PE_CAPABLE_MERCHANT_DISABLED", 2, 2);
            P2PE_CAPABLE_MERCHANT_ENABLED = new KeyProfileP2PEType("P2PE_CAPABLE_MERCHANT_ENABLED", 3, 3);
            KeyProfileP2PEType[] keyProfileP2PETypeArr$values = $values();
            $VALUES = keyProfileP2PETypeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(keyProfileP2PETypeArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(KeyProfileP2PEType.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<KeyProfileP2PEType>(orCreateKotlinClass, syntax, keyProfileP2PEType) { // from class: com.stripe.proto.terminal.terminal.pub.message.core.BbposKeyProfileMetadata$KeyProfileP2PEType$Companion$ADAPTER$1
                {
                    BbposKeyProfileMetadata.KeyProfileP2PEType keyProfileP2PEType2 = keyProfileP2PEType;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public BbposKeyProfileMetadata.KeyProfileP2PEType fromValue(int value) {
                    return BbposKeyProfileMetadata.KeyProfileP2PEType.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: BbposKeyProfileMetadata.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final KeyProfileP2PEType fromValue(int value) {
                if (value == 0) {
                    return KeyProfileP2PEType.KEY_PROFILE__P_2_PE_TYPE_INVALID;
                }
                if (value == 1) {
                    return KeyProfileP2PEType.NOT_P2PE_CAPABLE;
                }
                if (value == 2) {
                    return KeyProfileP2PEType.P2PE_CAPABLE_MERCHANT_DISABLED;
                }
                if (value != 3) {
                    return null;
                }
                return KeyProfileP2PEType.P2PE_CAPABLE_MERCHANT_ENABLED;
            }
        }
    }
}
