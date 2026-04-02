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

/* JADX INFO: compiled from: ContactlessCombination.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 (2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002'(B©\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\u0014\b\u0002\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u001b\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u001d¢\u0006\u0002\u0010\u001eJª\u0001\u0010\u001f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\b\u0002\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0014\b\u0002\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u001dJ\u0013\u0010 \u001a\u00020\t2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0096\u0002J\b\u0010#\u001a\u00020$H\u0016J\b\u0010%\u001a\u00020\u0002H\u0016J\b\u0010&\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u001b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00198\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Lcom/stripe/proto/model/config/ContactlessCombination;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/config/ContactlessCombination$Builder;", "aid", "", "tlvs", "", "Lcom/stripe/proto/model/config/Tlv;", "is_signature_supported", "", "pay_pass_parameters", "Lcom/stripe/proto/model/config/PayPassParameters;", "pay_wave_parameters", "Lcom/stripe/proto/model/config/PayWaveParameters;", "express_pay_parameters", "Lcom/stripe/proto/model/config/ExpressPayParameters;", "jcb_parameters", "Lcom/stripe/proto/model/config/JcbParameters;", "discover_parameters", "Lcom/stripe/proto/model/config/DiscoverParameters;", "interac_parameters", "Lcom/stripe/proto/model/config/InteracParameters;", "epal_parameters", "Lcom/stripe/proto/model/config/EpalParameters;", "eftpos_parameters", "Lcom/stripe/proto/model/config/EftposParameters;", "aid_params", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/util/List;ZLcom/stripe/proto/model/config/PayPassParameters;Lcom/stripe/proto/model/config/PayWaveParameters;Lcom/stripe/proto/model/config/ExpressPayParameters;Lcom/stripe/proto/model/config/JcbParameters;Lcom/stripe/proto/model/config/DiscoverParameters;Lcom/stripe/proto/model/config/InteracParameters;Lcom/stripe/proto/model/config/EpalParameters;Lcom/stripe/proto/model/config/EftposParameters;Ljava/util/Map;Lokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ContactlessCombination extends Message<ContactlessCombination, Builder> {
    public static final ProtoAdapter<ContactlessCombination> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String aid;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "aidParams", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 11, tag = 12)
    public final Map<String, String> aid_params;

    @WireField(adapter = "com.stripe.proto.model.config.DiscoverParameters#ADAPTER", jsonName = "discoverParameters", oneofName = "specific_kernel_parameters", schemaIndex = 7, tag = 7)
    public final DiscoverParameters discover_parameters;

    @WireField(adapter = "com.stripe.proto.model.config.EftposParameters#ADAPTER", jsonName = "eftposParameters", oneofName = "specific_kernel_parameters", schemaIndex = 10, tag = 11)
    public final EftposParameters eftpos_parameters;

    @WireField(adapter = "com.stripe.proto.model.config.EpalParameters#ADAPTER", jsonName = "epalParameters", oneofName = "specific_kernel_parameters", schemaIndex = 9, tag = 9)
    public final EpalParameters epal_parameters;

    @WireField(adapter = "com.stripe.proto.model.config.ExpressPayParameters#ADAPTER", jsonName = "expressPayParameters", oneofName = "specific_kernel_parameters", schemaIndex = 5, tag = 5)
    public final ExpressPayParameters express_pay_parameters;

    @WireField(adapter = "com.stripe.proto.model.config.InteracParameters#ADAPTER", jsonName = "interacParameters", oneofName = "specific_kernel_parameters", schemaIndex = 8, tag = 8)
    public final InteracParameters interac_parameters;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "isSignatureSupported", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 10)
    public final boolean is_signature_supported;

    @WireField(adapter = "com.stripe.proto.model.config.JcbParameters#ADAPTER", jsonName = "jcbParameters", oneofName = "specific_kernel_parameters", schemaIndex = 6, tag = 6)
    public final JcbParameters jcb_parameters;

    @WireField(adapter = "com.stripe.proto.model.config.PayPassParameters#ADAPTER", jsonName = "payPassParameters", oneofName = "specific_kernel_parameters", schemaIndex = 3, tag = 3)
    public final PayPassParameters pay_pass_parameters;

    @WireField(adapter = "com.stripe.proto.model.config.PayWaveParameters#ADAPTER", jsonName = "payWaveParameters", oneofName = "specific_kernel_parameters", schemaIndex = 4, tag = 4)
    public final PayWaveParameters pay_wave_parameters;

    @WireField(adapter = "com.stripe.proto.model.config.Tlv#ADAPTER", label = WireField.Label.REPEATED, schemaIndex = 1, tag = 2)
    public final List<Tlv> tlvs;

    public ContactlessCombination() {
        this(null, null, false, null, null, null, null, null, null, null, null, null, null, 8191, null);
    }

    public /* synthetic */ ContactlessCombination(String str, List list, boolean z, PayPassParameters payPassParameters, PayWaveParameters payWaveParameters, ExpressPayParameters expressPayParameters, JcbParameters jcbParameters, DiscoverParameters discoverParameters, InteracParameters interacParameters, EpalParameters epalParameters, EftposParameters eftposParameters, Map map, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? CollectionsKt.emptyList() : list, (i & 4) != 0 ? false : z, (i & 8) != 0 ? null : payPassParameters, (i & 16) != 0 ? null : payWaveParameters, (i & 32) != 0 ? null : expressPayParameters, (i & 64) != 0 ? null : jcbParameters, (i & 128) != 0 ? null : discoverParameters, (i & 256) != 0 ? null : interacParameters, (i & 512) != 0 ? null : epalParameters, (i & 1024) == 0 ? eftposParameters : null, (i & 2048) != 0 ? MapsKt.emptyMap() : map, (i & 4096) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContactlessCombination(String aid, List<Tlv> tlvs, boolean z, PayPassParameters payPassParameters, PayWaveParameters payWaveParameters, ExpressPayParameters expressPayParameters, JcbParameters jcbParameters, DiscoverParameters discoverParameters, InteracParameters interacParameters, EpalParameters epalParameters, EftposParameters eftposParameters, Map<String, String> aid_params, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(aid, "aid");
        Intrinsics.checkNotNullParameter(tlvs, "tlvs");
        Intrinsics.checkNotNullParameter(aid_params, "aid_params");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.aid = aid;
        this.is_signature_supported = z;
        this.pay_pass_parameters = payPassParameters;
        this.pay_wave_parameters = payWaveParameters;
        this.express_pay_parameters = expressPayParameters;
        this.jcb_parameters = jcbParameters;
        this.discover_parameters = discoverParameters;
        this.interac_parameters = interacParameters;
        this.epal_parameters = epalParameters;
        this.eftpos_parameters = eftposParameters;
        this.tlvs = Internal.immutableCopyOf("tlvs", tlvs);
        this.aid_params = Internal.immutableCopyOf("aid_params", aid_params);
        if (Internal.countNonNull(payPassParameters, payWaveParameters, expressPayParameters, jcbParameters, discoverParameters, interacParameters, epalParameters, eftposParameters) > 1) {
            throw new IllegalArgumentException("At most one of pay_pass_parameters, pay_wave_parameters, express_pay_parameters, jcb_parameters, discover_parameters, interac_parameters, epal_parameters, eftpos_parameters may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.aid = this.aid;
        builder.tlvs = this.tlvs;
        builder.is_signature_supported = this.is_signature_supported;
        builder.pay_pass_parameters = this.pay_pass_parameters;
        builder.pay_wave_parameters = this.pay_wave_parameters;
        builder.express_pay_parameters = this.express_pay_parameters;
        builder.jcb_parameters = this.jcb_parameters;
        builder.discover_parameters = this.discover_parameters;
        builder.interac_parameters = this.interac_parameters;
        builder.epal_parameters = this.epal_parameters;
        builder.eftpos_parameters = this.eftpos_parameters;
        builder.aid_params = this.aid_params;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ContactlessCombination)) {
            return false;
        }
        ContactlessCombination contactlessCombination = (ContactlessCombination) other;
        return Intrinsics.areEqual(unknownFields(), contactlessCombination.unknownFields()) && Intrinsics.areEqual(this.aid, contactlessCombination.aid) && Intrinsics.areEqual(this.tlvs, contactlessCombination.tlvs) && this.is_signature_supported == contactlessCombination.is_signature_supported && Intrinsics.areEqual(this.pay_pass_parameters, contactlessCombination.pay_pass_parameters) && Intrinsics.areEqual(this.pay_wave_parameters, contactlessCombination.pay_wave_parameters) && Intrinsics.areEqual(this.express_pay_parameters, contactlessCombination.express_pay_parameters) && Intrinsics.areEqual(this.jcb_parameters, contactlessCombination.jcb_parameters) && Intrinsics.areEqual(this.discover_parameters, contactlessCombination.discover_parameters) && Intrinsics.areEqual(this.interac_parameters, contactlessCombination.interac_parameters) && Intrinsics.areEqual(this.epal_parameters, contactlessCombination.epal_parameters) && Intrinsics.areEqual(this.eftpos_parameters, contactlessCombination.eftpos_parameters) && Intrinsics.areEqual(this.aid_params, contactlessCombination.aid_params);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((unknownFields().hashCode() * 37) + this.aid.hashCode()) * 37) + this.tlvs.hashCode()) * 37) + Boolean.hashCode(this.is_signature_supported)) * 37;
        PayPassParameters payPassParameters = this.pay_pass_parameters;
        int iHashCode2 = (iHashCode + (payPassParameters != null ? payPassParameters.hashCode() : 0)) * 37;
        PayWaveParameters payWaveParameters = this.pay_wave_parameters;
        int iHashCode3 = (iHashCode2 + (payWaveParameters != null ? payWaveParameters.hashCode() : 0)) * 37;
        ExpressPayParameters expressPayParameters = this.express_pay_parameters;
        int iHashCode4 = (iHashCode3 + (expressPayParameters != null ? expressPayParameters.hashCode() : 0)) * 37;
        JcbParameters jcbParameters = this.jcb_parameters;
        int iHashCode5 = (iHashCode4 + (jcbParameters != null ? jcbParameters.hashCode() : 0)) * 37;
        DiscoverParameters discoverParameters = this.discover_parameters;
        int iHashCode6 = (iHashCode5 + (discoverParameters != null ? discoverParameters.hashCode() : 0)) * 37;
        InteracParameters interacParameters = this.interac_parameters;
        int iHashCode7 = (iHashCode6 + (interacParameters != null ? interacParameters.hashCode() : 0)) * 37;
        EpalParameters epalParameters = this.epal_parameters;
        int iHashCode8 = (iHashCode7 + (epalParameters != null ? epalParameters.hashCode() : 0)) * 37;
        EftposParameters eftposParameters = this.eftpos_parameters;
        int iHashCode9 = ((iHashCode8 + (eftposParameters != null ? eftposParameters.hashCode() : 0)) * 37) + this.aid_params.hashCode();
        this.hashCode = iHashCode9;
        return iHashCode9;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("aid=" + Internal.sanitize(this.aid));
        if (!this.tlvs.isEmpty()) {
            arrayList2.add("tlvs=" + this.tlvs);
        }
        arrayList2.add("is_signature_supported=" + this.is_signature_supported);
        if (this.pay_pass_parameters != null) {
            arrayList2.add("pay_pass_parameters=" + this.pay_pass_parameters);
        }
        if (this.pay_wave_parameters != null) {
            arrayList2.add("pay_wave_parameters=" + this.pay_wave_parameters);
        }
        if (this.express_pay_parameters != null) {
            arrayList2.add("express_pay_parameters=" + this.express_pay_parameters);
        }
        if (this.jcb_parameters != null) {
            arrayList2.add("jcb_parameters=" + this.jcb_parameters);
        }
        if (this.discover_parameters != null) {
            arrayList2.add("discover_parameters=" + this.discover_parameters);
        }
        if (this.interac_parameters != null) {
            arrayList2.add("interac_parameters=" + this.interac_parameters);
        }
        if (this.epal_parameters != null) {
            arrayList2.add("epal_parameters=" + this.epal_parameters);
        }
        if (this.eftpos_parameters != null) {
            arrayList2.add("eftpos_parameters=" + this.eftpos_parameters);
        }
        if (!this.aid_params.isEmpty()) {
            arrayList2.add("aid_params=" + this.aid_params);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ContactlessCombination{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ContactlessCombination copy$default(ContactlessCombination contactlessCombination, String str, List list, boolean z, PayPassParameters payPassParameters, PayWaveParameters payWaveParameters, ExpressPayParameters expressPayParameters, JcbParameters jcbParameters, DiscoverParameters discoverParameters, InteracParameters interacParameters, EpalParameters epalParameters, EftposParameters eftposParameters, Map map, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = contactlessCombination.aid;
        }
        return contactlessCombination.copy(str, (i & 2) != 0 ? contactlessCombination.tlvs : list, (i & 4) != 0 ? contactlessCombination.is_signature_supported : z, (i & 8) != 0 ? contactlessCombination.pay_pass_parameters : payPassParameters, (i & 16) != 0 ? contactlessCombination.pay_wave_parameters : payWaveParameters, (i & 32) != 0 ? contactlessCombination.express_pay_parameters : expressPayParameters, (i & 64) != 0 ? contactlessCombination.jcb_parameters : jcbParameters, (i & 128) != 0 ? contactlessCombination.discover_parameters : discoverParameters, (i & 256) != 0 ? contactlessCombination.interac_parameters : interacParameters, (i & 512) != 0 ? contactlessCombination.epal_parameters : epalParameters, (i & 1024) != 0 ? contactlessCombination.eftpos_parameters : eftposParameters, (i & 2048) != 0 ? contactlessCombination.aid_params : map, (i & 4096) != 0 ? contactlessCombination.unknownFields() : byteString);
    }

    public final ContactlessCombination copy(String aid, List<Tlv> tlvs, boolean is_signature_supported, PayPassParameters pay_pass_parameters, PayWaveParameters pay_wave_parameters, ExpressPayParameters express_pay_parameters, JcbParameters jcb_parameters, DiscoverParameters discover_parameters, InteracParameters interac_parameters, EpalParameters epal_parameters, EftposParameters eftpos_parameters, Map<String, String> aid_params, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(aid, "aid");
        Intrinsics.checkNotNullParameter(tlvs, "tlvs");
        Intrinsics.checkNotNullParameter(aid_params, "aid_params");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ContactlessCombination(aid, tlvs, is_signature_supported, pay_pass_parameters, pay_wave_parameters, express_pay_parameters, jcb_parameters, discover_parameters, interac_parameters, epal_parameters, eftpos_parameters, aid_params, unknownFields);
    }

    /* JADX INFO: compiled from: ContactlessCombination.kt */
    @Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u001a\u0010\u0006\u001a\u00020\u00002\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0007J\b\u0010\u001d\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0013J\u0010\u0010\u0014\u001a\u00020\u00002\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u0010\u0010\u0016\u001a\u00020\u00002\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017J\u0010\u0010\u0018\u001a\u00020\u00002\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0014\u0010\u001a\u001a\u00020\u00002\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001bR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/stripe/proto/model/config/ContactlessCombination$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/config/ContactlessCombination;", "()V", "aid", "", "aid_params", "", "discover_parameters", "Lcom/stripe/proto/model/config/DiscoverParameters;", "eftpos_parameters", "Lcom/stripe/proto/model/config/EftposParameters;", "epal_parameters", "Lcom/stripe/proto/model/config/EpalParameters;", "express_pay_parameters", "Lcom/stripe/proto/model/config/ExpressPayParameters;", "interac_parameters", "Lcom/stripe/proto/model/config/InteracParameters;", "is_signature_supported", "", "jcb_parameters", "Lcom/stripe/proto/model/config/JcbParameters;", "pay_pass_parameters", "Lcom/stripe/proto/model/config/PayPassParameters;", "pay_wave_parameters", "Lcom/stripe/proto/model/config/PayWaveParameters;", "tlvs", "", "Lcom/stripe/proto/model/config/Tlv;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ContactlessCombination, Builder> {
        public DiscoverParameters discover_parameters;
        public EftposParameters eftpos_parameters;
        public EpalParameters epal_parameters;
        public ExpressPayParameters express_pay_parameters;
        public InteracParameters interac_parameters;
        public boolean is_signature_supported;
        public JcbParameters jcb_parameters;
        public PayPassParameters pay_pass_parameters;
        public PayWaveParameters pay_wave_parameters;
        public String aid = "";
        public List<Tlv> tlvs = CollectionsKt.emptyList();
        public Map<String, String> aid_params = MapsKt.emptyMap();

        public final Builder aid(String aid) {
            Intrinsics.checkNotNullParameter(aid, "aid");
            this.aid = aid;
            return this;
        }

        public final Builder tlvs(List<Tlv> tlvs) {
            Intrinsics.checkNotNullParameter(tlvs, "tlvs");
            Internal.checkElementsNotNull(tlvs);
            this.tlvs = tlvs;
            return this;
        }

        public final Builder is_signature_supported(boolean is_signature_supported) {
            this.is_signature_supported = is_signature_supported;
            return this;
        }

        public final Builder aid_params(Map<String, String> aid_params) {
            Intrinsics.checkNotNullParameter(aid_params, "aid_params");
            this.aid_params = aid_params;
            return this;
        }

        public final Builder pay_pass_parameters(PayPassParameters pay_pass_parameters) {
            this.pay_pass_parameters = pay_pass_parameters;
            this.pay_wave_parameters = null;
            this.express_pay_parameters = null;
            this.jcb_parameters = null;
            this.discover_parameters = null;
            this.interac_parameters = null;
            this.epal_parameters = null;
            this.eftpos_parameters = null;
            return this;
        }

        public final Builder pay_wave_parameters(PayWaveParameters pay_wave_parameters) {
            this.pay_wave_parameters = pay_wave_parameters;
            this.pay_pass_parameters = null;
            this.express_pay_parameters = null;
            this.jcb_parameters = null;
            this.discover_parameters = null;
            this.interac_parameters = null;
            this.epal_parameters = null;
            this.eftpos_parameters = null;
            return this;
        }

        public final Builder express_pay_parameters(ExpressPayParameters express_pay_parameters) {
            this.express_pay_parameters = express_pay_parameters;
            this.pay_pass_parameters = null;
            this.pay_wave_parameters = null;
            this.jcb_parameters = null;
            this.discover_parameters = null;
            this.interac_parameters = null;
            this.epal_parameters = null;
            this.eftpos_parameters = null;
            return this;
        }

        public final Builder jcb_parameters(JcbParameters jcb_parameters) {
            this.jcb_parameters = jcb_parameters;
            this.pay_pass_parameters = null;
            this.pay_wave_parameters = null;
            this.express_pay_parameters = null;
            this.discover_parameters = null;
            this.interac_parameters = null;
            this.epal_parameters = null;
            this.eftpos_parameters = null;
            return this;
        }

        public final Builder discover_parameters(DiscoverParameters discover_parameters) {
            this.discover_parameters = discover_parameters;
            this.pay_pass_parameters = null;
            this.pay_wave_parameters = null;
            this.express_pay_parameters = null;
            this.jcb_parameters = null;
            this.interac_parameters = null;
            this.epal_parameters = null;
            this.eftpos_parameters = null;
            return this;
        }

        public final Builder interac_parameters(InteracParameters interac_parameters) {
            this.interac_parameters = interac_parameters;
            this.pay_pass_parameters = null;
            this.pay_wave_parameters = null;
            this.express_pay_parameters = null;
            this.jcb_parameters = null;
            this.discover_parameters = null;
            this.epal_parameters = null;
            this.eftpos_parameters = null;
            return this;
        }

        public final Builder epal_parameters(EpalParameters epal_parameters) {
            this.epal_parameters = epal_parameters;
            this.pay_pass_parameters = null;
            this.pay_wave_parameters = null;
            this.express_pay_parameters = null;
            this.jcb_parameters = null;
            this.discover_parameters = null;
            this.interac_parameters = null;
            this.eftpos_parameters = null;
            return this;
        }

        public final Builder eftpos_parameters(EftposParameters eftpos_parameters) {
            this.eftpos_parameters = eftpos_parameters;
            this.pay_pass_parameters = null;
            this.pay_wave_parameters = null;
            this.express_pay_parameters = null;
            this.jcb_parameters = null;
            this.discover_parameters = null;
            this.interac_parameters = null;
            this.epal_parameters = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ContactlessCombination build() {
            return new ContactlessCombination(this.aid, this.tlvs, this.is_signature_supported, this.pay_pass_parameters, this.pay_wave_parameters, this.express_pay_parameters, this.jcb_parameters, this.discover_parameters, this.interac_parameters, this.epal_parameters, this.eftpos_parameters, this.aid_params, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ContactlessCombination.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/config/ContactlessCombination$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/ContactlessCombination;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/config/ContactlessCombination$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ContactlessCombination build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ContactlessCombination.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ContactlessCombination>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.config.ContactlessCombination$Companion$ADAPTER$1

            /* JADX INFO: renamed from: aid_paramsAdapter$delegate, reason: from kotlin metadata */
            private final Lazy aid_paramsAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends String>>>() { // from class: com.stripe.proto.model.config.ContactlessCombination$Companion$ADAPTER$1$aid_paramsAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends String>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.STRING);
                }
            });

            private final ProtoAdapter<Map<String, String>> getAid_paramsAdapter() {
                return (ProtoAdapter) this.aid_paramsAdapter.getValue();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ContactlessCombination value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.aid, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.aid);
                }
                int iEncodedSizeWithTag = size + Tlv.ADAPTER.asRepeated().encodedSizeWithTag(2, value.tlvs);
                if (value.is_signature_supported) {
                    iEncodedSizeWithTag += ProtoAdapter.BOOL.encodedSizeWithTag(10, Boolean.valueOf(value.is_signature_supported));
                }
                return iEncodedSizeWithTag + PayPassParameters.ADAPTER.encodedSizeWithTag(3, value.pay_pass_parameters) + PayWaveParameters.ADAPTER.encodedSizeWithTag(4, value.pay_wave_parameters) + ExpressPayParameters.ADAPTER.encodedSizeWithTag(5, value.express_pay_parameters) + JcbParameters.ADAPTER.encodedSizeWithTag(6, value.jcb_parameters) + DiscoverParameters.ADAPTER.encodedSizeWithTag(7, value.discover_parameters) + InteracParameters.ADAPTER.encodedSizeWithTag(8, value.interac_parameters) + EpalParameters.ADAPTER.encodedSizeWithTag(9, value.epal_parameters) + EftposParameters.ADAPTER.encodedSizeWithTag(11, value.eftpos_parameters) + getAid_paramsAdapter().encodedSizeWithTag(12, value.aid_params);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ContactlessCombination value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.aid, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.aid);
                }
                Tlv.ADAPTER.asRepeated().encodeWithTag(writer, 2, value.tlvs);
                if (value.is_signature_supported) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 10, Boolean.valueOf(value.is_signature_supported));
                }
                getAid_paramsAdapter().encodeWithTag(writer, 12, value.aid_params);
                PayPassParameters.ADAPTER.encodeWithTag(writer, 3, value.pay_pass_parameters);
                PayWaveParameters.ADAPTER.encodeWithTag(writer, 4, value.pay_wave_parameters);
                ExpressPayParameters.ADAPTER.encodeWithTag(writer, 5, value.express_pay_parameters);
                JcbParameters.ADAPTER.encodeWithTag(writer, 6, value.jcb_parameters);
                DiscoverParameters.ADAPTER.encodeWithTag(writer, 7, value.discover_parameters);
                InteracParameters.ADAPTER.encodeWithTag(writer, 8, value.interac_parameters);
                EpalParameters.ADAPTER.encodeWithTag(writer, 9, value.epal_parameters);
                EftposParameters.ADAPTER.encodeWithTag(writer, 11, value.eftpos_parameters);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ContactlessCombination value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                EftposParameters.ADAPTER.encodeWithTag(writer, 11, value.eftpos_parameters);
                EpalParameters.ADAPTER.encodeWithTag(writer, 9, value.epal_parameters);
                InteracParameters.ADAPTER.encodeWithTag(writer, 8, value.interac_parameters);
                DiscoverParameters.ADAPTER.encodeWithTag(writer, 7, value.discover_parameters);
                JcbParameters.ADAPTER.encodeWithTag(writer, 6, value.jcb_parameters);
                ExpressPayParameters.ADAPTER.encodeWithTag(writer, 5, value.express_pay_parameters);
                PayWaveParameters.ADAPTER.encodeWithTag(writer, 4, value.pay_wave_parameters);
                PayPassParameters.ADAPTER.encodeWithTag(writer, 3, value.pay_pass_parameters);
                getAid_paramsAdapter().encodeWithTag(writer, 12, value.aid_params);
                if (value.is_signature_supported) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 10, Boolean.valueOf(value.is_signature_supported));
                }
                Tlv.ADAPTER.asRepeated().encodeWithTag(writer, 2, value.tlvs);
                if (Intrinsics.areEqual(value.aid, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.aid);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ContactlessCombination decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                boolean zBooleanValue = false;
                PayPassParameters payPassParametersDecode = null;
                PayWaveParameters payWaveParametersDecode = null;
                ExpressPayParameters expressPayParametersDecode = null;
                JcbParameters jcbParametersDecode = null;
                DiscoverParameters discoverParametersDecode = null;
                InteracParameters interacParametersDecode = null;
                EpalParameters epalParametersDecode = null;
                EftposParameters eftposParametersDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    String str = strDecode;
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                continue;
                            case 2:
                                arrayList.add(Tlv.ADAPTER.decode(reader));
                                break;
                            case 3:
                                payPassParametersDecode = PayPassParameters.ADAPTER.decode(reader);
                                break;
                            case 4:
                                payWaveParametersDecode = PayWaveParameters.ADAPTER.decode(reader);
                                break;
                            case 5:
                                expressPayParametersDecode = ExpressPayParameters.ADAPTER.decode(reader);
                                break;
                            case 6:
                                jcbParametersDecode = JcbParameters.ADAPTER.decode(reader);
                                break;
                            case 7:
                                discoverParametersDecode = DiscoverParameters.ADAPTER.decode(reader);
                                break;
                            case 8:
                                interacParametersDecode = InteracParameters.ADAPTER.decode(reader);
                                break;
                            case 9:
                                epalParametersDecode = EpalParameters.ADAPTER.decode(reader);
                                break;
                            case 10:
                                zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 11:
                                eftposParametersDecode = EftposParameters.ADAPTER.decode(reader);
                                break;
                            case 12:
                                linkedHashMap.putAll(getAid_paramsAdapter().decode(reader));
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                        strDecode = str;
                    } else {
                        return new ContactlessCombination(str, arrayList, zBooleanValue, payPassParametersDecode, payWaveParametersDecode, expressPayParametersDecode, jcbParametersDecode, discoverParametersDecode, interacParametersDecode, epalParametersDecode, eftposParametersDecode, linkedHashMap, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ContactlessCombination redact(ContactlessCombination value) {
                Intrinsics.checkNotNullParameter(value, "value");
                List listM361redactElements = Internal.m361redactElements(value.tlvs, Tlv.ADAPTER);
                PayPassParameters payPassParameters = value.pay_pass_parameters;
                PayPassParameters payPassParametersRedact = payPassParameters != null ? PayPassParameters.ADAPTER.redact(payPassParameters) : null;
                PayWaveParameters payWaveParameters = value.pay_wave_parameters;
                PayWaveParameters payWaveParametersRedact = payWaveParameters != null ? PayWaveParameters.ADAPTER.redact(payWaveParameters) : null;
                ExpressPayParameters expressPayParameters = value.express_pay_parameters;
                ExpressPayParameters expressPayParametersRedact = expressPayParameters != null ? ExpressPayParameters.ADAPTER.redact(expressPayParameters) : null;
                JcbParameters jcbParameters = value.jcb_parameters;
                JcbParameters jcbParametersRedact = jcbParameters != null ? JcbParameters.ADAPTER.redact(jcbParameters) : null;
                DiscoverParameters discoverParameters = value.discover_parameters;
                DiscoverParameters discoverParametersRedact = discoverParameters != null ? DiscoverParameters.ADAPTER.redact(discoverParameters) : null;
                InteracParameters interacParameters = value.interac_parameters;
                InteracParameters interacParametersRedact = interacParameters != null ? InteracParameters.ADAPTER.redact(interacParameters) : null;
                EpalParameters epalParameters = value.epal_parameters;
                EpalParameters epalParametersRedact = epalParameters != null ? EpalParameters.ADAPTER.redact(epalParameters) : null;
                EftposParameters eftposParameters = value.eftpos_parameters;
                return ContactlessCombination.copy$default(value, null, listM361redactElements, false, payPassParametersRedact, payWaveParametersRedact, expressPayParametersRedact, jcbParametersRedact, discoverParametersRedact, interacParametersRedact, epalParametersRedact, eftposParameters != null ? EftposParameters.ADAPTER.redact(eftposParameters) : null, null, ByteString.EMPTY, 2053, null);
            }
        };
    }
}
