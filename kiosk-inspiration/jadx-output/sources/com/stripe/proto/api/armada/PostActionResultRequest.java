package com.stripe.proto.api.armada;

import androidx.core.app.NotificationCompat;
import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
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
import com.stripe.proto.api.armada.PostActionResultRequest;
import com.stripe.proto.model.common.DeviceInfo;
import com.sun.jna.platform.win32.Ddeml;
import com.sun.jna.platform.win32.WinUser;
import io.ktor.http.LinkHeader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
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

/* JADX INFO: compiled from: PostActionResultRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u0000 \u001e2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0004\u001d\u001e\u001f Bq\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\n\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\b\u0012\b\b\u0002\u0010\f\u001a\u00020\b\u0012\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\b\b\u0002\u0010\u0010\u001a\u00020\b\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012¢\u0006\u0002\u0010\u0013Jr\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\b2\b\b\u0002\u0010\f\u001a\u00020\b2\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\b\b\u0002\u0010\u0010\u001a\u00020\b2\b\b\u0002\u0010\u0011\u001a\u00020\u0012J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u0002H\u0016J\b\u0010\u001c\u001a\u00020\bH\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;", "device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", NotificationCompat.CATEGORY_STATUS, "Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;", "failure_code", "", "failure_message", "generated_card", "refund_id", "terminal_action_id", "inputs", "", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;", "payment_method", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "Input", Ddeml.SZDDESYS_ITEM_STATUS, "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PostActionResultRequest extends Message<PostActionResultRequest, Builder> {
    public static final ProtoAdapter<PostActionResultRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.common.DeviceInfo#ADAPTER", jsonName = "deviceInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final DeviceInfo device_info;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "failureCode", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String failure_code;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "failureMessage", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String failure_message;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "generatedCard", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final String generated_card;

    @WireField(adapter = "com.stripe.proto.api.armada.PostActionResultRequest$Input#ADAPTER", label = WireField.Label.REPEATED, schemaIndex = 7, tag = 8)
    public final List<Input> inputs;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "paymentMethod", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 9)
    public final String payment_method;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "refundId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final String refund_id;

    @WireField(adapter = "com.stripe.proto.api.armada.PostActionResultRequest$Status#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final Status status;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "terminalActionId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final String terminal_action_id;

    public PostActionResultRequest() {
        this(null, null, null, null, null, null, null, null, null, null, WinUser.CF_GDIOBJLAST, null);
    }

    public /* synthetic */ PostActionResultRequest(DeviceInfo deviceInfo, Status status, String str, String str2, String str3, String str4, String str5, List list, String str6, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : deviceInfo, (i & 2) != 0 ? Status.STATUS_INVALID : status, (i & 4) != 0 ? "" : str, (i & 8) != 0 ? "" : str2, (i & 16) != 0 ? "" : str3, (i & 32) != 0 ? "" : str4, (i & 64) != 0 ? "" : str5, (i & 128) != 0 ? CollectionsKt.emptyList() : list, (i & 256) != 0 ? "" : str6, (i & 512) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PostActionResultRequest(DeviceInfo deviceInfo, Status status, String failure_code, String failure_message, String generated_card, String refund_id, String terminal_action_id, List<Input> inputs, String payment_method, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(failure_code, "failure_code");
        Intrinsics.checkNotNullParameter(failure_message, "failure_message");
        Intrinsics.checkNotNullParameter(generated_card, "generated_card");
        Intrinsics.checkNotNullParameter(refund_id, "refund_id");
        Intrinsics.checkNotNullParameter(terminal_action_id, "terminal_action_id");
        Intrinsics.checkNotNullParameter(inputs, "inputs");
        Intrinsics.checkNotNullParameter(payment_method, "payment_method");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.device_info = deviceInfo;
        this.status = status;
        this.failure_code = failure_code;
        this.failure_message = failure_message;
        this.generated_card = generated_card;
        this.refund_id = refund_id;
        this.terminal_action_id = terminal_action_id;
        this.payment_method = payment_method;
        this.inputs = Internal.immutableCopyOf("inputs", inputs);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.device_info = this.device_info;
        builder.status = this.status;
        builder.failure_code = this.failure_code;
        builder.failure_message = this.failure_message;
        builder.generated_card = this.generated_card;
        builder.refund_id = this.refund_id;
        builder.terminal_action_id = this.terminal_action_id;
        builder.inputs = this.inputs;
        builder.payment_method = this.payment_method;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof PostActionResultRequest)) {
            return false;
        }
        PostActionResultRequest postActionResultRequest = (PostActionResultRequest) other;
        return Intrinsics.areEqual(unknownFields(), postActionResultRequest.unknownFields()) && Intrinsics.areEqual(this.device_info, postActionResultRequest.device_info) && this.status == postActionResultRequest.status && Intrinsics.areEqual(this.failure_code, postActionResultRequest.failure_code) && Intrinsics.areEqual(this.failure_message, postActionResultRequest.failure_message) && Intrinsics.areEqual(this.generated_card, postActionResultRequest.generated_card) && Intrinsics.areEqual(this.refund_id, postActionResultRequest.refund_id) && Intrinsics.areEqual(this.terminal_action_id, postActionResultRequest.terminal_action_id) && Intrinsics.areEqual(this.inputs, postActionResultRequest.inputs) && Intrinsics.areEqual(this.payment_method, postActionResultRequest.payment_method);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        DeviceInfo deviceInfo = this.device_info;
        int iHashCode2 = ((((((((((((((((iHashCode + (deviceInfo != null ? deviceInfo.hashCode() : 0)) * 37) + this.status.hashCode()) * 37) + this.failure_code.hashCode()) * 37) + this.failure_message.hashCode()) * 37) + this.generated_card.hashCode()) * 37) + this.refund_id.hashCode()) * 37) + this.terminal_action_id.hashCode()) * 37) + this.inputs.hashCode()) * 37) + this.payment_method.hashCode();
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.device_info != null) {
            arrayList.add("device_info=" + this.device_info);
        }
        ArrayList arrayList2 = arrayList;
        arrayList2.add("status=" + this.status);
        arrayList2.add("failure_code=" + Internal.sanitize(this.failure_code));
        arrayList2.add("failure_message=" + Internal.sanitize(this.failure_message));
        arrayList2.add("generated_card=" + Internal.sanitize(this.generated_card));
        arrayList2.add("refund_id=" + Internal.sanitize(this.refund_id));
        arrayList2.add("terminal_action_id=" + Internal.sanitize(this.terminal_action_id));
        if (!this.inputs.isEmpty()) {
            arrayList2.add("inputs=" + this.inputs);
        }
        arrayList2.add("payment_method=" + Internal.sanitize(this.payment_method));
        return CollectionsKt.joinToString$default(arrayList, ", ", "PostActionResultRequest{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PostActionResultRequest copy$default(PostActionResultRequest postActionResultRequest, DeviceInfo deviceInfo, Status status, String str, String str2, String str3, String str4, String str5, List list, String str6, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            deviceInfo = postActionResultRequest.device_info;
        }
        if ((i & 2) != 0) {
            status = postActionResultRequest.status;
        }
        if ((i & 4) != 0) {
            str = postActionResultRequest.failure_code;
        }
        if ((i & 8) != 0) {
            str2 = postActionResultRequest.failure_message;
        }
        if ((i & 16) != 0) {
            str3 = postActionResultRequest.generated_card;
        }
        if ((i & 32) != 0) {
            str4 = postActionResultRequest.refund_id;
        }
        if ((i & 64) != 0) {
            str5 = postActionResultRequest.terminal_action_id;
        }
        if ((i & 128) != 0) {
            list = postActionResultRequest.inputs;
        }
        if ((i & 256) != 0) {
            str6 = postActionResultRequest.payment_method;
        }
        if ((i & 512) != 0) {
            byteString = postActionResultRequest.unknownFields();
        }
        String str7 = str6;
        ByteString byteString2 = byteString;
        String str8 = str5;
        List list2 = list;
        String str9 = str3;
        String str10 = str4;
        return postActionResultRequest.copy(deviceInfo, status, str, str2, str9, str10, str8, list2, str7, byteString2);
    }

    public final PostActionResultRequest copy(DeviceInfo device_info, Status status, String failure_code, String failure_message, String generated_card, String refund_id, String terminal_action_id, List<Input> inputs, String payment_method, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(failure_code, "failure_code");
        Intrinsics.checkNotNullParameter(failure_message, "failure_message");
        Intrinsics.checkNotNullParameter(generated_card, "generated_card");
        Intrinsics.checkNotNullParameter(refund_id, "refund_id");
        Intrinsics.checkNotNullParameter(terminal_action_id, "terminal_action_id");
        Intrinsics.checkNotNullParameter(inputs, "inputs");
        Intrinsics.checkNotNullParameter(payment_method, "payment_method");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new PostActionResultRequest(device_info, status, failure_code, failure_message, generated_card, refund_id, terminal_action_id, inputs, payment_method, unknownFields);
    }

    /* JADX INFO: compiled from: PostActionResultRequest.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0007J\u0014\u0010\n\u001a\u00020\u00002\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0007J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0007J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/armada/PostActionResultRequest;", "()V", "device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "failure_code", "", "failure_message", "generated_card", "inputs", "", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;", "payment_method", "refund_id", NotificationCompat.CATEGORY_STATUS, "Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;", "terminal_action_id", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<PostActionResultRequest, Builder> {
        public DeviceInfo device_info;
        public Status status = Status.STATUS_INVALID;
        public String failure_code = "";
        public String failure_message = "";
        public String generated_card = "";
        public String refund_id = "";
        public String terminal_action_id = "";
        public List<Input> inputs = CollectionsKt.emptyList();
        public String payment_method = "";

        public final Builder device_info(DeviceInfo device_info) {
            this.device_info = device_info;
            return this;
        }

        public final Builder status(Status status) {
            Intrinsics.checkNotNullParameter(status, "status");
            this.status = status;
            return this;
        }

        public final Builder failure_code(String failure_code) {
            Intrinsics.checkNotNullParameter(failure_code, "failure_code");
            this.failure_code = failure_code;
            return this;
        }

        public final Builder failure_message(String failure_message) {
            Intrinsics.checkNotNullParameter(failure_message, "failure_message");
            this.failure_message = failure_message;
            return this;
        }

        public final Builder generated_card(String generated_card) {
            Intrinsics.checkNotNullParameter(generated_card, "generated_card");
            this.generated_card = generated_card;
            return this;
        }

        public final Builder refund_id(String refund_id) {
            Intrinsics.checkNotNullParameter(refund_id, "refund_id");
            this.refund_id = refund_id;
            return this;
        }

        public final Builder terminal_action_id(String terminal_action_id) {
            Intrinsics.checkNotNullParameter(terminal_action_id, "terminal_action_id");
            this.terminal_action_id = terminal_action_id;
            return this;
        }

        public final Builder inputs(List<Input> inputs) {
            Intrinsics.checkNotNullParameter(inputs, "inputs");
            Internal.checkElementsNotNull(inputs);
            this.inputs = inputs;
            return this;
        }

        public final Builder payment_method(String payment_method) {
            Intrinsics.checkNotNullParameter(payment_method, "payment_method");
            this.payment_method = payment_method;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public PostActionResultRequest build() {
            return new PostActionResultRequest(this.device_info, this.status, this.failure_code, this.failure_message, this.generated_card, this.refund_id, this.terminal_action_id, this.inputs, this.payment_method, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: PostActionResultRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/armada/PostActionResultRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ PostActionResultRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(PostActionResultRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<PostActionResultRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.armada.PostActionResultRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(PostActionResultRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.device_info != null) {
                    size += DeviceInfo.ADAPTER.encodedSizeWithTag(1, value.device_info);
                }
                if (value.status != PostActionResultRequest.Status.STATUS_INVALID) {
                    size += PostActionResultRequest.Status.ADAPTER.encodedSizeWithTag(2, value.status);
                }
                if (!Intrinsics.areEqual(value.failure_code, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.failure_code);
                }
                if (!Intrinsics.areEqual(value.failure_message, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(4, value.failure_message);
                }
                if (!Intrinsics.areEqual(value.generated_card, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(5, value.generated_card);
                }
                if (!Intrinsics.areEqual(value.refund_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(6, value.refund_id);
                }
                if (!Intrinsics.areEqual(value.terminal_action_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(7, value.terminal_action_id);
                }
                int iEncodedSizeWithTag = size + PostActionResultRequest.Input.ADAPTER.asRepeated().encodedSizeWithTag(8, value.inputs);
                return !Intrinsics.areEqual(value.payment_method, "") ? iEncodedSizeWithTag + ProtoAdapter.STRING.encodedSizeWithTag(9, value.payment_method) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, PostActionResultRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 1, value.device_info);
                }
                if (value.status != PostActionResultRequest.Status.STATUS_INVALID) {
                    PostActionResultRequest.Status.ADAPTER.encodeWithTag(writer, 2, value.status);
                }
                if (!Intrinsics.areEqual(value.failure_code, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.failure_code);
                }
                if (!Intrinsics.areEqual(value.failure_message, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.failure_message);
                }
                if (!Intrinsics.areEqual(value.generated_card, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.generated_card);
                }
                if (!Intrinsics.areEqual(value.refund_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.refund_id);
                }
                if (!Intrinsics.areEqual(value.terminal_action_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.terminal_action_id);
                }
                PostActionResultRequest.Input.ADAPTER.asRepeated().encodeWithTag(writer, 8, value.inputs);
                if (!Intrinsics.areEqual(value.payment_method, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 9, value.payment_method);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, PostActionResultRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.payment_method, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 9, value.payment_method);
                }
                PostActionResultRequest.Input.ADAPTER.asRepeated().encodeWithTag(writer, 8, value.inputs);
                if (!Intrinsics.areEqual(value.terminal_action_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.terminal_action_id);
                }
                if (!Intrinsics.areEqual(value.refund_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.refund_id);
                }
                if (!Intrinsics.areEqual(value.generated_card, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.generated_card);
                }
                if (!Intrinsics.areEqual(value.failure_message, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.failure_message);
                }
                if (!Intrinsics.areEqual(value.failure_code, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.failure_code);
                }
                if (value.status != PostActionResultRequest.Status.STATUS_INVALID) {
                    PostActionResultRequest.Status.ADAPTER.encodeWithTag(writer, 2, value.status);
                }
                if (value.device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 1, value.device_info);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0027. Please report as an issue. */
            /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
                jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
                	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.calcSwitchOut(SwitchRegionMaker.java:217)
                	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:68)
                	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
                	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
                	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:96)
                	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
                	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
                	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeEndlessLoop(LoopRegionMaker.java:282)
                	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:65)
                	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
                	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
                	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeEndlessLoop(LoopRegionMaker.java:282)
                	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:65)
                	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
                	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
                	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
                	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
                */
            @Override // com.squareup.wire.ProtoAdapter
            public com.stripe.proto.api.armada.PostActionResultRequest decode(com.squareup.wire.ProtoReader r18) {
                /*
                    Method dump skipped, instruction units count: 204
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.stripe.proto.api.armada.PostActionResultRequest$Companion$ADAPTER$1.decode(com.squareup.wire.ProtoReader):com.stripe.proto.api.armada.PostActionResultRequest");
            }

            @Override // com.squareup.wire.ProtoAdapter
            public PostActionResultRequest redact(PostActionResultRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                DeviceInfo deviceInfo = value.device_info;
                return PostActionResultRequest.copy$default(value, deviceInfo != null ? DeviceInfo.ADAPTER.redact(deviceInfo) : null, null, null, null, null, null, null, Internal.m361redactElements(value.inputs, PostActionResultRequest.Input.ADAPTER), null, ByteString.EMPTY, 382, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: PostActionResultRequest.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "STATUS_INVALID", "SUCCEEDED", "FAILED", "IN_PROGRESS", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Status implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Status[] $VALUES;
        public static final ProtoAdapter<Status> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final Status FAILED;
        public static final Status IN_PROGRESS;
        public static final Status STATUS_INVALID;
        public static final Status SUCCEEDED;
        private final int value;

        private static final /* synthetic */ Status[] $values() {
            return new Status[]{STATUS_INVALID, SUCCEEDED, FAILED, IN_PROGRESS};
        }

        @JvmStatic
        public static final Status fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<Status> getEntries() {
            return $ENTRIES;
        }

        public static Status valueOf(String str) {
            return (Status) Enum.valueOf(Status.class, str);
        }

        public static Status[] values() {
            return (Status[]) $VALUES.clone();
        }

        private Status(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final Status status = new Status("STATUS_INVALID", 0, 0);
            STATUS_INVALID = status;
            SUCCEEDED = new Status("SUCCEEDED", 1, 1);
            FAILED = new Status("FAILED", 2, 2);
            IN_PROGRESS = new Status("IN_PROGRESS", 3, 3);
            Status[] statusArr$values = $values();
            $VALUES = statusArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(statusArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Status.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<Status>(orCreateKotlinClass, syntax, status) { // from class: com.stripe.proto.api.armada.PostActionResultRequest$Status$Companion$ADAPTER$1
                {
                    PostActionResultRequest.Status status2 = status;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public PostActionResultRequest.Status fromValue(int value) {
                    return PostActionResultRequest.Status.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: PostActionResultRequest.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Status$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final Status fromValue(int value) {
                if (value == 0) {
                    return Status.STATUS_INVALID;
                }
                if (value == 1) {
                    return Status.SUCCEEDED;
                }
                if (value == 2) {
                    return Status.FAILED;
                }
                if (value != 3) {
                    return null;
                }
                return Status.IN_PROGRESS;
            }
        }
    }

    /* JADX INFO: compiled from: PostActionResultRequest.kt */
    @Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000e\u0018\u0000 *2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\r'()*+,-./0123B\u009d\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\b\b\u0002\u0010\u0017\u001a\u00020\b\u0012\u000e\b\u0002\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0019\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u001c¢\u0006\u0002\u0010\u001dJ\u009e\u0001\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\b\b\u0002\u0010\u0017\u001a\u00020\b2\u000e\b\u0002\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00192\b\b\u0002\u0010\u001b\u001a\u00020\u001cJ\u0013\u0010\u001f\u001a\u00020\b2\b\u0010 \u001a\u0004\u0018\u00010!H\u0096\u0002J\b\u0010\"\u001a\u00020#H\u0016J\b\u0010$\u001a\u00020\u0002H\u0016J\b\u0010%\u001a\u00020&H\u0016R\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00198\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u00064"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;", "type", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;", "custom_text", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;", "required", "", "selection", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;", "signature", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;", "phone", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;", "email", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;", PrinterTextParser.ATTR_BARCODE_TEXT_POSITION, "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;", "numeric", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;", "address", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;", "skipped", "toggles", "", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;ZLcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;ZLjava/util/List;Lokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "", "Address", "Builder", "Choice", "Companion", "CustomText", "Email", "InputType", "Numeric", "Phone", "Selection", "Signature", "Text", "Toggle", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Input extends Message<Input, Builder> {
        public static final ProtoAdapter<Input> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.proto.api.armada.PostActionResultRequest$Input$Address#ADAPTER", oneofName = "type_specific_fields", schemaIndex = 9, tag = 10)
        public final Address address;

        @WireField(adapter = "com.stripe.proto.api.armada.PostActionResultRequest$Input$CustomText#ADAPTER", jsonName = "customText", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final CustomText custom_text;

        @WireField(adapter = "com.stripe.proto.api.armada.PostActionResultRequest$Input$Email#ADAPTER", oneofName = "type_specific_fields", schemaIndex = 6, tag = 7)
        public final Email email;

        @WireField(adapter = "com.stripe.proto.api.armada.PostActionResultRequest$Input$Numeric#ADAPTER", oneofName = "type_specific_fields", schemaIndex = 8, tag = 9)
        public final Numeric numeric;

        @WireField(adapter = "com.stripe.proto.api.armada.PostActionResultRequest$Input$Phone#ADAPTER", oneofName = "type_specific_fields", schemaIndex = 5, tag = 6)
        public final Phone phone;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
        public final boolean required;

        @WireField(adapter = "com.stripe.proto.api.armada.PostActionResultRequest$Input$Selection#ADAPTER", oneofName = "type_specific_fields", schemaIndex = 3, tag = 4)
        public final Selection selection;

        @WireField(adapter = "com.stripe.proto.api.armada.PostActionResultRequest$Input$Signature#ADAPTER", oneofName = "type_specific_fields", schemaIndex = 4, tag = 5)
        public final Signature signature;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 10, tag = 11)
        public final boolean skipped;

        @WireField(adapter = "com.stripe.proto.api.armada.PostActionResultRequest$Input$Text#ADAPTER", oneofName = "type_specific_fields", schemaIndex = 7, tag = 8)
        public final Text text;

        @WireField(adapter = "com.stripe.proto.api.armada.PostActionResultRequest$Input$Toggle#ADAPTER", label = WireField.Label.REPEATED, schemaIndex = 11, tag = 12)
        public final List<Toggle> toggles;

        @WireField(adapter = "com.stripe.proto.api.armada.PostActionResultRequest$Input$InputType#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final InputType type;

        public Input() {
            this(null, null, false, null, null, null, null, null, null, null, false, null, null, 8191, null);
        }

        public /* synthetic */ Input(InputType inputType, CustomText customText, boolean z, Selection selection, Signature signature, Phone phone, Email email, Text text, Numeric numeric, Address address, boolean z2, List list, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? InputType.INPUT_TYPE_INVALID : inputType, (i & 2) != 0 ? null : customText, (i & 4) != 0 ? false : z, (i & 8) != 0 ? null : selection, (i & 16) != 0 ? null : signature, (i & 32) != 0 ? null : phone, (i & 64) != 0 ? null : email, (i & 128) != 0 ? null : text, (i & 256) != 0 ? null : numeric, (i & 512) == 0 ? address : null, (i & 1024) == 0 ? z2 : false, (i & 2048) != 0 ? CollectionsKt.emptyList() : list, (i & 4096) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Input(InputType type, CustomText customText, boolean z, Selection selection, Signature signature, Phone phone, Email email, Text text, Numeric numeric, Address address, boolean z2, List<Toggle> toggles, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(toggles, "toggles");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.type = type;
            this.custom_text = customText;
            this.required = z;
            this.selection = selection;
            this.signature = signature;
            this.phone = phone;
            this.email = email;
            this.text = text;
            this.numeric = numeric;
            this.address = address;
            this.skipped = z2;
            this.toggles = Internal.immutableCopyOf("toggles", toggles);
            if (Internal.countNonNull(selection, signature, phone, email, text, numeric, address) > 1) {
                throw new IllegalArgumentException("At most one of selection, signature, phone, email, text, numeric, address may be non-null".toString());
            }
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.type = this.type;
            builder.custom_text = this.custom_text;
            builder.required = this.required;
            builder.selection = this.selection;
            builder.signature = this.signature;
            builder.phone = this.phone;
            builder.email = this.email;
            builder.text = this.text;
            builder.numeric = this.numeric;
            builder.address = this.address;
            builder.skipped = this.skipped;
            builder.toggles = this.toggles;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof Input)) {
                return false;
            }
            Input input = (Input) other;
            return Intrinsics.areEqual(unknownFields(), input.unknownFields()) && this.type == input.type && Intrinsics.areEqual(this.custom_text, input.custom_text) && this.required == input.required && Intrinsics.areEqual(this.selection, input.selection) && Intrinsics.areEqual(this.signature, input.signature) && Intrinsics.areEqual(this.phone, input.phone) && Intrinsics.areEqual(this.email, input.email) && Intrinsics.areEqual(this.text, input.text) && Intrinsics.areEqual(this.numeric, input.numeric) && Intrinsics.areEqual(this.address, input.address) && this.skipped == input.skipped && Intrinsics.areEqual(this.toggles, input.toggles);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = ((unknownFields().hashCode() * 37) + this.type.hashCode()) * 37;
            CustomText customText = this.custom_text;
            int iHashCode2 = (((iHashCode + (customText != null ? customText.hashCode() : 0)) * 37) + Boolean.hashCode(this.required)) * 37;
            Selection selection = this.selection;
            int iHashCode3 = (iHashCode2 + (selection != null ? selection.hashCode() : 0)) * 37;
            Signature signature = this.signature;
            int iHashCode4 = (iHashCode3 + (signature != null ? signature.hashCode() : 0)) * 37;
            Phone phone = this.phone;
            int iHashCode5 = (iHashCode4 + (phone != null ? phone.hashCode() : 0)) * 37;
            Email email = this.email;
            int iHashCode6 = (iHashCode5 + (email != null ? email.hashCode() : 0)) * 37;
            Text text = this.text;
            int iHashCode7 = (iHashCode6 + (text != null ? text.hashCode() : 0)) * 37;
            Numeric numeric = this.numeric;
            int iHashCode8 = (iHashCode7 + (numeric != null ? numeric.hashCode() : 0)) * 37;
            Address address = this.address;
            int iHashCode9 = ((((iHashCode8 + (address != null ? address.hashCode() : 0)) * 37) + Boolean.hashCode(this.skipped)) * 37) + this.toggles.hashCode();
            this.hashCode = iHashCode9;
            return iHashCode9;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("type=" + this.type);
            if (this.custom_text != null) {
                arrayList2.add("custom_text=" + this.custom_text);
            }
            arrayList2.add("required=" + this.required);
            if (this.selection != null) {
                arrayList2.add("selection=" + this.selection);
            }
            if (this.signature != null) {
                arrayList2.add("signature=" + this.signature);
            }
            if (this.phone != null) {
                arrayList2.add("phone=" + this.phone);
            }
            if (this.email != null) {
                arrayList2.add("email=" + this.email);
            }
            if (this.text != null) {
                arrayList2.add("text=" + this.text);
            }
            if (this.numeric != null) {
                arrayList2.add("numeric=" + this.numeric);
            }
            if (this.address != null) {
                arrayList2.add("address=" + this.address);
            }
            arrayList2.add("skipped=" + this.skipped);
            if (!this.toggles.isEmpty()) {
                arrayList2.add("toggles=" + this.toggles);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "Input{", "}", 0, null, null, 56, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Input copy$default(Input input, InputType inputType, CustomText customText, boolean z, Selection selection, Signature signature, Phone phone, Email email, Text text, Numeric numeric, Address address, boolean z2, List list, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                inputType = input.type;
            }
            return input.copy(inputType, (i & 2) != 0 ? input.custom_text : customText, (i & 4) != 0 ? input.required : z, (i & 8) != 0 ? input.selection : selection, (i & 16) != 0 ? input.signature : signature, (i & 32) != 0 ? input.phone : phone, (i & 64) != 0 ? input.email : email, (i & 128) != 0 ? input.text : text, (i & 256) != 0 ? input.numeric : numeric, (i & 512) != 0 ? input.address : address, (i & 1024) != 0 ? input.skipped : z2, (i & 2048) != 0 ? input.toggles : list, (i & 4096) != 0 ? input.unknownFields() : byteString);
        }

        public final Input copy(InputType type, CustomText custom_text, boolean required, Selection selection, Signature signature, Phone phone, Email email, Text text, Numeric numeric, Address address, boolean skipped, List<Toggle> toggles, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(toggles, "toggles");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new Input(type, custom_text, required, selection, signature, phone, email, text, numeric, address, skipped, toggles, unknownFields);
        }

        /* JADX INFO: compiled from: PostActionResultRequest.kt */
        @Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010\u001c\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\rJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0010\u0010\u0012\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u000fJ\u0010\u0010\u0015\u001a\u00020\u00002\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0014\u0010\u0017\u001a\u00020\u00002\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u001bR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00190\u00188\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001a\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;", "()V", "address", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;", "custom_text", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;", "email", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;", "numeric", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;", "phone", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;", "required", "", "selection", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;", "signature", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;", "skipped", PrinterTextParser.ATTR_BARCODE_TEXT_POSITION, "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;", "toggles", "", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;", "type", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<Input, Builder> {
            public Address address;
            public CustomText custom_text;
            public Email email;
            public Numeric numeric;
            public Phone phone;
            public boolean required;
            public Selection selection;
            public Signature signature;
            public boolean skipped;
            public Text text;
            public InputType type = InputType.INPUT_TYPE_INVALID;
            public List<Toggle> toggles = CollectionsKt.emptyList();

            public final Builder type(InputType type) {
                Intrinsics.checkNotNullParameter(type, "type");
                this.type = type;
                return this;
            }

            public final Builder custom_text(CustomText custom_text) {
                this.custom_text = custom_text;
                return this;
            }

            public final Builder required(boolean required) {
                this.required = required;
                return this;
            }

            public final Builder skipped(boolean skipped) {
                this.skipped = skipped;
                return this;
            }

            public final Builder toggles(List<Toggle> toggles) {
                Intrinsics.checkNotNullParameter(toggles, "toggles");
                Internal.checkElementsNotNull(toggles);
                this.toggles = toggles;
                return this;
            }

            public final Builder selection(Selection selection) {
                this.selection = selection;
                this.signature = null;
                this.phone = null;
                this.email = null;
                this.text = null;
                this.numeric = null;
                this.address = null;
                return this;
            }

            public final Builder signature(Signature signature) {
                this.signature = signature;
                this.selection = null;
                this.phone = null;
                this.email = null;
                this.text = null;
                this.numeric = null;
                this.address = null;
                return this;
            }

            public final Builder phone(Phone phone) {
                this.phone = phone;
                this.selection = null;
                this.signature = null;
                this.email = null;
                this.text = null;
                this.numeric = null;
                this.address = null;
                return this;
            }

            public final Builder email(Email email) {
                this.email = email;
                this.selection = null;
                this.signature = null;
                this.phone = null;
                this.text = null;
                this.numeric = null;
                this.address = null;
                return this;
            }

            public final Builder text(Text text) {
                this.text = text;
                this.selection = null;
                this.signature = null;
                this.phone = null;
                this.email = null;
                this.numeric = null;
                this.address = null;
                return this;
            }

            public final Builder numeric(Numeric numeric) {
                this.numeric = numeric;
                this.selection = null;
                this.signature = null;
                this.phone = null;
                this.email = null;
                this.text = null;
                this.address = null;
                return this;
            }

            public final Builder address(Address address) {
                this.address = address;
                this.selection = null;
                this.signature = null;
                this.phone = null;
                this.email = null;
                this.text = null;
                this.numeric = null;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public Input build() {
                return new Input(this.type, this.custom_text, this.required, this.selection, this.signature, this.phone, this.email, this.text, this.numeric, this.address, this.skipped, this.toggles, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: PostActionResultRequest.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Input build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Input.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<Input>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.armada.PostActionResultRequest$Input$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(PostActionResultRequest.Input value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.type != PostActionResultRequest.Input.InputType.INPUT_TYPE_INVALID) {
                        size += PostActionResultRequest.Input.InputType.ADAPTER.encodedSizeWithTag(1, value.type);
                    }
                    if (value.custom_text != null) {
                        size += PostActionResultRequest.Input.CustomText.ADAPTER.encodedSizeWithTag(2, value.custom_text);
                    }
                    if (value.required) {
                        size += ProtoAdapter.BOOL.encodedSizeWithTag(3, Boolean.valueOf(value.required));
                    }
                    int iEncodedSizeWithTag = size + PostActionResultRequest.Input.Selection.ADAPTER.encodedSizeWithTag(4, value.selection) + PostActionResultRequest.Input.Signature.ADAPTER.encodedSizeWithTag(5, value.signature) + PostActionResultRequest.Input.Phone.ADAPTER.encodedSizeWithTag(6, value.phone) + PostActionResultRequest.Input.Email.ADAPTER.encodedSizeWithTag(7, value.email) + PostActionResultRequest.Input.Text.ADAPTER.encodedSizeWithTag(8, value.text) + PostActionResultRequest.Input.Numeric.ADAPTER.encodedSizeWithTag(9, value.numeric) + PostActionResultRequest.Input.Address.ADAPTER.encodedSizeWithTag(10, value.address);
                    if (value.skipped) {
                        iEncodedSizeWithTag += ProtoAdapter.BOOL.encodedSizeWithTag(11, Boolean.valueOf(value.skipped));
                    }
                    return iEncodedSizeWithTag + PostActionResultRequest.Input.Toggle.ADAPTER.asRepeated().encodedSizeWithTag(12, value.toggles);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, PostActionResultRequest.Input value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.type != PostActionResultRequest.Input.InputType.INPUT_TYPE_INVALID) {
                        PostActionResultRequest.Input.InputType.ADAPTER.encodeWithTag(writer, 1, value.type);
                    }
                    if (value.custom_text != null) {
                        PostActionResultRequest.Input.CustomText.ADAPTER.encodeWithTag(writer, 2, value.custom_text);
                    }
                    if (value.required) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 3, Boolean.valueOf(value.required));
                    }
                    if (value.skipped) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 11, Boolean.valueOf(value.skipped));
                    }
                    PostActionResultRequest.Input.Toggle.ADAPTER.asRepeated().encodeWithTag(writer, 12, value.toggles);
                    PostActionResultRequest.Input.Selection.ADAPTER.encodeWithTag(writer, 4, value.selection);
                    PostActionResultRequest.Input.Signature.ADAPTER.encodeWithTag(writer, 5, value.signature);
                    PostActionResultRequest.Input.Phone.ADAPTER.encodeWithTag(writer, 6, value.phone);
                    PostActionResultRequest.Input.Email.ADAPTER.encodeWithTag(writer, 7, value.email);
                    PostActionResultRequest.Input.Text.ADAPTER.encodeWithTag(writer, 8, value.text);
                    PostActionResultRequest.Input.Numeric.ADAPTER.encodeWithTag(writer, 9, value.numeric);
                    PostActionResultRequest.Input.Address.ADAPTER.encodeWithTag(writer, 10, value.address);
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, PostActionResultRequest.Input value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    PostActionResultRequest.Input.Address.ADAPTER.encodeWithTag(writer, 10, value.address);
                    PostActionResultRequest.Input.Numeric.ADAPTER.encodeWithTag(writer, 9, value.numeric);
                    PostActionResultRequest.Input.Text.ADAPTER.encodeWithTag(writer, 8, value.text);
                    PostActionResultRequest.Input.Email.ADAPTER.encodeWithTag(writer, 7, value.email);
                    PostActionResultRequest.Input.Phone.ADAPTER.encodeWithTag(writer, 6, value.phone);
                    PostActionResultRequest.Input.Signature.ADAPTER.encodeWithTag(writer, 5, value.signature);
                    PostActionResultRequest.Input.Selection.ADAPTER.encodeWithTag(writer, 4, value.selection);
                    PostActionResultRequest.Input.Toggle.ADAPTER.asRepeated().encodeWithTag(writer, 12, value.toggles);
                    if (value.skipped) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 11, Boolean.valueOf(value.skipped));
                    }
                    if (value.required) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 3, Boolean.valueOf(value.required));
                    }
                    if (value.custom_text != null) {
                        PostActionResultRequest.Input.CustomText.ADAPTER.encodeWithTag(writer, 2, value.custom_text);
                    }
                    if (value.type != PostActionResultRequest.Input.InputType.INPUT_TYPE_INVALID) {
                        PostActionResultRequest.Input.InputType.ADAPTER.encodeWithTag(writer, 1, value.type);
                    }
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public PostActionResultRequest.Input decode(ProtoReader reader) throws IOException {
                    PostActionResultRequest.Input.CustomText customText;
                    PostActionResultRequest.Input.Selection selection;
                    PostActionResultRequest.Input.Signature signature;
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    PostActionResultRequest.Input.InputType inputType = PostActionResultRequest.Input.InputType.INPUT_TYPE_INVALID;
                    ArrayList arrayList = new ArrayList();
                    long jBeginMessage = reader.beginMessage();
                    PostActionResultRequest.Input.InputType inputTypeDecode = inputType;
                    PostActionResultRequest.Input.Selection selectionDecode = null;
                    PostActionResultRequest.Input.Signature signatureDecode = null;
                    PostActionResultRequest.Input.Phone phoneDecode = null;
                    PostActionResultRequest.Input.Email emailDecode = null;
                    PostActionResultRequest.Input.Text textDecode = null;
                    PostActionResultRequest.Input.Numeric numericDecode = null;
                    PostActionResultRequest.Input.Address addressDecode = null;
                    boolean zBooleanValue = false;
                    boolean zBooleanValue2 = false;
                    PostActionResultRequest.Input.CustomText customTextDecode = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag != -1) {
                            switch (iNextTag) {
                                case 1:
                                    try {
                                        inputTypeDecode = PostActionResultRequest.Input.InputType.ADAPTER.decode(reader);
                                        continue;
                                    } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                        customText = customTextDecode;
                                        selection = selectionDecode;
                                        signature = signatureDecode;
                                        reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                        customTextDecode = customText;
                                        signatureDecode = signature;
                                        selectionDecode = selection;
                                    }
                                    break;
                                case 2:
                                    customTextDecode = PostActionResultRequest.Input.CustomText.ADAPTER.decode(reader);
                                    continue;
                                case 3:
                                    zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                    continue;
                                case 4:
                                    selectionDecode = PostActionResultRequest.Input.Selection.ADAPTER.decode(reader);
                                    continue;
                                case 5:
                                    signatureDecode = PostActionResultRequest.Input.Signature.ADAPTER.decode(reader);
                                    continue;
                                case 6:
                                    phoneDecode = PostActionResultRequest.Input.Phone.ADAPTER.decode(reader);
                                    continue;
                                case 7:
                                    emailDecode = PostActionResultRequest.Input.Email.ADAPTER.decode(reader);
                                    continue;
                                case 8:
                                    textDecode = PostActionResultRequest.Input.Text.ADAPTER.decode(reader);
                                    continue;
                                case 9:
                                    numericDecode = PostActionResultRequest.Input.Numeric.ADAPTER.decode(reader);
                                    continue;
                                case 10:
                                    addressDecode = PostActionResultRequest.Input.Address.ADAPTER.decode(reader);
                                    continue;
                                case 11:
                                    zBooleanValue2 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                    continue;
                                case 12:
                                    arrayList.add(PostActionResultRequest.Input.Toggle.ADAPTER.decode(reader));
                                    customText = customTextDecode;
                                    selection = selectionDecode;
                                    signature = signatureDecode;
                                    break;
                                default:
                                    customText = customTextDecode;
                                    selection = selectionDecode;
                                    signature = signatureDecode;
                                    reader.readUnknownField(iNextTag);
                                    break;
                            }
                            customTextDecode = customText;
                            signatureDecode = signature;
                            selectionDecode = selection;
                        } else {
                            PostActionResultRequest.Input.Signature signature2 = signatureDecode;
                            return new PostActionResultRequest.Input(inputTypeDecode, customTextDecode, zBooleanValue, selectionDecode, signature2, phoneDecode, emailDecode, textDecode, numericDecode, addressDecode, zBooleanValue2, arrayList, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public PostActionResultRequest.Input redact(PostActionResultRequest.Input value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    PostActionResultRequest.Input.CustomText customText = value.custom_text;
                    PostActionResultRequest.Input.CustomText customTextRedact = customText != null ? PostActionResultRequest.Input.CustomText.ADAPTER.redact(customText) : null;
                    PostActionResultRequest.Input.Selection selection = value.selection;
                    PostActionResultRequest.Input.Selection selectionRedact = selection != null ? PostActionResultRequest.Input.Selection.ADAPTER.redact(selection) : null;
                    PostActionResultRequest.Input.Signature signature = value.signature;
                    PostActionResultRequest.Input.Signature signatureRedact = signature != null ? PostActionResultRequest.Input.Signature.ADAPTER.redact(signature) : null;
                    PostActionResultRequest.Input.Phone phone = value.phone;
                    PostActionResultRequest.Input.Phone phoneRedact = phone != null ? PostActionResultRequest.Input.Phone.ADAPTER.redact(phone) : null;
                    PostActionResultRequest.Input.Email email = value.email;
                    PostActionResultRequest.Input.Email emailRedact = email != null ? PostActionResultRequest.Input.Email.ADAPTER.redact(email) : null;
                    PostActionResultRequest.Input.Text text = value.text;
                    PostActionResultRequest.Input.Text textRedact = text != null ? PostActionResultRequest.Input.Text.ADAPTER.redact(text) : null;
                    PostActionResultRequest.Input.Numeric numeric = value.numeric;
                    PostActionResultRequest.Input.Numeric numericRedact = numeric != null ? PostActionResultRequest.Input.Numeric.ADAPTER.redact(numeric) : null;
                    PostActionResultRequest.Input.Address address = value.address;
                    return PostActionResultRequest.Input.copy$default(value, null, customTextRedact, false, selectionRedact, signatureRedact, phoneRedact, emailRedact, textRedact, numericRedact, address != null ? PostActionResultRequest.Input.Address.ADAPTER.redact(address) : null, false, Internal.m361redactElements(value.toggles, PostActionResultRequest.Input.Toggle.ADAPTER), ByteString.EMPTY, 1029, null);
                }
            };
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* JADX INFO: compiled from: PostActionResultRequest.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\r\b\u0086\u0081\u0002\u0018\u0000 \u00102\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0010B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0011"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "INPUT_TYPE_INVALID", "SIGNATURE", "SELECTION", "PHONE", "EMAIL", "TEXT", "NUMERIC", "ADDRESS", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class InputType implements WireEnum {
            private static final /* synthetic */ EnumEntries $ENTRIES;
            private static final /* synthetic */ InputType[] $VALUES;
            public static final ProtoAdapter<InputType> ADAPTER;
            public static final InputType ADDRESS;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE;
            public static final InputType EMAIL;
            public static final InputType INPUT_TYPE_INVALID;
            public static final InputType NUMERIC;
            public static final InputType PHONE;
            public static final InputType SELECTION;
            public static final InputType SIGNATURE;
            public static final InputType TEXT;
            private final int value;

            private static final /* synthetic */ InputType[] $values() {
                return new InputType[]{INPUT_TYPE_INVALID, SIGNATURE, SELECTION, PHONE, EMAIL, TEXT, NUMERIC, ADDRESS};
            }

            @JvmStatic
            public static final InputType fromValue(int i) {
                return INSTANCE.fromValue(i);
            }

            public static EnumEntries<InputType> getEntries() {
                return $ENTRIES;
            }

            public static InputType valueOf(String str) {
                return (InputType) Enum.valueOf(InputType.class, str);
            }

            public static InputType[] values() {
                return (InputType[]) $VALUES.clone();
            }

            private InputType(String str, int i, int i2) {
                this.value = i2;
            }

            @Override // com.squareup.wire.WireEnum
            public int getValue() {
                return this.value;
            }

            static {
                final InputType inputType = new InputType("INPUT_TYPE_INVALID", 0, 0);
                INPUT_TYPE_INVALID = inputType;
                SIGNATURE = new InputType("SIGNATURE", 1, 1);
                SELECTION = new InputType("SELECTION", 2, 2);
                PHONE = new InputType("PHONE", 3, 3);
                EMAIL = new InputType("EMAIL", 4, 4);
                TEXT = new InputType("TEXT", 5, 5);
                NUMERIC = new InputType("NUMERIC", 6, 6);
                ADDRESS = new InputType("ADDRESS", 7, 7);
                InputType[] inputTypeArr$values = $values();
                $VALUES = inputTypeArr$values;
                $ENTRIES = EnumEntriesKt.enumEntries(inputTypeArr$values);
                INSTANCE = new Companion(null);
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(InputType.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new EnumAdapter<InputType>(orCreateKotlinClass, syntax, inputType) { // from class: com.stripe.proto.api.armada.PostActionResultRequest$Input$InputType$Companion$ADAPTER$1
                    {
                        PostActionResultRequest.Input.InputType inputType2 = inputType;
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // com.squareup.wire.EnumAdapter
                    public PostActionResultRequest.Input.InputType fromValue(int value) {
                        return PostActionResultRequest.Input.InputType.INSTANCE.fromValue(value);
                    }
                };
            }

            /* JADX INFO: compiled from: PostActionResultRequest.kt */
            @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$InputType;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                @JvmStatic
                public final InputType fromValue(int value) {
                    switch (value) {
                        case 0:
                            return InputType.INPUT_TYPE_INVALID;
                        case 1:
                            return InputType.SIGNATURE;
                        case 2:
                            return InputType.SELECTION;
                        case 3:
                            return InputType.PHONE;
                        case 4:
                            return InputType.EMAIL;
                        case 5:
                            return InputType.TEXT;
                        case 6:
                            return InputType.NUMERIC;
                        case 7:
                            return InputType.ADDRESS;
                        default:
                            return null;
                    }
                }
            }
        }

        /* JADX INFO: compiled from: PostActionResultRequest.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature$Builder;", "value_", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Signature extends Message<Signature, Builder> {
            public static final ProtoAdapter<Signature> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", declaredName = "value", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
            public final String value_;

            /* JADX WARN: Multi-variable type inference failed */
            public Signature() {
                this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
            }

            public /* synthetic */ Signature(String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Signature(String value_, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(value_, "value_");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.value_ = value_;
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.value_ = this.value_;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof Signature)) {
                    return false;
                }
                Signature signature = (Signature) other;
                return Intrinsics.areEqual(unknownFields(), signature.unknownFields()) && Intrinsics.areEqual(this.value_, signature.value_);
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = (unknownFields().hashCode() * 37) + this.value_.hashCode();
                this.hashCode = iHashCode;
                return iHashCode;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                arrayList.add("value_=" + Internal.sanitize(this.value_));
                return CollectionsKt.joinToString$default(arrayList, ", ", "Signature{", "}", 0, null, null, 56, null);
            }

            public static /* synthetic */ Signature copy$default(Signature signature, String str, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = signature.value_;
                }
                if ((i & 2) != 0) {
                    byteString = signature.unknownFields();
                }
                return signature.copy(str, byteString);
            }

            public final Signature copy(String value_, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(value_, "value_");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new Signature(value_, unknownFields);
            }

            /* JADX INFO: compiled from: PostActionResultRequest.kt */
            @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;", "()V", "value_", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<Signature, Builder> {
                public String value_ = "";

                public final Builder value_(String value_) {
                    Intrinsics.checkNotNullParameter(value_, "value_");
                    this.value_ = value_;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public Signature build() {
                    return new Signature(this.value_, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: PostActionResultRequest.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Signature$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ Signature build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Signature.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<Signature>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.armada.PostActionResultRequest$Input$Signature$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(PostActionResultRequest.Input.Signature value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        return !Intrinsics.areEqual(value.value_, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(1, value.value_) : size;
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, PostActionResultRequest.Input.Signature value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (!Intrinsics.areEqual(value.value_, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 1, value.value_);
                        }
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, PostActionResultRequest.Input.Signature value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        if (Intrinsics.areEqual(value.value_, "")) {
                            return;
                        }
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.value_);
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public PostActionResultRequest.Input.Signature redact(PostActionResultRequest.Input.Signature value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return PostActionResultRequest.Input.Signature.copy$default(value, null, ByteString.EMPTY, 1, null);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public PostActionResultRequest.Input.Signature decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        long jBeginMessage = reader.beginMessage();
                        String strDecode = "";
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new PostActionResultRequest.Input.Signature(strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                            if (iNextTag == 1) {
                                strDecode = ProtoAdapter.STRING.decode(reader);
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }
                };
            }
        }

        /* JADX INFO: compiled from: PostActionResultRequest.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone$Builder;", "value_", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Phone extends Message<Phone, Builder> {
            public static final ProtoAdapter<Phone> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", declaredName = "value", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
            public final String value_;

            /* JADX WARN: Multi-variable type inference failed */
            public Phone() {
                this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
            }

            public /* synthetic */ Phone(String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Phone(String value_, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(value_, "value_");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.value_ = value_;
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.value_ = this.value_;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof Phone)) {
                    return false;
                }
                Phone phone = (Phone) other;
                return Intrinsics.areEqual(unknownFields(), phone.unknownFields()) && Intrinsics.areEqual(this.value_, phone.value_);
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = (unknownFields().hashCode() * 37) + this.value_.hashCode();
                this.hashCode = iHashCode;
                return iHashCode;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                arrayList.add("value_=" + Internal.sanitize(this.value_));
                return CollectionsKt.joinToString$default(arrayList, ", ", "Phone{", "}", 0, null, null, 56, null);
            }

            public static /* synthetic */ Phone copy$default(Phone phone, String str, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = phone.value_;
                }
                if ((i & 2) != 0) {
                    byteString = phone.unknownFields();
                }
                return phone.copy(str, byteString);
            }

            public final Phone copy(String value_, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(value_, "value_");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new Phone(value_, unknownFields);
            }

            /* JADX INFO: compiled from: PostActionResultRequest.kt */
            @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;", "()V", "value_", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<Phone, Builder> {
                public String value_ = "";

                public final Builder value_(String value_) {
                    Intrinsics.checkNotNullParameter(value_, "value_");
                    this.value_ = value_;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public Phone build() {
                    return new Phone(this.value_, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: PostActionResultRequest.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Phone$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ Phone build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Phone.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<Phone>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.armada.PostActionResultRequest$Input$Phone$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(PostActionResultRequest.Input.Phone value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        return !Intrinsics.areEqual(value.value_, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(1, value.value_) : size;
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, PostActionResultRequest.Input.Phone value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (!Intrinsics.areEqual(value.value_, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 1, value.value_);
                        }
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, PostActionResultRequest.Input.Phone value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        if (Intrinsics.areEqual(value.value_, "")) {
                            return;
                        }
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.value_);
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public PostActionResultRequest.Input.Phone redact(PostActionResultRequest.Input.Phone value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return PostActionResultRequest.Input.Phone.copy$default(value, null, ByteString.EMPTY, 1, null);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public PostActionResultRequest.Input.Phone decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        long jBeginMessage = reader.beginMessage();
                        String strDecode = "";
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new PostActionResultRequest.Input.Phone(strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                            if (iNextTag == 1) {
                                strDecode = ProtoAdapter.STRING.decode(reader);
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }
                };
            }
        }

        /* JADX INFO: compiled from: PostActionResultRequest.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email$Builder;", "value_", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Email extends Message<Email, Builder> {
            public static final ProtoAdapter<Email> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", declaredName = "value", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
            public final String value_;

            /* JADX WARN: Multi-variable type inference failed */
            public Email() {
                this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
            }

            public /* synthetic */ Email(String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Email(String value_, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(value_, "value_");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.value_ = value_;
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.value_ = this.value_;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof Email)) {
                    return false;
                }
                Email email = (Email) other;
                return Intrinsics.areEqual(unknownFields(), email.unknownFields()) && Intrinsics.areEqual(this.value_, email.value_);
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = (unknownFields().hashCode() * 37) + this.value_.hashCode();
                this.hashCode = iHashCode;
                return iHashCode;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                arrayList.add("value_=" + Internal.sanitize(this.value_));
                return CollectionsKt.joinToString$default(arrayList, ", ", "Email{", "}", 0, null, null, 56, null);
            }

            public static /* synthetic */ Email copy$default(Email email, String str, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = email.value_;
                }
                if ((i & 2) != 0) {
                    byteString = email.unknownFields();
                }
                return email.copy(str, byteString);
            }

            public final Email copy(String value_, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(value_, "value_");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new Email(value_, unknownFields);
            }

            /* JADX INFO: compiled from: PostActionResultRequest.kt */
            @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;", "()V", "value_", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<Email, Builder> {
                public String value_ = "";

                public final Builder value_(String value_) {
                    Intrinsics.checkNotNullParameter(value_, "value_");
                    this.value_ = value_;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public Email build() {
                    return new Email(this.value_, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: PostActionResultRequest.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Email$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ Email build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Email.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<Email>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.armada.PostActionResultRequest$Input$Email$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(PostActionResultRequest.Input.Email value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        return !Intrinsics.areEqual(value.value_, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(1, value.value_) : size;
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, PostActionResultRequest.Input.Email value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (!Intrinsics.areEqual(value.value_, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 1, value.value_);
                        }
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, PostActionResultRequest.Input.Email value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        if (Intrinsics.areEqual(value.value_, "")) {
                            return;
                        }
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.value_);
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public PostActionResultRequest.Input.Email redact(PostActionResultRequest.Input.Email value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return PostActionResultRequest.Input.Email.copy$default(value, null, ByteString.EMPTY, 1, null);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public PostActionResultRequest.Input.Email decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        long jBeginMessage = reader.beginMessage();
                        String strDecode = "";
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new PostActionResultRequest.Input.Email(strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                            if (iNextTag == 1) {
                                strDecode = ProtoAdapter.STRING.decode(reader);
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }
                };
            }
        }

        /* JADX INFO: compiled from: PostActionResultRequest.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text$Builder;", "value_", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Text extends Message<Text, Builder> {
            public static final ProtoAdapter<Text> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", declaredName = "value", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
            public final String value_;

            /* JADX WARN: Multi-variable type inference failed */
            public Text() {
                this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
            }

            public /* synthetic */ Text(String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Text(String value_, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(value_, "value_");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.value_ = value_;
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.value_ = this.value_;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof Text)) {
                    return false;
                }
                Text text = (Text) other;
                return Intrinsics.areEqual(unknownFields(), text.unknownFields()) && Intrinsics.areEqual(this.value_, text.value_);
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = (unknownFields().hashCode() * 37) + this.value_.hashCode();
                this.hashCode = iHashCode;
                return iHashCode;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                arrayList.add("value_=" + Internal.sanitize(this.value_));
                return CollectionsKt.joinToString$default(arrayList, ", ", "Text{", "}", 0, null, null, 56, null);
            }

            public static /* synthetic */ Text copy$default(Text text, String str, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = text.value_;
                }
                if ((i & 2) != 0) {
                    byteString = text.unknownFields();
                }
                return text.copy(str, byteString);
            }

            public final Text copy(String value_, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(value_, "value_");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new Text(value_, unknownFields);
            }

            /* JADX INFO: compiled from: PostActionResultRequest.kt */
            @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;", "()V", "value_", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<Text, Builder> {
                public String value_ = "";

                public final Builder value_(String value_) {
                    Intrinsics.checkNotNullParameter(value_, "value_");
                    this.value_ = value_;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public Text build() {
                    return new Text(this.value_, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: PostActionResultRequest.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Text$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ Text build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Text.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<Text>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.armada.PostActionResultRequest$Input$Text$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(PostActionResultRequest.Input.Text value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        return !Intrinsics.areEqual(value.value_, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(1, value.value_) : size;
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, PostActionResultRequest.Input.Text value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (!Intrinsics.areEqual(value.value_, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 1, value.value_);
                        }
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, PostActionResultRequest.Input.Text value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        if (Intrinsics.areEqual(value.value_, "")) {
                            return;
                        }
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.value_);
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public PostActionResultRequest.Input.Text redact(PostActionResultRequest.Input.Text value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return PostActionResultRequest.Input.Text.copy$default(value, null, ByteString.EMPTY, 1, null);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public PostActionResultRequest.Input.Text decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        long jBeginMessage = reader.beginMessage();
                        String strDecode = "";
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new PostActionResultRequest.Input.Text(strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                            if (iNextTag == 1) {
                                strDecode = ProtoAdapter.STRING.decode(reader);
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }
                };
            }
        }

        /* JADX INFO: compiled from: PostActionResultRequest.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric$Builder;", "value_", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Numeric extends Message<Numeric, Builder> {
            public static final ProtoAdapter<Numeric> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", declaredName = "value", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
            public final String value_;

            /* JADX WARN: Multi-variable type inference failed */
            public Numeric() {
                this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
            }

            public /* synthetic */ Numeric(String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Numeric(String value_, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(value_, "value_");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.value_ = value_;
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.value_ = this.value_;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof Numeric)) {
                    return false;
                }
                Numeric numeric = (Numeric) other;
                return Intrinsics.areEqual(unknownFields(), numeric.unknownFields()) && Intrinsics.areEqual(this.value_, numeric.value_);
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = (unknownFields().hashCode() * 37) + this.value_.hashCode();
                this.hashCode = iHashCode;
                return iHashCode;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                arrayList.add("value_=" + Internal.sanitize(this.value_));
                return CollectionsKt.joinToString$default(arrayList, ", ", "Numeric{", "}", 0, null, null, 56, null);
            }

            public static /* synthetic */ Numeric copy$default(Numeric numeric, String str, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = numeric.value_;
                }
                if ((i & 2) != 0) {
                    byteString = numeric.unknownFields();
                }
                return numeric.copy(str, byteString);
            }

            public final Numeric copy(String value_, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(value_, "value_");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new Numeric(value_, unknownFields);
            }

            /* JADX INFO: compiled from: PostActionResultRequest.kt */
            @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;", "()V", "value_", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<Numeric, Builder> {
                public String value_ = "";

                public final Builder value_(String value_) {
                    Intrinsics.checkNotNullParameter(value_, "value_");
                    this.value_ = value_;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public Numeric build() {
                    return new Numeric(this.value_, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: PostActionResultRequest.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Numeric$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ Numeric build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Numeric.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<Numeric>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.armada.PostActionResultRequest$Input$Numeric$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(PostActionResultRequest.Input.Numeric value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        return !Intrinsics.areEqual(value.value_, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(1, value.value_) : size;
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, PostActionResultRequest.Input.Numeric value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (!Intrinsics.areEqual(value.value_, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 1, value.value_);
                        }
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, PostActionResultRequest.Input.Numeric value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        if (Intrinsics.areEqual(value.value_, "")) {
                            return;
                        }
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.value_);
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public PostActionResultRequest.Input.Numeric redact(PostActionResultRequest.Input.Numeric value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return PostActionResultRequest.Input.Numeric.copy$default(value, null, ByteString.EMPTY, 1, null);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public PostActionResultRequest.Input.Numeric decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        long jBeginMessage = reader.beginMessage();
                        String strDecode = "";
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new PostActionResultRequest.Input.Numeric(strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                            if (iNextTag == 1) {
                                strDecode = ProtoAdapter.STRING.decode(reader);
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }
                };
            }
        }

        /* JADX INFO: compiled from: PostActionResultRequest.kt */
        @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0012\u0013\u0014B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001c\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$Builder;", "value_", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "AddressValue", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Address extends Message<Address, Builder> {
            public static final ProtoAdapter<Address> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.stripe.proto.api.armada.PostActionResultRequest$Input$Address$AddressValue#ADAPTER", declaredName = "value", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
            public final AddressValue value_;

            /* JADX WARN: Multi-variable type inference failed */
            public Address() {
                this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
            }

            public /* synthetic */ Address(AddressValue addressValue, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? null : addressValue, (i & 2) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Address(AddressValue addressValue, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.value_ = addressValue;
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.value_ = this.value_;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof Address)) {
                    return false;
                }
                Address address = (Address) other;
                return Intrinsics.areEqual(unknownFields(), address.unknownFields()) && Intrinsics.areEqual(this.value_, address.value_);
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = unknownFields().hashCode() * 37;
                AddressValue addressValue = this.value_;
                int iHashCode2 = iHashCode + (addressValue != null ? addressValue.hashCode() : 0);
                this.hashCode = iHashCode2;
                return iHashCode2;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                if (this.value_ != null) {
                    arrayList.add("value_=" + this.value_);
                }
                return CollectionsKt.joinToString$default(arrayList, ", ", "Address{", "}", 0, null, null, 56, null);
            }

            public static /* synthetic */ Address copy$default(Address address, AddressValue addressValue, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    addressValue = address.value_;
                }
                if ((i & 2) != 0) {
                    byteString = address.unknownFields();
                }
                return address.copy(addressValue, byteString);
            }

            public final Address copy(AddressValue value_, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new Address(value_, unknownFields);
            }

            /* JADX INFO: compiled from: PostActionResultRequest.kt */
            @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;", "()V", "value_", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<Address, Builder> {
                public AddressValue value_;

                public final Builder value_(AddressValue value_) {
                    this.value_ = value_;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public Address build() {
                    return new Address(this.value_, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: PostActionResultRequest.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ Address build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Address.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<Address>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.armada.PostActionResultRequest$Input$Address$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(PostActionResultRequest.Input.Address value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        return value.value_ != null ? size + PostActionResultRequest.Input.Address.AddressValue.ADAPTER.encodedSizeWithTag(1, value.value_) : size;
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, PostActionResultRequest.Input.Address value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (value.value_ != null) {
                            PostActionResultRequest.Input.Address.AddressValue.ADAPTER.encodeWithTag(writer, 1, value.value_);
                        }
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, PostActionResultRequest.Input.Address value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        if (value.value_ != null) {
                            PostActionResultRequest.Input.Address.AddressValue.ADAPTER.encodeWithTag(writer, 1, value.value_);
                        }
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public PostActionResultRequest.Input.Address redact(PostActionResultRequest.Input.Address value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        PostActionResultRequest.Input.Address.AddressValue addressValue = value.value_;
                        return value.copy(addressValue != null ? PostActionResultRequest.Input.Address.AddressValue.ADAPTER.redact(addressValue) : null, ByteString.EMPTY);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public PostActionResultRequest.Input.Address decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        long jBeginMessage = reader.beginMessage();
                        PostActionResultRequest.Input.Address.AddressValue addressValueDecode = null;
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new PostActionResultRequest.Input.Address(addressValueDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                            if (iNextTag == 1) {
                                addressValueDecode = PostActionResultRequest.Input.Address.AddressValue.ADAPTER.decode(reader);
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }
                };
            }

            /* JADX INFO: compiled from: PostActionResultRequest.kt */
            @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017BK\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJL\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u000bJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\b\u0010\u0015\u001a\u00020\u0004H\u0016R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue$Builder;", "line1", "", "line2", "city", RemoteConfigConstants.ResponseFieldKey.STATE, "postal_code", "country", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class AddressValue extends Message<AddressValue, Builder> {
                public static final ProtoAdapter<AddressValue> ADAPTER;

                /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
                public static final Companion INSTANCE = new Companion(null);
                private static final long serialVersionUID = 0;

                @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
                public final String city;

                @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
                public final String country;

                @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
                public final String line1;

                @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
                public final String line2;

                @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "postalCode", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
                public final String postal_code;

                @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
                public final String state;

                public AddressValue() {
                    this(null, null, null, null, null, null, null, 127, null);
                }

                public /* synthetic */ AddressValue(String str, String str2, String str3, String str4, String str5, String str6, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                    this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? "" : str4, (i & 16) != 0 ? "" : str5, (i & 32) != 0 ? "" : str6, (i & 64) != 0 ? ByteString.EMPTY : byteString);
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AddressValue(String line1, String line2, String city, String state, String postal_code, String country, ByteString unknownFields) {
                    super(ADAPTER, unknownFields);
                    Intrinsics.checkNotNullParameter(line1, "line1");
                    Intrinsics.checkNotNullParameter(line2, "line2");
                    Intrinsics.checkNotNullParameter(city, "city");
                    Intrinsics.checkNotNullParameter(state, "state");
                    Intrinsics.checkNotNullParameter(postal_code, "postal_code");
                    Intrinsics.checkNotNullParameter(country, "country");
                    Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                    this.line1 = line1;
                    this.line2 = line2;
                    this.city = city;
                    this.state = state;
                    this.postal_code = postal_code;
                    this.country = country;
                }

                @Override // com.squareup.wire.Message
                public Builder newBuilder() {
                    Builder builder = new Builder();
                    builder.line1 = this.line1;
                    builder.line2 = this.line2;
                    builder.city = this.city;
                    builder.state = this.state;
                    builder.postal_code = this.postal_code;
                    builder.country = this.country;
                    builder.addUnknownFields(unknownFields());
                    return builder;
                }

                public boolean equals(Object other) {
                    if (other == this) {
                        return true;
                    }
                    if (!(other instanceof AddressValue)) {
                        return false;
                    }
                    AddressValue addressValue = (AddressValue) other;
                    return Intrinsics.areEqual(unknownFields(), addressValue.unknownFields()) && Intrinsics.areEqual(this.line1, addressValue.line1) && Intrinsics.areEqual(this.line2, addressValue.line2) && Intrinsics.areEqual(this.city, addressValue.city) && Intrinsics.areEqual(this.state, addressValue.state) && Intrinsics.areEqual(this.postal_code, addressValue.postal_code) && Intrinsics.areEqual(this.country, addressValue.country);
                }

                public int hashCode() {
                    int i = this.hashCode;
                    if (i != 0) {
                        return i;
                    }
                    int iHashCode = (((((((((((unknownFields().hashCode() * 37) + this.line1.hashCode()) * 37) + this.line2.hashCode()) * 37) + this.city.hashCode()) * 37) + this.state.hashCode()) * 37) + this.postal_code.hashCode()) * 37) + this.country.hashCode();
                    this.hashCode = iHashCode;
                    return iHashCode;
                }

                @Override // com.squareup.wire.Message
                public String toString() {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = arrayList;
                    arrayList2.add("line1=" + Internal.sanitize(this.line1));
                    arrayList2.add("line2=" + Internal.sanitize(this.line2));
                    arrayList2.add("city=" + Internal.sanitize(this.city));
                    arrayList2.add("state=" + Internal.sanitize(this.state));
                    arrayList2.add("postal_code=" + Internal.sanitize(this.postal_code));
                    arrayList2.add("country=" + Internal.sanitize(this.country));
                    return CollectionsKt.joinToString$default(arrayList, ", ", "AddressValue{", "}", 0, null, null, 56, null);
                }

                public static /* synthetic */ AddressValue copy$default(AddressValue addressValue, String str, String str2, String str3, String str4, String str5, String str6, ByteString byteString, int i, Object obj) {
                    if ((i & 1) != 0) {
                        str = addressValue.line1;
                    }
                    if ((i & 2) != 0) {
                        str2 = addressValue.line2;
                    }
                    if ((i & 4) != 0) {
                        str3 = addressValue.city;
                    }
                    if ((i & 8) != 0) {
                        str4 = addressValue.state;
                    }
                    if ((i & 16) != 0) {
                        str5 = addressValue.postal_code;
                    }
                    if ((i & 32) != 0) {
                        str6 = addressValue.country;
                    }
                    if ((i & 64) != 0) {
                        byteString = addressValue.unknownFields();
                    }
                    String str7 = str6;
                    ByteString byteString2 = byteString;
                    String str8 = str5;
                    String str9 = str3;
                    return addressValue.copy(str, str2, str9, str4, str8, str7, byteString2);
                }

                public final AddressValue copy(String line1, String line2, String city, String state, String postal_code, String country, ByteString unknownFields) {
                    Intrinsics.checkNotNullParameter(line1, "line1");
                    Intrinsics.checkNotNullParameter(line2, "line2");
                    Intrinsics.checkNotNullParameter(city, "city");
                    Intrinsics.checkNotNullParameter(state, "state");
                    Intrinsics.checkNotNullParameter(postal_code, "postal_code");
                    Intrinsics.checkNotNullParameter(country, "country");
                    Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                    return new AddressValue(line1, line2, city, state, postal_code, country, unknownFields);
                }

                /* JADX INFO: compiled from: PostActionResultRequest.kt */
                @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue;", "()V", "city", "", "country", "line1", "line2", "postal_code", RemoteConfigConstants.ResponseFieldKey.STATE, "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
                public static final class Builder extends Message.Builder<AddressValue, Builder> {
                    public String line1 = "";
                    public String line2 = "";
                    public String city = "";
                    public String state = "";
                    public String postal_code = "";
                    public String country = "";

                    public final Builder line1(String line1) {
                        Intrinsics.checkNotNullParameter(line1, "line1");
                        this.line1 = line1;
                        return this;
                    }

                    public final Builder line2(String line2) {
                        Intrinsics.checkNotNullParameter(line2, "line2");
                        this.line2 = line2;
                        return this;
                    }

                    public final Builder city(String city) {
                        Intrinsics.checkNotNullParameter(city, "city");
                        this.city = city;
                        return this;
                    }

                    public final Builder state(String state) {
                        Intrinsics.checkNotNullParameter(state, "state");
                        this.state = state;
                        return this;
                    }

                    public final Builder postal_code(String postal_code) {
                        Intrinsics.checkNotNullParameter(postal_code, "postal_code");
                        this.postal_code = postal_code;
                        return this;
                    }

                    public final Builder country(String country) {
                        Intrinsics.checkNotNullParameter(country, "country");
                        this.country = country;
                        return this;
                    }

                    @Override // com.squareup.wire.Message.Builder
                    public AddressValue build() {
                        return new AddressValue(this.line1, this.line2, this.city, this.state, this.postal_code, this.country, buildUnknownFields());
                    }
                }

                /* JADX INFO: compiled from: PostActionResultRequest.kt */
                @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Address$AddressValue$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
                public static final class Companion {
                    public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                        this();
                    }

                    private Companion() {
                    }

                    public final /* synthetic */ AddressValue build(Function1<? super Builder, Unit> body) {
                        Intrinsics.checkNotNullParameter(body, "body");
                        Builder builder = new Builder();
                        body.invoke(builder);
                        return builder.build();
                    }
                }

                static {
                    final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                    final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AddressValue.class);
                    final Syntax syntax = Syntax.PROTO_3;
                    ADAPTER = new ProtoAdapter<AddressValue>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.armada.PostActionResultRequest$Input$Address$AddressValue$Companion$ADAPTER$1
                        @Override // com.squareup.wire.ProtoAdapter
                        public int encodedSize(PostActionResultRequest.Input.Address.AddressValue value) {
                            Intrinsics.checkNotNullParameter(value, "value");
                            int size = value.unknownFields().size();
                            if (!Intrinsics.areEqual(value.line1, "")) {
                                size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.line1);
                            }
                            if (!Intrinsics.areEqual(value.line2, "")) {
                                size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.line2);
                            }
                            if (!Intrinsics.areEqual(value.city, "")) {
                                size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.city);
                            }
                            if (!Intrinsics.areEqual(value.state, "")) {
                                size += ProtoAdapter.STRING.encodedSizeWithTag(4, value.state);
                            }
                            if (!Intrinsics.areEqual(value.postal_code, "")) {
                                size += ProtoAdapter.STRING.encodedSizeWithTag(5, value.postal_code);
                            }
                            return !Intrinsics.areEqual(value.country, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(6, value.country) : size;
                        }

                        @Override // com.squareup.wire.ProtoAdapter
                        public void encode(ProtoWriter writer, PostActionResultRequest.Input.Address.AddressValue value) throws IOException {
                            Intrinsics.checkNotNullParameter(writer, "writer");
                            Intrinsics.checkNotNullParameter(value, "value");
                            if (!Intrinsics.areEqual(value.line1, "")) {
                                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.line1);
                            }
                            if (!Intrinsics.areEqual(value.line2, "")) {
                                ProtoAdapter.STRING.encodeWithTag(writer, 2, value.line2);
                            }
                            if (!Intrinsics.areEqual(value.city, "")) {
                                ProtoAdapter.STRING.encodeWithTag(writer, 3, value.city);
                            }
                            if (!Intrinsics.areEqual(value.state, "")) {
                                ProtoAdapter.STRING.encodeWithTag(writer, 4, value.state);
                            }
                            if (!Intrinsics.areEqual(value.postal_code, "")) {
                                ProtoAdapter.STRING.encodeWithTag(writer, 5, value.postal_code);
                            }
                            if (!Intrinsics.areEqual(value.country, "")) {
                                ProtoAdapter.STRING.encodeWithTag(writer, 6, value.country);
                            }
                            writer.writeBytes(value.unknownFields());
                        }

                        @Override // com.squareup.wire.ProtoAdapter
                        public void encode(ReverseProtoWriter writer, PostActionResultRequest.Input.Address.AddressValue value) throws IOException {
                            Intrinsics.checkNotNullParameter(writer, "writer");
                            Intrinsics.checkNotNullParameter(value, "value");
                            writer.writeBytes(value.unknownFields());
                            if (!Intrinsics.areEqual(value.country, "")) {
                                ProtoAdapter.STRING.encodeWithTag(writer, 6, value.country);
                            }
                            if (!Intrinsics.areEqual(value.postal_code, "")) {
                                ProtoAdapter.STRING.encodeWithTag(writer, 5, value.postal_code);
                            }
                            if (!Intrinsics.areEqual(value.state, "")) {
                                ProtoAdapter.STRING.encodeWithTag(writer, 4, value.state);
                            }
                            if (!Intrinsics.areEqual(value.city, "")) {
                                ProtoAdapter.STRING.encodeWithTag(writer, 3, value.city);
                            }
                            if (!Intrinsics.areEqual(value.line2, "")) {
                                ProtoAdapter.STRING.encodeWithTag(writer, 2, value.line2);
                            }
                            if (Intrinsics.areEqual(value.line1, "")) {
                                return;
                            }
                            ProtoAdapter.STRING.encodeWithTag(writer, 1, value.line1);
                        }

                        @Override // com.squareup.wire.ProtoAdapter
                        public PostActionResultRequest.Input.Address.AddressValue redact(PostActionResultRequest.Input.Address.AddressValue value) {
                            Intrinsics.checkNotNullParameter(value, "value");
                            return PostActionResultRequest.Input.Address.AddressValue.copy$default(value, null, null, null, null, null, null, ByteString.EMPTY, 63, null);
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // com.squareup.wire.ProtoAdapter
                        public PostActionResultRequest.Input.Address.AddressValue decode(ProtoReader reader) throws IOException {
                            Intrinsics.checkNotNullParameter(reader, "reader");
                            long jBeginMessage = reader.beginMessage();
                            String strDecode = "";
                            String strDecode2 = "";
                            String strDecode3 = strDecode2;
                            String strDecode4 = strDecode3;
                            String strDecode5 = strDecode4;
                            String strDecode6 = strDecode5;
                            while (true) {
                                int iNextTag = reader.nextTag();
                                if (iNextTag != -1) {
                                    switch (iNextTag) {
                                        case 1:
                                            strDecode = ProtoAdapter.STRING.decode(reader);
                                            break;
                                        case 2:
                                            strDecode2 = ProtoAdapter.STRING.decode(reader);
                                            break;
                                        case 3:
                                            strDecode3 = ProtoAdapter.STRING.decode(reader);
                                            break;
                                        case 4:
                                            strDecode4 = ProtoAdapter.STRING.decode(reader);
                                            break;
                                        case 5:
                                            strDecode5 = ProtoAdapter.STRING.decode(reader);
                                            break;
                                        case 6:
                                            strDecode6 = ProtoAdapter.STRING.decode(reader);
                                            break;
                                        default:
                                            reader.readUnknownField(iNextTag);
                                            break;
                                    }
                                } else {
                                    return new PostActionResultRequest.Input.Address.AddressValue(strDecode, strDecode2, strDecode3, strDecode4, strDecode5, strDecode6, reader.endMessageAndGetUnknownFields(jBeginMessage));
                                }
                            }
                        }
                    };
                }
            }
        }

        /* JADX INFO: compiled from: PostActionResultRequest.kt */
        @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0015\u0016\u0017B7\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ8\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0004H\u0016R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Builder;", LinkHeader.Parameters.Title, "", "description", "default_value", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;", "value_", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "Value", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Toggle extends Message<Toggle, Builder> {
            public static final ProtoAdapter<Toggle> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.stripe.proto.api.armada.PostActionResultRequest$Input$Toggle$Value#ADAPTER", jsonName = "defaultValue", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
            public final Value default_value;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
            public final String description;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
            public final String title;

            @WireField(adapter = "com.stripe.proto.api.armada.PostActionResultRequest$Input$Toggle$Value#ADAPTER", declaredName = "value", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
            public final Value value_;

            public Toggle() {
                this(null, null, null, null, null, 31, null);
            }

            public /* synthetic */ Toggle(String str, String str2, Value value, Value value2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? Value.VALUE_INVALID : value, (i & 8) != 0 ? Value.VALUE_INVALID : value2, (i & 16) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Toggle(String title, String description, Value default_value, Value value_, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(title, "title");
                Intrinsics.checkNotNullParameter(description, "description");
                Intrinsics.checkNotNullParameter(default_value, "default_value");
                Intrinsics.checkNotNullParameter(value_, "value_");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.title = title;
                this.description = description;
                this.default_value = default_value;
                this.value_ = value_;
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.title = this.title;
                builder.description = this.description;
                builder.default_value = this.default_value;
                builder.value_ = this.value_;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof Toggle)) {
                    return false;
                }
                Toggle toggle = (Toggle) other;
                return Intrinsics.areEqual(unknownFields(), toggle.unknownFields()) && Intrinsics.areEqual(this.title, toggle.title) && Intrinsics.areEqual(this.description, toggle.description) && this.default_value == toggle.default_value && this.value_ == toggle.value_;
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = (((((((unknownFields().hashCode() * 37) + this.title.hashCode()) * 37) + this.description.hashCode()) * 37) + this.default_value.hashCode()) * 37) + this.value_.hashCode();
                this.hashCode = iHashCode;
                return iHashCode;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = arrayList;
                arrayList2.add("title=" + Internal.sanitize(this.title));
                arrayList2.add("description=" + Internal.sanitize(this.description));
                arrayList2.add("default_value=" + this.default_value);
                arrayList2.add("value_=" + this.value_);
                return CollectionsKt.joinToString$default(arrayList, ", ", "Toggle{", "}", 0, null, null, 56, null);
            }

            public static /* synthetic */ Toggle copy$default(Toggle toggle, String str, String str2, Value value, Value value2, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = toggle.title;
                }
                if ((i & 2) != 0) {
                    str2 = toggle.description;
                }
                if ((i & 4) != 0) {
                    value = toggle.default_value;
                }
                if ((i & 8) != 0) {
                    value2 = toggle.value_;
                }
                if ((i & 16) != 0) {
                    byteString = toggle.unknownFields();
                }
                ByteString byteString2 = byteString;
                Value value3 = value;
                return toggle.copy(str, str2, value3, value2, byteString2);
            }

            public final Toggle copy(String title, String description, Value default_value, Value value_, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(title, "title");
                Intrinsics.checkNotNullParameter(description, "description");
                Intrinsics.checkNotNullParameter(default_value, "default_value");
                Intrinsics.checkNotNullParameter(value_, "value_");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new Toggle(title, description, default_value, value_, unknownFields);
            }

            /* JADX INFO: compiled from: PostActionResultRequest.kt */
            @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;", "()V", "default_value", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;", "description", "", LinkHeader.Parameters.Title, "value_", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<Toggle, Builder> {
                public String title = "";
                public String description = "";
                public Value default_value = Value.VALUE_INVALID;
                public Value value_ = Value.VALUE_INVALID;

                public final Builder title(String title) {
                    Intrinsics.checkNotNullParameter(title, "title");
                    this.title = title;
                    return this;
                }

                public final Builder description(String description) {
                    Intrinsics.checkNotNullParameter(description, "description");
                    this.description = description;
                    return this;
                }

                public final Builder default_value(Value default_value) {
                    Intrinsics.checkNotNullParameter(default_value, "default_value");
                    this.default_value = default_value;
                    return this;
                }

                public final Builder value_(Value value_) {
                    Intrinsics.checkNotNullParameter(value_, "value_");
                    this.value_ = value_;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public Toggle build() {
                    return new Toggle(this.title, this.description, this.default_value, this.value_, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: PostActionResultRequest.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ Toggle build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Toggle.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<Toggle>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.armada.PostActionResultRequest$Input$Toggle$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(PostActionResultRequest.Input.Toggle value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        if (!Intrinsics.areEqual(value.title, "")) {
                            size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.title);
                        }
                        if (!Intrinsics.areEqual(value.description, "")) {
                            size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.description);
                        }
                        if (value.default_value != PostActionResultRequest.Input.Toggle.Value.VALUE_INVALID) {
                            size += PostActionResultRequest.Input.Toggle.Value.ADAPTER.encodedSizeWithTag(3, value.default_value);
                        }
                        return value.value_ != PostActionResultRequest.Input.Toggle.Value.VALUE_INVALID ? size + PostActionResultRequest.Input.Toggle.Value.ADAPTER.encodedSizeWithTag(4, value.value_) : size;
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, PostActionResultRequest.Input.Toggle value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (!Intrinsics.areEqual(value.title, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 1, value.title);
                        }
                        if (!Intrinsics.areEqual(value.description, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 2, value.description);
                        }
                        if (value.default_value != PostActionResultRequest.Input.Toggle.Value.VALUE_INVALID) {
                            PostActionResultRequest.Input.Toggle.Value.ADAPTER.encodeWithTag(writer, 3, value.default_value);
                        }
                        if (value.value_ != PostActionResultRequest.Input.Toggle.Value.VALUE_INVALID) {
                            PostActionResultRequest.Input.Toggle.Value.ADAPTER.encodeWithTag(writer, 4, value.value_);
                        }
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, PostActionResultRequest.Input.Toggle value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        if (value.value_ != PostActionResultRequest.Input.Toggle.Value.VALUE_INVALID) {
                            PostActionResultRequest.Input.Toggle.Value.ADAPTER.encodeWithTag(writer, 4, value.value_);
                        }
                        if (value.default_value != PostActionResultRequest.Input.Toggle.Value.VALUE_INVALID) {
                            PostActionResultRequest.Input.Toggle.Value.ADAPTER.encodeWithTag(writer, 3, value.default_value);
                        }
                        if (!Intrinsics.areEqual(value.description, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 2, value.description);
                        }
                        if (Intrinsics.areEqual(value.title, "")) {
                            return;
                        }
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.title);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public PostActionResultRequest.Input.Toggle decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        PostActionResultRequest.Input.Toggle.Value valueDecode = PostActionResultRequest.Input.Toggle.Value.VALUE_INVALID;
                        PostActionResultRequest.Input.Toggle.Value value = PostActionResultRequest.Input.Toggle.Value.VALUE_INVALID;
                        long jBeginMessage = reader.beginMessage();
                        String strDecode = "";
                        String strDecode2 = strDecode;
                        PostActionResultRequest.Input.Toggle.Value valueDecode2 = value;
                        while (true) {
                            PostActionResultRequest.Input.Toggle.Value value2 = valueDecode;
                            while (true) {
                                int iNextTag = reader.nextTag();
                                if (iNextTag == -1) {
                                    return new PostActionResultRequest.Input.Toggle(strDecode, strDecode2, value2, valueDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                                }
                                if (iNextTag == 1) {
                                    strDecode = ProtoAdapter.STRING.decode(reader);
                                } else if (iNextTag == 2) {
                                    strDecode2 = ProtoAdapter.STRING.decode(reader);
                                } else if (iNextTag == 3) {
                                    try {
                                        valueDecode = PostActionResultRequest.Input.Toggle.Value.ADAPTER.decode(reader);
                                        break;
                                    } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                        reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                    }
                                } else if (iNextTag == 4) {
                                    try {
                                        valueDecode2 = PostActionResultRequest.Input.Toggle.Value.ADAPTER.decode(reader);
                                    } catch (ProtoAdapter.EnumConstantNotFoundException e2) {
                                        reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e2.value));
                                    }
                                } else {
                                    reader.readUnknownField(iNextTag);
                                }
                            }
                        }
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public PostActionResultRequest.Input.Toggle redact(PostActionResultRequest.Input.Toggle value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return PostActionResultRequest.Input.Toggle.copy$default(value, null, null, null, null, ByteString.EMPTY, 15, null);
                    }
                };
            }

            /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
            /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
            /* JADX INFO: compiled from: PostActionResultRequest.kt */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "VALUE_INVALID", "ENABLED", "DISABLED", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Value implements WireEnum {
                private static final /* synthetic */ EnumEntries $ENTRIES;
                private static final /* synthetic */ Value[] $VALUES;
                public static final ProtoAdapter<Value> ADAPTER;

                /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
                public static final Companion INSTANCE;
                public static final Value DISABLED;
                public static final Value ENABLED;
                public static final Value VALUE_INVALID;
                private final int value;

                private static final /* synthetic */ Value[] $values() {
                    return new Value[]{VALUE_INVALID, ENABLED, DISABLED};
                }

                @JvmStatic
                public static final Value fromValue(int i) {
                    return INSTANCE.fromValue(i);
                }

                public static EnumEntries<Value> getEntries() {
                    return $ENTRIES;
                }

                public static Value valueOf(String str) {
                    return (Value) Enum.valueOf(Value.class, str);
                }

                public static Value[] values() {
                    return (Value[]) $VALUES.clone();
                }

                private Value(String str, int i, int i2) {
                    this.value = i2;
                }

                @Override // com.squareup.wire.WireEnum
                public int getValue() {
                    return this.value;
                }

                static {
                    final Value value = new Value("VALUE_INVALID", 0, 0);
                    VALUE_INVALID = value;
                    ENABLED = new Value("ENABLED", 1, 1);
                    DISABLED = new Value("DISABLED", 2, 2);
                    Value[] valueArr$values = $values();
                    $VALUES = valueArr$values;
                    $ENTRIES = EnumEntriesKt.enumEntries(valueArr$values);
                    INSTANCE = new Companion(null);
                    final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Value.class);
                    final Syntax syntax = Syntax.PROTO_3;
                    ADAPTER = new EnumAdapter<Value>(orCreateKotlinClass, syntax, value) { // from class: com.stripe.proto.api.armada.PostActionResultRequest$Input$Toggle$Value$Companion$ADAPTER$1
                        {
                            PostActionResultRequest.Input.Toggle.Value value2 = value;
                        }

                        /* JADX INFO: Access modifiers changed from: protected */
                        @Override // com.squareup.wire.EnumAdapter
                        public PostActionResultRequest.Input.Toggle.Value fromValue(int value2) {
                            return PostActionResultRequest.Input.Toggle.Value.INSTANCE.fromValue(value2);
                        }
                    };
                }

                /* JADX INFO: compiled from: PostActionResultRequest.kt */
                @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Toggle$Value;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
                public static final class Companion {
                    public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                        this();
                    }

                    private Companion() {
                    }

                    @JvmStatic
                    public final Value fromValue(int value) {
                        if (value == 0) {
                            return Value.VALUE_INVALID;
                        }
                        if (value == 1) {
                            return Value.ENABLED;
                        }
                        if (value != 2) {
                            return null;
                        }
                        return Value.DISABLED;
                    }
                }
            }
        }

        /* JADX INFO: compiled from: PostActionResultRequest.kt */
        @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B)\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ*\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0004H\u0016R\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection$Builder;", "value_", "", "choices", "", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Choice;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Selection extends Message<Selection, Builder> {
            public static final ProtoAdapter<Selection> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.stripe.proto.api.armada.PostActionResultRequest$Input$Choice#ADAPTER", label = WireField.Label.REPEATED, schemaIndex = 1, tag = 2)
            public final List<Choice> choices;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", declaredName = "value", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
            public final String value_;

            public Selection() {
                this(null, null, null, 7, null);
            }

            public /* synthetic */ Selection(String str, List list, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? CollectionsKt.emptyList() : list, (i & 4) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Selection(String value_, List<Choice> choices, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(value_, "value_");
                Intrinsics.checkNotNullParameter(choices, "choices");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.value_ = value_;
                this.choices = Internal.immutableCopyOf("choices", choices);
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.value_ = this.value_;
                builder.choices = this.choices;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof Selection)) {
                    return false;
                }
                Selection selection = (Selection) other;
                return Intrinsics.areEqual(unknownFields(), selection.unknownFields()) && Intrinsics.areEqual(this.value_, selection.value_) && Intrinsics.areEqual(this.choices, selection.choices);
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = (((unknownFields().hashCode() * 37) + this.value_.hashCode()) * 37) + this.choices.hashCode();
                this.hashCode = iHashCode;
                return iHashCode;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = arrayList;
                arrayList2.add("value_=" + Internal.sanitize(this.value_));
                if (!this.choices.isEmpty()) {
                    arrayList2.add("choices=" + this.choices);
                }
                return CollectionsKt.joinToString$default(arrayList, ", ", "Selection{", "}", 0, null, null, 56, null);
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static /* synthetic */ Selection copy$default(Selection selection, String str, List list, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = selection.value_;
                }
                if ((i & 2) != 0) {
                    list = selection.choices;
                }
                if ((i & 4) != 0) {
                    byteString = selection.unknownFields();
                }
                return selection.copy(str, list, byteString);
            }

            public final Selection copy(String value_, List<Choice> choices, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(value_, "value_");
                Intrinsics.checkNotNullParameter(choices, "choices");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new Selection(value_, choices, unknownFields);
            }

            /* JADX INFO: compiled from: PostActionResultRequest.kt */
            @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bR\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;", "()V", "choices", "", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Choice;", "value_", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<Selection, Builder> {
                public String value_ = "";
                public List<Choice> choices = CollectionsKt.emptyList();

                public final Builder value_(String value_) {
                    Intrinsics.checkNotNullParameter(value_, "value_");
                    this.value_ = value_;
                    return this;
                }

                public final Builder choices(List<Choice> choices) {
                    Intrinsics.checkNotNullParameter(choices, "choices");
                    Internal.checkElementsNotNull(choices);
                    this.choices = choices;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public Selection build() {
                    return new Selection(this.value_, this.choices, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: PostActionResultRequest.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Selection$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ Selection build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Selection.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<Selection>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.armada.PostActionResultRequest$Input$Selection$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(PostActionResultRequest.Input.Selection value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        if (!Intrinsics.areEqual(value.value_, "")) {
                            size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.value_);
                        }
                        return size + PostActionResultRequest.Input.Choice.ADAPTER.asRepeated().encodedSizeWithTag(2, value.choices);
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, PostActionResultRequest.Input.Selection value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (!Intrinsics.areEqual(value.value_, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 1, value.value_);
                        }
                        PostActionResultRequest.Input.Choice.ADAPTER.asRepeated().encodeWithTag(writer, 2, value.choices);
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, PostActionResultRequest.Input.Selection value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        PostActionResultRequest.Input.Choice.ADAPTER.asRepeated().encodeWithTag(writer, 2, value.choices);
                        if (Intrinsics.areEqual(value.value_, "")) {
                            return;
                        }
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.value_);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public PostActionResultRequest.Input.Selection decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        ArrayList arrayList = new ArrayList();
                        long jBeginMessage = reader.beginMessage();
                        String strDecode = "";
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new PostActionResultRequest.Input.Selection(strDecode, arrayList, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                            if (iNextTag == 1) {
                                strDecode = ProtoAdapter.STRING.decode(reader);
                            } else if (iNextTag == 2) {
                                arrayList.add(PostActionResultRequest.Input.Choice.ADAPTER.decode(reader));
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public PostActionResultRequest.Input.Selection redact(PostActionResultRequest.Input.Selection value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return PostActionResultRequest.Input.Selection.copy$default(value, null, Internal.m361redactElements(value.choices, PostActionResultRequest.Input.Choice.ADAPTER), ByteString.EMPTY, 1, null);
                    }
                };
            }
        }

        /* JADX INFO: compiled from: PostActionResultRequest.kt */
        @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0013\u0014\u0015B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ$\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0006H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Choice;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Choice$Builder;", "style", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Choice$Style;", "value_", "", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Choice$Style;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "Style", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Choice extends Message<Choice, Builder> {
            public static final ProtoAdapter<Choice> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.stripe.proto.api.armada.PostActionResultRequest$Input$Choice$Style#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
            public final Style style;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", declaredName = "value", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
            public final String value_;

            public Choice() {
                this(null, null, null, 7, null);
            }

            public /* synthetic */ Choice(Style style, String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? Style.STYLE_INVALID : style, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Choice(Style style, String value_, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(style, "style");
                Intrinsics.checkNotNullParameter(value_, "value_");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.style = style;
                this.value_ = value_;
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.style = this.style;
                builder.value_ = this.value_;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof Choice)) {
                    return false;
                }
                Choice choice = (Choice) other;
                return Intrinsics.areEqual(unknownFields(), choice.unknownFields()) && this.style == choice.style && Intrinsics.areEqual(this.value_, choice.value_);
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = (((unknownFields().hashCode() * 37) + this.style.hashCode()) * 37) + this.value_.hashCode();
                this.hashCode = iHashCode;
                return iHashCode;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = arrayList;
                arrayList2.add("style=" + this.style);
                arrayList2.add("value_=" + Internal.sanitize(this.value_));
                return CollectionsKt.joinToString$default(arrayList, ", ", "Choice{", "}", 0, null, null, 56, null);
            }

            public static /* synthetic */ Choice copy$default(Choice choice, Style style, String str, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    style = choice.style;
                }
                if ((i & 2) != 0) {
                    str = choice.value_;
                }
                if ((i & 4) != 0) {
                    byteString = choice.unknownFields();
                }
                return choice.copy(style, str, byteString);
            }

            public final Choice copy(Style style, String value_, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(style, "style");
                Intrinsics.checkNotNullParameter(value_, "value_");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new Choice(style, value_, unknownFields);
            }

            /* JADX INFO: compiled from: PostActionResultRequest.kt */
            @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Choice$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Choice;", "()V", "style", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Choice$Style;", "value_", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<Choice, Builder> {
                public Style style = Style.STYLE_INVALID;
                public String value_ = "";

                public final Builder style(Style style) {
                    Intrinsics.checkNotNullParameter(style, "style");
                    this.style = style;
                    return this;
                }

                public final Builder value_(String value_) {
                    Intrinsics.checkNotNullParameter(value_, "value_");
                    this.value_ = value_;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public Choice build() {
                    return new Choice(this.style, this.value_, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: PostActionResultRequest.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Choice$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Choice;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Choice$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ Choice build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Choice.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<Choice>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.armada.PostActionResultRequest$Input$Choice$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(PostActionResultRequest.Input.Choice value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        if (value.style != PostActionResultRequest.Input.Choice.Style.STYLE_INVALID) {
                            size += PostActionResultRequest.Input.Choice.Style.ADAPTER.encodedSizeWithTag(1, value.style);
                        }
                        return !Intrinsics.areEqual(value.value_, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(2, value.value_) : size;
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, PostActionResultRequest.Input.Choice value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (value.style != PostActionResultRequest.Input.Choice.Style.STYLE_INVALID) {
                            PostActionResultRequest.Input.Choice.Style.ADAPTER.encodeWithTag(writer, 1, value.style);
                        }
                        if (!Intrinsics.areEqual(value.value_, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 2, value.value_);
                        }
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, PostActionResultRequest.Input.Choice value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        if (!Intrinsics.areEqual(value.value_, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 2, value.value_);
                        }
                        if (value.style != PostActionResultRequest.Input.Choice.Style.STYLE_INVALID) {
                            PostActionResultRequest.Input.Choice.Style.ADAPTER.encodeWithTag(writer, 1, value.style);
                        }
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public PostActionResultRequest.Input.Choice decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        PostActionResultRequest.Input.Choice.Style styleDecode = PostActionResultRequest.Input.Choice.Style.STYLE_INVALID;
                        long jBeginMessage = reader.beginMessage();
                        String strDecode = "";
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new PostActionResultRequest.Input.Choice(styleDecode, strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                            if (iNextTag == 1) {
                                try {
                                    styleDecode = PostActionResultRequest.Input.Choice.Style.ADAPTER.decode(reader);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                }
                            } else if (iNextTag == 2) {
                                strDecode = ProtoAdapter.STRING.decode(reader);
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public PostActionResultRequest.Input.Choice redact(PostActionResultRequest.Input.Choice value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return PostActionResultRequest.Input.Choice.copy$default(value, null, null, ByteString.EMPTY, 3, null);
                    }
                };
            }

            /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
            /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
            /* JADX INFO: compiled from: PostActionResultRequest.kt */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Choice$Style;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "STYLE_INVALID", "PRIMARY", "SECONDARY", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Style implements WireEnum {
                private static final /* synthetic */ EnumEntries $ENTRIES;
                private static final /* synthetic */ Style[] $VALUES;
                public static final ProtoAdapter<Style> ADAPTER;

                /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
                public static final Companion INSTANCE;
                public static final Style PRIMARY;
                public static final Style SECONDARY;
                public static final Style STYLE_INVALID;
                private final int value;

                private static final /* synthetic */ Style[] $values() {
                    return new Style[]{STYLE_INVALID, PRIMARY, SECONDARY};
                }

                @JvmStatic
                public static final Style fromValue(int i) {
                    return INSTANCE.fromValue(i);
                }

                public static EnumEntries<Style> getEntries() {
                    return $ENTRIES;
                }

                public static Style valueOf(String str) {
                    return (Style) Enum.valueOf(Style.class, str);
                }

                public static Style[] values() {
                    return (Style[]) $VALUES.clone();
                }

                private Style(String str, int i, int i2) {
                    this.value = i2;
                }

                @Override // com.squareup.wire.WireEnum
                public int getValue() {
                    return this.value;
                }

                static {
                    final Style style = new Style("STYLE_INVALID", 0, 0);
                    STYLE_INVALID = style;
                    PRIMARY = new Style("PRIMARY", 1, 1);
                    SECONDARY = new Style("SECONDARY", 2, 2);
                    Style[] styleArr$values = $values();
                    $VALUES = styleArr$values;
                    $ENTRIES = EnumEntriesKt.enumEntries(styleArr$values);
                    INSTANCE = new Companion(null);
                    final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Style.class);
                    final Syntax syntax = Syntax.PROTO_3;
                    ADAPTER = new EnumAdapter<Style>(orCreateKotlinClass, syntax, style) { // from class: com.stripe.proto.api.armada.PostActionResultRequest$Input$Choice$Style$Companion$ADAPTER$1
                        {
                            PostActionResultRequest.Input.Choice.Style style2 = style;
                        }

                        /* JADX INFO: Access modifiers changed from: protected */
                        @Override // com.squareup.wire.EnumAdapter
                        public PostActionResultRequest.Input.Choice.Style fromValue(int value) {
                            return PostActionResultRequest.Input.Choice.Style.INSTANCE.fromValue(value);
                        }
                    };
                }

                /* JADX INFO: compiled from: PostActionResultRequest.kt */
                @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Choice$Style$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$Choice$Style;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
                public static final class Companion {
                    public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                        this();
                    }

                    private Companion() {
                    }

                    @JvmStatic
                    public final Style fromValue(int value) {
                        if (value == 0) {
                            return Style.STYLE_INVALID;
                        }
                        if (value == 1) {
                            return Style.PRIMARY;
                        }
                        if (value != 2) {
                            return null;
                        }
                        return Style.SECONDARY;
                    }
                }
            }
        }

        /* JADX INFO: compiled from: PostActionResultRequest.kt */
        @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B7\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ8\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0004H\u0016R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText$Builder;", LinkHeader.Parameters.Title, "", "description", "submit_button", "skip_button", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class CustomText extends Message<CustomText, Builder> {
            public static final ProtoAdapter<CustomText> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
            public final String description;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "skipButton", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
            public final String skip_button;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "submitButton", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
            public final String submit_button;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
            public final String title;

            public CustomText() {
                this(null, null, null, null, null, 31, null);
            }

            public /* synthetic */ CustomText(String str, String str2, String str3, String str4, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? "" : str4, (i & 16) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public CustomText(String title, String description, String submit_button, String skip_button, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(title, "title");
                Intrinsics.checkNotNullParameter(description, "description");
                Intrinsics.checkNotNullParameter(submit_button, "submit_button");
                Intrinsics.checkNotNullParameter(skip_button, "skip_button");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.title = title;
                this.description = description;
                this.submit_button = submit_button;
                this.skip_button = skip_button;
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.title = this.title;
                builder.description = this.description;
                builder.submit_button = this.submit_button;
                builder.skip_button = this.skip_button;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof CustomText)) {
                    return false;
                }
                CustomText customText = (CustomText) other;
                return Intrinsics.areEqual(unknownFields(), customText.unknownFields()) && Intrinsics.areEqual(this.title, customText.title) && Intrinsics.areEqual(this.description, customText.description) && Intrinsics.areEqual(this.submit_button, customText.submit_button) && Intrinsics.areEqual(this.skip_button, customText.skip_button);
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = (((((((unknownFields().hashCode() * 37) + this.title.hashCode()) * 37) + this.description.hashCode()) * 37) + this.submit_button.hashCode()) * 37) + this.skip_button.hashCode();
                this.hashCode = iHashCode;
                return iHashCode;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = arrayList;
                arrayList2.add("title=" + Internal.sanitize(this.title));
                arrayList2.add("description=" + Internal.sanitize(this.description));
                arrayList2.add("submit_button=" + Internal.sanitize(this.submit_button));
                arrayList2.add("skip_button=" + Internal.sanitize(this.skip_button));
                return CollectionsKt.joinToString$default(arrayList, ", ", "CustomText{", "}", 0, null, null, 56, null);
            }

            public static /* synthetic */ CustomText copy$default(CustomText customText, String str, String str2, String str3, String str4, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = customText.title;
                }
                if ((i & 2) != 0) {
                    str2 = customText.description;
                }
                if ((i & 4) != 0) {
                    str3 = customText.submit_button;
                }
                if ((i & 8) != 0) {
                    str4 = customText.skip_button;
                }
                if ((i & 16) != 0) {
                    byteString = customText.unknownFields();
                }
                ByteString byteString2 = byteString;
                String str5 = str3;
                return customText.copy(str, str2, str5, str4, byteString2);
            }

            public final CustomText copy(String title, String description, String submit_button, String skip_button, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(title, "title");
                Intrinsics.checkNotNullParameter(description, "description");
                Intrinsics.checkNotNullParameter(submit_button, "submit_button");
                Intrinsics.checkNotNullParameter(skip_button, "skip_button");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new CustomText(title, description, submit_button, skip_button, unknownFields);
            }

            /* JADX INFO: compiled from: PostActionResultRequest.kt */
            @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;", "()V", "description", "", "skip_button", "submit_button", LinkHeader.Parameters.Title, "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<CustomText, Builder> {
                public String title = "";
                public String description = "";
                public String submit_button = "";
                public String skip_button = "";

                public final Builder title(String title) {
                    Intrinsics.checkNotNullParameter(title, "title");
                    this.title = title;
                    return this;
                }

                public final Builder description(String description) {
                    Intrinsics.checkNotNullParameter(description, "description");
                    this.description = description;
                    return this;
                }

                public final Builder submit_button(String submit_button) {
                    Intrinsics.checkNotNullParameter(submit_button, "submit_button");
                    this.submit_button = submit_button;
                    return this;
                }

                public final Builder skip_button(String skip_button) {
                    Intrinsics.checkNotNullParameter(skip_button, "skip_button");
                    this.skip_button = skip_button;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public CustomText build() {
                    return new CustomText(this.title, this.description, this.submit_button, this.skip_button, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: PostActionResultRequest.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input$CustomText$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ CustomText build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CustomText.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<CustomText>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.armada.PostActionResultRequest$Input$CustomText$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(PostActionResultRequest.Input.CustomText value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        if (!Intrinsics.areEqual(value.title, "")) {
                            size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.title);
                        }
                        if (!Intrinsics.areEqual(value.description, "")) {
                            size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.description);
                        }
                        if (!Intrinsics.areEqual(value.submit_button, "")) {
                            size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.submit_button);
                        }
                        return !Intrinsics.areEqual(value.skip_button, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(4, value.skip_button) : size;
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, PostActionResultRequest.Input.CustomText value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (!Intrinsics.areEqual(value.title, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 1, value.title);
                        }
                        if (!Intrinsics.areEqual(value.description, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 2, value.description);
                        }
                        if (!Intrinsics.areEqual(value.submit_button, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 3, value.submit_button);
                        }
                        if (!Intrinsics.areEqual(value.skip_button, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 4, value.skip_button);
                        }
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, PostActionResultRequest.Input.CustomText value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        if (!Intrinsics.areEqual(value.skip_button, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 4, value.skip_button);
                        }
                        if (!Intrinsics.areEqual(value.submit_button, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 3, value.submit_button);
                        }
                        if (!Intrinsics.areEqual(value.description, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 2, value.description);
                        }
                        if (Intrinsics.areEqual(value.title, "")) {
                            return;
                        }
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.title);
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public PostActionResultRequest.Input.CustomText redact(PostActionResultRequest.Input.CustomText value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return PostActionResultRequest.Input.CustomText.copy$default(value, null, null, null, null, ByteString.EMPTY, 15, null);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public PostActionResultRequest.Input.CustomText decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        long jBeginMessage = reader.beginMessage();
                        String strDecode = "";
                        String strDecode2 = "";
                        String strDecode3 = strDecode2;
                        String strDecode4 = strDecode3;
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new PostActionResultRequest.Input.CustomText(strDecode, strDecode2, strDecode3, strDecode4, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                            if (iNextTag == 1) {
                                strDecode = ProtoAdapter.STRING.decode(reader);
                            } else if (iNextTag == 2) {
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                            } else if (iNextTag == 3) {
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                            } else if (iNextTag == 4) {
                                strDecode4 = ProtoAdapter.STRING.decode(reader);
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }
                };
            }
        }
    }
}
