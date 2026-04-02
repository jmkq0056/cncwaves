package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema;

import com.google.firebase.analytics.FirebaseAnalytics;
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
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.UpdateOperationEvent;
import com.sun.jna.platform.win32.WinUser;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: UpdateOperationEvent.kt */
/* JADX INFO: loaded from: classes4.dex */
@kotlin.Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\u0018\u0000 #2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u000b!\"#$%&'()*+B\u0083\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\u0014\b\u0002\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0014\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0016¢\u0006\u0002\u0010\u0017J\u0084\u0001\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0014\b\u0002\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00142\b\b\u0002\u0010\u0015\u001a\u00020\u0016J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0096\u0002J\b\u0010\u001d\u001a\u00020\u001eH\u0016J\b\u0010\u001f\u001a\u00020\u0002H\u0016J\b\u0010 \u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00148\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006,"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;", "action_id", "", "check_for_updates", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$CheckForUpdatesOperation;", "precondition_check_operation", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$PreconditionCheckOperation;", "download", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DownloadOperation;", "install", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$InstallOperation;", "finish", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation;", "result", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result;", "progress", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Progress;", "client_state_tags", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$CheckForUpdatesOperation;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$PreconditionCheckOperation;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DownloadOperation;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$InstallOperation;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Progress;Ljava/util/Map;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "CheckForUpdatesOperation", "Companion", "DeviceOperation", "DownloadOperation", "FinishOperation", "InstallOperation", "PreconditionCheckOperation", "Progress", "Result", "Severity", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UpdateOperationEvent extends Message<UpdateOperationEvent, Builder> {
    public static final ProtoAdapter<UpdateOperationEvent> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "actionId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String action_id;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.UpdateOperationEvent$CheckForUpdatesOperation#ADAPTER", jsonName = "checkForUpdates", oneofName = "operation", schemaIndex = 1, tag = 2)
    public final CheckForUpdatesOperation check_for_updates;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "clientStateTags", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 8, tag = 9)
    public final Map<String, String> client_state_tags;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.UpdateOperationEvent$DownloadOperation#ADAPTER", oneofName = "operation", schemaIndex = 3, tag = 3)
    public final DownloadOperation download;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.UpdateOperationEvent$FinishOperation#ADAPTER", oneofName = "operation", schemaIndex = 5, tag = 5)
    public final FinishOperation finish;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.UpdateOperationEvent$InstallOperation#ADAPTER", oneofName = "operation", schemaIndex = 4, tag = 4)
    public final InstallOperation install;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.UpdateOperationEvent$PreconditionCheckOperation#ADAPTER", jsonName = "preconditionCheckOperation", oneofName = "operation", schemaIndex = 2, tag = 10)
    public final PreconditionCheckOperation precondition_check_operation;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.UpdateOperationEvent$Progress#ADAPTER", oneofName = RemoteConfigConstants.ResponseFieldKey.STATE, schemaIndex = 7, tag = 7)
    public final Progress progress;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.UpdateOperationEvent$Result#ADAPTER", oneofName = RemoteConfigConstants.ResponseFieldKey.STATE, schemaIndex = 6, tag = 6)
    public final Result result;

    public UpdateOperationEvent() {
        this(null, null, null, null, null, null, null, null, null, null, WinUser.CF_GDIOBJLAST, null);
    }

    public /* synthetic */ UpdateOperationEvent(String str, CheckForUpdatesOperation checkForUpdatesOperation, PreconditionCheckOperation preconditionCheckOperation, DownloadOperation downloadOperation, InstallOperation installOperation, FinishOperation finishOperation, Result result, Progress progress, Map map, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? null : checkForUpdatesOperation, (i & 4) != 0 ? null : preconditionCheckOperation, (i & 8) != 0 ? null : downloadOperation, (i & 16) != 0 ? null : installOperation, (i & 32) != 0 ? null : finishOperation, (i & 64) != 0 ? null : result, (i & 128) != 0 ? null : progress, (i & 256) != 0 ? MapsKt.emptyMap() : map, (i & 512) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateOperationEvent(String action_id, CheckForUpdatesOperation checkForUpdatesOperation, PreconditionCheckOperation preconditionCheckOperation, DownloadOperation downloadOperation, InstallOperation installOperation, FinishOperation finishOperation, Result result, Progress progress, Map<String, String> client_state_tags, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(action_id, "action_id");
        Intrinsics.checkNotNullParameter(client_state_tags, "client_state_tags");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.action_id = action_id;
        this.check_for_updates = checkForUpdatesOperation;
        this.precondition_check_operation = preconditionCheckOperation;
        this.download = downloadOperation;
        this.install = installOperation;
        this.finish = finishOperation;
        this.result = result;
        this.progress = progress;
        this.client_state_tags = Internal.immutableCopyOf("client_state_tags", client_state_tags);
        if (Internal.countNonNull(checkForUpdatesOperation, preconditionCheckOperation, downloadOperation, installOperation, finishOperation) > 1) {
            throw new IllegalArgumentException("At most one of check_for_updates, precondition_check_operation, download, install, finish may be non-null".toString());
        }
        if (Internal.countNonNull(result, progress) > 1) {
            throw new IllegalArgumentException("At most one of result, progress may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.action_id = this.action_id;
        builder.check_for_updates = this.check_for_updates;
        builder.precondition_check_operation = this.precondition_check_operation;
        builder.download = this.download;
        builder.install = this.install;
        builder.finish = this.finish;
        builder.result = this.result;
        builder.progress = this.progress;
        builder.client_state_tags = this.client_state_tags;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof UpdateOperationEvent)) {
            return false;
        }
        UpdateOperationEvent updateOperationEvent = (UpdateOperationEvent) other;
        return Intrinsics.areEqual(unknownFields(), updateOperationEvent.unknownFields()) && Intrinsics.areEqual(this.action_id, updateOperationEvent.action_id) && Intrinsics.areEqual(this.check_for_updates, updateOperationEvent.check_for_updates) && Intrinsics.areEqual(this.precondition_check_operation, updateOperationEvent.precondition_check_operation) && Intrinsics.areEqual(this.download, updateOperationEvent.download) && Intrinsics.areEqual(this.install, updateOperationEvent.install) && Intrinsics.areEqual(this.finish, updateOperationEvent.finish) && Intrinsics.areEqual(this.result, updateOperationEvent.result) && Intrinsics.areEqual(this.progress, updateOperationEvent.progress) && Intrinsics.areEqual(this.client_state_tags, updateOperationEvent.client_state_tags);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + this.action_id.hashCode()) * 37;
        CheckForUpdatesOperation checkForUpdatesOperation = this.check_for_updates;
        int iHashCode2 = (iHashCode + (checkForUpdatesOperation != null ? checkForUpdatesOperation.hashCode() : 0)) * 37;
        PreconditionCheckOperation preconditionCheckOperation = this.precondition_check_operation;
        int iHashCode3 = (iHashCode2 + (preconditionCheckOperation != null ? preconditionCheckOperation.hashCode() : 0)) * 37;
        DownloadOperation downloadOperation = this.download;
        int iHashCode4 = (iHashCode3 + (downloadOperation != null ? downloadOperation.hashCode() : 0)) * 37;
        InstallOperation installOperation = this.install;
        int iHashCode5 = (iHashCode4 + (installOperation != null ? installOperation.hashCode() : 0)) * 37;
        FinishOperation finishOperation = this.finish;
        int iHashCode6 = (iHashCode5 + (finishOperation != null ? finishOperation.hashCode() : 0)) * 37;
        Result result = this.result;
        int iHashCode7 = (iHashCode6 + (result != null ? result.hashCode() : 0)) * 37;
        Progress progress = this.progress;
        int iHashCode8 = ((iHashCode7 + (progress != null ? progress.hashCode() : 0)) * 37) + this.client_state_tags.hashCode();
        this.hashCode = iHashCode8;
        return iHashCode8;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("action_id=" + Internal.sanitize(this.action_id));
        if (this.check_for_updates != null) {
            arrayList2.add("check_for_updates=" + this.check_for_updates);
        }
        if (this.precondition_check_operation != null) {
            arrayList2.add("precondition_check_operation=" + this.precondition_check_operation);
        }
        if (this.download != null) {
            arrayList2.add("download=" + this.download);
        }
        if (this.install != null) {
            arrayList2.add("install=" + this.install);
        }
        if (this.finish != null) {
            arrayList2.add("finish=" + this.finish);
        }
        if (this.result != null) {
            arrayList2.add("result=" + this.result);
        }
        if (this.progress != null) {
            arrayList2.add("progress=" + this.progress);
        }
        if (!this.client_state_tags.isEmpty()) {
            arrayList2.add("client_state_tags=" + this.client_state_tags);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "UpdateOperationEvent{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ UpdateOperationEvent copy$default(UpdateOperationEvent updateOperationEvent, String str, CheckForUpdatesOperation checkForUpdatesOperation, PreconditionCheckOperation preconditionCheckOperation, DownloadOperation downloadOperation, InstallOperation installOperation, FinishOperation finishOperation, Result result, Progress progress, Map map, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = updateOperationEvent.action_id;
        }
        if ((i & 2) != 0) {
            checkForUpdatesOperation = updateOperationEvent.check_for_updates;
        }
        if ((i & 4) != 0) {
            preconditionCheckOperation = updateOperationEvent.precondition_check_operation;
        }
        if ((i & 8) != 0) {
            downloadOperation = updateOperationEvent.download;
        }
        if ((i & 16) != 0) {
            installOperation = updateOperationEvent.install;
        }
        if ((i & 32) != 0) {
            finishOperation = updateOperationEvent.finish;
        }
        if ((i & 64) != 0) {
            result = updateOperationEvent.result;
        }
        if ((i & 128) != 0) {
            progress = updateOperationEvent.progress;
        }
        if ((i & 256) != 0) {
            map = updateOperationEvent.client_state_tags;
        }
        if ((i & 512) != 0) {
            byteString = updateOperationEvent.unknownFields();
        }
        Map map2 = map;
        ByteString byteString2 = byteString;
        Result result2 = result;
        Progress progress2 = progress;
        InstallOperation installOperation2 = installOperation;
        FinishOperation finishOperation2 = finishOperation;
        return updateOperationEvent.copy(str, checkForUpdatesOperation, preconditionCheckOperation, downloadOperation, installOperation2, finishOperation2, result2, progress2, map2, byteString2);
    }

    public final UpdateOperationEvent copy(String action_id, CheckForUpdatesOperation check_for_updates, PreconditionCheckOperation precondition_check_operation, DownloadOperation download, InstallOperation install, FinishOperation finish, Result result, Progress progress, Map<String, String> client_state_tags, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(action_id, "action_id");
        Intrinsics.checkNotNullParameter(client_state_tags, "client_state_tags");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new UpdateOperationEvent(action_id, check_for_updates, precondition_check_operation, download, install, finish, result, progress, client_state_tags, unknownFields);
    }

    /* JADX INFO: compiled from: UpdateOperationEvent.kt */
    @kotlin.Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010\u0016\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u001a\u0010\b\u001a\u00020\u00002\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0010\u0010\u0012\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\u0010\u0010\u0014\u001a\u00020\u00002\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;", "()V", "action_id", "", "check_for_updates", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$CheckForUpdatesOperation;", "client_state_tags", "", "download", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DownloadOperation;", "finish", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation;", "install", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$InstallOperation;", "precondition_check_operation", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$PreconditionCheckOperation;", "progress", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Progress;", "result", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<UpdateOperationEvent, Builder> {
        public CheckForUpdatesOperation check_for_updates;
        public DownloadOperation download;
        public FinishOperation finish;
        public InstallOperation install;
        public PreconditionCheckOperation precondition_check_operation;
        public Progress progress;
        public Result result;
        public String action_id = "";
        public Map<String, String> client_state_tags = MapsKt.emptyMap();

        public final Builder action_id(String action_id) {
            Intrinsics.checkNotNullParameter(action_id, "action_id");
            this.action_id = action_id;
            return this;
        }

        public final Builder client_state_tags(Map<String, String> client_state_tags) {
            Intrinsics.checkNotNullParameter(client_state_tags, "client_state_tags");
            this.client_state_tags = client_state_tags;
            return this;
        }

        public final Builder check_for_updates(CheckForUpdatesOperation check_for_updates) {
            this.check_for_updates = check_for_updates;
            this.precondition_check_operation = null;
            this.download = null;
            this.install = null;
            this.finish = null;
            return this;
        }

        public final Builder precondition_check_operation(PreconditionCheckOperation precondition_check_operation) {
            this.precondition_check_operation = precondition_check_operation;
            this.check_for_updates = null;
            this.download = null;
            this.install = null;
            this.finish = null;
            return this;
        }

        public final Builder download(DownloadOperation download) {
            this.download = download;
            this.check_for_updates = null;
            this.precondition_check_operation = null;
            this.install = null;
            this.finish = null;
            return this;
        }

        public final Builder install(InstallOperation install) {
            this.install = install;
            this.check_for_updates = null;
            this.precondition_check_operation = null;
            this.download = null;
            this.finish = null;
            return this;
        }

        public final Builder finish(FinishOperation finish) {
            this.finish = finish;
            this.check_for_updates = null;
            this.precondition_check_operation = null;
            this.download = null;
            this.install = null;
            return this;
        }

        public final Builder result(Result result) {
            this.result = result;
            this.progress = null;
            return this;
        }

        public final Builder progress(Progress progress) {
            this.progress = progress;
            this.result = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public UpdateOperationEvent build() {
            return new UpdateOperationEvent(this.action_id, this.check_for_updates, this.precondition_check_operation, this.download, this.install, this.finish, this.result, this.progress, this.client_state_tags, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: UpdateOperationEvent.kt */
    @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ UpdateOperationEvent build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(UpdateOperationEvent.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<UpdateOperationEvent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.UpdateOperationEvent$Companion$ADAPTER$1

            /* JADX INFO: renamed from: client_state_tagsAdapter$delegate, reason: from kotlin metadata */
            private final Lazy client_state_tagsAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends String>>>() { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.UpdateOperationEvent$Companion$ADAPTER$1$client_state_tagsAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends String>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.STRING);
                }
            });

            private final ProtoAdapter<Map<String, String>> getClient_state_tagsAdapter() {
                return (ProtoAdapter) this.client_state_tagsAdapter.getValue();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(UpdateOperationEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.action_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.action_id);
                }
                return size + UpdateOperationEvent.CheckForUpdatesOperation.ADAPTER.encodedSizeWithTag(2, value.check_for_updates) + UpdateOperationEvent.PreconditionCheckOperation.ADAPTER.encodedSizeWithTag(10, value.precondition_check_operation) + UpdateOperationEvent.DownloadOperation.ADAPTER.encodedSizeWithTag(3, value.download) + UpdateOperationEvent.InstallOperation.ADAPTER.encodedSizeWithTag(4, value.install) + UpdateOperationEvent.FinishOperation.ADAPTER.encodedSizeWithTag(5, value.finish) + UpdateOperationEvent.Result.ADAPTER.encodedSizeWithTag(6, value.result) + UpdateOperationEvent.Progress.ADAPTER.encodedSizeWithTag(7, value.progress) + getClient_state_tagsAdapter().encodedSizeWithTag(9, value.client_state_tags);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, UpdateOperationEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.action_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.action_id);
                }
                getClient_state_tagsAdapter().encodeWithTag(writer, 9, value.client_state_tags);
                UpdateOperationEvent.CheckForUpdatesOperation.ADAPTER.encodeWithTag(writer, 2, value.check_for_updates);
                UpdateOperationEvent.PreconditionCheckOperation.ADAPTER.encodeWithTag(writer, 10, value.precondition_check_operation);
                UpdateOperationEvent.DownloadOperation.ADAPTER.encodeWithTag(writer, 3, value.download);
                UpdateOperationEvent.InstallOperation.ADAPTER.encodeWithTag(writer, 4, value.install);
                UpdateOperationEvent.FinishOperation.ADAPTER.encodeWithTag(writer, 5, value.finish);
                UpdateOperationEvent.Result.ADAPTER.encodeWithTag(writer, 6, value.result);
                UpdateOperationEvent.Progress.ADAPTER.encodeWithTag(writer, 7, value.progress);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, UpdateOperationEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                UpdateOperationEvent.Progress.ADAPTER.encodeWithTag(writer, 7, value.progress);
                UpdateOperationEvent.Result.ADAPTER.encodeWithTag(writer, 6, value.result);
                UpdateOperationEvent.FinishOperation.ADAPTER.encodeWithTag(writer, 5, value.finish);
                UpdateOperationEvent.InstallOperation.ADAPTER.encodeWithTag(writer, 4, value.install);
                UpdateOperationEvent.DownloadOperation.ADAPTER.encodeWithTag(writer, 3, value.download);
                UpdateOperationEvent.PreconditionCheckOperation.ADAPTER.encodeWithTag(writer, 10, value.precondition_check_operation);
                UpdateOperationEvent.CheckForUpdatesOperation.ADAPTER.encodeWithTag(writer, 2, value.check_for_updates);
                getClient_state_tagsAdapter().encodeWithTag(writer, 9, value.client_state_tags);
                if (Intrinsics.areEqual(value.action_id, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.action_id);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public UpdateOperationEvent decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                UpdateOperationEvent.CheckForUpdatesOperation checkForUpdatesOperationDecode = null;
                UpdateOperationEvent.PreconditionCheckOperation preconditionCheckOperationDecode = null;
                UpdateOperationEvent.DownloadOperation downloadOperationDecode = null;
                UpdateOperationEvent.InstallOperation installOperationDecode = null;
                UpdateOperationEvent.FinishOperation finishOperationDecode = null;
                UpdateOperationEvent.Result resultDecode = null;
                UpdateOperationEvent.Progress progressDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 2:
                                checkForUpdatesOperationDecode = UpdateOperationEvent.CheckForUpdatesOperation.ADAPTER.decode(reader);
                                break;
                            case 3:
                                downloadOperationDecode = UpdateOperationEvent.DownloadOperation.ADAPTER.decode(reader);
                                break;
                            case 4:
                                installOperationDecode = UpdateOperationEvent.InstallOperation.ADAPTER.decode(reader);
                                break;
                            case 5:
                                finishOperationDecode = UpdateOperationEvent.FinishOperation.ADAPTER.decode(reader);
                                break;
                            case 6:
                                resultDecode = UpdateOperationEvent.Result.ADAPTER.decode(reader);
                                break;
                            case 7:
                                progressDecode = UpdateOperationEvent.Progress.ADAPTER.decode(reader);
                                break;
                            case 8:
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                            case 9:
                                linkedHashMap.putAll(getClient_state_tagsAdapter().decode(reader));
                                break;
                            case 10:
                                preconditionCheckOperationDecode = UpdateOperationEvent.PreconditionCheckOperation.ADAPTER.decode(reader);
                                break;
                        }
                    } else {
                        return new UpdateOperationEvent(strDecode, checkForUpdatesOperationDecode, preconditionCheckOperationDecode, downloadOperationDecode, installOperationDecode, finishOperationDecode, resultDecode, progressDecode, linkedHashMap, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public UpdateOperationEvent redact(UpdateOperationEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                UpdateOperationEvent.CheckForUpdatesOperation checkForUpdatesOperation = value.check_for_updates;
                UpdateOperationEvent.CheckForUpdatesOperation checkForUpdatesOperationRedact = checkForUpdatesOperation != null ? UpdateOperationEvent.CheckForUpdatesOperation.ADAPTER.redact(checkForUpdatesOperation) : null;
                UpdateOperationEvent.PreconditionCheckOperation preconditionCheckOperation = value.precondition_check_operation;
                UpdateOperationEvent.PreconditionCheckOperation preconditionCheckOperationRedact = preconditionCheckOperation != null ? UpdateOperationEvent.PreconditionCheckOperation.ADAPTER.redact(preconditionCheckOperation) : null;
                UpdateOperationEvent.DownloadOperation downloadOperation = value.download;
                UpdateOperationEvent.DownloadOperation downloadOperationRedact = downloadOperation != null ? UpdateOperationEvent.DownloadOperation.ADAPTER.redact(downloadOperation) : null;
                UpdateOperationEvent.InstallOperation installOperation = value.install;
                UpdateOperationEvent.InstallOperation installOperationRedact = installOperation != null ? UpdateOperationEvent.InstallOperation.ADAPTER.redact(installOperation) : null;
                UpdateOperationEvent.FinishOperation finishOperation = value.finish;
                UpdateOperationEvent.FinishOperation finishOperationRedact = finishOperation != null ? UpdateOperationEvent.FinishOperation.ADAPTER.redact(finishOperation) : null;
                UpdateOperationEvent.Result result = value.result;
                UpdateOperationEvent.Result resultRedact = result != null ? UpdateOperationEvent.Result.ADAPTER.redact(result) : null;
                UpdateOperationEvent.Progress progress = value.progress;
                return UpdateOperationEvent.copy$default(value, null, checkForUpdatesOperationRedact, preconditionCheckOperationRedact, downloadOperationRedact, installOperationRedact, finishOperationRedact, resultRedact, progress != null ? UpdateOperationEvent.Progress.ADAPTER.redact(progress) : null, null, ByteString.EMPTY, 257, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: UpdateOperationEvent.kt */
    @kotlin.Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "DEVICE_OPERATION_INVALID", "DEVICE_REBOOT", "CLIENT_RESTART", "RESUME_NORMAL_OPERATION", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class DeviceOperation implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ DeviceOperation[] $VALUES;
        public static final ProtoAdapter<DeviceOperation> ADAPTER;
        public static final DeviceOperation CLIENT_RESTART;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final DeviceOperation DEVICE_OPERATION_INVALID;
        public static final DeviceOperation DEVICE_REBOOT;
        public static final DeviceOperation RESUME_NORMAL_OPERATION;
        private final int value;

        private static final /* synthetic */ DeviceOperation[] $values() {
            return new DeviceOperation[]{DEVICE_OPERATION_INVALID, DEVICE_REBOOT, CLIENT_RESTART, RESUME_NORMAL_OPERATION};
        }

        @JvmStatic
        public static final DeviceOperation fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<DeviceOperation> getEntries() {
            return $ENTRIES;
        }

        public static DeviceOperation valueOf(String str) {
            return (DeviceOperation) Enum.valueOf(DeviceOperation.class, str);
        }

        public static DeviceOperation[] values() {
            return (DeviceOperation[]) $VALUES.clone();
        }

        private DeviceOperation(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final DeviceOperation deviceOperation = new DeviceOperation("DEVICE_OPERATION_INVALID", 0, 0);
            DEVICE_OPERATION_INVALID = deviceOperation;
            DEVICE_REBOOT = new DeviceOperation("DEVICE_REBOOT", 1, 1);
            CLIENT_RESTART = new DeviceOperation("CLIENT_RESTART", 2, 2);
            RESUME_NORMAL_OPERATION = new DeviceOperation("RESUME_NORMAL_OPERATION", 3, 3);
            DeviceOperation[] deviceOperationArr$values = $values();
            $VALUES = deviceOperationArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(deviceOperationArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DeviceOperation.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<DeviceOperation>(orCreateKotlinClass, syntax, deviceOperation) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.UpdateOperationEvent$DeviceOperation$Companion$ADAPTER$1
                {
                    UpdateOperationEvent.DeviceOperation deviceOperation2 = deviceOperation;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public UpdateOperationEvent.DeviceOperation fromValue(int value) {
                    return UpdateOperationEvent.DeviceOperation.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: UpdateOperationEvent.kt */
        @kotlin.Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final DeviceOperation fromValue(int value) {
                if (value == 0) {
                    return DeviceOperation.DEVICE_OPERATION_INVALID;
                }
                if (value == 1) {
                    return DeviceOperation.DEVICE_REBOOT;
                }
                if (value == 2) {
                    return DeviceOperation.CLIENT_RESTART;
                }
                if (value != 3) {
                    return null;
                }
                return DeviceOperation.RESUME_NORMAL_OPERATION;
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: UpdateOperationEvent.kt */
    @kotlin.Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Severity;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "SEVERITY_INVALID", "WARNING", "FATAL", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Severity implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Severity[] $VALUES;
        public static final ProtoAdapter<Severity> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final Severity FATAL;
        public static final Severity SEVERITY_INVALID;
        public static final Severity WARNING;
        private final int value;

        private static final /* synthetic */ Severity[] $values() {
            return new Severity[]{SEVERITY_INVALID, WARNING, FATAL};
        }

        @JvmStatic
        public static final Severity fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<Severity> getEntries() {
            return $ENTRIES;
        }

        public static Severity valueOf(String str) {
            return (Severity) Enum.valueOf(Severity.class, str);
        }

        public static Severity[] values() {
            return (Severity[]) $VALUES.clone();
        }

        private Severity(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final Severity severity = new Severity("SEVERITY_INVALID", 0, 0);
            SEVERITY_INVALID = severity;
            WARNING = new Severity("WARNING", 1, 1);
            FATAL = new Severity("FATAL", 2, 2);
            Severity[] severityArr$values = $values();
            $VALUES = severityArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(severityArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Severity.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<Severity>(orCreateKotlinClass, syntax, severity) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.UpdateOperationEvent$Severity$Companion$ADAPTER$1
                {
                    UpdateOperationEvent.Severity severity2 = severity;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public UpdateOperationEvent.Severity fromValue(int value) {
                    return UpdateOperationEvent.Severity.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: UpdateOperationEvent.kt */
        @kotlin.Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Severity$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Severity;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final Severity fromValue(int value) {
                if (value == 0) {
                    return Severity.SEVERITY_INVALID;
                }
                if (value == 1) {
                    return Severity.WARNING;
                }
                if (value != 2) {
                    return null;
                }
                return Severity.FATAL;
            }
        }
    }

    /* JADX INFO: compiled from: UpdateOperationEvent.kt */
    @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$CheckForUpdatesOperation;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$CheckForUpdatesOperation$Builder;", OfflineStorageConstantsKt.ID, "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class CheckForUpdatesOperation extends Message<CheckForUpdatesOperation, Builder> {
        public static final ProtoAdapter<CheckForUpdatesOperation> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final String id;

        /* JADX WARN: Multi-variable type inference failed */
        public CheckForUpdatesOperation() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        public /* synthetic */ CheckForUpdatesOperation(String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CheckForUpdatesOperation(String id, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.id = id;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.id = this.id;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof CheckForUpdatesOperation)) {
                return false;
            }
            CheckForUpdatesOperation checkForUpdatesOperation = (CheckForUpdatesOperation) other;
            return Intrinsics.areEqual(unknownFields(), checkForUpdatesOperation.unknownFields()) && Intrinsics.areEqual(this.id, checkForUpdatesOperation.id);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (unknownFields().hashCode() * 37) + this.id.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            arrayList.add("id=" + Internal.sanitize(this.id));
            return CollectionsKt.joinToString$default(arrayList, ", ", "CheckForUpdatesOperation{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ CheckForUpdatesOperation copy$default(CheckForUpdatesOperation checkForUpdatesOperation, String str, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = checkForUpdatesOperation.id;
            }
            if ((i & 2) != 0) {
                byteString = checkForUpdatesOperation.unknownFields();
            }
            return checkForUpdatesOperation.copy(str, byteString);
        }

        public final CheckForUpdatesOperation copy(String id, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new CheckForUpdatesOperation(id, unknownFields);
        }

        /* JADX INFO: compiled from: UpdateOperationEvent.kt */
        @kotlin.Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$CheckForUpdatesOperation$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$CheckForUpdatesOperation;", "()V", OfflineStorageConstantsKt.ID, "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<CheckForUpdatesOperation, Builder> {
            public String id = "";

            public final Builder id(String id) {
                Intrinsics.checkNotNullParameter(id, "id");
                this.id = id;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public CheckForUpdatesOperation build() {
                return new CheckForUpdatesOperation(this.id, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: UpdateOperationEvent.kt */
        @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$CheckForUpdatesOperation$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$CheckForUpdatesOperation;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$CheckForUpdatesOperation$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ CheckForUpdatesOperation build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CheckForUpdatesOperation.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<CheckForUpdatesOperation>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.UpdateOperationEvent$CheckForUpdatesOperation$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(UpdateOperationEvent.CheckForUpdatesOperation value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    return !Intrinsics.areEqual(value.id, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(1, value.id) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, UpdateOperationEvent.CheckForUpdatesOperation value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (!Intrinsics.areEqual(value.id, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.id);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, UpdateOperationEvent.CheckForUpdatesOperation value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (Intrinsics.areEqual(value.id, "")) {
                        return;
                    }
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.id);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public UpdateOperationEvent.CheckForUpdatesOperation redact(UpdateOperationEvent.CheckForUpdatesOperation value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return UpdateOperationEvent.CheckForUpdatesOperation.copy$default(value, null, ByteString.EMPTY, 1, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public UpdateOperationEvent.CheckForUpdatesOperation decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = "";
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new UpdateOperationEvent.CheckForUpdatesOperation(strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
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

    /* JADX INFO: compiled from: UpdateOperationEvent.kt */
    @kotlin.Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ$\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DownloadOperation;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DownloadOperation$Builder;", "device_asset_version_id", "", "device_assets_snapshot_id", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class DownloadOperation extends Message<DownloadOperation, Builder> {
        public static final ProtoAdapter<DownloadOperation> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "deviceAssetVersionId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final String device_asset_version_id;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "deviceAssetsSnapshotId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final String device_assets_snapshot_id;

        public DownloadOperation() {
            this(null, null, null, 7, null);
        }

        public /* synthetic */ DownloadOperation(String str, String str2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DownloadOperation(String device_asset_version_id, String device_assets_snapshot_id, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(device_asset_version_id, "device_asset_version_id");
            Intrinsics.checkNotNullParameter(device_assets_snapshot_id, "device_assets_snapshot_id");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.device_asset_version_id = device_asset_version_id;
            this.device_assets_snapshot_id = device_assets_snapshot_id;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.device_asset_version_id = this.device_asset_version_id;
            builder.device_assets_snapshot_id = this.device_assets_snapshot_id;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof DownloadOperation)) {
                return false;
            }
            DownloadOperation downloadOperation = (DownloadOperation) other;
            return Intrinsics.areEqual(unknownFields(), downloadOperation.unknownFields()) && Intrinsics.areEqual(this.device_asset_version_id, downloadOperation.device_asset_version_id) && Intrinsics.areEqual(this.device_assets_snapshot_id, downloadOperation.device_assets_snapshot_id);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((unknownFields().hashCode() * 37) + this.device_asset_version_id.hashCode()) * 37) + this.device_assets_snapshot_id.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("device_asset_version_id=" + Internal.sanitize(this.device_asset_version_id));
            arrayList2.add("device_assets_snapshot_id=" + Internal.sanitize(this.device_assets_snapshot_id));
            return CollectionsKt.joinToString$default(arrayList, ", ", "DownloadOperation{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ DownloadOperation copy$default(DownloadOperation downloadOperation, String str, String str2, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = downloadOperation.device_asset_version_id;
            }
            if ((i & 2) != 0) {
                str2 = downloadOperation.device_assets_snapshot_id;
            }
            if ((i & 4) != 0) {
                byteString = downloadOperation.unknownFields();
            }
            return downloadOperation.copy(str, str2, byteString);
        }

        public final DownloadOperation copy(String device_asset_version_id, String device_assets_snapshot_id, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(device_asset_version_id, "device_asset_version_id");
            Intrinsics.checkNotNullParameter(device_assets_snapshot_id, "device_assets_snapshot_id");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new DownloadOperation(device_asset_version_id, device_assets_snapshot_id, unknownFields);
        }

        /* JADX INFO: compiled from: UpdateOperationEvent.kt */
        @kotlin.Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DownloadOperation$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DownloadOperation;", "()V", "device_asset_version_id", "", "device_assets_snapshot_id", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<DownloadOperation, Builder> {
            public String device_asset_version_id = "";
            public String device_assets_snapshot_id = "";

            public final Builder device_asset_version_id(String device_asset_version_id) {
                Intrinsics.checkNotNullParameter(device_asset_version_id, "device_asset_version_id");
                this.device_asset_version_id = device_asset_version_id;
                return this;
            }

            public final Builder device_assets_snapshot_id(String device_assets_snapshot_id) {
                Intrinsics.checkNotNullParameter(device_assets_snapshot_id, "device_assets_snapshot_id");
                this.device_assets_snapshot_id = device_assets_snapshot_id;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public DownloadOperation build() {
                return new DownloadOperation(this.device_asset_version_id, this.device_assets_snapshot_id, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: UpdateOperationEvent.kt */
        @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DownloadOperation$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DownloadOperation;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DownloadOperation$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ DownloadOperation build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DownloadOperation.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<DownloadOperation>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.UpdateOperationEvent$DownloadOperation$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(UpdateOperationEvent.DownloadOperation value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (!Intrinsics.areEqual(value.device_asset_version_id, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.device_asset_version_id);
                    }
                    return !Intrinsics.areEqual(value.device_assets_snapshot_id, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(2, value.device_assets_snapshot_id) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, UpdateOperationEvent.DownloadOperation value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (!Intrinsics.areEqual(value.device_asset_version_id, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.device_asset_version_id);
                    }
                    if (!Intrinsics.areEqual(value.device_assets_snapshot_id, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.device_assets_snapshot_id);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, UpdateOperationEvent.DownloadOperation value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (!Intrinsics.areEqual(value.device_assets_snapshot_id, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.device_assets_snapshot_id);
                    }
                    if (Intrinsics.areEqual(value.device_asset_version_id, "")) {
                        return;
                    }
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.device_asset_version_id);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public UpdateOperationEvent.DownloadOperation redact(UpdateOperationEvent.DownloadOperation value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return UpdateOperationEvent.DownloadOperation.copy$default(value, null, null, ByteString.EMPTY, 3, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public UpdateOperationEvent.DownloadOperation decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = "";
                    String strDecode2 = "";
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new UpdateOperationEvent.DownloadOperation(strDecode, strDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 2) {
                            strDecode2 = ProtoAdapter.STRING.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }

    /* JADX INFO: compiled from: UpdateOperationEvent.kt */
    @kotlin.Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ$\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$InstallOperation;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$InstallOperation$Builder;", "device_asset_version_id", "", "device_assets_snapshot_id", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class InstallOperation extends Message<InstallOperation, Builder> {
        public static final ProtoAdapter<InstallOperation> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "deviceAssetVersionId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final String device_asset_version_id;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "deviceAssetsSnapshotId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final String device_assets_snapshot_id;

        public InstallOperation() {
            this(null, null, null, 7, null);
        }

        public /* synthetic */ InstallOperation(String str, String str2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InstallOperation(String device_asset_version_id, String device_assets_snapshot_id, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(device_asset_version_id, "device_asset_version_id");
            Intrinsics.checkNotNullParameter(device_assets_snapshot_id, "device_assets_snapshot_id");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.device_asset_version_id = device_asset_version_id;
            this.device_assets_snapshot_id = device_assets_snapshot_id;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.device_asset_version_id = this.device_asset_version_id;
            builder.device_assets_snapshot_id = this.device_assets_snapshot_id;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof InstallOperation)) {
                return false;
            }
            InstallOperation installOperation = (InstallOperation) other;
            return Intrinsics.areEqual(unknownFields(), installOperation.unknownFields()) && Intrinsics.areEqual(this.device_asset_version_id, installOperation.device_asset_version_id) && Intrinsics.areEqual(this.device_assets_snapshot_id, installOperation.device_assets_snapshot_id);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((unknownFields().hashCode() * 37) + this.device_asset_version_id.hashCode()) * 37) + this.device_assets_snapshot_id.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("device_asset_version_id=" + Internal.sanitize(this.device_asset_version_id));
            arrayList2.add("device_assets_snapshot_id=" + Internal.sanitize(this.device_assets_snapshot_id));
            return CollectionsKt.joinToString$default(arrayList, ", ", "InstallOperation{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ InstallOperation copy$default(InstallOperation installOperation, String str, String str2, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = installOperation.device_asset_version_id;
            }
            if ((i & 2) != 0) {
                str2 = installOperation.device_assets_snapshot_id;
            }
            if ((i & 4) != 0) {
                byteString = installOperation.unknownFields();
            }
            return installOperation.copy(str, str2, byteString);
        }

        public final InstallOperation copy(String device_asset_version_id, String device_assets_snapshot_id, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(device_asset_version_id, "device_asset_version_id");
            Intrinsics.checkNotNullParameter(device_assets_snapshot_id, "device_assets_snapshot_id");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new InstallOperation(device_asset_version_id, device_assets_snapshot_id, unknownFields);
        }

        /* JADX INFO: compiled from: UpdateOperationEvent.kt */
        @kotlin.Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$InstallOperation$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$InstallOperation;", "()V", "device_asset_version_id", "", "device_assets_snapshot_id", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<InstallOperation, Builder> {
            public String device_asset_version_id = "";
            public String device_assets_snapshot_id = "";

            public final Builder device_asset_version_id(String device_asset_version_id) {
                Intrinsics.checkNotNullParameter(device_asset_version_id, "device_asset_version_id");
                this.device_asset_version_id = device_asset_version_id;
                return this;
            }

            public final Builder device_assets_snapshot_id(String device_assets_snapshot_id) {
                Intrinsics.checkNotNullParameter(device_assets_snapshot_id, "device_assets_snapshot_id");
                this.device_assets_snapshot_id = device_assets_snapshot_id;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public InstallOperation build() {
                return new InstallOperation(this.device_asset_version_id, this.device_assets_snapshot_id, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: UpdateOperationEvent.kt */
        @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$InstallOperation$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$InstallOperation;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$InstallOperation$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ InstallOperation build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(InstallOperation.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<InstallOperation>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.UpdateOperationEvent$InstallOperation$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(UpdateOperationEvent.InstallOperation value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (!Intrinsics.areEqual(value.device_asset_version_id, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.device_asset_version_id);
                    }
                    return !Intrinsics.areEqual(value.device_assets_snapshot_id, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(2, value.device_assets_snapshot_id) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, UpdateOperationEvent.InstallOperation value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (!Intrinsics.areEqual(value.device_asset_version_id, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.device_asset_version_id);
                    }
                    if (!Intrinsics.areEqual(value.device_assets_snapshot_id, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.device_assets_snapshot_id);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, UpdateOperationEvent.InstallOperation value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (!Intrinsics.areEqual(value.device_assets_snapshot_id, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.device_assets_snapshot_id);
                    }
                    if (Intrinsics.areEqual(value.device_asset_version_id, "")) {
                        return;
                    }
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.device_asset_version_id);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public UpdateOperationEvent.InstallOperation redact(UpdateOperationEvent.InstallOperation value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return UpdateOperationEvent.InstallOperation.copy$default(value, null, null, ByteString.EMPTY, 3, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public UpdateOperationEvent.InstallOperation decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = "";
                    String strDecode2 = "";
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new UpdateOperationEvent.InstallOperation(strDecode, strDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 2) {
                            strDecode2 = ProtoAdapter.STRING.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }

    /* JADX INFO: compiled from: UpdateOperationEvent.kt */
    @kotlin.Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0014\u0015\u0016B)\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ*\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0007H\u0016R\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$PreconditionCheckOperation;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$PreconditionCheckOperation$Builder;", "precondition", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$PreconditionCheckOperation$PreconditionOperation;", "affected_asset_version_ids", "", "", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$PreconditionCheckOperation$PreconditionOperation;Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "PreconditionOperation", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class PreconditionCheckOperation extends Message<PreconditionCheckOperation, Builder> {
        public static final ProtoAdapter<PreconditionCheckOperation> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "affectedAssetVersionIds", label = WireField.Label.REPEATED, schemaIndex = 1, tag = 2)
        public final List<String> affected_asset_version_ids;

        @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.UpdateOperationEvent$PreconditionCheckOperation$PreconditionOperation#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final PreconditionOperation precondition;

        public PreconditionCheckOperation() {
            this(null, null, null, 7, null);
        }

        public /* synthetic */ PreconditionCheckOperation(PreconditionOperation preconditionOperation, List list, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? PreconditionOperation.PRECONDITION_OPERATION_INVALID : preconditionOperation, (i & 2) != 0 ? CollectionsKt.emptyList() : list, (i & 4) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PreconditionCheckOperation(PreconditionOperation precondition, List<String> affected_asset_version_ids, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(precondition, "precondition");
            Intrinsics.checkNotNullParameter(affected_asset_version_ids, "affected_asset_version_ids");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.precondition = precondition;
            this.affected_asset_version_ids = Internal.immutableCopyOf("affected_asset_version_ids", affected_asset_version_ids);
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.precondition = this.precondition;
            builder.affected_asset_version_ids = this.affected_asset_version_ids;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof PreconditionCheckOperation)) {
                return false;
            }
            PreconditionCheckOperation preconditionCheckOperation = (PreconditionCheckOperation) other;
            return Intrinsics.areEqual(unknownFields(), preconditionCheckOperation.unknownFields()) && this.precondition == preconditionCheckOperation.precondition && Intrinsics.areEqual(this.affected_asset_version_ids, preconditionCheckOperation.affected_asset_version_ids);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((unknownFields().hashCode() * 37) + this.precondition.hashCode()) * 37) + this.affected_asset_version_ids.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("precondition=" + this.precondition);
            if (!this.affected_asset_version_ids.isEmpty()) {
                arrayList2.add("affected_asset_version_ids=" + Internal.sanitize(this.affected_asset_version_ids));
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "PreconditionCheckOperation{", "}", 0, null, null, 56, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ PreconditionCheckOperation copy$default(PreconditionCheckOperation preconditionCheckOperation, PreconditionOperation preconditionOperation, List list, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                preconditionOperation = preconditionCheckOperation.precondition;
            }
            if ((i & 2) != 0) {
                list = preconditionCheckOperation.affected_asset_version_ids;
            }
            if ((i & 4) != 0) {
                byteString = preconditionCheckOperation.unknownFields();
            }
            return preconditionCheckOperation.copy(preconditionOperation, list, byteString);
        }

        public final PreconditionCheckOperation copy(PreconditionOperation precondition, List<String> affected_asset_version_ids, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(precondition, "precondition");
            Intrinsics.checkNotNullParameter(affected_asset_version_ids, "affected_asset_version_ids");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new PreconditionCheckOperation(precondition, affected_asset_version_ids, unknownFields);
        }

        /* JADX INFO: compiled from: UpdateOperationEvent.kt */
        @kotlin.Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\b\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bR\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$PreconditionCheckOperation$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$PreconditionCheckOperation;", "()V", "affected_asset_version_ids", "", "", "precondition", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$PreconditionCheckOperation$PreconditionOperation;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<PreconditionCheckOperation, Builder> {
            public PreconditionOperation precondition = PreconditionOperation.PRECONDITION_OPERATION_INVALID;
            public List<String> affected_asset_version_ids = CollectionsKt.emptyList();

            public final Builder precondition(PreconditionOperation precondition) {
                Intrinsics.checkNotNullParameter(precondition, "precondition");
                this.precondition = precondition;
                return this;
            }

            public final Builder affected_asset_version_ids(List<String> affected_asset_version_ids) {
                Intrinsics.checkNotNullParameter(affected_asset_version_ids, "affected_asset_version_ids");
                Internal.checkElementsNotNull(affected_asset_version_ids);
                this.affected_asset_version_ids = affected_asset_version_ids;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public PreconditionCheckOperation build() {
                return new PreconditionCheckOperation(this.precondition, this.affected_asset_version_ids, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: UpdateOperationEvent.kt */
        @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$PreconditionCheckOperation$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$PreconditionCheckOperation;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$PreconditionCheckOperation$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ PreconditionCheckOperation build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(PreconditionCheckOperation.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<PreconditionCheckOperation>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.UpdateOperationEvent$PreconditionCheckOperation$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(UpdateOperationEvent.PreconditionCheckOperation value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.precondition != UpdateOperationEvent.PreconditionCheckOperation.PreconditionOperation.PRECONDITION_OPERATION_INVALID) {
                        size += UpdateOperationEvent.PreconditionCheckOperation.PreconditionOperation.ADAPTER.encodedSizeWithTag(1, value.precondition);
                    }
                    return size + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(2, value.affected_asset_version_ids);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, UpdateOperationEvent.PreconditionCheckOperation value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.precondition != UpdateOperationEvent.PreconditionCheckOperation.PreconditionOperation.PRECONDITION_OPERATION_INVALID) {
                        UpdateOperationEvent.PreconditionCheckOperation.PreconditionOperation.ADAPTER.encodeWithTag(writer, 1, value.precondition);
                    }
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 2, value.affected_asset_version_ids);
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, UpdateOperationEvent.PreconditionCheckOperation value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 2, value.affected_asset_version_ids);
                    if (value.precondition != UpdateOperationEvent.PreconditionCheckOperation.PreconditionOperation.PRECONDITION_OPERATION_INVALID) {
                        UpdateOperationEvent.PreconditionCheckOperation.PreconditionOperation.ADAPTER.encodeWithTag(writer, 1, value.precondition);
                    }
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public UpdateOperationEvent.PreconditionCheckOperation decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    UpdateOperationEvent.PreconditionCheckOperation.PreconditionOperation preconditionOperationDecode = UpdateOperationEvent.PreconditionCheckOperation.PreconditionOperation.PRECONDITION_OPERATION_INVALID;
                    ArrayList arrayList = new ArrayList();
                    long jBeginMessage = reader.beginMessage();
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new UpdateOperationEvent.PreconditionCheckOperation(preconditionOperationDecode, arrayList, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            try {
                                preconditionOperationDecode = UpdateOperationEvent.PreconditionCheckOperation.PreconditionOperation.ADAPTER.decode(reader);
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                            }
                        } else if (iNextTag == 2) {
                            arrayList.add(ProtoAdapter.STRING.decode(reader));
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public UpdateOperationEvent.PreconditionCheckOperation redact(UpdateOperationEvent.PreconditionCheckOperation value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return UpdateOperationEvent.PreconditionCheckOperation.copy$default(value, null, null, ByteString.EMPTY, 3, null);
                }
            };
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* JADX INFO: compiled from: UpdateOperationEvent.kt */
        @kotlin.Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$PreconditionCheckOperation$PreconditionOperation;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "PRECONDITION_OPERATION_INVALID", "BATTERY_CHECK", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class PreconditionOperation implements WireEnum {
            private static final /* synthetic */ EnumEntries $ENTRIES;
            private static final /* synthetic */ PreconditionOperation[] $VALUES;
            public static final ProtoAdapter<PreconditionOperation> ADAPTER;
            public static final PreconditionOperation BATTERY_CHECK;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE;
            public static final PreconditionOperation PRECONDITION_OPERATION_INVALID;
            private final int value;

            private static final /* synthetic */ PreconditionOperation[] $values() {
                return new PreconditionOperation[]{PRECONDITION_OPERATION_INVALID, BATTERY_CHECK};
            }

            @JvmStatic
            public static final PreconditionOperation fromValue(int i) {
                return INSTANCE.fromValue(i);
            }

            public static EnumEntries<PreconditionOperation> getEntries() {
                return $ENTRIES;
            }

            public static PreconditionOperation valueOf(String str) {
                return (PreconditionOperation) Enum.valueOf(PreconditionOperation.class, str);
            }

            public static PreconditionOperation[] values() {
                return (PreconditionOperation[]) $VALUES.clone();
            }

            private PreconditionOperation(String str, int i, int i2) {
                this.value = i2;
            }

            @Override // com.squareup.wire.WireEnum
            public int getValue() {
                return this.value;
            }

            static {
                final PreconditionOperation preconditionOperation = new PreconditionOperation("PRECONDITION_OPERATION_INVALID", 0, 0);
                PRECONDITION_OPERATION_INVALID = preconditionOperation;
                BATTERY_CHECK = new PreconditionOperation("BATTERY_CHECK", 1, 1);
                PreconditionOperation[] preconditionOperationArr$values = $values();
                $VALUES = preconditionOperationArr$values;
                $ENTRIES = EnumEntriesKt.enumEntries(preconditionOperationArr$values);
                INSTANCE = new Companion(null);
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(PreconditionOperation.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new EnumAdapter<PreconditionOperation>(orCreateKotlinClass, syntax, preconditionOperation) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.UpdateOperationEvent$PreconditionCheckOperation$PreconditionOperation$Companion$ADAPTER$1
                    {
                        UpdateOperationEvent.PreconditionCheckOperation.PreconditionOperation preconditionOperation2 = preconditionOperation;
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // com.squareup.wire.EnumAdapter
                    public UpdateOperationEvent.PreconditionCheckOperation.PreconditionOperation fromValue(int value) {
                        return UpdateOperationEvent.PreconditionCheckOperation.PreconditionOperation.INSTANCE.fromValue(value);
                    }
                };
            }

            /* JADX INFO: compiled from: UpdateOperationEvent.kt */
            @kotlin.Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$PreconditionCheckOperation$PreconditionOperation$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$PreconditionCheckOperation$PreconditionOperation;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                @JvmStatic
                public final PreconditionOperation fromValue(int value) {
                    if (value == 0) {
                        return PreconditionOperation.PRECONDITION_OPERATION_INVALID;
                    }
                    if (value != 1) {
                        return null;
                    }
                    return PreconditionOperation.BATTERY_CHECK;
                }
            }
        }
    }

    /* JADX INFO: compiled from: UpdateOperationEvent.kt */
    @kotlin.Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ$\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0006H\u0016R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation$Builder;", "next_step", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;", "device_assets_snapshot_id", "", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class FinishOperation extends Message<FinishOperation, Builder> {
        public static final ProtoAdapter<FinishOperation> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "deviceAssetsSnapshotId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final String device_assets_snapshot_id;

        @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.UpdateOperationEvent$DeviceOperation#ADAPTER", jsonName = "nextStep", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final DeviceOperation next_step;

        public FinishOperation() {
            this(null, null, null, 7, null);
        }

        public /* synthetic */ FinishOperation(DeviceOperation deviceOperation, String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? DeviceOperation.DEVICE_OPERATION_INVALID : deviceOperation, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FinishOperation(DeviceOperation next_step, String device_assets_snapshot_id, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(next_step, "next_step");
            Intrinsics.checkNotNullParameter(device_assets_snapshot_id, "device_assets_snapshot_id");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.next_step = next_step;
            this.device_assets_snapshot_id = device_assets_snapshot_id;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.next_step = this.next_step;
            builder.device_assets_snapshot_id = this.device_assets_snapshot_id;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof FinishOperation)) {
                return false;
            }
            FinishOperation finishOperation = (FinishOperation) other;
            return Intrinsics.areEqual(unknownFields(), finishOperation.unknownFields()) && this.next_step == finishOperation.next_step && Intrinsics.areEqual(this.device_assets_snapshot_id, finishOperation.device_assets_snapshot_id);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((unknownFields().hashCode() * 37) + this.next_step.hashCode()) * 37) + this.device_assets_snapshot_id.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("next_step=" + this.next_step);
            arrayList2.add("device_assets_snapshot_id=" + Internal.sanitize(this.device_assets_snapshot_id));
            return CollectionsKt.joinToString$default(arrayList, ", ", "FinishOperation{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ FinishOperation copy$default(FinishOperation finishOperation, DeviceOperation deviceOperation, String str, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                deviceOperation = finishOperation.next_step;
            }
            if ((i & 2) != 0) {
                str = finishOperation.device_assets_snapshot_id;
            }
            if ((i & 4) != 0) {
                byteString = finishOperation.unknownFields();
            }
            return finishOperation.copy(deviceOperation, str, byteString);
        }

        public final FinishOperation copy(DeviceOperation next_step, String device_assets_snapshot_id, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(next_step, "next_step");
            Intrinsics.checkNotNullParameter(device_assets_snapshot_id, "device_assets_snapshot_id");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new FinishOperation(next_step, device_assets_snapshot_id, unknownFields);
        }

        /* JADX INFO: compiled from: UpdateOperationEvent.kt */
        @kotlin.Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation;", "()V", "device_assets_snapshot_id", "", "next_step", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<FinishOperation, Builder> {
            public DeviceOperation next_step = DeviceOperation.DEVICE_OPERATION_INVALID;
            public String device_assets_snapshot_id = "";

            public final Builder next_step(DeviceOperation next_step) {
                Intrinsics.checkNotNullParameter(next_step, "next_step");
                this.next_step = next_step;
                return this;
            }

            public final Builder device_assets_snapshot_id(String device_assets_snapshot_id) {
                Intrinsics.checkNotNullParameter(device_assets_snapshot_id, "device_assets_snapshot_id");
                this.device_assets_snapshot_id = device_assets_snapshot_id;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public FinishOperation build() {
                return new FinishOperation(this.next_step, this.device_assets_snapshot_id, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: UpdateOperationEvent.kt */
        @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ FinishOperation build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(FinishOperation.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<FinishOperation>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.UpdateOperationEvent$FinishOperation$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(UpdateOperationEvent.FinishOperation value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.next_step != UpdateOperationEvent.DeviceOperation.DEVICE_OPERATION_INVALID) {
                        size += UpdateOperationEvent.DeviceOperation.ADAPTER.encodedSizeWithTag(1, value.next_step);
                    }
                    return !Intrinsics.areEqual(value.device_assets_snapshot_id, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(2, value.device_assets_snapshot_id) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, UpdateOperationEvent.FinishOperation value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.next_step != UpdateOperationEvent.DeviceOperation.DEVICE_OPERATION_INVALID) {
                        UpdateOperationEvent.DeviceOperation.ADAPTER.encodeWithTag(writer, 1, value.next_step);
                    }
                    if (!Intrinsics.areEqual(value.device_assets_snapshot_id, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.device_assets_snapshot_id);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, UpdateOperationEvent.FinishOperation value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (!Intrinsics.areEqual(value.device_assets_snapshot_id, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.device_assets_snapshot_id);
                    }
                    if (value.next_step != UpdateOperationEvent.DeviceOperation.DEVICE_OPERATION_INVALID) {
                        UpdateOperationEvent.DeviceOperation.ADAPTER.encodeWithTag(writer, 1, value.next_step);
                    }
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public UpdateOperationEvent.FinishOperation decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    UpdateOperationEvent.DeviceOperation deviceOperationDecode = UpdateOperationEvent.DeviceOperation.DEVICE_OPERATION_INVALID;
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = "";
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new UpdateOperationEvent.FinishOperation(deviceOperationDecode, strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            try {
                                deviceOperationDecode = UpdateOperationEvent.DeviceOperation.ADAPTER.decode(reader);
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
                public UpdateOperationEvent.FinishOperation redact(UpdateOperationEvent.FinishOperation value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return UpdateOperationEvent.FinishOperation.copy$default(value, null, null, ByteString.EMPTY, 3, null);
                }
            };
        }
    }

    /* JADX INFO: compiled from: UpdateOperationEvent.kt */
    @kotlin.Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0005\u0016\u0017\u0018\u0019\u001aB3\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ4\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Builder;", "error", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Error;", FirebaseAnalytics.Param.SUCCESS, "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Success;", "deferred", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Error;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Success;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "Deferred", "Error", "Success", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Result extends Message<Result, Builder> {
        public static final ProtoAdapter<Result> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.UpdateOperationEvent$Result$Deferred#ADAPTER", oneofName = "result", schemaIndex = 2, tag = 3)
        public final Deferred deferred;

        @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.UpdateOperationEvent$Result$Error#ADAPTER", oneofName = "result", schemaIndex = 0, tag = 1)
        public final Error error;

        @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.UpdateOperationEvent$Result$Success#ADAPTER", oneofName = "result", schemaIndex = 1, tag = 2)
        public final Success success;

        public Result() {
            this(null, null, null, null, 15, null);
        }

        public /* synthetic */ Result(Error error, Success success, Deferred deferred, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : error, (i & 2) != 0 ? null : success, (i & 4) != 0 ? null : deferred, (i & 8) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Result(Error error, Success success, Deferred deferred, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.error = error;
            this.success = success;
            this.deferred = deferred;
            if (Internal.countNonNull(error, success, deferred) > 1) {
                throw new IllegalArgumentException("At most one of error, success, deferred may be non-null".toString());
            }
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.error = this.error;
            builder.success = this.success;
            builder.deferred = this.deferred;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof Result)) {
                return false;
            }
            Result result = (Result) other;
            return Intrinsics.areEqual(unknownFields(), result.unknownFields()) && Intrinsics.areEqual(this.error, result.error) && Intrinsics.areEqual(this.success, result.success) && Intrinsics.areEqual(this.deferred, result.deferred);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = unknownFields().hashCode() * 37;
            Error error = this.error;
            int iHashCode2 = (iHashCode + (error != null ? error.hashCode() : 0)) * 37;
            Success success = this.success;
            int iHashCode3 = (iHashCode2 + (success != null ? success.hashCode() : 0)) * 37;
            Deferred deferred = this.deferred;
            int iHashCode4 = iHashCode3 + (deferred != null ? deferred.hashCode() : 0);
            this.hashCode = iHashCode4;
            return iHashCode4;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (this.error != null) {
                arrayList.add("error=" + this.error);
            }
            if (this.success != null) {
                arrayList.add("success=" + this.success);
            }
            if (this.deferred != null) {
                arrayList.add("deferred=" + this.deferred);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "Result{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ Result copy$default(Result result, Error error, Success success, Deferred deferred, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                error = result.error;
            }
            if ((i & 2) != 0) {
                success = result.success;
            }
            if ((i & 4) != 0) {
                deferred = result.deferred;
            }
            if ((i & 8) != 0) {
                byteString = result.unknownFields();
            }
            return result.copy(error, success, deferred, byteString);
        }

        public final Result copy(Error error, Success success, Deferred deferred, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new Result(error, success, deferred, unknownFields);
        }

        /* JADX INFO: compiled from: UpdateOperationEvent.kt */
        @kotlin.Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result;", "()V", "deferred", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred;", "error", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Error;", FirebaseAnalytics.Param.SUCCESS, "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Success;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<Result, Builder> {
            public Deferred deferred;
            public Error error;
            public Success success;

            public final Builder error(Error error) {
                this.error = error;
                this.success = null;
                this.deferred = null;
                return this;
            }

            public final Builder success(Success success) {
                this.success = success;
                this.error = null;
                this.deferred = null;
                return this;
            }

            public final Builder deferred(Deferred deferred) {
                this.deferred = deferred;
                this.error = null;
                this.success = null;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public Result build() {
                return new Result(this.error, this.success, this.deferred, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: UpdateOperationEvent.kt */
        @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Result build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Result.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<Result>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.UpdateOperationEvent$Result$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(UpdateOperationEvent.Result value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.unknownFields().size() + UpdateOperationEvent.Result.Error.ADAPTER.encodedSizeWithTag(1, value.error) + UpdateOperationEvent.Result.Success.ADAPTER.encodedSizeWithTag(2, value.success) + UpdateOperationEvent.Result.Deferred.ADAPTER.encodedSizeWithTag(3, value.deferred);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, UpdateOperationEvent.Result value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    UpdateOperationEvent.Result.Error.ADAPTER.encodeWithTag(writer, 1, value.error);
                    UpdateOperationEvent.Result.Success.ADAPTER.encodeWithTag(writer, 2, value.success);
                    UpdateOperationEvent.Result.Deferred.ADAPTER.encodeWithTag(writer, 3, value.deferred);
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, UpdateOperationEvent.Result value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    UpdateOperationEvent.Result.Deferred.ADAPTER.encodeWithTag(writer, 3, value.deferred);
                    UpdateOperationEvent.Result.Success.ADAPTER.encodeWithTag(writer, 2, value.success);
                    UpdateOperationEvent.Result.Error.ADAPTER.encodeWithTag(writer, 1, value.error);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public UpdateOperationEvent.Result redact(UpdateOperationEvent.Result value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    UpdateOperationEvent.Result.Error error = value.error;
                    UpdateOperationEvent.Result.Error errorRedact = error != null ? UpdateOperationEvent.Result.Error.ADAPTER.redact(error) : null;
                    UpdateOperationEvent.Result.Success success = value.success;
                    UpdateOperationEvent.Result.Success successRedact = success != null ? UpdateOperationEvent.Result.Success.ADAPTER.redact(success) : null;
                    UpdateOperationEvent.Result.Deferred deferred = value.deferred;
                    return value.copy(errorRedact, successRedact, deferred != null ? UpdateOperationEvent.Result.Deferred.ADAPTER.redact(deferred) : null, ByteString.EMPTY);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public UpdateOperationEvent.Result decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    UpdateOperationEvent.Result.Error errorDecode = null;
                    UpdateOperationEvent.Result.Success successDecode = null;
                    UpdateOperationEvent.Result.Deferred deferredDecode = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new UpdateOperationEvent.Result(errorDecode, successDecode, deferredDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            errorDecode = UpdateOperationEvent.Result.Error.ADAPTER.decode(reader);
                        } else if (iNextTag == 2) {
                            successDecode = UpdateOperationEvent.Result.Success.ADAPTER.decode(reader);
                        } else if (iNextTag == 3) {
                            deferredDecode = UpdateOperationEvent.Result.Deferred.ADAPTER.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }

        /* JADX INFO: compiled from: UpdateOperationEvent.kt */
        @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Success;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Success$Builder;", OfflineStorageConstantsKt.ID, "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Success extends Message<Success, Builder> {
            public static final ProtoAdapter<Success> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
            public final String id;

            /* JADX WARN: Multi-variable type inference failed */
            public Success() {
                this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
            }

            public /* synthetic */ Success(String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Success(String id, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(id, "id");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.id = id;
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.id = this.id;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof Success)) {
                    return false;
                }
                Success success = (Success) other;
                return Intrinsics.areEqual(unknownFields(), success.unknownFields()) && Intrinsics.areEqual(this.id, success.id);
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = (unknownFields().hashCode() * 37) + this.id.hashCode();
                this.hashCode = iHashCode;
                return iHashCode;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                arrayList.add("id=" + Internal.sanitize(this.id));
                return CollectionsKt.joinToString$default(arrayList, ", ", "Success{", "}", 0, null, null, 56, null);
            }

            public static /* synthetic */ Success copy$default(Success success, String str, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = success.id;
                }
                if ((i & 2) != 0) {
                    byteString = success.unknownFields();
                }
                return success.copy(str, byteString);
            }

            public final Success copy(String id, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(id, "id");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new Success(id, unknownFields);
            }

            /* JADX INFO: compiled from: UpdateOperationEvent.kt */
            @kotlin.Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Success$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Success;", "()V", OfflineStorageConstantsKt.ID, "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<Success, Builder> {
                public String id = "";

                public final Builder id(String id) {
                    Intrinsics.checkNotNullParameter(id, "id");
                    this.id = id;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public Success build() {
                    return new Success(this.id, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: UpdateOperationEvent.kt */
            @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Success$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Success;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Success$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ Success build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Success.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<Success>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.UpdateOperationEvent$Result$Success$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(UpdateOperationEvent.Result.Success value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        return !Intrinsics.areEqual(value.id, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(1, value.id) : size;
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, UpdateOperationEvent.Result.Success value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (!Intrinsics.areEqual(value.id, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 1, value.id);
                        }
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, UpdateOperationEvent.Result.Success value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        if (Intrinsics.areEqual(value.id, "")) {
                            return;
                        }
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.id);
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public UpdateOperationEvent.Result.Success redact(UpdateOperationEvent.Result.Success value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return UpdateOperationEvent.Result.Success.copy$default(value, null, ByteString.EMPTY, 1, null);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public UpdateOperationEvent.Result.Success decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        long jBeginMessage = reader.beginMessage();
                        String strDecode = "";
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new UpdateOperationEvent.Result.Success(strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
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

        /* JADX INFO: compiled from: UpdateOperationEvent.kt */
        @kotlin.Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B-\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ.\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Error;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Error$Builder;", "client_error_code", "", "details", "label", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Severity;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Severity;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Error extends Message<Error, Builder> {
            public static final ProtoAdapter<Error> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "clientErrorCode", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
            public final String client_error_code;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
            public final String details;

            @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.UpdateOperationEvent$Severity#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
            public final Severity label;

            public Error() {
                this(null, null, null, null, 15, null);
            }

            public /* synthetic */ Error(String str, String str2, Severity severity, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? Severity.SEVERITY_INVALID : severity, (i & 8) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Error(String client_error_code, String details, Severity label, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(client_error_code, "client_error_code");
                Intrinsics.checkNotNullParameter(details, "details");
                Intrinsics.checkNotNullParameter(label, "label");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.client_error_code = client_error_code;
                this.details = details;
                this.label = label;
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.client_error_code = this.client_error_code;
                builder.details = this.details;
                builder.label = this.label;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof Error)) {
                    return false;
                }
                Error error = (Error) other;
                return Intrinsics.areEqual(unknownFields(), error.unknownFields()) && Intrinsics.areEqual(this.client_error_code, error.client_error_code) && Intrinsics.areEqual(this.details, error.details) && this.label == error.label;
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = (((((unknownFields().hashCode() * 37) + this.client_error_code.hashCode()) * 37) + this.details.hashCode()) * 37) + this.label.hashCode();
                this.hashCode = iHashCode;
                return iHashCode;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = arrayList;
                arrayList2.add("client_error_code=" + Internal.sanitize(this.client_error_code));
                arrayList2.add("details=" + Internal.sanitize(this.details));
                arrayList2.add("label=" + this.label);
                return CollectionsKt.joinToString$default(arrayList, ", ", "Error{", "}", 0, null, null, 56, null);
            }

            public static /* synthetic */ Error copy$default(Error error, String str, String str2, Severity severity, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = error.client_error_code;
                }
                if ((i & 2) != 0) {
                    str2 = error.details;
                }
                if ((i & 4) != 0) {
                    severity = error.label;
                }
                if ((i & 8) != 0) {
                    byteString = error.unknownFields();
                }
                return error.copy(str, str2, severity, byteString);
            }

            public final Error copy(String client_error_code, String details, Severity label, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(client_error_code, "client_error_code");
                Intrinsics.checkNotNullParameter(details, "details");
                Intrinsics.checkNotNullParameter(label, "label");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new Error(client_error_code, details, label, unknownFields);
            }

            /* JADX INFO: compiled from: UpdateOperationEvent.kt */
            @kotlin.Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Error$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Error;", "()V", "client_error_code", "", "details", "label", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Severity;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<Error, Builder> {
                public String client_error_code = "";
                public String details = "";
                public Severity label = Severity.SEVERITY_INVALID;

                public final Builder client_error_code(String client_error_code) {
                    Intrinsics.checkNotNullParameter(client_error_code, "client_error_code");
                    this.client_error_code = client_error_code;
                    return this;
                }

                public final Builder details(String details) {
                    Intrinsics.checkNotNullParameter(details, "details");
                    this.details = details;
                    return this;
                }

                public final Builder label(Severity label) {
                    Intrinsics.checkNotNullParameter(label, "label");
                    this.label = label;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public Error build() {
                    return new Error(this.client_error_code, this.details, this.label, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: UpdateOperationEvent.kt */
            @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Error$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Error;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Error$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ Error build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Error.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<Error>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.UpdateOperationEvent$Result$Error$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(UpdateOperationEvent.Result.Error value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        if (!Intrinsics.areEqual(value.client_error_code, "")) {
                            size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.client_error_code);
                        }
                        if (!Intrinsics.areEqual(value.details, "")) {
                            size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.details);
                        }
                        return value.label != UpdateOperationEvent.Severity.SEVERITY_INVALID ? size + UpdateOperationEvent.Severity.ADAPTER.encodedSizeWithTag(3, value.label) : size;
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, UpdateOperationEvent.Result.Error value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (!Intrinsics.areEqual(value.client_error_code, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 1, value.client_error_code);
                        }
                        if (!Intrinsics.areEqual(value.details, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 2, value.details);
                        }
                        if (value.label != UpdateOperationEvent.Severity.SEVERITY_INVALID) {
                            UpdateOperationEvent.Severity.ADAPTER.encodeWithTag(writer, 3, value.label);
                        }
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, UpdateOperationEvent.Result.Error value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        if (value.label != UpdateOperationEvent.Severity.SEVERITY_INVALID) {
                            UpdateOperationEvent.Severity.ADAPTER.encodeWithTag(writer, 3, value.label);
                        }
                        if (!Intrinsics.areEqual(value.details, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 2, value.details);
                        }
                        if (Intrinsics.areEqual(value.client_error_code, "")) {
                            return;
                        }
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.client_error_code);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public UpdateOperationEvent.Result.Error decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        UpdateOperationEvent.Severity severityDecode = UpdateOperationEvent.Severity.SEVERITY_INVALID;
                        long jBeginMessage = reader.beginMessage();
                        String strDecode = "";
                        String strDecode2 = "";
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new UpdateOperationEvent.Result.Error(strDecode, strDecode2, severityDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                            if (iNextTag == 1) {
                                strDecode = ProtoAdapter.STRING.decode(reader);
                            } else if (iNextTag == 2) {
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                            } else if (iNextTag == 3) {
                                try {
                                    severityDecode = UpdateOperationEvent.Severity.ADAPTER.decode(reader);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                }
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public UpdateOperationEvent.Result.Error redact(UpdateOperationEvent.Result.Error value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return UpdateOperationEvent.Result.Error.copy$default(value, null, null, null, ByteString.EMPTY, 7, null);
                    }
                };
            }
        }

        /* JADX INFO: compiled from: UpdateOperationEvent.kt */
        @kotlin.Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0014\u0015\u0016B)\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ*\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0007H\u0016R\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred$Builder;", "reason", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred$DeferredReason;", "affected_asset_version_ids", "", "", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred$DeferredReason;Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "DeferredReason", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Deferred extends Message<Deferred, Builder> {
            public static final ProtoAdapter<Deferred> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "affectedAssetVersionIds", label = WireField.Label.REPEATED, schemaIndex = 1, tag = 2)
            public final List<String> affected_asset_version_ids;

            @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.UpdateOperationEvent$Result$Deferred$DeferredReason#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
            public final DeferredReason reason;

            public Deferred() {
                this(null, null, null, 7, null);
            }

            public /* synthetic */ Deferred(DeferredReason deferredReason, List list, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? DeferredReason.DEFERRED_REASON_INVALID : deferredReason, (i & 2) != 0 ? CollectionsKt.emptyList() : list, (i & 4) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Deferred(DeferredReason reason, List<String> affected_asset_version_ids, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(reason, "reason");
                Intrinsics.checkNotNullParameter(affected_asset_version_ids, "affected_asset_version_ids");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.reason = reason;
                this.affected_asset_version_ids = Internal.immutableCopyOf("affected_asset_version_ids", affected_asset_version_ids);
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.reason = this.reason;
                builder.affected_asset_version_ids = this.affected_asset_version_ids;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof Deferred)) {
                    return false;
                }
                Deferred deferred = (Deferred) other;
                return Intrinsics.areEqual(unknownFields(), deferred.unknownFields()) && this.reason == deferred.reason && Intrinsics.areEqual(this.affected_asset_version_ids, deferred.affected_asset_version_ids);
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = (((unknownFields().hashCode() * 37) + this.reason.hashCode()) * 37) + this.affected_asset_version_ids.hashCode();
                this.hashCode = iHashCode;
                return iHashCode;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = arrayList;
                arrayList2.add("reason=" + this.reason);
                if (!this.affected_asset_version_ids.isEmpty()) {
                    arrayList2.add("affected_asset_version_ids=" + Internal.sanitize(this.affected_asset_version_ids));
                }
                return CollectionsKt.joinToString$default(arrayList, ", ", "Deferred{", "}", 0, null, null, 56, null);
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static /* synthetic */ Deferred copy$default(Deferred deferred, DeferredReason deferredReason, List list, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    deferredReason = deferred.reason;
                }
                if ((i & 2) != 0) {
                    list = deferred.affected_asset_version_ids;
                }
                if ((i & 4) != 0) {
                    byteString = deferred.unknownFields();
                }
                return deferred.copy(deferredReason, list, byteString);
            }

            public final Deferred copy(DeferredReason reason, List<String> affected_asset_version_ids, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(reason, "reason");
                Intrinsics.checkNotNullParameter(affected_asset_version_ids, "affected_asset_version_ids");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new Deferred(reason, affected_asset_version_ids, unknownFields);
            }

            /* JADX INFO: compiled from: UpdateOperationEvent.kt */
            @kotlin.Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\b\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bR\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred;", "()V", "affected_asset_version_ids", "", "", "reason", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred$DeferredReason;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<Deferred, Builder> {
                public DeferredReason reason = DeferredReason.DEFERRED_REASON_INVALID;
                public List<String> affected_asset_version_ids = CollectionsKt.emptyList();

                public final Builder reason(DeferredReason reason) {
                    Intrinsics.checkNotNullParameter(reason, "reason");
                    this.reason = reason;
                    return this;
                }

                public final Builder affected_asset_version_ids(List<String> affected_asset_version_ids) {
                    Intrinsics.checkNotNullParameter(affected_asset_version_ids, "affected_asset_version_ids");
                    Internal.checkElementsNotNull(affected_asset_version_ids);
                    this.affected_asset_version_ids = affected_asset_version_ids;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public Deferred build() {
                    return new Deferred(this.reason, this.affected_asset_version_ids, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: UpdateOperationEvent.kt */
            @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ Deferred build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Deferred.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<Deferred>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.UpdateOperationEvent$Result$Deferred$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(UpdateOperationEvent.Result.Deferred value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        if (value.reason != UpdateOperationEvent.Result.Deferred.DeferredReason.DEFERRED_REASON_INVALID) {
                            size += UpdateOperationEvent.Result.Deferred.DeferredReason.ADAPTER.encodedSizeWithTag(1, value.reason);
                        }
                        return size + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(2, value.affected_asset_version_ids);
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, UpdateOperationEvent.Result.Deferred value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (value.reason != UpdateOperationEvent.Result.Deferred.DeferredReason.DEFERRED_REASON_INVALID) {
                            UpdateOperationEvent.Result.Deferred.DeferredReason.ADAPTER.encodeWithTag(writer, 1, value.reason);
                        }
                        ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 2, value.affected_asset_version_ids);
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, UpdateOperationEvent.Result.Deferred value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 2, value.affected_asset_version_ids);
                        if (value.reason != UpdateOperationEvent.Result.Deferred.DeferredReason.DEFERRED_REASON_INVALID) {
                            UpdateOperationEvent.Result.Deferred.DeferredReason.ADAPTER.encodeWithTag(writer, 1, value.reason);
                        }
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public UpdateOperationEvent.Result.Deferred decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        UpdateOperationEvent.Result.Deferred.DeferredReason deferredReasonDecode = UpdateOperationEvent.Result.Deferred.DeferredReason.DEFERRED_REASON_INVALID;
                        ArrayList arrayList = new ArrayList();
                        long jBeginMessage = reader.beginMessage();
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new UpdateOperationEvent.Result.Deferred(deferredReasonDecode, arrayList, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                            if (iNextTag == 1) {
                                try {
                                    deferredReasonDecode = UpdateOperationEvent.Result.Deferred.DeferredReason.ADAPTER.decode(reader);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                }
                            } else if (iNextTag == 2) {
                                arrayList.add(ProtoAdapter.STRING.decode(reader));
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public UpdateOperationEvent.Result.Deferred redact(UpdateOperationEvent.Result.Deferred value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return UpdateOperationEvent.Result.Deferred.copy$default(value, null, null, ByteString.EMPTY, 3, null);
                    }
                };
            }

            /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
            /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
            /* JADX INFO: compiled from: UpdateOperationEvent.kt */
            @kotlin.Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred$DeferredReason;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "DEFERRED_REASON_INVALID", "DEFERRED_REASON_USER_DEFERRED", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class DeferredReason implements WireEnum {
                private static final /* synthetic */ EnumEntries $ENTRIES;
                private static final /* synthetic */ DeferredReason[] $VALUES;
                public static final ProtoAdapter<DeferredReason> ADAPTER;

                /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
                public static final Companion INSTANCE;
                public static final DeferredReason DEFERRED_REASON_INVALID;
                public static final DeferredReason DEFERRED_REASON_USER_DEFERRED;
                private final int value;

                private static final /* synthetic */ DeferredReason[] $values() {
                    return new DeferredReason[]{DEFERRED_REASON_INVALID, DEFERRED_REASON_USER_DEFERRED};
                }

                @JvmStatic
                public static final DeferredReason fromValue(int i) {
                    return INSTANCE.fromValue(i);
                }

                public static EnumEntries<DeferredReason> getEntries() {
                    return $ENTRIES;
                }

                public static DeferredReason valueOf(String str) {
                    return (DeferredReason) Enum.valueOf(DeferredReason.class, str);
                }

                public static DeferredReason[] values() {
                    return (DeferredReason[]) $VALUES.clone();
                }

                private DeferredReason(String str, int i, int i2) {
                    this.value = i2;
                }

                @Override // com.squareup.wire.WireEnum
                public int getValue() {
                    return this.value;
                }

                static {
                    final DeferredReason deferredReason = new DeferredReason("DEFERRED_REASON_INVALID", 0, 0);
                    DEFERRED_REASON_INVALID = deferredReason;
                    DEFERRED_REASON_USER_DEFERRED = new DeferredReason("DEFERRED_REASON_USER_DEFERRED", 1, 1);
                    DeferredReason[] deferredReasonArr$values = $values();
                    $VALUES = deferredReasonArr$values;
                    $ENTRIES = EnumEntriesKt.enumEntries(deferredReasonArr$values);
                    INSTANCE = new Companion(null);
                    final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DeferredReason.class);
                    final Syntax syntax = Syntax.PROTO_3;
                    ADAPTER = new EnumAdapter<DeferredReason>(orCreateKotlinClass, syntax, deferredReason) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.UpdateOperationEvent$Result$Deferred$DeferredReason$Companion$ADAPTER$1
                        {
                            UpdateOperationEvent.Result.Deferred.DeferredReason deferredReason2 = deferredReason;
                        }

                        /* JADX INFO: Access modifiers changed from: protected */
                        @Override // com.squareup.wire.EnumAdapter
                        public UpdateOperationEvent.Result.Deferred.DeferredReason fromValue(int value) {
                            return UpdateOperationEvent.Result.Deferred.DeferredReason.INSTANCE.fromValue(value);
                        }
                    };
                }

                /* JADX INFO: compiled from: UpdateOperationEvent.kt */
                @kotlin.Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred$DeferredReason$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred$DeferredReason;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
                public static final class Companion {
                    public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                        this();
                    }

                    private Companion() {
                    }

                    @JvmStatic
                    public final DeferredReason fromValue(int value) {
                        if (value == 0) {
                            return DeferredReason.DEFERRED_REASON_INVALID;
                        }
                        if (value != 1) {
                            return null;
                        }
                        return DeferredReason.DEFERRED_REASON_USER_DEFERRED;
                    }
                }
            }
        }
    }

    /* JADX INFO: compiled from: UpdateOperationEvent.kt */
    @kotlin.Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u0004H\u0016J\b\u0010\u000e\u001a\u00020\u0002H\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Progress;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Progress$Builder;", "value_", "", "unknownFields", "Lokio/ByteString;", "(ILokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Progress extends Message<Progress, Builder> {
        public static final ProtoAdapter<Progress> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", declaredName = "value", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final int value_;

        /* JADX WARN: Multi-variable type inference failed */
        public Progress() {
            this(0, null, 3, 0 == true ? 1 : 0);
        }

        public /* synthetic */ Progress(int i, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Progress(int i, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.value_ = i;
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
            if (!(other instanceof Progress)) {
                return false;
            }
            Progress progress = (Progress) other;
            return Intrinsics.areEqual(unknownFields(), progress.unknownFields()) && this.value_ == progress.value_;
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (unknownFields().hashCode() * 37) + Integer.hashCode(this.value_);
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            arrayList.add("value_=" + this.value_);
            return CollectionsKt.joinToString$default(arrayList, ", ", "Progress{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ Progress copy$default(Progress progress, int i, ByteString byteString, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = progress.value_;
            }
            if ((i2 & 2) != 0) {
                byteString = progress.unknownFields();
            }
            return progress.copy(i, byteString);
        }

        public final Progress copy(int value_, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new Progress(value_, unknownFields);
        }

        /* JADX INFO: compiled from: UpdateOperationEvent.kt */
        @kotlin.Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Progress$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Progress;", "()V", "value_", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<Progress, Builder> {
            public int value_;

            public final Builder value_(int value_) {
                this.value_ = value_;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public Progress build() {
                return new Progress(this.value_, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: UpdateOperationEvent.kt */
        @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Progress$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Progress;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Progress$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Progress build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Progress.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<Progress>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.UpdateOperationEvent$Progress$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(UpdateOperationEvent.Progress value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    return value.value_ != 0 ? size + ProtoAdapter.INT32.encodedSizeWithTag(1, Integer.valueOf(value.value_)) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, UpdateOperationEvent.Progress value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.value_ != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 1, Integer.valueOf(value.value_));
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, UpdateOperationEvent.Progress value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.value_ != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 1, Integer.valueOf(value.value_));
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public UpdateOperationEvent.Progress redact(UpdateOperationEvent.Progress value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return UpdateOperationEvent.Progress.copy$default(value, 0, ByteString.EMPTY, 1, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public UpdateOperationEvent.Progress decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    int iIntValue = 0;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new UpdateOperationEvent.Progress(iIntValue, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            iIntValue = ProtoAdapter.INT32.decode(reader).intValue();
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }
}
