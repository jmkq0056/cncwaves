package com.stripe.proto.model.config;

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
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: VectorRegionalConfiguration.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001e2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001d\u001eB{\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\r\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0013¢\u0006\u0002\u0010\u0014J|\u0010\u0015\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\r\u001a\u00020\u000b2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u000f2\b\b\u0002\u0010\u0011\u001a\u00020\u000b2\b\b\u0002\u0010\u0012\u001a\u00020\u0013J\u0013\u0010\u0016\u001a\u00020\u000b2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u0002H\u0016J\b\u0010\u001c\u001a\u00020\u000fH\u0016R\u0010\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\u000f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u000f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/stripe/proto/model/config/VectorRegionalConfiguration;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;", "contact_parameters", "Lcom/stripe/proto/model/config/ContactApplicationParametersList;", "contact_public_keys", "Lcom/stripe/proto/model/config/CaPublicKeyList;", "contactless_combinations", "Lcom/stripe/proto/model/config/ContactlessCombinationsList;", "contactless_public_keys", "allow_quick_chip", "", "require_signature_on_swipe", "disable_oda", "region", "", "hash", "enable_emv_tone", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/config/ContactApplicationParametersList;Lcom/stripe/proto/model/config/CaPublicKeyList;Lcom/stripe/proto/model/config/ContactlessCombinationsList;Lcom/stripe/proto/model/config/CaPublicKeyList;ZZZLjava/lang/String;Ljava/lang/String;ZLokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class VectorRegionalConfiguration extends Message<VectorRegionalConfiguration, Builder> {
    public static final ProtoAdapter<VectorRegionalConfiguration> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "allowQuickChip", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final boolean allow_quick_chip;

    @WireField(adapter = "com.stripe.proto.model.config.ContactApplicationParametersList#ADAPTER", jsonName = "contactParameters", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final ContactApplicationParametersList contact_parameters;

    @WireField(adapter = "com.stripe.proto.model.config.CaPublicKeyList#ADAPTER", jsonName = "contactPublicKeys", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final CaPublicKeyList contact_public_keys;

    @WireField(adapter = "com.stripe.proto.model.config.ContactlessCombinationsList#ADAPTER", jsonName = "contactlessCombinations", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final ContactlessCombinationsList contactless_combinations;

    @WireField(adapter = "com.stripe.proto.model.config.CaPublicKeyList#ADAPTER", jsonName = "contactlessPublicKeys", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final CaPublicKeyList contactless_public_keys;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "disableOda", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final boolean disable_oda;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableEmvTone", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 9, tag = 10)
    public final boolean enable_emv_tone;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 9)
    public final String hash;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 8)
    public final String region;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "requireSignatureOnSwipe", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final boolean require_signature_on_swipe;

    public VectorRegionalConfiguration() {
        this(null, null, null, null, false, false, false, null, null, false, null, 2047, null);
    }

    public /* synthetic */ VectorRegionalConfiguration(ContactApplicationParametersList contactApplicationParametersList, CaPublicKeyList caPublicKeyList, ContactlessCombinationsList contactlessCombinationsList, CaPublicKeyList caPublicKeyList2, boolean z, boolean z2, boolean z3, String str, String str2, boolean z4, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : contactApplicationParametersList, (i & 2) != 0 ? null : caPublicKeyList, (i & 4) != 0 ? null : contactlessCombinationsList, (i & 8) != 0 ? null : caPublicKeyList2, (i & 16) != 0 ? false : z, (i & 32) != 0 ? false : z2, (i & 64) != 0 ? false : z3, (i & 128) != 0 ? "" : str, (i & 256) != 0 ? "" : str2, (i & 512) != 0 ? false : z4, (i & 1024) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VectorRegionalConfiguration(ContactApplicationParametersList contactApplicationParametersList, CaPublicKeyList caPublicKeyList, ContactlessCombinationsList contactlessCombinationsList, CaPublicKeyList caPublicKeyList2, boolean z, boolean z2, boolean z3, String region, String hash, boolean z4, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(region, "region");
        Intrinsics.checkNotNullParameter(hash, "hash");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.contact_parameters = contactApplicationParametersList;
        this.contact_public_keys = caPublicKeyList;
        this.contactless_combinations = contactlessCombinationsList;
        this.contactless_public_keys = caPublicKeyList2;
        this.allow_quick_chip = z;
        this.require_signature_on_swipe = z2;
        this.disable_oda = z3;
        this.region = region;
        this.hash = hash;
        this.enable_emv_tone = z4;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.contact_parameters = this.contact_parameters;
        builder.contact_public_keys = this.contact_public_keys;
        builder.contactless_combinations = this.contactless_combinations;
        builder.contactless_public_keys = this.contactless_public_keys;
        builder.allow_quick_chip = this.allow_quick_chip;
        builder.require_signature_on_swipe = this.require_signature_on_swipe;
        builder.disable_oda = this.disable_oda;
        builder.region = this.region;
        builder.hash = this.hash;
        builder.enable_emv_tone = this.enable_emv_tone;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof VectorRegionalConfiguration)) {
            return false;
        }
        VectorRegionalConfiguration vectorRegionalConfiguration = (VectorRegionalConfiguration) other;
        return Intrinsics.areEqual(unknownFields(), vectorRegionalConfiguration.unknownFields()) && Intrinsics.areEqual(this.contact_parameters, vectorRegionalConfiguration.contact_parameters) && Intrinsics.areEqual(this.contact_public_keys, vectorRegionalConfiguration.contact_public_keys) && Intrinsics.areEqual(this.contactless_combinations, vectorRegionalConfiguration.contactless_combinations) && Intrinsics.areEqual(this.contactless_public_keys, vectorRegionalConfiguration.contactless_public_keys) && this.allow_quick_chip == vectorRegionalConfiguration.allow_quick_chip && this.require_signature_on_swipe == vectorRegionalConfiguration.require_signature_on_swipe && this.disable_oda == vectorRegionalConfiguration.disable_oda && Intrinsics.areEqual(this.region, vectorRegionalConfiguration.region) && Intrinsics.areEqual(this.hash, vectorRegionalConfiguration.hash) && this.enable_emv_tone == vectorRegionalConfiguration.enable_emv_tone;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        ContactApplicationParametersList contactApplicationParametersList = this.contact_parameters;
        int iHashCode2 = (iHashCode + (contactApplicationParametersList != null ? contactApplicationParametersList.hashCode() : 0)) * 37;
        CaPublicKeyList caPublicKeyList = this.contact_public_keys;
        int iHashCode3 = (iHashCode2 + (caPublicKeyList != null ? caPublicKeyList.hashCode() : 0)) * 37;
        ContactlessCombinationsList contactlessCombinationsList = this.contactless_combinations;
        int iHashCode4 = (iHashCode3 + (contactlessCombinationsList != null ? contactlessCombinationsList.hashCode() : 0)) * 37;
        CaPublicKeyList caPublicKeyList2 = this.contactless_public_keys;
        int iHashCode5 = ((((((((((((iHashCode4 + (caPublicKeyList2 != null ? caPublicKeyList2.hashCode() : 0)) * 37) + Boolean.hashCode(this.allow_quick_chip)) * 37) + Boolean.hashCode(this.require_signature_on_swipe)) * 37) + Boolean.hashCode(this.disable_oda)) * 37) + this.region.hashCode()) * 37) + this.hash.hashCode()) * 37) + Boolean.hashCode(this.enable_emv_tone);
        this.hashCode = iHashCode5;
        return iHashCode5;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.contact_parameters != null) {
            arrayList.add("contact_parameters=" + this.contact_parameters);
        }
        if (this.contact_public_keys != null) {
            arrayList.add("contact_public_keys=" + this.contact_public_keys);
        }
        if (this.contactless_combinations != null) {
            arrayList.add("contactless_combinations=" + this.contactless_combinations);
        }
        if (this.contactless_public_keys != null) {
            arrayList.add("contactless_public_keys=" + this.contactless_public_keys);
        }
        ArrayList arrayList2 = arrayList;
        arrayList2.add("allow_quick_chip=" + this.allow_quick_chip);
        arrayList2.add("require_signature_on_swipe=" + this.require_signature_on_swipe);
        arrayList2.add("disable_oda=" + this.disable_oda);
        arrayList2.add("region=" + Internal.sanitize(this.region));
        arrayList2.add("hash=" + Internal.sanitize(this.hash));
        arrayList2.add("enable_emv_tone=" + this.enable_emv_tone);
        return CollectionsKt.joinToString$default(arrayList, ", ", "VectorRegionalConfiguration{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ VectorRegionalConfiguration copy$default(VectorRegionalConfiguration vectorRegionalConfiguration, ContactApplicationParametersList contactApplicationParametersList, CaPublicKeyList caPublicKeyList, ContactlessCombinationsList contactlessCombinationsList, CaPublicKeyList caPublicKeyList2, boolean z, boolean z2, boolean z3, String str, String str2, boolean z4, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            contactApplicationParametersList = vectorRegionalConfiguration.contact_parameters;
        }
        if ((i & 2) != 0) {
            caPublicKeyList = vectorRegionalConfiguration.contact_public_keys;
        }
        if ((i & 4) != 0) {
            contactlessCombinationsList = vectorRegionalConfiguration.contactless_combinations;
        }
        if ((i & 8) != 0) {
            caPublicKeyList2 = vectorRegionalConfiguration.contactless_public_keys;
        }
        if ((i & 16) != 0) {
            z = vectorRegionalConfiguration.allow_quick_chip;
        }
        if ((i & 32) != 0) {
            z2 = vectorRegionalConfiguration.require_signature_on_swipe;
        }
        if ((i & 64) != 0) {
            z3 = vectorRegionalConfiguration.disable_oda;
        }
        if ((i & 128) != 0) {
            str = vectorRegionalConfiguration.region;
        }
        if ((i & 256) != 0) {
            str2 = vectorRegionalConfiguration.hash;
        }
        if ((i & 512) != 0) {
            z4 = vectorRegionalConfiguration.enable_emv_tone;
        }
        if ((i & 1024) != 0) {
            byteString = vectorRegionalConfiguration.unknownFields();
        }
        boolean z5 = z4;
        ByteString byteString2 = byteString;
        String str3 = str;
        String str4 = str2;
        boolean z6 = z2;
        boolean z7 = z3;
        boolean z8 = z;
        ContactlessCombinationsList contactlessCombinationsList2 = contactlessCombinationsList;
        return vectorRegionalConfiguration.copy(contactApplicationParametersList, caPublicKeyList, contactlessCombinationsList2, caPublicKeyList2, z8, z6, z7, str3, str4, z5, byteString2);
    }

    public final VectorRegionalConfiguration copy(ContactApplicationParametersList contact_parameters, CaPublicKeyList contact_public_keys, ContactlessCombinationsList contactless_combinations, CaPublicKeyList contactless_public_keys, boolean allow_quick_chip, boolean require_signature_on_swipe, boolean disable_oda, String region, String hash, boolean enable_emv_tone, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(region, "region");
        Intrinsics.checkNotNullParameter(hash, "hash");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new VectorRegionalConfiguration(contact_parameters, contact_public_keys, contactless_combinations, contactless_public_keys, allow_quick_chip, require_signature_on_swipe, disable_oda, region, hash, enable_emv_tone, unknownFields);
    }

    /* JADX INFO: compiled from: VectorRegionalConfiguration.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\tJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0005J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0010J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/config/VectorRegionalConfiguration;", "()V", "allow_quick_chip", "", "contact_parameters", "Lcom/stripe/proto/model/config/ContactApplicationParametersList;", "contact_public_keys", "Lcom/stripe/proto/model/config/CaPublicKeyList;", "contactless_combinations", "Lcom/stripe/proto/model/config/ContactlessCombinationsList;", "contactless_public_keys", "disable_oda", "enable_emv_tone", "hash", "", "region", "require_signature_on_swipe", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<VectorRegionalConfiguration, Builder> {
        public boolean allow_quick_chip;
        public ContactApplicationParametersList contact_parameters;
        public CaPublicKeyList contact_public_keys;
        public ContactlessCombinationsList contactless_combinations;
        public CaPublicKeyList contactless_public_keys;
        public boolean disable_oda;
        public boolean enable_emv_tone;
        public boolean require_signature_on_swipe;
        public String region = "";
        public String hash = "";

        public final Builder contact_parameters(ContactApplicationParametersList contact_parameters) {
            this.contact_parameters = contact_parameters;
            return this;
        }

        public final Builder contact_public_keys(CaPublicKeyList contact_public_keys) {
            this.contact_public_keys = contact_public_keys;
            return this;
        }

        public final Builder contactless_combinations(ContactlessCombinationsList contactless_combinations) {
            this.contactless_combinations = contactless_combinations;
            return this;
        }

        public final Builder contactless_public_keys(CaPublicKeyList contactless_public_keys) {
            this.contactless_public_keys = contactless_public_keys;
            return this;
        }

        public final Builder allow_quick_chip(boolean allow_quick_chip) {
            this.allow_quick_chip = allow_quick_chip;
            return this;
        }

        public final Builder require_signature_on_swipe(boolean require_signature_on_swipe) {
            this.require_signature_on_swipe = require_signature_on_swipe;
            return this;
        }

        public final Builder disable_oda(boolean disable_oda) {
            this.disable_oda = disable_oda;
            return this;
        }

        public final Builder region(String region) {
            Intrinsics.checkNotNullParameter(region, "region");
            this.region = region;
            return this;
        }

        public final Builder hash(String hash) {
            Intrinsics.checkNotNullParameter(hash, "hash");
            this.hash = hash;
            return this;
        }

        public final Builder enable_emv_tone(boolean enable_emv_tone) {
            this.enable_emv_tone = enable_emv_tone;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public VectorRegionalConfiguration build() {
            return new VectorRegionalConfiguration(this.contact_parameters, this.contact_public_keys, this.contactless_combinations, this.contactless_public_keys, this.allow_quick_chip, this.require_signature_on_swipe, this.disable_oda, this.region, this.hash, this.enable_emv_tone, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: VectorRegionalConfiguration.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/VectorRegionalConfiguration;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ VectorRegionalConfiguration build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(VectorRegionalConfiguration.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<VectorRegionalConfiguration>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.config.VectorRegionalConfiguration$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(VectorRegionalConfiguration value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.contact_parameters != null) {
                    size += ContactApplicationParametersList.ADAPTER.encodedSizeWithTag(1, value.contact_parameters);
                }
                if (value.contact_public_keys != null) {
                    size += CaPublicKeyList.ADAPTER.encodedSizeWithTag(2, value.contact_public_keys);
                }
                if (value.contactless_combinations != null) {
                    size += ContactlessCombinationsList.ADAPTER.encodedSizeWithTag(3, value.contactless_combinations);
                }
                if (value.contactless_public_keys != null) {
                    size += CaPublicKeyList.ADAPTER.encodedSizeWithTag(4, value.contactless_public_keys);
                }
                if (value.allow_quick_chip) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(5, Boolean.valueOf(value.allow_quick_chip));
                }
                if (value.require_signature_on_swipe) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(6, Boolean.valueOf(value.require_signature_on_swipe));
                }
                if (value.disable_oda) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(7, Boolean.valueOf(value.disable_oda));
                }
                if (!Intrinsics.areEqual(value.region, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(8, value.region);
                }
                if (!Intrinsics.areEqual(value.hash, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(9, value.hash);
                }
                return value.enable_emv_tone ? size + ProtoAdapter.BOOL.encodedSizeWithTag(10, Boolean.valueOf(value.enable_emv_tone)) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, VectorRegionalConfiguration value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.contact_parameters != null) {
                    ContactApplicationParametersList.ADAPTER.encodeWithTag(writer, 1, value.contact_parameters);
                }
                if (value.contact_public_keys != null) {
                    CaPublicKeyList.ADAPTER.encodeWithTag(writer, 2, value.contact_public_keys);
                }
                if (value.contactless_combinations != null) {
                    ContactlessCombinationsList.ADAPTER.encodeWithTag(writer, 3, value.contactless_combinations);
                }
                if (value.contactless_public_keys != null) {
                    CaPublicKeyList.ADAPTER.encodeWithTag(writer, 4, value.contactless_public_keys);
                }
                if (value.allow_quick_chip) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 5, Boolean.valueOf(value.allow_quick_chip));
                }
                if (value.require_signature_on_swipe) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 6, Boolean.valueOf(value.require_signature_on_swipe));
                }
                if (value.disable_oda) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 7, Boolean.valueOf(value.disable_oda));
                }
                if (!Intrinsics.areEqual(value.region, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 8, value.region);
                }
                if (!Intrinsics.areEqual(value.hash, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 9, value.hash);
                }
                if (value.enable_emv_tone) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 10, Boolean.valueOf(value.enable_emv_tone));
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, VectorRegionalConfiguration value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.enable_emv_tone) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 10, Boolean.valueOf(value.enable_emv_tone));
                }
                if (!Intrinsics.areEqual(value.hash, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 9, value.hash);
                }
                if (!Intrinsics.areEqual(value.region, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 8, value.region);
                }
                if (value.disable_oda) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 7, Boolean.valueOf(value.disable_oda));
                }
                if (value.require_signature_on_swipe) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 6, Boolean.valueOf(value.require_signature_on_swipe));
                }
                if (value.allow_quick_chip) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 5, Boolean.valueOf(value.allow_quick_chip));
                }
                if (value.contactless_public_keys != null) {
                    CaPublicKeyList.ADAPTER.encodeWithTag(writer, 4, value.contactless_public_keys);
                }
                if (value.contactless_combinations != null) {
                    ContactlessCombinationsList.ADAPTER.encodeWithTag(writer, 3, value.contactless_combinations);
                }
                if (value.contact_public_keys != null) {
                    CaPublicKeyList.ADAPTER.encodeWithTag(writer, 2, value.contact_public_keys);
                }
                if (value.contact_parameters != null) {
                    ContactApplicationParametersList.ADAPTER.encodeWithTag(writer, 1, value.contact_parameters);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public VectorRegionalConfiguration redact(VectorRegionalConfiguration value) {
                Intrinsics.checkNotNullParameter(value, "value");
                ContactApplicationParametersList contactApplicationParametersList = value.contact_parameters;
                ContactApplicationParametersList contactApplicationParametersListRedact = contactApplicationParametersList != null ? ContactApplicationParametersList.ADAPTER.redact(contactApplicationParametersList) : null;
                CaPublicKeyList caPublicKeyList = value.contact_public_keys;
                CaPublicKeyList caPublicKeyListRedact = caPublicKeyList != null ? CaPublicKeyList.ADAPTER.redact(caPublicKeyList) : null;
                ContactlessCombinationsList contactlessCombinationsList = value.contactless_combinations;
                ContactlessCombinationsList contactlessCombinationsListRedact = contactlessCombinationsList != null ? ContactlessCombinationsList.ADAPTER.redact(contactlessCombinationsList) : null;
                CaPublicKeyList caPublicKeyList2 = value.contactless_public_keys;
                return VectorRegionalConfiguration.copy$default(value, contactApplicationParametersListRedact, caPublicKeyListRedact, contactlessCombinationsListRedact, caPublicKeyList2 != null ? CaPublicKeyList.ADAPTER.redact(caPublicKeyList2) : null, false, false, false, null, null, false, ByteString.EMPTY, 1008, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public VectorRegionalConfiguration decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                ContactApplicationParametersList contactApplicationParametersListDecode = null;
                CaPublicKeyList caPublicKeyListDecode = null;
                boolean zBooleanValue = false;
                boolean zBooleanValue2 = false;
                boolean zBooleanValue3 = false;
                boolean zBooleanValue4 = false;
                String strDecode = "";
                String strDecode2 = strDecode;
                CaPublicKeyList caPublicKeyListDecode2 = null;
                ContactlessCombinationsList contactlessCombinationsListDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                contactApplicationParametersListDecode = ContactApplicationParametersList.ADAPTER.decode(reader);
                                break;
                            case 2:
                                caPublicKeyListDecode2 = CaPublicKeyList.ADAPTER.decode(reader);
                                break;
                            case 3:
                                contactlessCombinationsListDecode = ContactlessCombinationsList.ADAPTER.decode(reader);
                                break;
                            case 4:
                                caPublicKeyListDecode = CaPublicKeyList.ADAPTER.decode(reader);
                                break;
                            case 5:
                                zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 6:
                                zBooleanValue2 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 7:
                                zBooleanValue3 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 8:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 9:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 10:
                                zBooleanValue4 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new VectorRegionalConfiguration(contactApplicationParametersListDecode, caPublicKeyListDecode2, contactlessCombinationsListDecode, caPublicKeyListDecode, zBooleanValue, zBooleanValue2, zBooleanValue3, strDecode, strDecode2, zBooleanValue4, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
