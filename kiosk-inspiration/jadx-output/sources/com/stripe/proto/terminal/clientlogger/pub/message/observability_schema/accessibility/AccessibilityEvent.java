package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessibility;

import androidx.core.app.NotificationCompat;
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
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessibility.AccessibilityEvent;
import java.io.IOException;
import java.util.ArrayList;
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

/* JADX INFO: compiled from: AccessibilityEvent.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\u0018\u0000 #2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\b\u001d\u001e\u001f !\"#$B_\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012¢\u0006\u0002\u0010\u0013J`\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u0012J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u0002H\u0016J\b\u0010\u001c\u001a\u00020\u0010H\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00020\u00108\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$Builder;", "start_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionStartedEvent;", "language_changed_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionLanguageChangedEvent;", "api_error_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionApiErrorEvent;", "end_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionEndedEvent;", "volume_changed_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionVolumeChangedEvent;", "type", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$SessionType;", "session_id", "", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionStartedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionLanguageChangedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionApiErrorEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionEndedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionVolumeChangedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$SessionType;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "AccessibilitySessionApiErrorEvent", "AccessibilitySessionEndedEvent", "AccessibilitySessionLanguageChangedEvent", "AccessibilitySessionStartedEvent", "AccessibilitySessionVolumeChangedEvent", "Builder", "Companion", "SessionType", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AccessibilityEvent extends Message<AccessibilityEvent, Builder> {
    public static final ProtoAdapter<AccessibilityEvent> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessibility.AccessibilityEvent$AccessibilitySessionApiErrorEvent#ADAPTER", jsonName = "apiErrorEvent", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 2, tag = 3)
    public final AccessibilitySessionApiErrorEvent api_error_event;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessibility.AccessibilityEvent$AccessibilitySessionEndedEvent#ADAPTER", jsonName = "endEvent", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 3, tag = 4)
    public final AccessibilitySessionEndedEvent end_event;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessibility.AccessibilityEvent$AccessibilitySessionLanguageChangedEvent#ADAPTER", jsonName = "languageChangedEvent", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 1, tag = 2)
    public final AccessibilitySessionLanguageChangedEvent language_changed_event;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "sessionId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final String session_id;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessibility.AccessibilityEvent$AccessibilitySessionStartedEvent#ADAPTER", jsonName = "startEvent", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 0, tag = 1)
    public final AccessibilitySessionStartedEvent start_event;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessibility.AccessibilityEvent$SessionType#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final SessionType type;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessibility.AccessibilityEvent$AccessibilitySessionVolumeChangedEvent#ADAPTER", jsonName = "volumeChangedEvent", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 4, tag = 5)
    public final AccessibilitySessionVolumeChangedEvent volume_changed_event;

    public AccessibilityEvent() {
        this(null, null, null, null, null, null, null, null, 255, null);
    }

    public /* synthetic */ AccessibilityEvent(AccessibilitySessionStartedEvent accessibilitySessionStartedEvent, AccessibilitySessionLanguageChangedEvent accessibilitySessionLanguageChangedEvent, AccessibilitySessionApiErrorEvent accessibilitySessionApiErrorEvent, AccessibilitySessionEndedEvent accessibilitySessionEndedEvent, AccessibilitySessionVolumeChangedEvent accessibilitySessionVolumeChangedEvent, SessionType sessionType, String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : accessibilitySessionStartedEvent, (i & 2) != 0 ? null : accessibilitySessionLanguageChangedEvent, (i & 4) != 0 ? null : accessibilitySessionApiErrorEvent, (i & 8) != 0 ? null : accessibilitySessionEndedEvent, (i & 16) != 0 ? null : accessibilitySessionVolumeChangedEvent, (i & 32) != 0 ? SessionType.SESSION_TYPE_INVALID : sessionType, (i & 64) != 0 ? "" : str, (i & 128) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccessibilityEvent(AccessibilitySessionStartedEvent accessibilitySessionStartedEvent, AccessibilitySessionLanguageChangedEvent accessibilitySessionLanguageChangedEvent, AccessibilitySessionApiErrorEvent accessibilitySessionApiErrorEvent, AccessibilitySessionEndedEvent accessibilitySessionEndedEvent, AccessibilitySessionVolumeChangedEvent accessibilitySessionVolumeChangedEvent, SessionType type, String session_id, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(session_id, "session_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.start_event = accessibilitySessionStartedEvent;
        this.language_changed_event = accessibilitySessionLanguageChangedEvent;
        this.api_error_event = accessibilitySessionApiErrorEvent;
        this.end_event = accessibilitySessionEndedEvent;
        this.volume_changed_event = accessibilitySessionVolumeChangedEvent;
        this.type = type;
        this.session_id = session_id;
        if (Internal.countNonNull(accessibilitySessionStartedEvent, accessibilitySessionLanguageChangedEvent, accessibilitySessionApiErrorEvent, accessibilitySessionEndedEvent, accessibilitySessionVolumeChangedEvent) > 1) {
            throw new IllegalArgumentException("At most one of start_event, language_changed_event, api_error_event, end_event, volume_changed_event may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.start_event = this.start_event;
        builder.language_changed_event = this.language_changed_event;
        builder.api_error_event = this.api_error_event;
        builder.end_event = this.end_event;
        builder.volume_changed_event = this.volume_changed_event;
        builder.type = this.type;
        builder.session_id = this.session_id;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof AccessibilityEvent)) {
            return false;
        }
        AccessibilityEvent accessibilityEvent = (AccessibilityEvent) other;
        return Intrinsics.areEqual(unknownFields(), accessibilityEvent.unknownFields()) && Intrinsics.areEqual(this.start_event, accessibilityEvent.start_event) && Intrinsics.areEqual(this.language_changed_event, accessibilityEvent.language_changed_event) && Intrinsics.areEqual(this.api_error_event, accessibilityEvent.api_error_event) && Intrinsics.areEqual(this.end_event, accessibilityEvent.end_event) && Intrinsics.areEqual(this.volume_changed_event, accessibilityEvent.volume_changed_event) && this.type == accessibilityEvent.type && Intrinsics.areEqual(this.session_id, accessibilityEvent.session_id);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        AccessibilitySessionStartedEvent accessibilitySessionStartedEvent = this.start_event;
        int iHashCode2 = (iHashCode + (accessibilitySessionStartedEvent != null ? accessibilitySessionStartedEvent.hashCode() : 0)) * 37;
        AccessibilitySessionLanguageChangedEvent accessibilitySessionLanguageChangedEvent = this.language_changed_event;
        int iHashCode3 = (iHashCode2 + (accessibilitySessionLanguageChangedEvent != null ? accessibilitySessionLanguageChangedEvent.hashCode() : 0)) * 37;
        AccessibilitySessionApiErrorEvent accessibilitySessionApiErrorEvent = this.api_error_event;
        int iHashCode4 = (iHashCode3 + (accessibilitySessionApiErrorEvent != null ? accessibilitySessionApiErrorEvent.hashCode() : 0)) * 37;
        AccessibilitySessionEndedEvent accessibilitySessionEndedEvent = this.end_event;
        int iHashCode5 = (iHashCode4 + (accessibilitySessionEndedEvent != null ? accessibilitySessionEndedEvent.hashCode() : 0)) * 37;
        AccessibilitySessionVolumeChangedEvent accessibilitySessionVolumeChangedEvent = this.volume_changed_event;
        int iHashCode6 = ((((iHashCode5 + (accessibilitySessionVolumeChangedEvent != null ? accessibilitySessionVolumeChangedEvent.hashCode() : 0)) * 37) + this.type.hashCode()) * 37) + this.session_id.hashCode();
        this.hashCode = iHashCode6;
        return iHashCode6;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.start_event != null) {
            arrayList.add("start_event=" + this.start_event);
        }
        if (this.language_changed_event != null) {
            arrayList.add("language_changed_event=" + this.language_changed_event);
        }
        if (this.api_error_event != null) {
            arrayList.add("api_error_event=" + this.api_error_event);
        }
        if (this.end_event != null) {
            arrayList.add("end_event=" + this.end_event);
        }
        if (this.volume_changed_event != null) {
            arrayList.add("volume_changed_event=" + this.volume_changed_event);
        }
        ArrayList arrayList2 = arrayList;
        arrayList2.add("type=" + this.type);
        arrayList2.add("session_id=" + Internal.sanitize(this.session_id));
        return CollectionsKt.joinToString$default(arrayList, ", ", "AccessibilityEvent{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ AccessibilityEvent copy$default(AccessibilityEvent accessibilityEvent, AccessibilitySessionStartedEvent accessibilitySessionStartedEvent, AccessibilitySessionLanguageChangedEvent accessibilitySessionLanguageChangedEvent, AccessibilitySessionApiErrorEvent accessibilitySessionApiErrorEvent, AccessibilitySessionEndedEvent accessibilitySessionEndedEvent, AccessibilitySessionVolumeChangedEvent accessibilitySessionVolumeChangedEvent, SessionType sessionType, String str, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            accessibilitySessionStartedEvent = accessibilityEvent.start_event;
        }
        if ((i & 2) != 0) {
            accessibilitySessionLanguageChangedEvent = accessibilityEvent.language_changed_event;
        }
        if ((i & 4) != 0) {
            accessibilitySessionApiErrorEvent = accessibilityEvent.api_error_event;
        }
        if ((i & 8) != 0) {
            accessibilitySessionEndedEvent = accessibilityEvent.end_event;
        }
        if ((i & 16) != 0) {
            accessibilitySessionVolumeChangedEvent = accessibilityEvent.volume_changed_event;
        }
        if ((i & 32) != 0) {
            sessionType = accessibilityEvent.type;
        }
        if ((i & 64) != 0) {
            str = accessibilityEvent.session_id;
        }
        if ((i & 128) != 0) {
            byteString = accessibilityEvent.unknownFields();
        }
        String str2 = str;
        ByteString byteString2 = byteString;
        AccessibilitySessionVolumeChangedEvent accessibilitySessionVolumeChangedEvent2 = accessibilitySessionVolumeChangedEvent;
        SessionType sessionType2 = sessionType;
        return accessibilityEvent.copy(accessibilitySessionStartedEvent, accessibilitySessionLanguageChangedEvent, accessibilitySessionApiErrorEvent, accessibilitySessionEndedEvent, accessibilitySessionVolumeChangedEvent2, sessionType2, str2, byteString2);
    }

    public final AccessibilityEvent copy(AccessibilitySessionStartedEvent start_event, AccessibilitySessionLanguageChangedEvent language_changed_event, AccessibilitySessionApiErrorEvent api_error_event, AccessibilitySessionEndedEvent end_event, AccessibilitySessionVolumeChangedEvent volume_changed_event, SessionType type, String session_id, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(session_id, "session_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new AccessibilityEvent(start_event, language_changed_event, api_error_event, end_event, volume_changed_event, type, session_id, unknownFields);
    }

    /* JADX INFO: compiled from: AccessibilityEvent.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\rJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;", "()V", "api_error_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionApiErrorEvent;", "end_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionEndedEvent;", "language_changed_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionLanguageChangedEvent;", "session_id", "", "start_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionStartedEvent;", "type", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$SessionType;", "volume_changed_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionVolumeChangedEvent;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<AccessibilityEvent, Builder> {
        public AccessibilitySessionApiErrorEvent api_error_event;
        public AccessibilitySessionEndedEvent end_event;
        public AccessibilitySessionLanguageChangedEvent language_changed_event;
        public AccessibilitySessionStartedEvent start_event;
        public AccessibilitySessionVolumeChangedEvent volume_changed_event;
        public SessionType type = SessionType.SESSION_TYPE_INVALID;
        public String session_id = "";

        public final Builder type(SessionType type) {
            Intrinsics.checkNotNullParameter(type, "type");
            this.type = type;
            return this;
        }

        public final Builder session_id(String session_id) {
            Intrinsics.checkNotNullParameter(session_id, "session_id");
            this.session_id = session_id;
            return this;
        }

        public final Builder start_event(AccessibilitySessionStartedEvent start_event) {
            this.start_event = start_event;
            this.language_changed_event = null;
            this.api_error_event = null;
            this.end_event = null;
            this.volume_changed_event = null;
            return this;
        }

        public final Builder language_changed_event(AccessibilitySessionLanguageChangedEvent language_changed_event) {
            this.language_changed_event = language_changed_event;
            this.start_event = null;
            this.api_error_event = null;
            this.end_event = null;
            this.volume_changed_event = null;
            return this;
        }

        public final Builder api_error_event(AccessibilitySessionApiErrorEvent api_error_event) {
            this.api_error_event = api_error_event;
            this.start_event = null;
            this.language_changed_event = null;
            this.end_event = null;
            this.volume_changed_event = null;
            return this;
        }

        public final Builder end_event(AccessibilitySessionEndedEvent end_event) {
            this.end_event = end_event;
            this.start_event = null;
            this.language_changed_event = null;
            this.api_error_event = null;
            this.volume_changed_event = null;
            return this;
        }

        public final Builder volume_changed_event(AccessibilitySessionVolumeChangedEvent volume_changed_event) {
            this.volume_changed_event = volume_changed_event;
            this.start_event = null;
            this.language_changed_event = null;
            this.api_error_event = null;
            this.end_event = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public AccessibilityEvent build() {
            return new AccessibilityEvent(this.start_event, this.language_changed_event, this.api_error_event, this.end_event, this.volume_changed_event, this.type, this.session_id, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: AccessibilityEvent.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ AccessibilityEvent build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AccessibilityEvent.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<AccessibilityEvent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessibility.AccessibilityEvent$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(AccessibilityEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size() + AccessibilityEvent.AccessibilitySessionStartedEvent.ADAPTER.encodedSizeWithTag(1, value.start_event) + AccessibilityEvent.AccessibilitySessionLanguageChangedEvent.ADAPTER.encodedSizeWithTag(2, value.language_changed_event) + AccessibilityEvent.AccessibilitySessionApiErrorEvent.ADAPTER.encodedSizeWithTag(3, value.api_error_event) + AccessibilityEvent.AccessibilitySessionEndedEvent.ADAPTER.encodedSizeWithTag(4, value.end_event) + AccessibilityEvent.AccessibilitySessionVolumeChangedEvent.ADAPTER.encodedSizeWithTag(5, value.volume_changed_event);
                if (value.type != AccessibilityEvent.SessionType.SESSION_TYPE_INVALID) {
                    size += AccessibilityEvent.SessionType.ADAPTER.encodedSizeWithTag(6, value.type);
                }
                return !Intrinsics.areEqual(value.session_id, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(7, value.session_id) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, AccessibilityEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.type != AccessibilityEvent.SessionType.SESSION_TYPE_INVALID) {
                    AccessibilityEvent.SessionType.ADAPTER.encodeWithTag(writer, 6, value.type);
                }
                if (!Intrinsics.areEqual(value.session_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.session_id);
                }
                AccessibilityEvent.AccessibilitySessionStartedEvent.ADAPTER.encodeWithTag(writer, 1, value.start_event);
                AccessibilityEvent.AccessibilitySessionLanguageChangedEvent.ADAPTER.encodeWithTag(writer, 2, value.language_changed_event);
                AccessibilityEvent.AccessibilitySessionApiErrorEvent.ADAPTER.encodeWithTag(writer, 3, value.api_error_event);
                AccessibilityEvent.AccessibilitySessionEndedEvent.ADAPTER.encodeWithTag(writer, 4, value.end_event);
                AccessibilityEvent.AccessibilitySessionVolumeChangedEvent.ADAPTER.encodeWithTag(writer, 5, value.volume_changed_event);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, AccessibilityEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                AccessibilityEvent.AccessibilitySessionVolumeChangedEvent.ADAPTER.encodeWithTag(writer, 5, value.volume_changed_event);
                AccessibilityEvent.AccessibilitySessionEndedEvent.ADAPTER.encodeWithTag(writer, 4, value.end_event);
                AccessibilityEvent.AccessibilitySessionApiErrorEvent.ADAPTER.encodeWithTag(writer, 3, value.api_error_event);
                AccessibilityEvent.AccessibilitySessionLanguageChangedEvent.ADAPTER.encodeWithTag(writer, 2, value.language_changed_event);
                AccessibilityEvent.AccessibilitySessionStartedEvent.ADAPTER.encodeWithTag(writer, 1, value.start_event);
                if (!Intrinsics.areEqual(value.session_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.session_id);
                }
                if (value.type != AccessibilityEvent.SessionType.SESSION_TYPE_INVALID) {
                    AccessibilityEvent.SessionType.ADAPTER.encodeWithTag(writer, 6, value.type);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public AccessibilityEvent decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                AccessibilityEvent.SessionType sessionType = AccessibilityEvent.SessionType.SESSION_TYPE_INVALID;
                long jBeginMessage = reader.beginMessage();
                AccessibilityEvent.AccessibilitySessionLanguageChangedEvent accessibilitySessionLanguageChangedEventDecode = null;
                AccessibilityEvent.AccessibilitySessionApiErrorEvent accessibilitySessionApiErrorEventDecode = null;
                AccessibilityEvent.AccessibilitySessionEndedEvent accessibilitySessionEndedEventDecode = null;
                AccessibilityEvent.AccessibilitySessionVolumeChangedEvent accessibilitySessionVolumeChangedEventDecode = null;
                String strDecode = "";
                AccessibilityEvent.SessionType sessionTypeDecode = sessionType;
                AccessibilityEvent.AccessibilitySessionStartedEvent accessibilitySessionStartedEventDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                accessibilitySessionStartedEventDecode = AccessibilityEvent.AccessibilitySessionStartedEvent.ADAPTER.decode(reader);
                                break;
                            case 2:
                                accessibilitySessionLanguageChangedEventDecode = AccessibilityEvent.AccessibilitySessionLanguageChangedEvent.ADAPTER.decode(reader);
                                break;
                            case 3:
                                accessibilitySessionApiErrorEventDecode = AccessibilityEvent.AccessibilitySessionApiErrorEvent.ADAPTER.decode(reader);
                                break;
                            case 4:
                                accessibilitySessionEndedEventDecode = AccessibilityEvent.AccessibilitySessionEndedEvent.ADAPTER.decode(reader);
                                break;
                            case 5:
                                accessibilitySessionVolumeChangedEventDecode = AccessibilityEvent.AccessibilitySessionVolumeChangedEvent.ADAPTER.decode(reader);
                                break;
                            case 6:
                                try {
                                    sessionTypeDecode = AccessibilityEvent.SessionType.ADAPTER.decode(reader);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                }
                                break;
                            case 7:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new AccessibilityEvent(accessibilitySessionStartedEventDecode, accessibilitySessionLanguageChangedEventDecode, accessibilitySessionApiErrorEventDecode, accessibilitySessionEndedEventDecode, accessibilitySessionVolumeChangedEventDecode, sessionTypeDecode, strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public AccessibilityEvent redact(AccessibilityEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                AccessibilityEvent.AccessibilitySessionStartedEvent accessibilitySessionStartedEvent = value.start_event;
                AccessibilityEvent.AccessibilitySessionStartedEvent accessibilitySessionStartedEventRedact = accessibilitySessionStartedEvent != null ? AccessibilityEvent.AccessibilitySessionStartedEvent.ADAPTER.redact(accessibilitySessionStartedEvent) : null;
                AccessibilityEvent.AccessibilitySessionLanguageChangedEvent accessibilitySessionLanguageChangedEvent = value.language_changed_event;
                AccessibilityEvent.AccessibilitySessionLanguageChangedEvent accessibilitySessionLanguageChangedEventRedact = accessibilitySessionLanguageChangedEvent != null ? AccessibilityEvent.AccessibilitySessionLanguageChangedEvent.ADAPTER.redact(accessibilitySessionLanguageChangedEvent) : null;
                AccessibilityEvent.AccessibilitySessionApiErrorEvent accessibilitySessionApiErrorEvent = value.api_error_event;
                AccessibilityEvent.AccessibilitySessionApiErrorEvent accessibilitySessionApiErrorEventRedact = accessibilitySessionApiErrorEvent != null ? AccessibilityEvent.AccessibilitySessionApiErrorEvent.ADAPTER.redact(accessibilitySessionApiErrorEvent) : null;
                AccessibilityEvent.AccessibilitySessionEndedEvent accessibilitySessionEndedEvent = value.end_event;
                AccessibilityEvent.AccessibilitySessionEndedEvent accessibilitySessionEndedEventRedact = accessibilitySessionEndedEvent != null ? AccessibilityEvent.AccessibilitySessionEndedEvent.ADAPTER.redact(accessibilitySessionEndedEvent) : null;
                AccessibilityEvent.AccessibilitySessionVolumeChangedEvent accessibilitySessionVolumeChangedEvent = value.volume_changed_event;
                return AccessibilityEvent.copy$default(value, accessibilitySessionStartedEventRedact, accessibilitySessionLanguageChangedEventRedact, accessibilitySessionApiErrorEventRedact, accessibilitySessionEndedEventRedact, accessibilitySessionVolumeChangedEvent != null ? AccessibilityEvent.AccessibilitySessionVolumeChangedEvent.ADAPTER.redact(accessibilitySessionVolumeChangedEvent) : null, null, null, ByteString.EMPTY, 96, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: AccessibilityEvent.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$SessionType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "SESSION_TYPE_INVALID", "SESSION_TYPE_HEADPHONES", "SESSION_TYPE_SPEAKER", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SessionType implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ SessionType[] $VALUES;
        public static final ProtoAdapter<SessionType> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final SessionType SESSION_TYPE_HEADPHONES;
        public static final SessionType SESSION_TYPE_INVALID;
        public static final SessionType SESSION_TYPE_SPEAKER;
        private final int value;

        private static final /* synthetic */ SessionType[] $values() {
            return new SessionType[]{SESSION_TYPE_INVALID, SESSION_TYPE_HEADPHONES, SESSION_TYPE_SPEAKER};
        }

        @JvmStatic
        public static final SessionType fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<SessionType> getEntries() {
            return $ENTRIES;
        }

        public static SessionType valueOf(String str) {
            return (SessionType) Enum.valueOf(SessionType.class, str);
        }

        public static SessionType[] values() {
            return (SessionType[]) $VALUES.clone();
        }

        private SessionType(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final SessionType sessionType = new SessionType("SESSION_TYPE_INVALID", 0, 0);
            SESSION_TYPE_INVALID = sessionType;
            SESSION_TYPE_HEADPHONES = new SessionType("SESSION_TYPE_HEADPHONES", 1, 1);
            SESSION_TYPE_SPEAKER = new SessionType("SESSION_TYPE_SPEAKER", 2, 2);
            SessionType[] sessionTypeArr$values = $values();
            $VALUES = sessionTypeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(sessionTypeArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(SessionType.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<SessionType>(orCreateKotlinClass, syntax, sessionType) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessibility.AccessibilityEvent$SessionType$Companion$ADAPTER$1
                {
                    AccessibilityEvent.SessionType sessionType2 = sessionType;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public AccessibilityEvent.SessionType fromValue(int value) {
                    return AccessibilityEvent.SessionType.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: AccessibilityEvent.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$SessionType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$SessionType;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final SessionType fromValue(int value) {
                if (value == 0) {
                    return SessionType.SESSION_TYPE_INVALID;
                }
                if (value == 1) {
                    return SessionType.SESSION_TYPE_HEADPHONES;
                }
                if (value != 2) {
                    return null;
                }
                return SessionType.SESSION_TYPE_SPEAKER;
            }
        }
    }

    /* JADX INFO: compiled from: AccessibilityEvent.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionStartedEvent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionStartedEvent$Builder;", "device_locale", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class AccessibilitySessionStartedEvent extends Message<AccessibilitySessionStartedEvent, Builder> {
        public static final ProtoAdapter<AccessibilitySessionStartedEvent> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "deviceLocale", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 2)
        public final String device_locale;

        /* JADX WARN: Multi-variable type inference failed */
        public AccessibilitySessionStartedEvent() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        public /* synthetic */ AccessibilitySessionStartedEvent(String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AccessibilitySessionStartedEvent(String device_locale, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(device_locale, "device_locale");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.device_locale = device_locale;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.device_locale = this.device_locale;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof AccessibilitySessionStartedEvent)) {
                return false;
            }
            AccessibilitySessionStartedEvent accessibilitySessionStartedEvent = (AccessibilitySessionStartedEvent) other;
            return Intrinsics.areEqual(unknownFields(), accessibilitySessionStartedEvent.unknownFields()) && Intrinsics.areEqual(this.device_locale, accessibilitySessionStartedEvent.device_locale);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (unknownFields().hashCode() * 37) + this.device_locale.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            arrayList.add("device_locale=" + Internal.sanitize(this.device_locale));
            return CollectionsKt.joinToString$default(arrayList, ", ", "AccessibilitySessionStartedEvent{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ AccessibilitySessionStartedEvent copy$default(AccessibilitySessionStartedEvent accessibilitySessionStartedEvent, String str, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = accessibilitySessionStartedEvent.device_locale;
            }
            if ((i & 2) != 0) {
                byteString = accessibilitySessionStartedEvent.unknownFields();
            }
            return accessibilitySessionStartedEvent.copy(str, byteString);
        }

        public final AccessibilitySessionStartedEvent copy(String device_locale, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(device_locale, "device_locale");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new AccessibilitySessionStartedEvent(device_locale, unknownFields);
        }

        /* JADX INFO: compiled from: AccessibilityEvent.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionStartedEvent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionStartedEvent;", "()V", "device_locale", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<AccessibilitySessionStartedEvent, Builder> {
            public String device_locale = "";

            public final Builder device_locale(String device_locale) {
                Intrinsics.checkNotNullParameter(device_locale, "device_locale");
                this.device_locale = device_locale;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public AccessibilitySessionStartedEvent build() {
                return new AccessibilitySessionStartedEvent(this.device_locale, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: AccessibilityEvent.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionStartedEvent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionStartedEvent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionStartedEvent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ AccessibilitySessionStartedEvent build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AccessibilitySessionStartedEvent.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<AccessibilitySessionStartedEvent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessibility.AccessibilityEvent$AccessibilitySessionStartedEvent$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(AccessibilityEvent.AccessibilitySessionStartedEvent value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    return !Intrinsics.areEqual(value.device_locale, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(2, value.device_locale) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, AccessibilityEvent.AccessibilitySessionStartedEvent value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (!Intrinsics.areEqual(value.device_locale, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.device_locale);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, AccessibilityEvent.AccessibilitySessionStartedEvent value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (Intrinsics.areEqual(value.device_locale, "")) {
                        return;
                    }
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.device_locale);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public AccessibilityEvent.AccessibilitySessionStartedEvent redact(AccessibilityEvent.AccessibilitySessionStartedEvent value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return AccessibilityEvent.AccessibilitySessionStartedEvent.copy$default(value, null, ByteString.EMPTY, 1, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public AccessibilityEvent.AccessibilitySessionStartedEvent decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = "";
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new AccessibilityEvent.AccessibilitySessionStartedEvent(strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 2) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }

    /* JADX INFO: compiled from: AccessibilityEvent.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionLanguageChangedEvent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionLanguageChangedEvent$Builder;", "new_device_locale", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class AccessibilitySessionLanguageChangedEvent extends Message<AccessibilitySessionLanguageChangedEvent, Builder> {
        public static final ProtoAdapter<AccessibilitySessionLanguageChangedEvent> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "newDeviceLocale", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final String new_device_locale;

        /* JADX WARN: Multi-variable type inference failed */
        public AccessibilitySessionLanguageChangedEvent() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        public /* synthetic */ AccessibilitySessionLanguageChangedEvent(String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AccessibilitySessionLanguageChangedEvent(String new_device_locale, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(new_device_locale, "new_device_locale");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.new_device_locale = new_device_locale;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.new_device_locale = this.new_device_locale;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof AccessibilitySessionLanguageChangedEvent)) {
                return false;
            }
            AccessibilitySessionLanguageChangedEvent accessibilitySessionLanguageChangedEvent = (AccessibilitySessionLanguageChangedEvent) other;
            return Intrinsics.areEqual(unknownFields(), accessibilitySessionLanguageChangedEvent.unknownFields()) && Intrinsics.areEqual(this.new_device_locale, accessibilitySessionLanguageChangedEvent.new_device_locale);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (unknownFields().hashCode() * 37) + this.new_device_locale.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            arrayList.add("new_device_locale=" + Internal.sanitize(this.new_device_locale));
            return CollectionsKt.joinToString$default(arrayList, ", ", "AccessibilitySessionLanguageChangedEvent{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ AccessibilitySessionLanguageChangedEvent copy$default(AccessibilitySessionLanguageChangedEvent accessibilitySessionLanguageChangedEvent, String str, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = accessibilitySessionLanguageChangedEvent.new_device_locale;
            }
            if ((i & 2) != 0) {
                byteString = accessibilitySessionLanguageChangedEvent.unknownFields();
            }
            return accessibilitySessionLanguageChangedEvent.copy(str, byteString);
        }

        public final AccessibilitySessionLanguageChangedEvent copy(String new_device_locale, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(new_device_locale, "new_device_locale");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new AccessibilitySessionLanguageChangedEvent(new_device_locale, unknownFields);
        }

        /* JADX INFO: compiled from: AccessibilityEvent.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionLanguageChangedEvent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionLanguageChangedEvent;", "()V", "new_device_locale", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<AccessibilitySessionLanguageChangedEvent, Builder> {
            public String new_device_locale = "";

            public final Builder new_device_locale(String new_device_locale) {
                Intrinsics.checkNotNullParameter(new_device_locale, "new_device_locale");
                this.new_device_locale = new_device_locale;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public AccessibilitySessionLanguageChangedEvent build() {
                return new AccessibilitySessionLanguageChangedEvent(this.new_device_locale, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: AccessibilityEvent.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionLanguageChangedEvent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionLanguageChangedEvent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionLanguageChangedEvent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ AccessibilitySessionLanguageChangedEvent build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AccessibilitySessionLanguageChangedEvent.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<AccessibilitySessionLanguageChangedEvent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessibility.AccessibilityEvent$AccessibilitySessionLanguageChangedEvent$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(AccessibilityEvent.AccessibilitySessionLanguageChangedEvent value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    return !Intrinsics.areEqual(value.new_device_locale, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(1, value.new_device_locale) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, AccessibilityEvent.AccessibilitySessionLanguageChangedEvent value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (!Intrinsics.areEqual(value.new_device_locale, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.new_device_locale);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, AccessibilityEvent.AccessibilitySessionLanguageChangedEvent value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (Intrinsics.areEqual(value.new_device_locale, "")) {
                        return;
                    }
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.new_device_locale);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public AccessibilityEvent.AccessibilitySessionLanguageChangedEvent redact(AccessibilityEvent.AccessibilitySessionLanguageChangedEvent value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return AccessibilityEvent.AccessibilitySessionLanguageChangedEvent.copy$default(value, null, ByteString.EMPTY, 1, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public AccessibilityEvent.AccessibilitySessionLanguageChangedEvent decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = "";
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new AccessibilityEvent.AccessibilitySessionLanguageChangedEvent(strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
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

    /* JADX INFO: compiled from: AccessibilityEvent.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ$\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0006H\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0004H\u0016R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionApiErrorEvent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionApiErrorEvent$Builder;", "method_name", "", "error_code", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;ILokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class AccessibilitySessionApiErrorEvent extends Message<AccessibilitySessionApiErrorEvent, Builder> {
        public static final ProtoAdapter<AccessibilitySessionApiErrorEvent> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "errorCode", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final int error_code;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "methodName", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final String method_name;

        public AccessibilitySessionApiErrorEvent() {
            this(null, 0, null, 7, null);
        }

        public /* synthetic */ AccessibilitySessionApiErrorEvent(String str, int i, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? 0 : i, (i2 & 4) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AccessibilitySessionApiErrorEvent(String method_name, int i, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(method_name, "method_name");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.method_name = method_name;
            this.error_code = i;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.method_name = this.method_name;
            builder.error_code = this.error_code;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof AccessibilitySessionApiErrorEvent)) {
                return false;
            }
            AccessibilitySessionApiErrorEvent accessibilitySessionApiErrorEvent = (AccessibilitySessionApiErrorEvent) other;
            return Intrinsics.areEqual(unknownFields(), accessibilitySessionApiErrorEvent.unknownFields()) && Intrinsics.areEqual(this.method_name, accessibilitySessionApiErrorEvent.method_name) && this.error_code == accessibilitySessionApiErrorEvent.error_code;
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((unknownFields().hashCode() * 37) + this.method_name.hashCode()) * 37) + Integer.hashCode(this.error_code);
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("method_name=" + Internal.sanitize(this.method_name));
            arrayList2.add("error_code=" + this.error_code);
            return CollectionsKt.joinToString$default(arrayList, ", ", "AccessibilitySessionApiErrorEvent{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ AccessibilitySessionApiErrorEvent copy$default(AccessibilitySessionApiErrorEvent accessibilitySessionApiErrorEvent, String str, int i, ByteString byteString, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = accessibilitySessionApiErrorEvent.method_name;
            }
            if ((i2 & 2) != 0) {
                i = accessibilitySessionApiErrorEvent.error_code;
            }
            if ((i2 & 4) != 0) {
                byteString = accessibilitySessionApiErrorEvent.unknownFields();
            }
            return accessibilitySessionApiErrorEvent.copy(str, i, byteString);
        }

        public final AccessibilitySessionApiErrorEvent copy(String method_name, int error_code, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(method_name, "method_name");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new AccessibilitySessionApiErrorEvent(method_name, error_code, unknownFields);
        }

        /* JADX INFO: compiled from: AccessibilityEvent.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionApiErrorEvent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionApiErrorEvent;", "()V", "error_code", "", "method_name", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<AccessibilitySessionApiErrorEvent, Builder> {
            public int error_code;
            public String method_name = "";

            public final Builder method_name(String method_name) {
                Intrinsics.checkNotNullParameter(method_name, "method_name");
                this.method_name = method_name;
                return this;
            }

            public final Builder error_code(int error_code) {
                this.error_code = error_code;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public AccessibilitySessionApiErrorEvent build() {
                return new AccessibilitySessionApiErrorEvent(this.method_name, this.error_code, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: AccessibilityEvent.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionApiErrorEvent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionApiErrorEvent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionApiErrorEvent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ AccessibilitySessionApiErrorEvent build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AccessibilitySessionApiErrorEvent.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<AccessibilitySessionApiErrorEvent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessibility.AccessibilityEvent$AccessibilitySessionApiErrorEvent$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(AccessibilityEvent.AccessibilitySessionApiErrorEvent value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (!Intrinsics.areEqual(value.method_name, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.method_name);
                    }
                    return value.error_code != 0 ? size + ProtoAdapter.INT32.encodedSizeWithTag(2, Integer.valueOf(value.error_code)) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, AccessibilityEvent.AccessibilitySessionApiErrorEvent value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (!Intrinsics.areEqual(value.method_name, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.method_name);
                    }
                    if (value.error_code != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 2, Integer.valueOf(value.error_code));
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, AccessibilityEvent.AccessibilitySessionApiErrorEvent value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.error_code != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 2, Integer.valueOf(value.error_code));
                    }
                    if (Intrinsics.areEqual(value.method_name, "")) {
                        return;
                    }
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.method_name);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public AccessibilityEvent.AccessibilitySessionApiErrorEvent redact(AccessibilityEvent.AccessibilitySessionApiErrorEvent value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return AccessibilityEvent.AccessibilitySessionApiErrorEvent.copy$default(value, null, 0, ByteString.EMPTY, 3, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public AccessibilityEvent.AccessibilitySessionApiErrorEvent decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = "";
                    int iIntValue = 0;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new AccessibilityEvent.AccessibilitySessionApiErrorEvent(strDecode, iIntValue, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 2) {
                            iIntValue = ProtoAdapter.INT32.decode(reader).intValue();
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }

    /* JADX INFO: compiled from: AccessibilityEvent.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u0004H\u0016J\b\u0010\u000e\u001a\u00020\u0002H\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionVolumeChangedEvent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionVolumeChangedEvent$Builder;", "new_volume", "", "unknownFields", "Lokio/ByteString;", "(ILokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class AccessibilitySessionVolumeChangedEvent extends Message<AccessibilitySessionVolumeChangedEvent, Builder> {
        public static final ProtoAdapter<AccessibilitySessionVolumeChangedEvent> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "newVolume", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final int new_volume;

        /* JADX WARN: Multi-variable type inference failed */
        public AccessibilitySessionVolumeChangedEvent() {
            this(0, null, 3, 0 == true ? 1 : 0);
        }

        public /* synthetic */ AccessibilitySessionVolumeChangedEvent(int i, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AccessibilitySessionVolumeChangedEvent(int i, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.new_volume = i;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.new_volume = this.new_volume;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof AccessibilitySessionVolumeChangedEvent)) {
                return false;
            }
            AccessibilitySessionVolumeChangedEvent accessibilitySessionVolumeChangedEvent = (AccessibilitySessionVolumeChangedEvent) other;
            return Intrinsics.areEqual(unknownFields(), accessibilitySessionVolumeChangedEvent.unknownFields()) && this.new_volume == accessibilitySessionVolumeChangedEvent.new_volume;
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (unknownFields().hashCode() * 37) + Integer.hashCode(this.new_volume);
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            arrayList.add("new_volume=" + this.new_volume);
            return CollectionsKt.joinToString$default(arrayList, ", ", "AccessibilitySessionVolumeChangedEvent{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ AccessibilitySessionVolumeChangedEvent copy$default(AccessibilitySessionVolumeChangedEvent accessibilitySessionVolumeChangedEvent, int i, ByteString byteString, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = accessibilitySessionVolumeChangedEvent.new_volume;
            }
            if ((i2 & 2) != 0) {
                byteString = accessibilitySessionVolumeChangedEvent.unknownFields();
            }
            return accessibilitySessionVolumeChangedEvent.copy(i, byteString);
        }

        public final AccessibilitySessionVolumeChangedEvent copy(int new_volume, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new AccessibilitySessionVolumeChangedEvent(new_volume, unknownFields);
        }

        /* JADX INFO: compiled from: AccessibilityEvent.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionVolumeChangedEvent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionVolumeChangedEvent;", "()V", "new_volume", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<AccessibilitySessionVolumeChangedEvent, Builder> {
            public int new_volume;

            public final Builder new_volume(int new_volume) {
                this.new_volume = new_volume;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public AccessibilitySessionVolumeChangedEvent build() {
                return new AccessibilitySessionVolumeChangedEvent(this.new_volume, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: AccessibilityEvent.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionVolumeChangedEvent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionVolumeChangedEvent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionVolumeChangedEvent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ AccessibilitySessionVolumeChangedEvent build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AccessibilitySessionVolumeChangedEvent.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<AccessibilitySessionVolumeChangedEvent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessibility.AccessibilityEvent$AccessibilitySessionVolumeChangedEvent$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(AccessibilityEvent.AccessibilitySessionVolumeChangedEvent value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    return value.new_volume != 0 ? size + ProtoAdapter.INT32.encodedSizeWithTag(1, Integer.valueOf(value.new_volume)) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, AccessibilityEvent.AccessibilitySessionVolumeChangedEvent value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.new_volume != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 1, Integer.valueOf(value.new_volume));
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, AccessibilityEvent.AccessibilitySessionVolumeChangedEvent value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.new_volume != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 1, Integer.valueOf(value.new_volume));
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public AccessibilityEvent.AccessibilitySessionVolumeChangedEvent redact(AccessibilityEvent.AccessibilitySessionVolumeChangedEvent value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return AccessibilityEvent.AccessibilitySessionVolumeChangedEvent.copy$default(value, 0, ByteString.EMPTY, 1, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public AccessibilityEvent.AccessibilitySessionVolumeChangedEvent decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    int iIntValue = 0;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new AccessibilityEvent.AccessibilitySessionVolumeChangedEvent(iIntValue, reader.endMessageAndGetUnknownFields(jBeginMessage));
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

    /* JADX INFO: compiled from: AccessibilityEvent.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionEndedEvent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionEndedEvent$Builder;", OfflineStorageConstantsKt.ID, "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class AccessibilitySessionEndedEvent extends Message<AccessibilitySessionEndedEvent, Builder> {
        public static final ProtoAdapter<AccessibilitySessionEndedEvent> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final String id;

        /* JADX WARN: Multi-variable type inference failed */
        public AccessibilitySessionEndedEvent() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        public /* synthetic */ AccessibilitySessionEndedEvent(String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AccessibilitySessionEndedEvent(String id, ByteString unknownFields) {
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
            if (!(other instanceof AccessibilitySessionEndedEvent)) {
                return false;
            }
            AccessibilitySessionEndedEvent accessibilitySessionEndedEvent = (AccessibilitySessionEndedEvent) other;
            return Intrinsics.areEqual(unknownFields(), accessibilitySessionEndedEvent.unknownFields()) && Intrinsics.areEqual(this.id, accessibilitySessionEndedEvent.id);
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
            return CollectionsKt.joinToString$default(arrayList, ", ", "AccessibilitySessionEndedEvent{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ AccessibilitySessionEndedEvent copy$default(AccessibilitySessionEndedEvent accessibilitySessionEndedEvent, String str, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = accessibilitySessionEndedEvent.id;
            }
            if ((i & 2) != 0) {
                byteString = accessibilitySessionEndedEvent.unknownFields();
            }
            return accessibilitySessionEndedEvent.copy(str, byteString);
        }

        public final AccessibilitySessionEndedEvent copy(String id, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new AccessibilitySessionEndedEvent(id, unknownFields);
        }

        /* JADX INFO: compiled from: AccessibilityEvent.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionEndedEvent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionEndedEvent;", "()V", OfflineStorageConstantsKt.ID, "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<AccessibilitySessionEndedEvent, Builder> {
            public String id = "";

            public final Builder id(String id) {
                Intrinsics.checkNotNullParameter(id, "id");
                this.id = id;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public AccessibilitySessionEndedEvent build() {
                return new AccessibilitySessionEndedEvent(this.id, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: AccessibilityEvent.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionEndedEvent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionEndedEvent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent$AccessibilitySessionEndedEvent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ AccessibilitySessionEndedEvent build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AccessibilitySessionEndedEvent.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<AccessibilitySessionEndedEvent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessibility.AccessibilityEvent$AccessibilitySessionEndedEvent$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(AccessibilityEvent.AccessibilitySessionEndedEvent value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    return !Intrinsics.areEqual(value.id, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(1, value.id) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, AccessibilityEvent.AccessibilitySessionEndedEvent value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (!Intrinsics.areEqual(value.id, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.id);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, AccessibilityEvent.AccessibilitySessionEndedEvent value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (Intrinsics.areEqual(value.id, "")) {
                        return;
                    }
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.id);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public AccessibilityEvent.AccessibilitySessionEndedEvent redact(AccessibilityEvent.AccessibilitySessionEndedEvent value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return AccessibilityEvent.AccessibilitySessionEndedEvent.copy$default(value, null, ByteString.EMPTY, 1, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public AccessibilityEvent.AccessibilitySessionEndedEvent decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = "";
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new AccessibilityEvent.AccessibilitySessionEndedEvent(strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
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
}
