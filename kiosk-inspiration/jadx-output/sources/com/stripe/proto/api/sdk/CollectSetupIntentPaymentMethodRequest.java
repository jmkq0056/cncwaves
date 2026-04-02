package com.stripe.proto.api.sdk;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.api.sdk.CreatePaymentIntentOptions;
import com.stripe.proto.model.rest.AllowRedisplay;
import com.stripe.proto.model.rest.SetupIntent;
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

/* JADX INFO: compiled from: CollectSetupIntentPaymentMethodRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001c2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001b\u001cB]\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0011¢\u0006\u0002\u0010\u0012J^\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u0011J\u0013\u0010\u0014\u001a\u00020\u00062\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u0002H\u0016J\b\u0010\u001a\u001a\u00020\u0004H\u0016R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;", "setup_intent_id", "", "manual_entry", "", "enable_customer_cancellation", "offline_behavior", "Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;", "offline_details", "Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;", "setup_intent", "Lcom/stripe/proto/model/rest/SetupIntent;", "allow_redisplay", "Lcom/stripe/proto/model/rest/AllowRedisplay;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;ZZLcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;Lcom/stripe/proto/model/rest/SetupIntent;Lcom/stripe/proto/model/rest/AllowRedisplay;Lokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CollectSetupIntentPaymentMethodRequest extends Message<CollectSetupIntentPaymentMethodRequest, Builder> {
    public static final ProtoAdapter<CollectSetupIntentPaymentMethodRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.rest.AllowRedisplay#ADAPTER", jsonName = "allowRedisplay", schemaIndex = 6, tag = 7)
    public final AllowRedisplay allow_redisplay;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableCustomerCancellation", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final boolean enable_customer_cancellation;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "manualEntry", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final boolean manual_entry;

    @WireField(adapter = "com.stripe.proto.api.sdk.CreatePaymentIntentOptions$OfflineBehavior#ADAPTER", jsonName = "offlineBehavior", schemaIndex = 3, tag = 4)
    public final CreatePaymentIntentOptions.OfflineBehavior offline_behavior;

    @WireField(adapter = "com.stripe.proto.api.sdk.OfflineSetupIntentDetails#ADAPTER", jsonName = "offlineDetails", schemaIndex = 4, tag = 5)
    public final OfflineSetupIntentDetails offline_details;

    @WireField(adapter = "com.stripe.proto.model.rest.SetupIntent#ADAPTER", jsonName = "setupIntent", schemaIndex = 5, tag = 6)
    public final SetupIntent setup_intent;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "setupIntentId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String setup_intent_id;

    public CollectSetupIntentPaymentMethodRequest() {
        this(null, false, false, null, null, null, null, null, 255, null);
    }

    public /* synthetic */ CollectSetupIntentPaymentMethodRequest(String str, boolean z, boolean z2, CreatePaymentIntentOptions.OfflineBehavior offlineBehavior, OfflineSetupIntentDetails offlineSetupIntentDetails, SetupIntent setupIntent, AllowRedisplay allowRedisplay, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? false : z, (i & 4) != 0 ? false : z2, (i & 8) != 0 ? null : offlineBehavior, (i & 16) != 0 ? null : offlineSetupIntentDetails, (i & 32) != 0 ? null : setupIntent, (i & 64) != 0 ? null : allowRedisplay, (i & 128) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectSetupIntentPaymentMethodRequest(String setup_intent_id, boolean z, boolean z2, CreatePaymentIntentOptions.OfflineBehavior offlineBehavior, OfflineSetupIntentDetails offlineSetupIntentDetails, SetupIntent setupIntent, AllowRedisplay allowRedisplay, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(setup_intent_id, "setup_intent_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.setup_intent_id = setup_intent_id;
        this.manual_entry = z;
        this.enable_customer_cancellation = z2;
        this.offline_behavior = offlineBehavior;
        this.offline_details = offlineSetupIntentDetails;
        this.setup_intent = setupIntent;
        this.allow_redisplay = allowRedisplay;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.setup_intent_id = this.setup_intent_id;
        builder.manual_entry = this.manual_entry;
        builder.enable_customer_cancellation = this.enable_customer_cancellation;
        builder.offline_behavior = this.offline_behavior;
        builder.offline_details = this.offline_details;
        builder.setup_intent = this.setup_intent;
        builder.allow_redisplay = this.allow_redisplay;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CollectSetupIntentPaymentMethodRequest)) {
            return false;
        }
        CollectSetupIntentPaymentMethodRequest collectSetupIntentPaymentMethodRequest = (CollectSetupIntentPaymentMethodRequest) other;
        return Intrinsics.areEqual(unknownFields(), collectSetupIntentPaymentMethodRequest.unknownFields()) && Intrinsics.areEqual(this.setup_intent_id, collectSetupIntentPaymentMethodRequest.setup_intent_id) && this.manual_entry == collectSetupIntentPaymentMethodRequest.manual_entry && this.enable_customer_cancellation == collectSetupIntentPaymentMethodRequest.enable_customer_cancellation && this.offline_behavior == collectSetupIntentPaymentMethodRequest.offline_behavior && Intrinsics.areEqual(this.offline_details, collectSetupIntentPaymentMethodRequest.offline_details) && Intrinsics.areEqual(this.setup_intent, collectSetupIntentPaymentMethodRequest.setup_intent) && this.allow_redisplay == collectSetupIntentPaymentMethodRequest.allow_redisplay;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((unknownFields().hashCode() * 37) + this.setup_intent_id.hashCode()) * 37) + Boolean.hashCode(this.manual_entry)) * 37) + Boolean.hashCode(this.enable_customer_cancellation)) * 37;
        CreatePaymentIntentOptions.OfflineBehavior offlineBehavior = this.offline_behavior;
        int iHashCode2 = (iHashCode + (offlineBehavior != null ? offlineBehavior.hashCode() : 0)) * 37;
        OfflineSetupIntentDetails offlineSetupIntentDetails = this.offline_details;
        int iHashCode3 = (iHashCode2 + (offlineSetupIntentDetails != null ? offlineSetupIntentDetails.hashCode() : 0)) * 37;
        SetupIntent setupIntent = this.setup_intent;
        int iHashCode4 = (iHashCode3 + (setupIntent != null ? setupIntent.hashCode() : 0)) * 37;
        AllowRedisplay allowRedisplay = this.allow_redisplay;
        int iHashCode5 = iHashCode4 + (allowRedisplay != null ? allowRedisplay.hashCode() : 0);
        this.hashCode = iHashCode5;
        return iHashCode5;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("setup_intent_id=" + Internal.sanitize(this.setup_intent_id));
        arrayList2.add("manual_entry=" + this.manual_entry);
        arrayList2.add("enable_customer_cancellation=" + this.enable_customer_cancellation);
        if (this.offline_behavior != null) {
            arrayList2.add("offline_behavior=" + this.offline_behavior);
        }
        if (this.offline_details != null) {
            arrayList2.add("offline_details=" + this.offline_details);
        }
        if (this.setup_intent != null) {
            arrayList2.add("setup_intent=" + this.setup_intent);
        }
        if (this.allow_redisplay != null) {
            arrayList2.add("allow_redisplay=" + this.allow_redisplay);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "CollectSetupIntentPaymentMethodRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CollectSetupIntentPaymentMethodRequest copy$default(CollectSetupIntentPaymentMethodRequest collectSetupIntentPaymentMethodRequest, String str, boolean z, boolean z2, CreatePaymentIntentOptions.OfflineBehavior offlineBehavior, OfflineSetupIntentDetails offlineSetupIntentDetails, SetupIntent setupIntent, AllowRedisplay allowRedisplay, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = collectSetupIntentPaymentMethodRequest.setup_intent_id;
        }
        if ((i & 2) != 0) {
            z = collectSetupIntentPaymentMethodRequest.manual_entry;
        }
        if ((i & 4) != 0) {
            z2 = collectSetupIntentPaymentMethodRequest.enable_customer_cancellation;
        }
        if ((i & 8) != 0) {
            offlineBehavior = collectSetupIntentPaymentMethodRequest.offline_behavior;
        }
        if ((i & 16) != 0) {
            offlineSetupIntentDetails = collectSetupIntentPaymentMethodRequest.offline_details;
        }
        if ((i & 32) != 0) {
            setupIntent = collectSetupIntentPaymentMethodRequest.setup_intent;
        }
        if ((i & 64) != 0) {
            allowRedisplay = collectSetupIntentPaymentMethodRequest.allow_redisplay;
        }
        if ((i & 128) != 0) {
            byteString = collectSetupIntentPaymentMethodRequest.unknownFields();
        }
        AllowRedisplay allowRedisplay2 = allowRedisplay;
        ByteString byteString2 = byteString;
        OfflineSetupIntentDetails offlineSetupIntentDetails2 = offlineSetupIntentDetails;
        SetupIntent setupIntent2 = setupIntent;
        return collectSetupIntentPaymentMethodRequest.copy(str, z, z2, offlineBehavior, offlineSetupIntentDetails2, setupIntent2, allowRedisplay2, byteString2);
    }

    public final CollectSetupIntentPaymentMethodRequest copy(String setup_intent_id, boolean manual_entry, boolean enable_customer_cancellation, CreatePaymentIntentOptions.OfflineBehavior offline_behavior, OfflineSetupIntentDetails offline_details, SetupIntent setup_intent, AllowRedisplay allow_redisplay, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(setup_intent_id, "setup_intent_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CollectSetupIntentPaymentMethodRequest(setup_intent_id, manual_entry, enable_customer_cancellation, offline_behavior, offline_details, setup_intent, allow_redisplay, unknownFields);
    }

    /* JADX INFO: compiled from: CollectSetupIntentPaymentMethodRequest.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007J\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\nJ\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\fJ\u0010\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;", "()V", "allow_redisplay", "Lcom/stripe/proto/model/rest/AllowRedisplay;", "enable_customer_cancellation", "", "manual_entry", "offline_behavior", "Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;", "offline_details", "Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;", "setup_intent", "Lcom/stripe/proto/model/rest/SetupIntent;", "setup_intent_id", "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CollectSetupIntentPaymentMethodRequest, Builder> {
        public AllowRedisplay allow_redisplay;
        public boolean enable_customer_cancellation;
        public boolean manual_entry;
        public CreatePaymentIntentOptions.OfflineBehavior offline_behavior;
        public OfflineSetupIntentDetails offline_details;
        public SetupIntent setup_intent;
        public String setup_intent_id = "";

        public final Builder setup_intent_id(String setup_intent_id) {
            Intrinsics.checkNotNullParameter(setup_intent_id, "setup_intent_id");
            this.setup_intent_id = setup_intent_id;
            return this;
        }

        public final Builder manual_entry(boolean manual_entry) {
            this.manual_entry = manual_entry;
            return this;
        }

        public final Builder enable_customer_cancellation(boolean enable_customer_cancellation) {
            this.enable_customer_cancellation = enable_customer_cancellation;
            return this;
        }

        public final Builder offline_behavior(CreatePaymentIntentOptions.OfflineBehavior offline_behavior) {
            this.offline_behavior = offline_behavior;
            return this;
        }

        public final Builder offline_details(OfflineSetupIntentDetails offline_details) {
            this.offline_details = offline_details;
            return this;
        }

        public final Builder setup_intent(SetupIntent setup_intent) {
            this.setup_intent = setup_intent;
            return this;
        }

        public final Builder allow_redisplay(AllowRedisplay allow_redisplay) {
            this.allow_redisplay = allow_redisplay;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CollectSetupIntentPaymentMethodRequest build() {
            return new CollectSetupIntentPaymentMethodRequest(this.setup_intent_id, this.manual_entry, this.enable_customer_cancellation, this.offline_behavior, this.offline_details, this.setup_intent, this.allow_redisplay, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CollectSetupIntentPaymentMethodRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CollectSetupIntentPaymentMethodRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CollectSetupIntentPaymentMethodRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CollectSetupIntentPaymentMethodRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.CollectSetupIntentPaymentMethodRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CollectSetupIntentPaymentMethodRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.setup_intent_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.setup_intent_id);
                }
                if (value.manual_entry) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(2, Boolean.valueOf(value.manual_entry));
                }
                if (value.enable_customer_cancellation) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(3, Boolean.valueOf(value.enable_customer_cancellation));
                }
                return size + CreatePaymentIntentOptions.OfflineBehavior.ADAPTER.encodedSizeWithTag(4, value.offline_behavior) + OfflineSetupIntentDetails.ADAPTER.encodedSizeWithTag(5, value.offline_details) + SetupIntent.ADAPTER.encodedSizeWithTag(6, value.setup_intent) + AllowRedisplay.ADAPTER.encodedSizeWithTag(7, value.allow_redisplay);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CollectSetupIntentPaymentMethodRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.setup_intent_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.setup_intent_id);
                }
                if (value.manual_entry) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 2, Boolean.valueOf(value.manual_entry));
                }
                if (value.enable_customer_cancellation) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 3, Boolean.valueOf(value.enable_customer_cancellation));
                }
                CreatePaymentIntentOptions.OfflineBehavior.ADAPTER.encodeWithTag(writer, 4, value.offline_behavior);
                OfflineSetupIntentDetails.ADAPTER.encodeWithTag(writer, 5, value.offline_details);
                SetupIntent.ADAPTER.encodeWithTag(writer, 6, value.setup_intent);
                AllowRedisplay.ADAPTER.encodeWithTag(writer, 7, value.allow_redisplay);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CollectSetupIntentPaymentMethodRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                AllowRedisplay.ADAPTER.encodeWithTag(writer, 7, value.allow_redisplay);
                SetupIntent.ADAPTER.encodeWithTag(writer, 6, value.setup_intent);
                OfflineSetupIntentDetails.ADAPTER.encodeWithTag(writer, 5, value.offline_details);
                CreatePaymentIntentOptions.OfflineBehavior.ADAPTER.encodeWithTag(writer, 4, value.offline_behavior);
                if (value.enable_customer_cancellation) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 3, Boolean.valueOf(value.enable_customer_cancellation));
                }
                if (value.manual_entry) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 2, Boolean.valueOf(value.manual_entry));
                }
                if (Intrinsics.areEqual(value.setup_intent_id, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.setup_intent_id);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CollectSetupIntentPaymentMethodRequest redact(CollectSetupIntentPaymentMethodRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                OfflineSetupIntentDetails offlineSetupIntentDetails = value.offline_details;
                OfflineSetupIntentDetails offlineSetupIntentDetailsRedact = offlineSetupIntentDetails != null ? OfflineSetupIntentDetails.ADAPTER.redact(offlineSetupIntentDetails) : null;
                SetupIntent setupIntent = value.setup_intent;
                return CollectSetupIntentPaymentMethodRequest.copy$default(value, null, false, false, null, offlineSetupIntentDetailsRedact, setupIntent != null ? SetupIntent.ADAPTER.redact(setupIntent) : null, null, ByteString.EMPTY, 79, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CollectSetupIntentPaymentMethodRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                CreatePaymentIntentOptions.OfflineBehavior offlineBehaviorDecode = null;
                boolean zBooleanValue = false;
                boolean zBooleanValue2 = false;
                OfflineSetupIntentDetails offlineSetupIntentDetailsDecode = null;
                SetupIntent setupIntentDecode = null;
                AllowRedisplay allowRedisplayDecode = null;
                while (true) {
                    String str = strDecode;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag != -1) {
                            switch (iNextTag) {
                                case 1:
                                    break;
                                case 2:
                                    zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                    break;
                                case 3:
                                    zBooleanValue2 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                    break;
                                case 4:
                                    try {
                                        offlineBehaviorDecode = CreatePaymentIntentOptions.OfflineBehavior.ADAPTER.decode(reader);
                                    } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                        reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                    }
                                    break;
                                case 5:
                                    offlineSetupIntentDetailsDecode = OfflineSetupIntentDetails.ADAPTER.decode(reader);
                                    break;
                                case 6:
                                    setupIntentDecode = SetupIntent.ADAPTER.decode(reader);
                                    break;
                                case 7:
                                    try {
                                        allowRedisplayDecode = AllowRedisplay.ADAPTER.decode(reader);
                                    } catch (ProtoAdapter.EnumConstantNotFoundException e2) {
                                        reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e2.value));
                                    }
                                    break;
                                default:
                                    reader.readUnknownField(iNextTag);
                                    break;
                            }
                        } else {
                            return new CollectSetupIntentPaymentMethodRequest(str, zBooleanValue, zBooleanValue2, offlineBehaviorDecode, offlineSetupIntentDetailsDecode, setupIntentDecode, allowRedisplayDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                    }
                    strDecode = ProtoAdapter.STRING.decode(reader);
                }
            }
        };
    }
}
