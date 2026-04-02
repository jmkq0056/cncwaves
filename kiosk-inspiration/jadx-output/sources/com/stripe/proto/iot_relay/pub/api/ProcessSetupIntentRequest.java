package com.stripe.proto.iot_relay.pub.api;

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
import com.stripe.proto.terminal.terminal.pub.common.server_driven_integration.AllowRedisplay;
import com.sun.jna.platform.win32.WinError;
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

/* JADX INFO: compiled from: ProcessSetupIntentRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001c2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001b\u001cBc\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010Ji\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0013J\u0013\u0010\u0014\u001a\u00020\n2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u0002H\u0016J\b\u0010\u001a\u001a\u00020\u0004H\u0016R\u0010\u0010\f\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0011R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0011R\u0010\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;", "device_id", "", "stripe_ephemeral_key", "setup_intent_id", "terminal_action_id", OfflineStorageConstantsKt.READER_ID, "moto", "", "enable_customer_cancellation", "allow_redisplay", "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Lokio/ByteString;)V", "Ljava/lang/Boolean;", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Lokio/ByteString;)Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ProcessSetupIntentRequest extends Message<ProcessSetupIntentRequest, Builder> {
    public static final ProtoAdapter<ProcessSetupIntentRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.common.server_driven_integration.AllowRedisplay#ADAPTER", jsonName = "allowRedisplay", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 9)
    public final AllowRedisplay allow_redisplay;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "deviceId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String device_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", jsonName = "enableCustomerCancellation", schemaIndex = 6, tag = 8)
    public final Boolean enable_customer_cancellation;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE", schemaIndex = 5, tag = 7)
    public final Boolean moto;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "readerId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 6)
    public final String reader_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "setupIntentId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String setup_intent_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "stripeEphemeralKey", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String stripe_ephemeral_key;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "terminalActionId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 5)
    public final String terminal_action_id;

    public ProcessSetupIntentRequest() {
        this(null, null, null, null, null, null, null, null, null, 511, null);
    }

    public /* synthetic */ ProcessSetupIntentRequest(String str, String str2, String str3, String str4, String str5, Boolean bool, Boolean bool2, AllowRedisplay allowRedisplay, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? "" : str4, (i & 16) != 0 ? "" : str5, (i & 32) != 0 ? null : bool, (i & 64) != 0 ? null : bool2, (i & 128) != 0 ? AllowRedisplay.ALLOW_REDISPLAY_INVALID : allowRedisplay, (i & 256) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProcessSetupIntentRequest(String device_id, String stripe_ephemeral_key, String setup_intent_id, String terminal_action_id, String reader_id, Boolean bool, Boolean bool2, AllowRedisplay allow_redisplay, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(device_id, "device_id");
        Intrinsics.checkNotNullParameter(stripe_ephemeral_key, "stripe_ephemeral_key");
        Intrinsics.checkNotNullParameter(setup_intent_id, "setup_intent_id");
        Intrinsics.checkNotNullParameter(terminal_action_id, "terminal_action_id");
        Intrinsics.checkNotNullParameter(reader_id, "reader_id");
        Intrinsics.checkNotNullParameter(allow_redisplay, "allow_redisplay");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.device_id = device_id;
        this.stripe_ephemeral_key = stripe_ephemeral_key;
        this.setup_intent_id = setup_intent_id;
        this.terminal_action_id = terminal_action_id;
        this.reader_id = reader_id;
        this.moto = bool;
        this.enable_customer_cancellation = bool2;
        this.allow_redisplay = allow_redisplay;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.device_id = this.device_id;
        builder.stripe_ephemeral_key = this.stripe_ephemeral_key;
        builder.setup_intent_id = this.setup_intent_id;
        builder.terminal_action_id = this.terminal_action_id;
        builder.reader_id = this.reader_id;
        builder.moto = this.moto;
        builder.enable_customer_cancellation = this.enable_customer_cancellation;
        builder.allow_redisplay = this.allow_redisplay;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ProcessSetupIntentRequest)) {
            return false;
        }
        ProcessSetupIntentRequest processSetupIntentRequest = (ProcessSetupIntentRequest) other;
        return Intrinsics.areEqual(unknownFields(), processSetupIntentRequest.unknownFields()) && Intrinsics.areEqual(this.device_id, processSetupIntentRequest.device_id) && Intrinsics.areEqual(this.stripe_ephemeral_key, processSetupIntentRequest.stripe_ephemeral_key) && Intrinsics.areEqual(this.setup_intent_id, processSetupIntentRequest.setup_intent_id) && Intrinsics.areEqual(this.terminal_action_id, processSetupIntentRequest.terminal_action_id) && Intrinsics.areEqual(this.reader_id, processSetupIntentRequest.reader_id) && Intrinsics.areEqual(this.moto, processSetupIntentRequest.moto) && Intrinsics.areEqual(this.enable_customer_cancellation, processSetupIntentRequest.enable_customer_cancellation) && this.allow_redisplay == processSetupIntentRequest.allow_redisplay;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((((((unknownFields().hashCode() * 37) + this.device_id.hashCode()) * 37) + this.stripe_ephemeral_key.hashCode()) * 37) + this.setup_intent_id.hashCode()) * 37) + this.terminal_action_id.hashCode()) * 37) + this.reader_id.hashCode()) * 37;
        Boolean bool = this.moto;
        int iHashCode2 = (iHashCode + (bool != null ? bool.hashCode() : 0)) * 37;
        Boolean bool2 = this.enable_customer_cancellation;
        int iHashCode3 = ((iHashCode2 + (bool2 != null ? bool2.hashCode() : 0)) * 37) + this.allow_redisplay.hashCode();
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("device_id=" + Internal.sanitize(this.device_id));
        arrayList2.add("stripe_ephemeral_key=" + Internal.sanitize(this.stripe_ephemeral_key));
        arrayList2.add("setup_intent_id=" + Internal.sanitize(this.setup_intent_id));
        arrayList2.add("terminal_action_id=" + Internal.sanitize(this.terminal_action_id));
        arrayList2.add("reader_id=" + Internal.sanitize(this.reader_id));
        if (this.moto != null) {
            arrayList2.add("moto=" + this.moto);
        }
        if (this.enable_customer_cancellation != null) {
            arrayList2.add("enable_customer_cancellation=" + this.enable_customer_cancellation);
        }
        arrayList2.add("allow_redisplay=" + this.allow_redisplay);
        return CollectionsKt.joinToString$default(arrayList, ", ", "ProcessSetupIntentRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ProcessSetupIntentRequest copy$default(ProcessSetupIntentRequest processSetupIntentRequest, String str, String str2, String str3, String str4, String str5, Boolean bool, Boolean bool2, AllowRedisplay allowRedisplay, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = processSetupIntentRequest.device_id;
        }
        if ((i & 2) != 0) {
            str2 = processSetupIntentRequest.stripe_ephemeral_key;
        }
        if ((i & 4) != 0) {
            str3 = processSetupIntentRequest.setup_intent_id;
        }
        if ((i & 8) != 0) {
            str4 = processSetupIntentRequest.terminal_action_id;
        }
        if ((i & 16) != 0) {
            str5 = processSetupIntentRequest.reader_id;
        }
        if ((i & 32) != 0) {
            bool = processSetupIntentRequest.moto;
        }
        if ((i & 64) != 0) {
            bool2 = processSetupIntentRequest.enable_customer_cancellation;
        }
        if ((i & 128) != 0) {
            allowRedisplay = processSetupIntentRequest.allow_redisplay;
        }
        if ((i & 256) != 0) {
            byteString = processSetupIntentRequest.unknownFields();
        }
        AllowRedisplay allowRedisplay2 = allowRedisplay;
        ByteString byteString2 = byteString;
        Boolean bool3 = bool;
        Boolean bool4 = bool2;
        String str6 = str5;
        String str7 = str3;
        return processSetupIntentRequest.copy(str, str2, str7, str4, str6, bool3, bool4, allowRedisplay2, byteString2);
    }

    public final ProcessSetupIntentRequest copy(String device_id, String stripe_ephemeral_key, String setup_intent_id, String terminal_action_id, String reader_id, Boolean moto, Boolean enable_customer_cancellation, AllowRedisplay allow_redisplay, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(device_id, "device_id");
        Intrinsics.checkNotNullParameter(stripe_ephemeral_key, "stripe_ephemeral_key");
        Intrinsics.checkNotNullParameter(setup_intent_id, "setup_intent_id");
        Intrinsics.checkNotNullParameter(terminal_action_id, "terminal_action_id");
        Intrinsics.checkNotNullParameter(reader_id, "reader_id");
        Intrinsics.checkNotNullParameter(allow_redisplay, "allow_redisplay");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ProcessSetupIntentRequest(device_id, stripe_ephemeral_key, setup_intent_id, terminal_action_id, reader_id, moto, enable_customer_cancellation, allow_redisplay, unknownFields);
    }

    /* JADX INFO: compiled from: ProcessSetupIntentRequest.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0015\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\u0011J\u0015\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\u0011J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0007J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0007J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0007J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\nR\u0016\u0010\u000b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\nR\u0012\u0010\f\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;", "()V", "allow_redisplay", "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;", "device_id", "", "enable_customer_cancellation", "", "Ljava/lang/Boolean;", "moto", OfflineStorageConstantsKt.READER_ID, "setup_intent_id", "stripe_ephemeral_key", "terminal_action_id", "build", "(Ljava/lang/Boolean;)Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ProcessSetupIntentRequest, Builder> {
        public Boolean enable_customer_cancellation;
        public Boolean moto;
        public String device_id = "";
        public String stripe_ephemeral_key = "";
        public String setup_intent_id = "";
        public String terminal_action_id = "";
        public String reader_id = "";
        public AllowRedisplay allow_redisplay = AllowRedisplay.ALLOW_REDISPLAY_INVALID;

        public final Builder device_id(String device_id) {
            Intrinsics.checkNotNullParameter(device_id, "device_id");
            this.device_id = device_id;
            return this;
        }

        public final Builder stripe_ephemeral_key(String stripe_ephemeral_key) {
            Intrinsics.checkNotNullParameter(stripe_ephemeral_key, "stripe_ephemeral_key");
            this.stripe_ephemeral_key = stripe_ephemeral_key;
            return this;
        }

        public final Builder setup_intent_id(String setup_intent_id) {
            Intrinsics.checkNotNullParameter(setup_intent_id, "setup_intent_id");
            this.setup_intent_id = setup_intent_id;
            return this;
        }

        public final Builder terminal_action_id(String terminal_action_id) {
            Intrinsics.checkNotNullParameter(terminal_action_id, "terminal_action_id");
            this.terminal_action_id = terminal_action_id;
            return this;
        }

        public final Builder reader_id(String reader_id) {
            Intrinsics.checkNotNullParameter(reader_id, "reader_id");
            this.reader_id = reader_id;
            return this;
        }

        public final Builder moto(Boolean moto) {
            this.moto = moto;
            return this;
        }

        public final Builder enable_customer_cancellation(Boolean enable_customer_cancellation) {
            this.enable_customer_cancellation = enable_customer_cancellation;
            return this;
        }

        public final Builder allow_redisplay(AllowRedisplay allow_redisplay) {
            Intrinsics.checkNotNullParameter(allow_redisplay, "allow_redisplay");
            this.allow_redisplay = allow_redisplay;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ProcessSetupIntentRequest build() {
            return new ProcessSetupIntentRequest(this.device_id, this.stripe_ephemeral_key, this.setup_intent_id, this.terminal_action_id, this.reader_id, this.moto, this.enable_customer_cancellation, this.allow_redisplay, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ProcessSetupIntentRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ProcessSetupIntentRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ProcessSetupIntentRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ProcessSetupIntentRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.iot_relay.pub.api.ProcessSetupIntentRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ProcessSetupIntentRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.device_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.device_id);
                }
                if (!Intrinsics.areEqual(value.stripe_ephemeral_key, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.stripe_ephemeral_key);
                }
                if (!Intrinsics.areEqual(value.setup_intent_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.setup_intent_id);
                }
                if (!Intrinsics.areEqual(value.terminal_action_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(5, value.terminal_action_id);
                }
                if (!Intrinsics.areEqual(value.reader_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(6, value.reader_id);
                }
                if (value.moto != null) {
                    size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(7, value.moto);
                }
                if (value.enable_customer_cancellation != null) {
                    size += ProtoAdapter.BOOL_VALUE.encodedSizeWithTag(8, value.enable_customer_cancellation);
                }
                return value.allow_redisplay != AllowRedisplay.ALLOW_REDISPLAY_INVALID ? size + AllowRedisplay.ADAPTER.encodedSizeWithTag(9, value.allow_redisplay) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ProcessSetupIntentRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.device_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.device_id);
                }
                if (!Intrinsics.areEqual(value.stripe_ephemeral_key, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.stripe_ephemeral_key);
                }
                if (!Intrinsics.areEqual(value.setup_intent_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.setup_intent_id);
                }
                if (!Intrinsics.areEqual(value.terminal_action_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.terminal_action_id);
                }
                if (!Intrinsics.areEqual(value.reader_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.reader_id);
                }
                if (value.moto != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 7, value.moto);
                }
                if (value.enable_customer_cancellation != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 8, value.enable_customer_cancellation);
                }
                if (value.allow_redisplay != AllowRedisplay.ALLOW_REDISPLAY_INVALID) {
                    AllowRedisplay.ADAPTER.encodeWithTag(writer, 9, value.allow_redisplay);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ProcessSetupIntentRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.allow_redisplay != AllowRedisplay.ALLOW_REDISPLAY_INVALID) {
                    AllowRedisplay.ADAPTER.encodeWithTag(writer, 9, value.allow_redisplay);
                }
                if (value.enable_customer_cancellation != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 8, value.enable_customer_cancellation);
                }
                if (value.moto != null) {
                    ProtoAdapter.BOOL_VALUE.encodeWithTag(writer, 7, value.moto);
                }
                if (!Intrinsics.areEqual(value.reader_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.reader_id);
                }
                if (!Intrinsics.areEqual(value.terminal_action_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.terminal_action_id);
                }
                if (!Intrinsics.areEqual(value.setup_intent_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.setup_intent_id);
                }
                if (!Intrinsics.areEqual(value.stripe_ephemeral_key, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.stripe_ephemeral_key);
                }
                if (Intrinsics.areEqual(value.device_id, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.device_id);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ProcessSetupIntentRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                AllowRedisplay allowRedisplay = AllowRedisplay.ALLOW_REDISPLAY_INVALID;
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = strDecode;
                String strDecode3 = strDecode2;
                String strDecode4 = strDecode3;
                Boolean boolDecode = null;
                Boolean boolDecode2 = null;
                AllowRedisplay allowRedisplayDecode = allowRedisplay;
                String strDecode5 = strDecode4;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode5 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 2:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 3:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 4:
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                            case 5:
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 6:
                                strDecode4 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 7:
                                boolDecode = ProtoAdapter.BOOL_VALUE.decode(reader);
                                break;
                            case 8:
                                boolDecode2 = ProtoAdapter.BOOL_VALUE.decode(reader);
                                break;
                            case 9:
                                try {
                                    allowRedisplayDecode = AllowRedisplay.ADAPTER.decode(reader);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                }
                                break;
                        }
                    } else {
                        return new ProcessSetupIntentRequest(strDecode5, strDecode, strDecode2, strDecode3, strDecode4, boolDecode, boolDecode2, allowRedisplayDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ProcessSetupIntentRequest redact(ProcessSetupIntentRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                Boolean bool = value.moto;
                Boolean boolRedact = bool != null ? ProtoAdapter.BOOL_VALUE.redact(bool) : null;
                Boolean bool2 = value.enable_customer_cancellation;
                return ProcessSetupIntentRequest.copy$default(value, null, null, null, null, null, boolRedact, bool2 != null ? ProtoAdapter.BOOL_VALUE.redact(bool2) : null, null, ByteString.EMPTY, WinError.ERROR_BAD_THREADID_ADDR, null);
            }
        };
    }
}
