package com.stripe.proto.model.config;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: ContactApplicationParameters.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001c2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001b\u001cBa\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u000b\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010¢\u0006\u0002\u0010\u0011Jb\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\u00042\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u000b2\b\b\u0002\u0010\u000f\u001a\u00020\u0010J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u0002H\u0016J\b\u0010\u001a\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/stripe/proto/model/config/ContactApplicationParameters;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/config/ContactApplicationParameters$Builder;", "aid", "", "asi", "Lcom/stripe/proto/model/config/ApplicationSelectionIndicator;", "tac_denial", "tac_online", "tac_default", "tlvs", "", "Lcom/stripe/proto/model/config/Tlv;", "probable_oda_afls", "Lcom/stripe/proto/model/config/Afl;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lcom/stripe/proto/model/config/ApplicationSelectionIndicator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ContactApplicationParameters extends Message<ContactApplicationParameters, Builder> {
    public static final ProtoAdapter<ContactApplicationParameters> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String aid;

    @WireField(adapter = "com.stripe.proto.model.config.ApplicationSelectionIndicator#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final ApplicationSelectionIndicator asi;

    @WireField(adapter = "com.stripe.proto.model.config.Afl#ADAPTER", jsonName = "probableOdaAfls", label = WireField.Label.REPEATED, schemaIndex = 6, tag = 7)
    public final List<Afl> probable_oda_afls;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "tacDefault", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final String tac_default;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "tacDenial", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String tac_denial;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "tacOnline", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String tac_online;

    @WireField(adapter = "com.stripe.proto.model.config.Tlv#ADAPTER", label = WireField.Label.REPEATED, schemaIndex = 5, tag = 6)
    public final List<Tlv> tlvs;

    public ContactApplicationParameters() {
        this(null, null, null, null, null, null, null, null, 255, null);
    }

    public /* synthetic */ ContactApplicationParameters(String str, ApplicationSelectionIndicator applicationSelectionIndicator, String str2, String str3, String str4, List list, List list2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? ApplicationSelectionIndicator.PARTIAL_MATCH : applicationSelectionIndicator, (i & 4) != 0 ? "" : str2, (i & 8) != 0 ? "" : str3, (i & 16) != 0 ? "" : str4, (i & 32) != 0 ? CollectionsKt.emptyList() : list, (i & 64) != 0 ? CollectionsKt.emptyList() : list2, (i & 128) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContactApplicationParameters(String aid, ApplicationSelectionIndicator asi, String tac_denial, String tac_online, String tac_default, List<Tlv> tlvs, List<Afl> probable_oda_afls, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(aid, "aid");
        Intrinsics.checkNotNullParameter(asi, "asi");
        Intrinsics.checkNotNullParameter(tac_denial, "tac_denial");
        Intrinsics.checkNotNullParameter(tac_online, "tac_online");
        Intrinsics.checkNotNullParameter(tac_default, "tac_default");
        Intrinsics.checkNotNullParameter(tlvs, "tlvs");
        Intrinsics.checkNotNullParameter(probable_oda_afls, "probable_oda_afls");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.aid = aid;
        this.asi = asi;
        this.tac_denial = tac_denial;
        this.tac_online = tac_online;
        this.tac_default = tac_default;
        this.tlvs = Internal.immutableCopyOf("tlvs", tlvs);
        this.probable_oda_afls = Internal.immutableCopyOf("probable_oda_afls", probable_oda_afls);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.aid = this.aid;
        builder.asi = this.asi;
        builder.tac_denial = this.tac_denial;
        builder.tac_online = this.tac_online;
        builder.tac_default = this.tac_default;
        builder.tlvs = this.tlvs;
        builder.probable_oda_afls = this.probable_oda_afls;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ContactApplicationParameters)) {
            return false;
        }
        ContactApplicationParameters contactApplicationParameters = (ContactApplicationParameters) other;
        return Intrinsics.areEqual(unknownFields(), contactApplicationParameters.unknownFields()) && Intrinsics.areEqual(this.aid, contactApplicationParameters.aid) && this.asi == contactApplicationParameters.asi && Intrinsics.areEqual(this.tac_denial, contactApplicationParameters.tac_denial) && Intrinsics.areEqual(this.tac_online, contactApplicationParameters.tac_online) && Intrinsics.areEqual(this.tac_default, contactApplicationParameters.tac_default) && Intrinsics.areEqual(this.tlvs, contactApplicationParameters.tlvs) && Intrinsics.areEqual(this.probable_oda_afls, contactApplicationParameters.probable_oda_afls);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((((((((unknownFields().hashCode() * 37) + this.aid.hashCode()) * 37) + this.asi.hashCode()) * 37) + this.tac_denial.hashCode()) * 37) + this.tac_online.hashCode()) * 37) + this.tac_default.hashCode()) * 37) + this.tlvs.hashCode()) * 37) + this.probable_oda_afls.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("aid=" + Internal.sanitize(this.aid));
        arrayList2.add("asi=" + this.asi);
        arrayList2.add("tac_denial=" + Internal.sanitize(this.tac_denial));
        arrayList2.add("tac_online=" + Internal.sanitize(this.tac_online));
        arrayList2.add("tac_default=" + Internal.sanitize(this.tac_default));
        if (!this.tlvs.isEmpty()) {
            arrayList2.add("tlvs=" + this.tlvs);
        }
        if (!this.probable_oda_afls.isEmpty()) {
            arrayList2.add("probable_oda_afls=" + this.probable_oda_afls);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ContactApplicationParameters{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ContactApplicationParameters copy$default(ContactApplicationParameters contactApplicationParameters, String str, ApplicationSelectionIndicator applicationSelectionIndicator, String str2, String str3, String str4, List list, List list2, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = contactApplicationParameters.aid;
        }
        if ((i & 2) != 0) {
            applicationSelectionIndicator = contactApplicationParameters.asi;
        }
        if ((i & 4) != 0) {
            str2 = contactApplicationParameters.tac_denial;
        }
        if ((i & 8) != 0) {
            str3 = contactApplicationParameters.tac_online;
        }
        if ((i & 16) != 0) {
            str4 = contactApplicationParameters.tac_default;
        }
        if ((i & 32) != 0) {
            list = contactApplicationParameters.tlvs;
        }
        if ((i & 64) != 0) {
            list2 = contactApplicationParameters.probable_oda_afls;
        }
        if ((i & 128) != 0) {
            byteString = contactApplicationParameters.unknownFields();
        }
        List list3 = list2;
        ByteString byteString2 = byteString;
        String str5 = str4;
        List list4 = list;
        return contactApplicationParameters.copy(str, applicationSelectionIndicator, str2, str3, str5, list4, list3, byteString2);
    }

    public final ContactApplicationParameters copy(String aid, ApplicationSelectionIndicator asi, String tac_denial, String tac_online, String tac_default, List<Tlv> tlvs, List<Afl> probable_oda_afls, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(aid, "aid");
        Intrinsics.checkNotNullParameter(asi, "asi");
        Intrinsics.checkNotNullParameter(tac_denial, "tac_denial");
        Intrinsics.checkNotNullParameter(tac_online, "tac_online");
        Intrinsics.checkNotNullParameter(tac_default, "tac_default");
        Intrinsics.checkNotNullParameter(tlvs, "tlvs");
        Intrinsics.checkNotNullParameter(probable_oda_afls, "probable_oda_afls");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ContactApplicationParameters(aid, asi, tac_denial, tac_online, tac_default, tlvs, probable_oda_afls, unknownFields);
    }

    /* JADX INFO: compiled from: ContactApplicationParameters.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\u0014\u0010\b\u001a\u00020\u00002\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u0014\u0010\u000e\u001a\u00020\u00002\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\tR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/stripe/proto/model/config/ContactApplicationParameters$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/config/ContactApplicationParameters;", "()V", "aid", "", "asi", "Lcom/stripe/proto/model/config/ApplicationSelectionIndicator;", "probable_oda_afls", "", "Lcom/stripe/proto/model/config/Afl;", "tac_default", "tac_denial", "tac_online", "tlvs", "Lcom/stripe/proto/model/config/Tlv;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ContactApplicationParameters, Builder> {
        public String aid = "";
        public ApplicationSelectionIndicator asi = ApplicationSelectionIndicator.PARTIAL_MATCH;
        public String tac_denial = "";
        public String tac_online = "";
        public String tac_default = "";
        public List<Tlv> tlvs = CollectionsKt.emptyList();
        public List<Afl> probable_oda_afls = CollectionsKt.emptyList();

        public final Builder aid(String aid) {
            Intrinsics.checkNotNullParameter(aid, "aid");
            this.aid = aid;
            return this;
        }

        public final Builder asi(ApplicationSelectionIndicator asi) {
            Intrinsics.checkNotNullParameter(asi, "asi");
            this.asi = asi;
            return this;
        }

        public final Builder tac_denial(String tac_denial) {
            Intrinsics.checkNotNullParameter(tac_denial, "tac_denial");
            this.tac_denial = tac_denial;
            return this;
        }

        public final Builder tac_online(String tac_online) {
            Intrinsics.checkNotNullParameter(tac_online, "tac_online");
            this.tac_online = tac_online;
            return this;
        }

        public final Builder tac_default(String tac_default) {
            Intrinsics.checkNotNullParameter(tac_default, "tac_default");
            this.tac_default = tac_default;
            return this;
        }

        public final Builder tlvs(List<Tlv> tlvs) {
            Intrinsics.checkNotNullParameter(tlvs, "tlvs");
            Internal.checkElementsNotNull(tlvs);
            this.tlvs = tlvs;
            return this;
        }

        public final Builder probable_oda_afls(List<Afl> probable_oda_afls) {
            Intrinsics.checkNotNullParameter(probable_oda_afls, "probable_oda_afls");
            Internal.checkElementsNotNull(probable_oda_afls);
            this.probable_oda_afls = probable_oda_afls;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ContactApplicationParameters build() {
            return new ContactApplicationParameters(this.aid, this.asi, this.tac_denial, this.tac_online, this.tac_default, this.tlvs, this.probable_oda_afls, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ContactApplicationParameters.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/config/ContactApplicationParameters$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/ContactApplicationParameters;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/config/ContactApplicationParameters$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ContactApplicationParameters build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ContactApplicationParameters.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ContactApplicationParameters>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.config.ContactApplicationParameters$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ContactApplicationParameters value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.aid, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.aid);
                }
                if (value.asi != ApplicationSelectionIndicator.PARTIAL_MATCH) {
                    size += ApplicationSelectionIndicator.ADAPTER.encodedSizeWithTag(2, value.asi);
                }
                if (!Intrinsics.areEqual(value.tac_denial, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.tac_denial);
                }
                if (!Intrinsics.areEqual(value.tac_online, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(4, value.tac_online);
                }
                if (!Intrinsics.areEqual(value.tac_default, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(5, value.tac_default);
                }
                return size + Tlv.ADAPTER.asRepeated().encodedSizeWithTag(6, value.tlvs) + Afl.ADAPTER.asRepeated().encodedSizeWithTag(7, value.probable_oda_afls);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ContactApplicationParameters value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.aid, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.aid);
                }
                if (value.asi != ApplicationSelectionIndicator.PARTIAL_MATCH) {
                    ApplicationSelectionIndicator.ADAPTER.encodeWithTag(writer, 2, value.asi);
                }
                if (!Intrinsics.areEqual(value.tac_denial, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.tac_denial);
                }
                if (!Intrinsics.areEqual(value.tac_online, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.tac_online);
                }
                if (!Intrinsics.areEqual(value.tac_default, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.tac_default);
                }
                Tlv.ADAPTER.asRepeated().encodeWithTag(writer, 6, value.tlvs);
                Afl.ADAPTER.asRepeated().encodeWithTag(writer, 7, value.probable_oda_afls);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ContactApplicationParameters value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                Afl.ADAPTER.asRepeated().encodeWithTag(writer, 7, value.probable_oda_afls);
                Tlv.ADAPTER.asRepeated().encodeWithTag(writer, 6, value.tlvs);
                if (!Intrinsics.areEqual(value.tac_default, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.tac_default);
                }
                if (!Intrinsics.areEqual(value.tac_online, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.tac_online);
                }
                if (!Intrinsics.areEqual(value.tac_denial, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.tac_denial);
                }
                if (value.asi != ApplicationSelectionIndicator.PARTIAL_MATCH) {
                    ApplicationSelectionIndicator.ADAPTER.encodeWithTag(writer, 2, value.asi);
                }
                if (Intrinsics.areEqual(value.aid, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.aid);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /*  JADX ERROR: UnsupportedOperationException in pass: SwitchBreakVisitor
                java.lang.UnsupportedOperationException
                	at java.base/java.util.AbstractList.remove(AbstractList.java:167)
                	at jadx.core.utils.ListUtils.removeLast(ListUtils.java:82)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$BaseSwitchRegionVisitor.removeBreak(SwitchBreakVisitor.java:254)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$ExtractCommonBreak.processBranchRegion(SwitchBreakVisitor.java:110)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$ExtractCommonBreak.processRegion(SwitchBreakVisitor.java:64)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$BaseSwitchRegionVisitor.enterRegion(SwitchBreakVisitor.java:202)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:67)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:23)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$IterativeSwitchRegionVisitor.leaveRegion(SwitchBreakVisitor.java:177)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor.runSwitchTraverse(SwitchBreakVisitor.java:52)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor.visit(SwitchBreakVisitor.java:45)
                */
            @Override // com.squareup.wire.ProtoAdapter
            public com.stripe.proto.model.config.ContactApplicationParameters decode(com.squareup.wire.ProtoReader r17) throws java.io.IOException {
                /*
                    r16 = this;
                    r1 = r17
                    java.lang.String r0 = "reader"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r0)
                    com.stripe.proto.model.config.ApplicationSelectionIndicator r0 = com.stripe.proto.model.config.ApplicationSelectionIndicator.PARTIAL_MATCH
                    java.util.ArrayList r2 = new java.util.ArrayList
                    r2.<init>()
                    r9 = r2
                    java.util.List r9 = (java.util.List) r9
                    java.util.ArrayList r2 = new java.util.ArrayList
                    r2.<init>()
                    r10 = r2
                    java.util.List r10 = (java.util.List) r10
                    long r2 = r1.beginMessage()
                    java.lang.String r4 = ""
                    r5 = r4
                    r6 = r5
                    r7 = r6
                    r8 = r7
                L23:
                    r4 = r0
                L24:
                    int r11 = r1.nextTag()
                    r0 = -1
                    if (r11 == r0) goto L7b
                    switch(r11) {
                        case 1: goto L73;
                        case 2: goto L5e;
                        case 3: goto L56;
                        case 4: goto L4e;
                        case 5: goto L46;
                        case 6: goto L3c;
                        case 7: goto L32;
                        default: goto L2e;
                    }
                L2e:
                    r1.readUnknownField(r11)
                    goto L24
                L32:
                    com.squareup.wire.ProtoAdapter<com.stripe.proto.model.config.Afl> r0 = com.stripe.proto.model.config.Afl.ADAPTER
                    java.lang.Object r0 = r0.decode(r1)
                    r10.add(r0)
                    goto L24
                L3c:
                    com.squareup.wire.ProtoAdapter<com.stripe.proto.model.config.Tlv> r0 = com.stripe.proto.model.config.Tlv.ADAPTER
                    java.lang.Object r0 = r0.decode(r1)
                    r9.add(r0)
                    goto L24
                L46:
                    com.squareup.wire.ProtoAdapter<java.lang.String> r0 = com.squareup.wire.ProtoAdapter.STRING
                    java.lang.Object r0 = r0.decode(r1)
                    r8 = r0
                    goto L24
                L4e:
                    com.squareup.wire.ProtoAdapter<java.lang.String> r0 = com.squareup.wire.ProtoAdapter.STRING
                    java.lang.Object r0 = r0.decode(r1)
                    r7 = r0
                    goto L24
                L56:
                    com.squareup.wire.ProtoAdapter<java.lang.String> r0 = com.squareup.wire.ProtoAdapter.STRING
                    java.lang.Object r0 = r0.decode(r1)
                    r6 = r0
                    goto L24
                L5e:
                    com.squareup.wire.ProtoAdapter<com.stripe.proto.model.config.ApplicationSelectionIndicator> r0 = com.stripe.proto.model.config.ApplicationSelectionIndicator.ADAPTER     // Catch: com.squareup.wire.ProtoAdapter.EnumConstantNotFoundException -> L65
                    java.lang.Object r0 = r0.decode(r1)     // Catch: com.squareup.wire.ProtoAdapter.EnumConstantNotFoundException -> L65
                    goto L23
                L65:
                    r0 = move-exception
                    com.squareup.wire.FieldEncoding r12 = com.squareup.wire.FieldEncoding.VARINT
                    int r0 = r0.value
                    long r13 = (long) r0
                    java.lang.Long r0 = java.lang.Long.valueOf(r13)
                    r1.addUnknownField(r11, r12, r0)
                    goto L24
                L73:
                    com.squareup.wire.ProtoAdapter<java.lang.String> r0 = com.squareup.wire.ProtoAdapter.STRING
                    java.lang.Object r0 = r0.decode(r1)
                    r5 = r0
                    goto L24
                L7b:
                    okio.ByteString r11 = r1.endMessageAndGetUnknownFields(r2)
                    com.stripe.proto.model.config.ContactApplicationParameters r3 = new com.stripe.proto.model.config.ContactApplicationParameters
                    java.lang.String r5 = (java.lang.String) r5
                    com.stripe.proto.model.config.ApplicationSelectionIndicator r4 = (com.stripe.proto.model.config.ApplicationSelectionIndicator) r4
                    java.lang.String r6 = (java.lang.String) r6
                    java.lang.String r7 = (java.lang.String) r7
                    java.lang.String r8 = (java.lang.String) r8
                    r15 = r5
                    r5 = r4
                    r4 = r15
                    r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11)
                    return r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.stripe.proto.model.config.ContactApplicationParameters$Companion$ADAPTER$1.decode(com.squareup.wire.ProtoReader):com.stripe.proto.model.config.ContactApplicationParameters");
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ContactApplicationParameters redact(ContactApplicationParameters value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return ContactApplicationParameters.copy$default(value, null, null, null, null, null, Internal.m361redactElements(value.tlvs, Tlv.ADAPTER), Internal.m361redactElements(value.probable_oda_afls, Afl.ADAPTER), ByteString.EMPTY, 31, null);
            }
        };
    }
}
