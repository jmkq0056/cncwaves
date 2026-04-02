package com.stripe.proto.iot_relay.pub.message;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.model.common.InstantPb;
import com.sun.jna.platform.win32.WinError;
import com.sun.jna.platform.win32.WinUser;
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

/* JADX INFO: compiled from: IotMetadata.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001b2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001a\u001bBm\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\r\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010Jn\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u00042\b\b\u0002\u0010\r\u001a\u00020\u00042\b\b\u0002\u0010\u000e\u001a\u00020\u000fJ\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0002H\u0016J\b\u0010\u0019\u001a\u00020\u0004H\u0016R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;", "message_id", "", "target_id", "action_id", "sent_at", "Lcom/stripe/proto/model/common/InstantPb;", "deadline", "service_name", "service_method", "routing_info", "source_region", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/InstantPb;Lcom/stripe/proto/model/common/InstantPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class IotMetadata extends Message<IotMetadata, Builder> {
    public static final ProtoAdapter<IotMetadata> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "actionId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String action_id;

    @WireField(adapter = "com.stripe.proto.model.common.InstantPb#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final InstantPb deadline;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "messageId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String message_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "routingInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 9)
    public final String routing_info;

    @WireField(adapter = "com.stripe.proto.model.common.InstantPb#ADAPTER", jsonName = "sentAt", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final InstantPb sent_at;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "serviceMethod", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final String service_method;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "serviceName", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final String service_name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "sourceRegion", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 10)
    public final String source_region;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "targetId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String target_id;

    public IotMetadata() {
        this(null, null, null, null, null, null, null, null, null, null, WinUser.CF_GDIOBJLAST, null);
    }

    public /* synthetic */ IotMetadata(String str, String str2, String str3, InstantPb instantPb, InstantPb instantPb2, String str4, String str5, String str6, String str7, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? null : instantPb, (i & 16) != 0 ? null : instantPb2, (i & 32) != 0 ? "" : str4, (i & 64) != 0 ? "" : str5, (i & 128) != 0 ? "" : str6, (i & 256) != 0 ? "" : str7, (i & 512) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IotMetadata(String message_id, String target_id, String action_id, InstantPb instantPb, InstantPb instantPb2, String service_name, String service_method, String routing_info, String source_region, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(message_id, "message_id");
        Intrinsics.checkNotNullParameter(target_id, "target_id");
        Intrinsics.checkNotNullParameter(action_id, "action_id");
        Intrinsics.checkNotNullParameter(service_name, "service_name");
        Intrinsics.checkNotNullParameter(service_method, "service_method");
        Intrinsics.checkNotNullParameter(routing_info, "routing_info");
        Intrinsics.checkNotNullParameter(source_region, "source_region");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.message_id = message_id;
        this.target_id = target_id;
        this.action_id = action_id;
        this.sent_at = instantPb;
        this.deadline = instantPb2;
        this.service_name = service_name;
        this.service_method = service_method;
        this.routing_info = routing_info;
        this.source_region = source_region;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.message_id = this.message_id;
        builder.target_id = this.target_id;
        builder.action_id = this.action_id;
        builder.sent_at = this.sent_at;
        builder.deadline = this.deadline;
        builder.service_name = this.service_name;
        builder.service_method = this.service_method;
        builder.routing_info = this.routing_info;
        builder.source_region = this.source_region;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof IotMetadata)) {
            return false;
        }
        IotMetadata iotMetadata = (IotMetadata) other;
        return Intrinsics.areEqual(unknownFields(), iotMetadata.unknownFields()) && Intrinsics.areEqual(this.message_id, iotMetadata.message_id) && Intrinsics.areEqual(this.target_id, iotMetadata.target_id) && Intrinsics.areEqual(this.action_id, iotMetadata.action_id) && Intrinsics.areEqual(this.sent_at, iotMetadata.sent_at) && Intrinsics.areEqual(this.deadline, iotMetadata.deadline) && Intrinsics.areEqual(this.service_name, iotMetadata.service_name) && Intrinsics.areEqual(this.service_method, iotMetadata.service_method) && Intrinsics.areEqual(this.routing_info, iotMetadata.routing_info) && Intrinsics.areEqual(this.source_region, iotMetadata.source_region);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((unknownFields().hashCode() * 37) + this.message_id.hashCode()) * 37) + this.target_id.hashCode()) * 37) + this.action_id.hashCode()) * 37;
        InstantPb instantPb = this.sent_at;
        int iHashCode2 = (iHashCode + (instantPb != null ? instantPb.hashCode() : 0)) * 37;
        InstantPb instantPb2 = this.deadline;
        int iHashCode3 = ((((((((iHashCode2 + (instantPb2 != null ? instantPb2.hashCode() : 0)) * 37) + this.service_name.hashCode()) * 37) + this.service_method.hashCode()) * 37) + this.routing_info.hashCode()) * 37) + this.source_region.hashCode();
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("message_id=" + Internal.sanitize(this.message_id));
        arrayList2.add("target_id=" + Internal.sanitize(this.target_id));
        arrayList2.add("action_id=" + Internal.sanitize(this.action_id));
        if (this.sent_at != null) {
            arrayList2.add("sent_at=" + this.sent_at);
        }
        if (this.deadline != null) {
            arrayList2.add("deadline=" + this.deadline);
        }
        arrayList2.add("service_name=" + Internal.sanitize(this.service_name));
        arrayList2.add("service_method=" + Internal.sanitize(this.service_method));
        arrayList2.add("routing_info=" + Internal.sanitize(this.routing_info));
        arrayList2.add("source_region=" + Internal.sanitize(this.source_region));
        return CollectionsKt.joinToString$default(arrayList, ", ", "IotMetadata{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ IotMetadata copy$default(IotMetadata iotMetadata, String str, String str2, String str3, InstantPb instantPb, InstantPb instantPb2, String str4, String str5, String str6, String str7, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = iotMetadata.message_id;
        }
        if ((i & 2) != 0) {
            str2 = iotMetadata.target_id;
        }
        if ((i & 4) != 0) {
            str3 = iotMetadata.action_id;
        }
        if ((i & 8) != 0) {
            instantPb = iotMetadata.sent_at;
        }
        if ((i & 16) != 0) {
            instantPb2 = iotMetadata.deadline;
        }
        if ((i & 32) != 0) {
            str4 = iotMetadata.service_name;
        }
        if ((i & 64) != 0) {
            str5 = iotMetadata.service_method;
        }
        if ((i & 128) != 0) {
            str6 = iotMetadata.routing_info;
        }
        if ((i & 256) != 0) {
            str7 = iotMetadata.source_region;
        }
        if ((i & 512) != 0) {
            byteString = iotMetadata.unknownFields();
        }
        String str8 = str7;
        ByteString byteString2 = byteString;
        String str9 = str5;
        String str10 = str6;
        InstantPb instantPb3 = instantPb2;
        String str11 = str4;
        return iotMetadata.copy(str, str2, str3, instantPb, instantPb3, str11, str9, str10, str8, byteString2);
    }

    public final IotMetadata copy(String message_id, String target_id, String action_id, InstantPb sent_at, InstantPb deadline, String service_name, String service_method, String routing_info, String source_region, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(message_id, "message_id");
        Intrinsics.checkNotNullParameter(target_id, "target_id");
        Intrinsics.checkNotNullParameter(action_id, "action_id");
        Intrinsics.checkNotNullParameter(service_name, "service_name");
        Intrinsics.checkNotNullParameter(service_method, "service_method");
        Intrinsics.checkNotNullParameter(routing_info, "routing_info");
        Intrinsics.checkNotNullParameter(source_region, "source_region");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new IotMetadata(message_id, target_id, action_id, sent_at, deadline, service_name, service_method, routing_info, source_region, unknownFields);
    }

    /* JADX INFO: compiled from: IotMetadata.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;", "()V", "action_id", "", "deadline", "Lcom/stripe/proto/model/common/InstantPb;", "message_id", "routing_info", "sent_at", "service_method", "service_name", "source_region", "target_id", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<IotMetadata, Builder> {
        public InstantPb deadline;
        public InstantPb sent_at;
        public String message_id = "";
        public String target_id = "";
        public String action_id = "";
        public String service_name = "";
        public String service_method = "";
        public String routing_info = "";
        public String source_region = "";

        public final Builder message_id(String message_id) {
            Intrinsics.checkNotNullParameter(message_id, "message_id");
            this.message_id = message_id;
            return this;
        }

        public final Builder target_id(String target_id) {
            Intrinsics.checkNotNullParameter(target_id, "target_id");
            this.target_id = target_id;
            return this;
        }

        public final Builder action_id(String action_id) {
            Intrinsics.checkNotNullParameter(action_id, "action_id");
            this.action_id = action_id;
            return this;
        }

        public final Builder sent_at(InstantPb sent_at) {
            this.sent_at = sent_at;
            return this;
        }

        public final Builder deadline(InstantPb deadline) {
            this.deadline = deadline;
            return this;
        }

        public final Builder service_name(String service_name) {
            Intrinsics.checkNotNullParameter(service_name, "service_name");
            this.service_name = service_name;
            return this;
        }

        public final Builder service_method(String service_method) {
            Intrinsics.checkNotNullParameter(service_method, "service_method");
            this.service_method = service_method;
            return this;
        }

        public final Builder routing_info(String routing_info) {
            Intrinsics.checkNotNullParameter(routing_info, "routing_info");
            this.routing_info = routing_info;
            return this;
        }

        public final Builder source_region(String source_region) {
            Intrinsics.checkNotNullParameter(source_region, "source_region");
            this.source_region = source_region;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public IotMetadata build() {
            return new IotMetadata(this.message_id, this.target_id, this.action_id, this.sent_at, this.deadline, this.service_name, this.service_method, this.routing_info, this.source_region, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: IotMetadata.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ IotMetadata build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(IotMetadata.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<IotMetadata>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.iot_relay.pub.message.IotMetadata$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(IotMetadata value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.message_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.message_id);
                }
                if (!Intrinsics.areEqual(value.target_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.target_id);
                }
                if (!Intrinsics.areEqual(value.action_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.action_id);
                }
                if (value.sent_at != null) {
                    size += InstantPb.ADAPTER.encodedSizeWithTag(4, value.sent_at);
                }
                if (value.deadline != null) {
                    size += InstantPb.ADAPTER.encodedSizeWithTag(5, value.deadline);
                }
                if (!Intrinsics.areEqual(value.service_name, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(6, value.service_name);
                }
                if (!Intrinsics.areEqual(value.service_method, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(7, value.service_method);
                }
                if (!Intrinsics.areEqual(value.routing_info, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(9, value.routing_info);
                }
                return !Intrinsics.areEqual(value.source_region, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(10, value.source_region) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, IotMetadata value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.message_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.message_id);
                }
                if (!Intrinsics.areEqual(value.target_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.target_id);
                }
                if (!Intrinsics.areEqual(value.action_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.action_id);
                }
                if (value.sent_at != null) {
                    InstantPb.ADAPTER.encodeWithTag(writer, 4, value.sent_at);
                }
                if (value.deadline != null) {
                    InstantPb.ADAPTER.encodeWithTag(writer, 5, value.deadline);
                }
                if (!Intrinsics.areEqual(value.service_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.service_name);
                }
                if (!Intrinsics.areEqual(value.service_method, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.service_method);
                }
                if (!Intrinsics.areEqual(value.routing_info, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 9, value.routing_info);
                }
                if (!Intrinsics.areEqual(value.source_region, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 10, value.source_region);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, IotMetadata value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.source_region, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 10, value.source_region);
                }
                if (!Intrinsics.areEqual(value.routing_info, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 9, value.routing_info);
                }
                if (!Intrinsics.areEqual(value.service_method, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.service_method);
                }
                if (!Intrinsics.areEqual(value.service_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.service_name);
                }
                if (value.deadline != null) {
                    InstantPb.ADAPTER.encodeWithTag(writer, 5, value.deadline);
                }
                if (value.sent_at != null) {
                    InstantPb.ADAPTER.encodeWithTag(writer, 4, value.sent_at);
                }
                if (!Intrinsics.areEqual(value.action_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.action_id);
                }
                if (!Intrinsics.areEqual(value.target_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.target_id);
                }
                if (Intrinsics.areEqual(value.message_id, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.message_id);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public IotMetadata redact(IotMetadata value) {
                Intrinsics.checkNotNullParameter(value, "value");
                InstantPb instantPb = value.sent_at;
                InstantPb instantPbRedact = instantPb != null ? InstantPb.ADAPTER.redact(instantPb) : null;
                InstantPb instantPb2 = value.deadline;
                return IotMetadata.copy$default(value, null, null, null, instantPbRedact, instantPb2 != null ? InstantPb.ADAPTER.redact(instantPb2) : null, null, null, null, null, ByteString.EMPTY, WinError.ERROR_INVALID_ADDRESS, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public IotMetadata decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = "";
                String strDecode3 = strDecode2;
                String strDecode4 = strDecode3;
                String strDecode5 = strDecode4;
                String strDecode6 = strDecode5;
                InstantPb instantPbDecode = null;
                InstantPb instantPbDecode2 = null;
                String strDecode7 = strDecode6;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 2:
                                strDecode7 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 3:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 4:
                                instantPbDecode = InstantPb.ADAPTER.decode(reader);
                                break;
                            case 5:
                                instantPbDecode2 = InstantPb.ADAPTER.decode(reader);
                                break;
                            case 6:
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 7:
                                strDecode4 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 8:
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                            case 9:
                                strDecode5 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 10:
                                strDecode6 = ProtoAdapter.STRING.decode(reader);
                                break;
                        }
                    } else {
                        return new IotMetadata(strDecode, strDecode7, strDecode2, instantPbDecode, instantPbDecode2, strDecode3, strDecode4, strDecode5, strDecode6, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
