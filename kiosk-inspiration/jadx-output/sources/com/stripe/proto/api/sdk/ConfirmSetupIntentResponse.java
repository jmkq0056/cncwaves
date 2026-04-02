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
import com.stripe.proto.model.rest.ErrorWrapper;
import com.stripe.proto.model.rest.SetupIntent;
import com.stripe.proto.model.sdk.Error;
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

/* JADX INFO: compiled from: ConfirmSetupIntentResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001e2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001d\u001eBa\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012¢\u0006\u0002\u0010\u0013Jb\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u0012J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u0002H\u0016J\b\u0010\u001c\u001a\u00020\u0004H\u0016R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;", "request_id", "", "confirmed_setup_intent", "Lcom/stripe/proto/model/rest/SetupIntent;", "decline_response", "Lcom/stripe/proto/model/rest/ErrorWrapper;", "confirm_error", "Lcom/stripe/proto/model/sdk/Error;", "offline_stats", "Lcom/stripe/proto/api/sdk/OfflineStats;", "offline_behavior", "Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;", "offline_details", "Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lcom/stripe/proto/model/rest/SetupIntent;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ConfirmSetupIntentResponse extends Message<ConfirmSetupIntentResponse, Builder> {
    public static final ProtoAdapter<ConfirmSetupIntentResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.sdk.Error#ADAPTER", jsonName = "confirmError", oneofName = "setup_intent_result", schemaIndex = 3, tag = 4)
    public final Error confirm_error;

    @WireField(adapter = "com.stripe.proto.model.rest.SetupIntent#ADAPTER", jsonName = "confirmedSetupIntent", oneofName = "setup_intent_result", schemaIndex = 1, tag = 2)
    public final SetupIntent confirmed_setup_intent;

    @WireField(adapter = "com.stripe.proto.model.rest.ErrorWrapper#ADAPTER", jsonName = "declineResponse", oneofName = "setup_intent_result", schemaIndex = 2, tag = 3)
    public final ErrorWrapper decline_response;

    @WireField(adapter = "com.stripe.proto.api.sdk.CreatePaymentIntentOptions$OfflineBehavior#ADAPTER", jsonName = "offlineBehavior", schemaIndex = 5, tag = 6)
    public final CreatePaymentIntentOptions.OfflineBehavior offline_behavior;

    @WireField(adapter = "com.stripe.proto.api.sdk.OfflineSetupIntentDetails#ADAPTER", jsonName = "offlineDetails", schemaIndex = 6, tag = 7)
    public final OfflineSetupIntentDetails offline_details;

    @WireField(adapter = "com.stripe.proto.api.sdk.OfflineStats#ADAPTER", jsonName = "offlineStats", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final OfflineStats offline_stats;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "requestId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String request_id;

    public ConfirmSetupIntentResponse() {
        this(null, null, null, null, null, null, null, null, 255, null);
    }

    public /* synthetic */ ConfirmSetupIntentResponse(String str, SetupIntent setupIntent, ErrorWrapper errorWrapper, Error error, OfflineStats offlineStats, CreatePaymentIntentOptions.OfflineBehavior offlineBehavior, OfflineSetupIntentDetails offlineSetupIntentDetails, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? null : setupIntent, (i & 4) != 0 ? null : errorWrapper, (i & 8) != 0 ? null : error, (i & 16) != 0 ? null : offlineStats, (i & 32) != 0 ? null : offlineBehavior, (i & 64) != 0 ? null : offlineSetupIntentDetails, (i & 128) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConfirmSetupIntentResponse(String request_id, SetupIntent setupIntent, ErrorWrapper errorWrapper, Error error, OfflineStats offlineStats, CreatePaymentIntentOptions.OfflineBehavior offlineBehavior, OfflineSetupIntentDetails offlineSetupIntentDetails, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(request_id, "request_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.request_id = request_id;
        this.confirmed_setup_intent = setupIntent;
        this.decline_response = errorWrapper;
        this.confirm_error = error;
        this.offline_stats = offlineStats;
        this.offline_behavior = offlineBehavior;
        this.offline_details = offlineSetupIntentDetails;
        if (Internal.countNonNull(setupIntent, errorWrapper, error) > 1) {
            throw new IllegalArgumentException("At most one of confirmed_setup_intent, decline_response, confirm_error may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.request_id = this.request_id;
        builder.confirmed_setup_intent = this.confirmed_setup_intent;
        builder.decline_response = this.decline_response;
        builder.confirm_error = this.confirm_error;
        builder.offline_stats = this.offline_stats;
        builder.offline_behavior = this.offline_behavior;
        builder.offline_details = this.offline_details;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ConfirmSetupIntentResponse)) {
            return false;
        }
        ConfirmSetupIntentResponse confirmSetupIntentResponse = (ConfirmSetupIntentResponse) other;
        return Intrinsics.areEqual(unknownFields(), confirmSetupIntentResponse.unknownFields()) && Intrinsics.areEqual(this.request_id, confirmSetupIntentResponse.request_id) && Intrinsics.areEqual(this.confirmed_setup_intent, confirmSetupIntentResponse.confirmed_setup_intent) && Intrinsics.areEqual(this.decline_response, confirmSetupIntentResponse.decline_response) && Intrinsics.areEqual(this.confirm_error, confirmSetupIntentResponse.confirm_error) && Intrinsics.areEqual(this.offline_stats, confirmSetupIntentResponse.offline_stats) && this.offline_behavior == confirmSetupIntentResponse.offline_behavior && Intrinsics.areEqual(this.offline_details, confirmSetupIntentResponse.offline_details);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + this.request_id.hashCode()) * 37;
        SetupIntent setupIntent = this.confirmed_setup_intent;
        int iHashCode2 = (iHashCode + (setupIntent != null ? setupIntent.hashCode() : 0)) * 37;
        ErrorWrapper errorWrapper = this.decline_response;
        int iHashCode3 = (iHashCode2 + (errorWrapper != null ? errorWrapper.hashCode() : 0)) * 37;
        Error error = this.confirm_error;
        int iHashCode4 = (iHashCode3 + (error != null ? error.hashCode() : 0)) * 37;
        OfflineStats offlineStats = this.offline_stats;
        int iHashCode5 = (iHashCode4 + (offlineStats != null ? offlineStats.hashCode() : 0)) * 37;
        CreatePaymentIntentOptions.OfflineBehavior offlineBehavior = this.offline_behavior;
        int iHashCode6 = (iHashCode5 + (offlineBehavior != null ? offlineBehavior.hashCode() : 0)) * 37;
        OfflineSetupIntentDetails offlineSetupIntentDetails = this.offline_details;
        int iHashCode7 = iHashCode6 + (offlineSetupIntentDetails != null ? offlineSetupIntentDetails.hashCode() : 0);
        this.hashCode = iHashCode7;
        return iHashCode7;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("request_id=" + Internal.sanitize(this.request_id));
        if (this.confirmed_setup_intent != null) {
            arrayList2.add("confirmed_setup_intent=" + this.confirmed_setup_intent);
        }
        if (this.decline_response != null) {
            arrayList2.add("decline_response=" + this.decline_response);
        }
        if (this.confirm_error != null) {
            arrayList2.add("confirm_error=" + this.confirm_error);
        }
        if (this.offline_stats != null) {
            arrayList2.add("offline_stats=" + this.offline_stats);
        }
        if (this.offline_behavior != null) {
            arrayList2.add("offline_behavior=" + this.offline_behavior);
        }
        if (this.offline_details != null) {
            arrayList2.add("offline_details=" + this.offline_details);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ConfirmSetupIntentResponse{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ConfirmSetupIntentResponse copy$default(ConfirmSetupIntentResponse confirmSetupIntentResponse, String str, SetupIntent setupIntent, ErrorWrapper errorWrapper, Error error, OfflineStats offlineStats, CreatePaymentIntentOptions.OfflineBehavior offlineBehavior, OfflineSetupIntentDetails offlineSetupIntentDetails, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = confirmSetupIntentResponse.request_id;
        }
        if ((i & 2) != 0) {
            setupIntent = confirmSetupIntentResponse.confirmed_setup_intent;
        }
        if ((i & 4) != 0) {
            errorWrapper = confirmSetupIntentResponse.decline_response;
        }
        if ((i & 8) != 0) {
            error = confirmSetupIntentResponse.confirm_error;
        }
        if ((i & 16) != 0) {
            offlineStats = confirmSetupIntentResponse.offline_stats;
        }
        if ((i & 32) != 0) {
            offlineBehavior = confirmSetupIntentResponse.offline_behavior;
        }
        if ((i & 64) != 0) {
            offlineSetupIntentDetails = confirmSetupIntentResponse.offline_details;
        }
        if ((i & 128) != 0) {
            byteString = confirmSetupIntentResponse.unknownFields();
        }
        OfflineSetupIntentDetails offlineSetupIntentDetails2 = offlineSetupIntentDetails;
        ByteString byteString2 = byteString;
        OfflineStats offlineStats2 = offlineStats;
        CreatePaymentIntentOptions.OfflineBehavior offlineBehavior2 = offlineBehavior;
        return confirmSetupIntentResponse.copy(str, setupIntent, errorWrapper, error, offlineStats2, offlineBehavior2, offlineSetupIntentDetails2, byteString2);
    }

    public final ConfirmSetupIntentResponse copy(String request_id, SetupIntent confirmed_setup_intent, ErrorWrapper decline_response, Error confirm_error, OfflineStats offline_stats, CreatePaymentIntentOptions.OfflineBehavior offline_behavior, OfflineSetupIntentDetails offline_details, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(request_id, "request_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ConfirmSetupIntentResponse(request_id, confirmed_setup_intent, decline_response, confirm_error, offline_stats, offline_behavior, offline_details, unknownFields);
    }

    /* JADX INFO: compiled from: ConfirmSetupIntentResponse.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0011R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;", "()V", "confirm_error", "Lcom/stripe/proto/model/sdk/Error;", "confirmed_setup_intent", "Lcom/stripe/proto/model/rest/SetupIntent;", "decline_response", "Lcom/stripe/proto/model/rest/ErrorWrapper;", "offline_behavior", "Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;", "offline_details", "Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;", "offline_stats", "Lcom/stripe/proto/api/sdk/OfflineStats;", "request_id", "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ConfirmSetupIntentResponse, Builder> {
        public Error confirm_error;
        public SetupIntent confirmed_setup_intent;
        public ErrorWrapper decline_response;
        public CreatePaymentIntentOptions.OfflineBehavior offline_behavior;
        public OfflineSetupIntentDetails offline_details;
        public OfflineStats offline_stats;
        public String request_id = "";

        public final Builder request_id(String request_id) {
            Intrinsics.checkNotNullParameter(request_id, "request_id");
            this.request_id = request_id;
            return this;
        }

        public final Builder offline_stats(OfflineStats offline_stats) {
            this.offline_stats = offline_stats;
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

        public final Builder confirmed_setup_intent(SetupIntent confirmed_setup_intent) {
            this.confirmed_setup_intent = confirmed_setup_intent;
            this.decline_response = null;
            this.confirm_error = null;
            return this;
        }

        public final Builder decline_response(ErrorWrapper decline_response) {
            this.decline_response = decline_response;
            this.confirmed_setup_intent = null;
            this.confirm_error = null;
            return this;
        }

        public final Builder confirm_error(Error confirm_error) {
            this.confirm_error = confirm_error;
            this.confirmed_setup_intent = null;
            this.decline_response = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ConfirmSetupIntentResponse build() {
            return new ConfirmSetupIntentResponse(this.request_id, this.confirmed_setup_intent, this.decline_response, this.confirm_error, this.offline_stats, this.offline_behavior, this.offline_details, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ConfirmSetupIntentResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ConfirmSetupIntentResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ConfirmSetupIntentResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ConfirmSetupIntentResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.ConfirmSetupIntentResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ConfirmSetupIntentResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.request_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.request_id);
                }
                int iEncodedSizeWithTag = size + SetupIntent.ADAPTER.encodedSizeWithTag(2, value.confirmed_setup_intent) + ErrorWrapper.ADAPTER.encodedSizeWithTag(3, value.decline_response) + Error.ADAPTER.encodedSizeWithTag(4, value.confirm_error);
                if (value.offline_stats != null) {
                    iEncodedSizeWithTag += OfflineStats.ADAPTER.encodedSizeWithTag(5, value.offline_stats);
                }
                return iEncodedSizeWithTag + CreatePaymentIntentOptions.OfflineBehavior.ADAPTER.encodedSizeWithTag(6, value.offline_behavior) + OfflineSetupIntentDetails.ADAPTER.encodedSizeWithTag(7, value.offline_details);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ConfirmSetupIntentResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.request_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.request_id);
                }
                if (value.offline_stats != null) {
                    OfflineStats.ADAPTER.encodeWithTag(writer, 5, value.offline_stats);
                }
                CreatePaymentIntentOptions.OfflineBehavior.ADAPTER.encodeWithTag(writer, 6, value.offline_behavior);
                OfflineSetupIntentDetails.ADAPTER.encodeWithTag(writer, 7, value.offline_details);
                SetupIntent.ADAPTER.encodeWithTag(writer, 2, value.confirmed_setup_intent);
                ErrorWrapper.ADAPTER.encodeWithTag(writer, 3, value.decline_response);
                Error.ADAPTER.encodeWithTag(writer, 4, value.confirm_error);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ConfirmSetupIntentResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                Error.ADAPTER.encodeWithTag(writer, 4, value.confirm_error);
                ErrorWrapper.ADAPTER.encodeWithTag(writer, 3, value.decline_response);
                SetupIntent.ADAPTER.encodeWithTag(writer, 2, value.confirmed_setup_intent);
                OfflineSetupIntentDetails.ADAPTER.encodeWithTag(writer, 7, value.offline_details);
                CreatePaymentIntentOptions.OfflineBehavior.ADAPTER.encodeWithTag(writer, 6, value.offline_behavior);
                if (value.offline_stats != null) {
                    OfflineStats.ADAPTER.encodeWithTag(writer, 5, value.offline_stats);
                }
                if (Intrinsics.areEqual(value.request_id, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.request_id);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ConfirmSetupIntentResponse redact(ConfirmSetupIntentResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                SetupIntent setupIntent = value.confirmed_setup_intent;
                SetupIntent setupIntentRedact = setupIntent != null ? SetupIntent.ADAPTER.redact(setupIntent) : null;
                ErrorWrapper errorWrapper = value.decline_response;
                ErrorWrapper errorWrapperRedact = errorWrapper != null ? ErrorWrapper.ADAPTER.redact(errorWrapper) : null;
                Error error = value.confirm_error;
                Error errorRedact = error != null ? Error.ADAPTER.redact(error) : null;
                OfflineStats offlineStats = value.offline_stats;
                OfflineStats offlineStatsRedact = offlineStats != null ? OfflineStats.ADAPTER.redact(offlineStats) : null;
                OfflineSetupIntentDetails offlineSetupIntentDetails = value.offline_details;
                return ConfirmSetupIntentResponse.copy$default(value, null, setupIntentRedact, errorWrapperRedact, errorRedact, offlineStatsRedact, null, offlineSetupIntentDetails != null ? OfflineSetupIntentDetails.ADAPTER.redact(offlineSetupIntentDetails) : null, ByteString.EMPTY, 33, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ConfirmSetupIntentResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                SetupIntent setupIntentDecode = null;
                ErrorWrapper errorWrapperDecode = null;
                Error errorDecode = null;
                OfflineStats offlineStatsDecode = null;
                CreatePaymentIntentOptions.OfflineBehavior offlineBehaviorDecode = null;
                OfflineSetupIntentDetails offlineSetupIntentDetailsDecode = null;
                while (true) {
                    String str = strDecode;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag != -1) {
                            switch (iNextTag) {
                                case 1:
                                    break;
                                case 2:
                                    setupIntentDecode = SetupIntent.ADAPTER.decode(reader);
                                    break;
                                case 3:
                                    errorWrapperDecode = ErrorWrapper.ADAPTER.decode(reader);
                                    break;
                                case 4:
                                    errorDecode = Error.ADAPTER.decode(reader);
                                    break;
                                case 5:
                                    offlineStatsDecode = OfflineStats.ADAPTER.decode(reader);
                                    break;
                                case 6:
                                    try {
                                        offlineBehaviorDecode = CreatePaymentIntentOptions.OfflineBehavior.ADAPTER.decode(reader);
                                    } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                        reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                    }
                                    break;
                                case 7:
                                    offlineSetupIntentDetailsDecode = OfflineSetupIntentDetails.ADAPTER.decode(reader);
                                    break;
                                default:
                                    reader.readUnknownField(iNextTag);
                                    break;
                            }
                        } else {
                            return new ConfirmSetupIntentResponse(str, setupIntentDecode, errorWrapperDecode, errorDecode, offlineStatsDecode, offlineBehaviorDecode, offlineSetupIntentDetailsDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                    }
                    strDecode = ProtoAdapter.STRING.decode(reader);
                }
            }
        };
    }
}
