package com.stripe.proto.model.config;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.model.payments.EmvKernelVersion;
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

/* JADX INFO: compiled from: ContactEmvConfig.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u001c2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001b\u001cBY\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fJ_\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\b\u001a\u00020\t2\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\b\b\u0002\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u0012J\u0013\u0010\u0013\u001a\u00020\u00042\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0002H\u0016J\b\u0010\u0019\u001a\u00020\u001aH\u0016R\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0010R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0010R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0010R\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0010R\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/stripe/proto/model/config/ContactEmvConfig;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;", "allow_quick_emv", "", "allow_efficient_application_selection", "allow_partial_read_records", "allow_emv_application_selection", "vector_configuration", "Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;", "supported_applications", "", "Lcom/stripe/proto/model/config/EmvApplicationId;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;Ljava/util/List;Lokio/ByteString;)V", "Ljava/lang/Boolean;", "copy", "(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;Ljava/util/List;Lokio/ByteString;)Lcom/stripe/proto/model/config/ContactEmvConfig;", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ContactEmvConfig extends Message<ContactEmvConfig, Builder> {
    public static final ProtoAdapter<ContactEmvConfig> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "allowEfficientApplicationSelection", schemaIndex = 1, tag = 2)
    public final Boolean allow_efficient_application_selection;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "allowEmvApplicationSelection", schemaIndex = 3, tag = 6)
    public final Boolean allow_emv_application_selection;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "allowPartialReadRecords", schemaIndex = 2, tag = 3)
    public final Boolean allow_partial_read_records;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "allowQuickEmv", schemaIndex = 0, tag = 1)
    public final Boolean allow_quick_emv;

    @WireField(adapter = "com.stripe.proto.model.config.EmvApplicationId#ADAPTER", jsonName = "supportedApplications", label = WireField.Label.REPEATED, schemaIndex = 5, tag = 5)
    public final List<EmvApplicationId> supported_applications;

    @WireField(adapter = "com.stripe.proto.model.payments.EmvKernelVersion$VectorConfiguration#ADAPTER", jsonName = "vectorConfiguration", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 4)
    public final EmvKernelVersion.VectorConfiguration vector_configuration;

    public ContactEmvConfig() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public /* synthetic */ ContactEmvConfig(Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, EmvKernelVersion.VectorConfiguration vectorConfiguration, List list, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : bool, (i & 2) != 0 ? null : bool2, (i & 4) != 0 ? null : bool3, (i & 8) != 0 ? null : bool4, (i & 16) != 0 ? EmvKernelVersion.VectorConfiguration.NONE : vectorConfiguration, (i & 32) != 0 ? CollectionsKt.emptyList() : list, (i & 64) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContactEmvConfig(Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, EmvKernelVersion.VectorConfiguration vector_configuration, List<? extends EmvApplicationId> supported_applications, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(vector_configuration, "vector_configuration");
        Intrinsics.checkNotNullParameter(supported_applications, "supported_applications");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.allow_quick_emv = bool;
        this.allow_efficient_application_selection = bool2;
        this.allow_partial_read_records = bool3;
        this.allow_emv_application_selection = bool4;
        this.vector_configuration = vector_configuration;
        this.supported_applications = Internal.immutableCopyOf("supported_applications", supported_applications);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.allow_quick_emv = this.allow_quick_emv;
        builder.allow_efficient_application_selection = this.allow_efficient_application_selection;
        builder.allow_partial_read_records = this.allow_partial_read_records;
        builder.allow_emv_application_selection = this.allow_emv_application_selection;
        builder.vector_configuration = this.vector_configuration;
        builder.supported_applications = this.supported_applications;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ContactEmvConfig)) {
            return false;
        }
        ContactEmvConfig contactEmvConfig = (ContactEmvConfig) other;
        return Intrinsics.areEqual(unknownFields(), contactEmvConfig.unknownFields()) && Intrinsics.areEqual(this.allow_quick_emv, contactEmvConfig.allow_quick_emv) && Intrinsics.areEqual(this.allow_efficient_application_selection, contactEmvConfig.allow_efficient_application_selection) && Intrinsics.areEqual(this.allow_partial_read_records, contactEmvConfig.allow_partial_read_records) && Intrinsics.areEqual(this.allow_emv_application_selection, contactEmvConfig.allow_emv_application_selection) && this.vector_configuration == contactEmvConfig.vector_configuration && Intrinsics.areEqual(this.supported_applications, contactEmvConfig.supported_applications);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Boolean bool = this.allow_quick_emv;
        int iHashCode2 = (iHashCode + (bool != null ? bool.hashCode() : 0)) * 37;
        Boolean bool2 = this.allow_efficient_application_selection;
        int iHashCode3 = (iHashCode2 + (bool2 != null ? bool2.hashCode() : 0)) * 37;
        Boolean bool3 = this.allow_partial_read_records;
        int iHashCode4 = (iHashCode3 + (bool3 != null ? bool3.hashCode() : 0)) * 37;
        Boolean bool4 = this.allow_emv_application_selection;
        int iHashCode5 = ((((iHashCode4 + (bool4 != null ? bool4.hashCode() : 0)) * 37) + this.vector_configuration.hashCode()) * 37) + this.supported_applications.hashCode();
        this.hashCode = iHashCode5;
        return iHashCode5;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.allow_quick_emv != null) {
            arrayList.add("allow_quick_emv=" + this.allow_quick_emv);
        }
        if (this.allow_efficient_application_selection != null) {
            arrayList.add("allow_efficient_application_selection=" + this.allow_efficient_application_selection);
        }
        if (this.allow_partial_read_records != null) {
            arrayList.add("allow_partial_read_records=" + this.allow_partial_read_records);
        }
        if (this.allow_emv_application_selection != null) {
            arrayList.add("allow_emv_application_selection=" + this.allow_emv_application_selection);
        }
        ArrayList arrayList2 = arrayList;
        arrayList2.add("vector_configuration=" + this.vector_configuration);
        if (!this.supported_applications.isEmpty()) {
            arrayList2.add("supported_applications=" + this.supported_applications);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ContactEmvConfig{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ContactEmvConfig copy$default(ContactEmvConfig contactEmvConfig, Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, EmvKernelVersion.VectorConfiguration vectorConfiguration, List list, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            bool = contactEmvConfig.allow_quick_emv;
        }
        if ((i & 2) != 0) {
            bool2 = contactEmvConfig.allow_efficient_application_selection;
        }
        if ((i & 4) != 0) {
            bool3 = contactEmvConfig.allow_partial_read_records;
        }
        if ((i & 8) != 0) {
            bool4 = contactEmvConfig.allow_emv_application_selection;
        }
        if ((i & 16) != 0) {
            vectorConfiguration = contactEmvConfig.vector_configuration;
        }
        if ((i & 32) != 0) {
            list = contactEmvConfig.supported_applications;
        }
        if ((i & 64) != 0) {
            byteString = contactEmvConfig.unknownFields();
        }
        List list2 = list;
        ByteString byteString2 = byteString;
        EmvKernelVersion.VectorConfiguration vectorConfiguration2 = vectorConfiguration;
        Boolean bool5 = bool3;
        return contactEmvConfig.copy(bool, bool2, bool5, bool4, vectorConfiguration2, list2, byteString2);
    }

    public final ContactEmvConfig copy(Boolean allow_quick_emv, Boolean allow_efficient_application_selection, Boolean allow_partial_read_records, Boolean allow_emv_application_selection, EmvKernelVersion.VectorConfiguration vector_configuration, List<? extends EmvApplicationId> supported_applications, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(vector_configuration, "vector_configuration");
        Intrinsics.checkNotNullParameter(supported_applications, "supported_applications");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ContactEmvConfig(allow_quick_emv, allow_efficient_application_selection, allow_partial_read_records, allow_emv_application_selection, vector_configuration, supported_applications, unknownFields);
    }

    /* JADX INFO: compiled from: ContactEmvConfig.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u000fJ\u0015\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u000fJ\u0015\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u000fJ\u0015\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u000fJ\b\u0010\u0010\u001a\u00020\u0002H\u0016J\u0014\u0010\n\u001a\u00020\u00002\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0018\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/config/ContactEmvConfig;", "()V", "allow_efficient_application_selection", "", "Ljava/lang/Boolean;", "allow_emv_application_selection", "allow_partial_read_records", "allow_quick_emv", "supported_applications", "", "Lcom/stripe/proto/model/config/EmvApplicationId;", "vector_configuration", "Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;", "(Ljava/lang/Boolean;)Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ContactEmvConfig, Builder> {
        public Boolean allow_efficient_application_selection;
        public Boolean allow_emv_application_selection;
        public Boolean allow_partial_read_records;
        public Boolean allow_quick_emv;
        public EmvKernelVersion.VectorConfiguration vector_configuration = EmvKernelVersion.VectorConfiguration.NONE;
        public List<? extends EmvApplicationId> supported_applications = CollectionsKt.emptyList();

        public final Builder allow_quick_emv(Boolean allow_quick_emv) {
            this.allow_quick_emv = allow_quick_emv;
            return this;
        }

        public final Builder allow_efficient_application_selection(Boolean allow_efficient_application_selection) {
            this.allow_efficient_application_selection = allow_efficient_application_selection;
            return this;
        }

        public final Builder allow_partial_read_records(Boolean allow_partial_read_records) {
            this.allow_partial_read_records = allow_partial_read_records;
            return this;
        }

        public final Builder allow_emv_application_selection(Boolean allow_emv_application_selection) {
            this.allow_emv_application_selection = allow_emv_application_selection;
            return this;
        }

        public final Builder vector_configuration(EmvKernelVersion.VectorConfiguration vector_configuration) {
            Intrinsics.checkNotNullParameter(vector_configuration, "vector_configuration");
            this.vector_configuration = vector_configuration;
            return this;
        }

        public final Builder supported_applications(List<? extends EmvApplicationId> supported_applications) {
            Intrinsics.checkNotNullParameter(supported_applications, "supported_applications");
            Internal.checkElementsNotNull(supported_applications);
            this.supported_applications = supported_applications;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ContactEmvConfig build() {
            return new ContactEmvConfig(this.allow_quick_emv, this.allow_efficient_application_selection, this.allow_partial_read_records, this.allow_emv_application_selection, this.vector_configuration, this.supported_applications, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ContactEmvConfig.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/config/ContactEmvConfig$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/ContactEmvConfig;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ContactEmvConfig build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ContactEmvConfig.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ContactEmvConfig>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.config.ContactEmvConfig$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ContactEmvConfig value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.allow_quick_emv != null) {
                    size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(1, value.allow_quick_emv);
                }
                if (value.allow_efficient_application_selection != null) {
                    size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(2, value.allow_efficient_application_selection);
                }
                if (value.allow_partial_read_records != null) {
                    size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(3, value.allow_partial_read_records);
                }
                if (value.allow_emv_application_selection != null) {
                    size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(6, value.allow_emv_application_selection);
                }
                if (value.vector_configuration != EmvKernelVersion.VectorConfiguration.NONE) {
                    size += EmvKernelVersion.VectorConfiguration.ADAPTER.encodedSizeWithTag(4, value.vector_configuration);
                }
                return size + EmvApplicationId.ADAPTER.asRepeated().encodedSizeWithTag(5, value.supported_applications);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ContactEmvConfig value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.allow_quick_emv != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 1, value.allow_quick_emv);
                }
                if (value.allow_efficient_application_selection != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 2, value.allow_efficient_application_selection);
                }
                if (value.allow_partial_read_records != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 3, value.allow_partial_read_records);
                }
                if (value.allow_emv_application_selection != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 6, value.allow_emv_application_selection);
                }
                if (value.vector_configuration != EmvKernelVersion.VectorConfiguration.NONE) {
                    EmvKernelVersion.VectorConfiguration.ADAPTER.encodeWithTag(writer, 4, value.vector_configuration);
                }
                EmvApplicationId.ADAPTER.asRepeated().encodeWithTag(writer, 5, value.supported_applications);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ContactEmvConfig value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                EmvApplicationId.ADAPTER.asRepeated().encodeWithTag(writer, 5, value.supported_applications);
                if (value.vector_configuration != EmvKernelVersion.VectorConfiguration.NONE) {
                    EmvKernelVersion.VectorConfiguration.ADAPTER.encodeWithTag(writer, 4, value.vector_configuration);
                }
                if (value.allow_emv_application_selection != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 6, value.allow_emv_application_selection);
                }
                if (value.allow_partial_read_records != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 3, value.allow_partial_read_records);
                }
                if (value.allow_efficient_application_selection != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 2, value.allow_efficient_application_selection);
                }
                if (value.allow_quick_emv != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 1, value.allow_quick_emv);
                }
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
            public com.stripe.proto.model.config.ContactEmvConfig decode(com.squareup.wire.ProtoReader r15) throws java.io.IOException {
                /*
                    r14 = this;
                    java.lang.String r0 = "reader"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r15, r0)
                    com.stripe.proto.model.payments.EmvKernelVersion$VectorConfiguration r0 = com.stripe.proto.model.payments.EmvKernelVersion.VectorConfiguration.NONE
                    java.util.ArrayList r1 = new java.util.ArrayList
                    r1.<init>()
                    r8 = r1
                    java.util.List r8 = (java.util.List) r8
                    long r1 = r15.beginMessage()
                    r3 = 0
                    r4 = r3
                    r5 = r4
                    r6 = r5
                    r7 = r6
                L18:
                    r3 = r0
                L19:
                    int r9 = r15.nextTag()
                    r0 = -1
                    if (r9 == r0) goto L70
                    switch(r9) {
                        case 1: goto L68;
                        case 2: goto L60;
                        case 3: goto L58;
                        case 4: goto L43;
                        case 5: goto L2f;
                        case 6: goto L27;
                        default: goto L23;
                    }
                L23:
                    r15.readUnknownField(r9)
                    goto L19
                L27:
                    com.squareup.wire.ProtoAdapter<java.lang.Boolean> r0 = com.squareup.wire.ProtoAdapter.BOOL_VALUE
                    java.lang.Object r0 = r0.decode(r15)
                    r7 = r0
                    goto L19
                L2f:
                    com.squareup.wire.ProtoAdapter<com.stripe.proto.model.config.EmvApplicationId> r0 = com.stripe.proto.model.config.EmvApplicationId.ADAPTER     // Catch: com.squareup.wire.ProtoAdapter.EnumConstantNotFoundException -> L35
                    r0.tryDecode(r15, r8)     // Catch: com.squareup.wire.ProtoAdapter.EnumConstantNotFoundException -> L35
                    goto L19
                L35:
                    r0 = move-exception
                    com.squareup.wire.FieldEncoding r10 = com.squareup.wire.FieldEncoding.VARINT
                    int r0 = r0.value
                    long r11 = (long) r0
                    java.lang.Long r0 = java.lang.Long.valueOf(r11)
                    r15.addUnknownField(r9, r10, r0)
                    goto L19
                L43:
                    com.squareup.wire.ProtoAdapter<com.stripe.proto.model.payments.EmvKernelVersion$VectorConfiguration> r0 = com.stripe.proto.model.payments.EmvKernelVersion.VectorConfiguration.ADAPTER     // Catch: com.squareup.wire.ProtoAdapter.EnumConstantNotFoundException -> L4a
                    java.lang.Object r0 = r0.decode(r15)     // Catch: com.squareup.wire.ProtoAdapter.EnumConstantNotFoundException -> L4a
                    goto L18
                L4a:
                    r0 = move-exception
                    com.squareup.wire.FieldEncoding r10 = com.squareup.wire.FieldEncoding.VARINT
                    int r0 = r0.value
                    long r11 = (long) r0
                    java.lang.Long r0 = java.lang.Long.valueOf(r11)
                    r15.addUnknownField(r9, r10, r0)
                    goto L19
                L58:
                    com.squareup.wire.ProtoAdapter<java.lang.Boolean> r0 = com.squareup.wire.ProtoAdapter.BOOL_VALUE
                    java.lang.Object r0 = r0.decode(r15)
                    r6 = r0
                    goto L19
                L60:
                    com.squareup.wire.ProtoAdapter<java.lang.Boolean> r0 = com.squareup.wire.ProtoAdapter.BOOL_VALUE
                    java.lang.Object r0 = r0.decode(r15)
                    r5 = r0
                    goto L19
                L68:
                    com.squareup.wire.ProtoAdapter<java.lang.Boolean> r0 = com.squareup.wire.ProtoAdapter.BOOL_VALUE
                    java.lang.Object r0 = r0.decode(r15)
                    r4 = r0
                    goto L19
                L70:
                    okio.ByteString r9 = r15.endMessageAndGetUnknownFields(r1)
                    com.stripe.proto.model.config.ContactEmvConfig r2 = new com.stripe.proto.model.config.ContactEmvConfig
                    java.lang.Boolean r4 = (java.lang.Boolean) r4
                    java.lang.Boolean r5 = (java.lang.Boolean) r5
                    java.lang.Boolean r6 = (java.lang.Boolean) r6
                    java.lang.Boolean r7 = (java.lang.Boolean) r7
                    com.stripe.proto.model.payments.EmvKernelVersion$VectorConfiguration r3 = (com.stripe.proto.model.payments.EmvKernelVersion.VectorConfiguration) r3
                    r13 = r7
                    r7 = r3
                    r3 = r4
                    r4 = r5
                    r5 = r6
                    r6 = r13
                    r2.<init>(r3, r4, r5, r6, r7, r8, r9)
                    return r2
                */
                throw new UnsupportedOperationException("Method not decompiled: com.stripe.proto.model.config.ContactEmvConfig$Companion$ADAPTER$1.decode(com.squareup.wire.ProtoReader):com.stripe.proto.model.config.ContactEmvConfig");
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ContactEmvConfig redact(ContactEmvConfig value) {
                Intrinsics.checkNotNullParameter(value, "value");
                Boolean bool = value.allow_quick_emv;
                Boolean boolRedact = bool != null ? ProtoAdapter.BOOL_VALUE.redact(bool) : null;
                Boolean bool2 = value.allow_efficient_application_selection;
                Boolean boolRedact2 = bool2 != null ? ProtoAdapter.BOOL_VALUE.redact(bool2) : null;
                Boolean bool3 = value.allow_partial_read_records;
                Boolean boolRedact3 = bool3 != null ? ProtoAdapter.BOOL_VALUE.redact(bool3) : null;
                Boolean bool4 = value.allow_emv_application_selection;
                return ContactEmvConfig.copy$default(value, boolRedact, boolRedact2, boolRedact3, bool4 != null ? ProtoAdapter.BOOL_VALUE.redact(bool4) : null, null, null, ByteString.EMPTY, 48, null);
            }
        };
    }
}
