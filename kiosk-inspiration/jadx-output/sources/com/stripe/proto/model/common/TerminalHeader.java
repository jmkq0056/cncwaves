package com.stripe.proto.model.common;

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

/* JADX INFO: compiled from: TerminalHeader.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00182\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0017\u0018BQ\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJR\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00042\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\n2\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\rJ\u0013\u0010\u0010\u001a\u00020\u00072\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0002H\u0016J\b\u0010\u0016\u001a\u00020\u0004H\u0016R\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/model/common/TerminalHeader;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/common/TerminalHeader$Builder;", "merchant_id", "", "platform_id", "livemode", "", "operator_id", "authenticated_compartment_ids", "", "controlling_platform_id", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TerminalHeader extends Message<TerminalHeader, Builder> {
    public static final ProtoAdapter<TerminalHeader> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "authenticatedCompartmentIds", label = WireField.Label.REPEATED, schemaIndex = 4, tag = 5)
    public final List<String> authenticated_compartment_ids;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "controllingPlatformId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final String controlling_platform_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final boolean livemode;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "merchantId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String merchant_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "operatorId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String operator_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "platformId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String platform_id;

    public TerminalHeader() {
        this(null, null, false, null, null, null, null, 127, null);
    }

    public /* synthetic */ TerminalHeader(String str, String str2, boolean z, String str3, List list, String str4, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? false : z, (i & 8) != 0 ? "" : str3, (i & 16) != 0 ? CollectionsKt.emptyList() : list, (i & 32) != 0 ? "" : str4, (i & 64) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TerminalHeader(String merchant_id, String platform_id, boolean z, String operator_id, List<String> authenticated_compartment_ids, String controlling_platform_id, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(merchant_id, "merchant_id");
        Intrinsics.checkNotNullParameter(platform_id, "platform_id");
        Intrinsics.checkNotNullParameter(operator_id, "operator_id");
        Intrinsics.checkNotNullParameter(authenticated_compartment_ids, "authenticated_compartment_ids");
        Intrinsics.checkNotNullParameter(controlling_platform_id, "controlling_platform_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.merchant_id = merchant_id;
        this.platform_id = platform_id;
        this.livemode = z;
        this.operator_id = operator_id;
        this.controlling_platform_id = controlling_platform_id;
        this.authenticated_compartment_ids = Internal.immutableCopyOf("authenticated_compartment_ids", authenticated_compartment_ids);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.merchant_id = this.merchant_id;
        builder.platform_id = this.platform_id;
        builder.livemode = this.livemode;
        builder.operator_id = this.operator_id;
        builder.authenticated_compartment_ids = this.authenticated_compartment_ids;
        builder.controlling_platform_id = this.controlling_platform_id;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof TerminalHeader)) {
            return false;
        }
        TerminalHeader terminalHeader = (TerminalHeader) other;
        return Intrinsics.areEqual(unknownFields(), terminalHeader.unknownFields()) && Intrinsics.areEqual(this.merchant_id, terminalHeader.merchant_id) && Intrinsics.areEqual(this.platform_id, terminalHeader.platform_id) && this.livemode == terminalHeader.livemode && Intrinsics.areEqual(this.operator_id, terminalHeader.operator_id) && Intrinsics.areEqual(this.authenticated_compartment_ids, terminalHeader.authenticated_compartment_ids) && Intrinsics.areEqual(this.controlling_platform_id, terminalHeader.controlling_platform_id);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((((((unknownFields().hashCode() * 37) + this.merchant_id.hashCode()) * 37) + this.platform_id.hashCode()) * 37) + Boolean.hashCode(this.livemode)) * 37) + this.operator_id.hashCode()) * 37) + this.authenticated_compartment_ids.hashCode()) * 37) + this.controlling_platform_id.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("merchant_id=" + Internal.sanitize(this.merchant_id));
        arrayList2.add("platform_id=" + Internal.sanitize(this.platform_id));
        arrayList2.add("livemode=" + this.livemode);
        arrayList2.add("operator_id=" + Internal.sanitize(this.operator_id));
        if (!this.authenticated_compartment_ids.isEmpty()) {
            arrayList2.add("authenticated_compartment_ids=" + Internal.sanitize(this.authenticated_compartment_ids));
        }
        arrayList2.add("controlling_platform_id=" + Internal.sanitize(this.controlling_platform_id));
        return CollectionsKt.joinToString$default(arrayList, ", ", "TerminalHeader{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TerminalHeader copy$default(TerminalHeader terminalHeader, String str, String str2, boolean z, String str3, List list, String str4, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = terminalHeader.merchant_id;
        }
        if ((i & 2) != 0) {
            str2 = terminalHeader.platform_id;
        }
        if ((i & 4) != 0) {
            z = terminalHeader.livemode;
        }
        if ((i & 8) != 0) {
            str3 = terminalHeader.operator_id;
        }
        if ((i & 16) != 0) {
            list = terminalHeader.authenticated_compartment_ids;
        }
        if ((i & 32) != 0) {
            str4 = terminalHeader.controlling_platform_id;
        }
        if ((i & 64) != 0) {
            byteString = terminalHeader.unknownFields();
        }
        String str5 = str4;
        ByteString byteString2 = byteString;
        List list2 = list;
        boolean z2 = z;
        return terminalHeader.copy(str, str2, z2, str3, list2, str5, byteString2);
    }

    public final TerminalHeader copy(String merchant_id, String platform_id, boolean livemode, String operator_id, List<String> authenticated_compartment_ids, String controlling_platform_id, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(merchant_id, "merchant_id");
        Intrinsics.checkNotNullParameter(platform_id, "platform_id");
        Intrinsics.checkNotNullParameter(operator_id, "operator_id");
        Intrinsics.checkNotNullParameter(authenticated_compartment_ids, "authenticated_compartment_ids");
        Intrinsics.checkNotNullParameter(controlling_platform_id, "controlling_platform_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new TerminalHeader(merchant_id, platform_id, livemode, operator_id, authenticated_compartment_ids, controlling_platform_id, unknownFields);
    }

    /* JADX INFO: compiled from: TerminalHeader.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\b\u0010\r\u001a\u00020\u0002H\u0016J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0006J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0006J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0006R\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/common/TerminalHeader$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/common/TerminalHeader;", "()V", "authenticated_compartment_ids", "", "", "controlling_platform_id", "livemode", "", "merchant_id", "operator_id", "platform_id", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<TerminalHeader, Builder> {
        public boolean livemode;
        public String merchant_id = "";
        public String platform_id = "";
        public String operator_id = "";
        public List<String> authenticated_compartment_ids = CollectionsKt.emptyList();
        public String controlling_platform_id = "";

        public final Builder merchant_id(String merchant_id) {
            Intrinsics.checkNotNullParameter(merchant_id, "merchant_id");
            this.merchant_id = merchant_id;
            return this;
        }

        public final Builder platform_id(String platform_id) {
            Intrinsics.checkNotNullParameter(platform_id, "platform_id");
            this.platform_id = platform_id;
            return this;
        }

        public final Builder livemode(boolean livemode) {
            this.livemode = livemode;
            return this;
        }

        public final Builder operator_id(String operator_id) {
            Intrinsics.checkNotNullParameter(operator_id, "operator_id");
            this.operator_id = operator_id;
            return this;
        }

        public final Builder authenticated_compartment_ids(List<String> authenticated_compartment_ids) {
            Intrinsics.checkNotNullParameter(authenticated_compartment_ids, "authenticated_compartment_ids");
            Internal.checkElementsNotNull(authenticated_compartment_ids);
            this.authenticated_compartment_ids = authenticated_compartment_ids;
            return this;
        }

        public final Builder controlling_platform_id(String controlling_platform_id) {
            Intrinsics.checkNotNullParameter(controlling_platform_id, "controlling_platform_id");
            this.controlling_platform_id = controlling_platform_id;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public TerminalHeader build() {
            return new TerminalHeader(this.merchant_id, this.platform_id, this.livemode, this.operator_id, this.authenticated_compartment_ids, this.controlling_platform_id, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: TerminalHeader.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/common/TerminalHeader$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/TerminalHeader;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/common/TerminalHeader$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ TerminalHeader build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(TerminalHeader.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<TerminalHeader>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.common.TerminalHeader$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(TerminalHeader value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.merchant_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.merchant_id);
                }
                if (!Intrinsics.areEqual(value.platform_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.platform_id);
                }
                if (value.livemode) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(3, Boolean.valueOf(value.livemode));
                }
                if (!Intrinsics.areEqual(value.operator_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(4, value.operator_id);
                }
                int iEncodedSizeWithTag = size + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(5, value.authenticated_compartment_ids);
                return !Intrinsics.areEqual(value.controlling_platform_id, "") ? iEncodedSizeWithTag + ProtoAdapter.STRING.encodedSizeWithTag(6, value.controlling_platform_id) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, TerminalHeader value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.merchant_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.merchant_id);
                }
                if (!Intrinsics.areEqual(value.platform_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.platform_id);
                }
                if (value.livemode) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 3, Boolean.valueOf(value.livemode));
                }
                if (!Intrinsics.areEqual(value.operator_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.operator_id);
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 5, value.authenticated_compartment_ids);
                if (!Intrinsics.areEqual(value.controlling_platform_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.controlling_platform_id);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, TerminalHeader value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.controlling_platform_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.controlling_platform_id);
                }
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 5, value.authenticated_compartment_ids);
                if (!Intrinsics.areEqual(value.operator_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.operator_id);
                }
                if (value.livemode) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 3, Boolean.valueOf(value.livemode));
                }
                if (!Intrinsics.areEqual(value.platform_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.platform_id);
                }
                if (Intrinsics.areEqual(value.merchant_id, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.merchant_id);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public TerminalHeader decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = "";
                String strDecode3 = strDecode2;
                boolean zBooleanValue = false;
                String strDecode4 = strDecode3;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 2:
                                strDecode4 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 3:
                                zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 4:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 5:
                                arrayList.add(ProtoAdapter.STRING.decode(reader));
                                break;
                            case 6:
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new TerminalHeader(strDecode, strDecode4, zBooleanValue, strDecode2, arrayList, strDecode3, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public TerminalHeader redact(TerminalHeader value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return TerminalHeader.copy$default(value, null, null, false, null, null, null, ByteString.EMPTY, 63, null);
            }
        };
    }
}
