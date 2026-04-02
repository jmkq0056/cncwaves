package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.app_event;

import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.app_event.ApplicationLifecycleEvent;
import io.ktor.http.ContentDisposition;
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

/* JADX INFO: compiled from: ApplicationLifecycleEvent.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u0000 \u00182\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0005\u0016\u0017\u0018\u0019\u001aB1\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ2\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Builder;", "timestamp_ms", "", AppMeasurement.CRASH_ORIGIN, "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;", "android_settings_intent", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent;", "unknownFields", "Lokio/ByteString;", "(JLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "AndroidSettingsIntentEvent", "Builder", "Companion", "CrashEvent", "Exception", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ApplicationLifecycleEvent extends Message<ApplicationLifecycleEvent, Builder> {
    public static final ProtoAdapter<ApplicationLifecycleEvent> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.app_event.ApplicationLifecycleEvent$AndroidSettingsIntentEvent#ADAPTER", jsonName = "androidSettingsIntent", oneofName = "data", schemaIndex = 2, tag = 3)
    public final AndroidSettingsIntentEvent android_settings_intent;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.app_event.ApplicationLifecycleEvent$CrashEvent#ADAPTER", oneofName = "data", schemaIndex = 1, tag = 2)
    public final CrashEvent crash;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT64", jsonName = "timestampMs", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final long timestamp_ms;

    public ApplicationLifecycleEvent() {
        this(0L, null, null, null, 15, null);
    }

    public /* synthetic */ ApplicationLifecycleEvent(long j, CrashEvent crashEvent, AndroidSettingsIntentEvent androidSettingsIntentEvent, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0L : j, (i & 2) != 0 ? null : crashEvent, (i & 4) != 0 ? null : androidSettingsIntentEvent, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApplicationLifecycleEvent(long j, CrashEvent crashEvent, AndroidSettingsIntentEvent androidSettingsIntentEvent, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.timestamp_ms = j;
        this.crash = crashEvent;
        this.android_settings_intent = androidSettingsIntentEvent;
        if (Internal.countNonNull(crashEvent, androidSettingsIntentEvent) > 1) {
            throw new IllegalArgumentException("At most one of crash, android_settings_intent may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.timestamp_ms = this.timestamp_ms;
        builder.crash = this.crash;
        builder.android_settings_intent = this.android_settings_intent;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ApplicationLifecycleEvent)) {
            return false;
        }
        ApplicationLifecycleEvent applicationLifecycleEvent = (ApplicationLifecycleEvent) other;
        return Intrinsics.areEqual(unknownFields(), applicationLifecycleEvent.unknownFields()) && this.timestamp_ms == applicationLifecycleEvent.timestamp_ms && Intrinsics.areEqual(this.crash, applicationLifecycleEvent.crash) && Intrinsics.areEqual(this.android_settings_intent, applicationLifecycleEvent.android_settings_intent);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + Long.hashCode(this.timestamp_ms)) * 37;
        CrashEvent crashEvent = this.crash;
        int iHashCode2 = (iHashCode + (crashEvent != null ? crashEvent.hashCode() : 0)) * 37;
        AndroidSettingsIntentEvent androidSettingsIntentEvent = this.android_settings_intent;
        int iHashCode3 = iHashCode2 + (androidSettingsIntentEvent != null ? androidSettingsIntentEvent.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("timestamp_ms=" + this.timestamp_ms);
        if (this.crash != null) {
            arrayList2.add("crash=" + this.crash);
        }
        if (this.android_settings_intent != null) {
            arrayList2.add("android_settings_intent=" + this.android_settings_intent);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ApplicationLifecycleEvent{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ApplicationLifecycleEvent copy$default(ApplicationLifecycleEvent applicationLifecycleEvent, long j, CrashEvent crashEvent, AndroidSettingsIntentEvent androidSettingsIntentEvent, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            j = applicationLifecycleEvent.timestamp_ms;
        }
        long j2 = j;
        if ((i & 2) != 0) {
            crashEvent = applicationLifecycleEvent.crash;
        }
        CrashEvent crashEvent2 = crashEvent;
        if ((i & 4) != 0) {
            androidSettingsIntentEvent = applicationLifecycleEvent.android_settings_intent;
        }
        AndroidSettingsIntentEvent androidSettingsIntentEvent2 = androidSettingsIntentEvent;
        if ((i & 8) != 0) {
            byteString = applicationLifecycleEvent.unknownFields();
        }
        return applicationLifecycleEvent.copy(j2, crashEvent2, androidSettingsIntentEvent2, byteString);
    }

    public final ApplicationLifecycleEvent copy(long timestamp_ms, CrashEvent crash, AndroidSettingsIntentEvent android_settings_intent, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ApplicationLifecycleEvent(timestamp_ms, crash, android_settings_intent, unknownFields);
    }

    /* JADX INFO: compiled from: ApplicationLifecycleEvent.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;", "()V", "android_settings_intent", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent;", AppMeasurement.CRASH_ORIGIN, "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;", "timestamp_ms", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ApplicationLifecycleEvent, Builder> {
        public AndroidSettingsIntentEvent android_settings_intent;
        public CrashEvent crash;
        public long timestamp_ms;

        public final Builder timestamp_ms(long timestamp_ms) {
            this.timestamp_ms = timestamp_ms;
            return this;
        }

        public final Builder crash(CrashEvent crash) {
            this.crash = crash;
            this.android_settings_intent = null;
            return this;
        }

        public final Builder android_settings_intent(AndroidSettingsIntentEvent android_settings_intent) {
            this.android_settings_intent = android_settings_intent;
            this.crash = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ApplicationLifecycleEvent build() {
            return new ApplicationLifecycleEvent(this.timestamp_ms, this.crash, this.android_settings_intent, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ApplicationLifecycleEvent.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ApplicationLifecycleEvent build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ApplicationLifecycleEvent.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ApplicationLifecycleEvent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.app_event.ApplicationLifecycleEvent$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ApplicationLifecycleEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.timestamp_ms != 0) {
                    size += ProtoAdapter.UINT64.encodedSizeWithTag(1, Long.valueOf(value.timestamp_ms));
                }
                return size + ApplicationLifecycleEvent.CrashEvent.ADAPTER.encodedSizeWithTag(2, value.crash) + ApplicationLifecycleEvent.AndroidSettingsIntentEvent.ADAPTER.encodedSizeWithTag(3, value.android_settings_intent);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ApplicationLifecycleEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.timestamp_ms != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 1, Long.valueOf(value.timestamp_ms));
                }
                ApplicationLifecycleEvent.CrashEvent.ADAPTER.encodeWithTag(writer, 2, value.crash);
                ApplicationLifecycleEvent.AndroidSettingsIntentEvent.ADAPTER.encodeWithTag(writer, 3, value.android_settings_intent);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ApplicationLifecycleEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                ApplicationLifecycleEvent.AndroidSettingsIntentEvent.ADAPTER.encodeWithTag(writer, 3, value.android_settings_intent);
                ApplicationLifecycleEvent.CrashEvent.ADAPTER.encodeWithTag(writer, 2, value.crash);
                if (value.timestamp_ms != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 1, Long.valueOf(value.timestamp_ms));
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ApplicationLifecycleEvent redact(ApplicationLifecycleEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                ApplicationLifecycleEvent.CrashEvent crashEvent = value.crash;
                ApplicationLifecycleEvent.CrashEvent crashEventRedact = crashEvent != null ? ApplicationLifecycleEvent.CrashEvent.ADAPTER.redact(crashEvent) : null;
                ApplicationLifecycleEvent.AndroidSettingsIntentEvent androidSettingsIntentEvent = value.android_settings_intent;
                return ApplicationLifecycleEvent.copy$default(value, 0L, crashEventRedact, androidSettingsIntentEvent != null ? ApplicationLifecycleEvent.AndroidSettingsIntentEvent.ADAPTER.redact(androidSettingsIntentEvent) : null, ByteString.EMPTY, 1, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ApplicationLifecycleEvent decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                ApplicationLifecycleEvent.CrashEvent crashEventDecode = null;
                long jLongValue = 0;
                ApplicationLifecycleEvent.AndroidSettingsIntentEvent androidSettingsIntentEventDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ApplicationLifecycleEvent(jLongValue, crashEventDecode, androidSettingsIntentEventDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        jLongValue = ProtoAdapter.UINT64.decode(reader).longValue();
                    } else if (iNextTag == 2) {
                        crashEventDecode = ApplicationLifecycleEvent.CrashEvent.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        androidSettingsIntentEventDecode = ApplicationLifecycleEvent.AndroidSettingsIntentEvent.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }

    /* JADX INFO: compiled from: ApplicationLifecycleEvent.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B7\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ8\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\bH\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0004H\u0016R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Exception;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Exception$Builder;", "name", "", "message", ContentDisposition.Parameters.FileName, "line_number", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Exception extends Message<Exception, Builder> {
        public static final ProtoAdapter<Exception> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
        public final String filename;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "lineNumber", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
        public final int line_number;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final String message;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final String name;

        public Exception() {
            this(null, null, null, 0, null, 31, null);
        }

        public /* synthetic */ Exception(String str, String str2, String str3, int i, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? "" : str2, (i2 & 4) != 0 ? "" : str3, (i2 & 8) != 0 ? 0 : i, (i2 & 16) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Exception(String name, String message, String filename, int i, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(message, "message");
            Intrinsics.checkNotNullParameter(filename, "filename");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.name = name;
            this.message = message;
            this.filename = filename;
            this.line_number = i;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.name = this.name;
            builder.message = this.message;
            builder.filename = this.filename;
            builder.line_number = this.line_number;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof Exception)) {
                return false;
            }
            Exception exception = (Exception) other;
            return Intrinsics.areEqual(unknownFields(), exception.unknownFields()) && Intrinsics.areEqual(this.name, exception.name) && Intrinsics.areEqual(this.message, exception.message) && Intrinsics.areEqual(this.filename, exception.filename) && this.line_number == exception.line_number;
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((((((unknownFields().hashCode() * 37) + this.name.hashCode()) * 37) + this.message.hashCode()) * 37) + this.filename.hashCode()) * 37) + Integer.hashCode(this.line_number);
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("name=" + Internal.sanitize(this.name));
            arrayList2.add("message=" + Internal.sanitize(this.message));
            arrayList2.add("filename=" + Internal.sanitize(this.filename));
            arrayList2.add("line_number=" + this.line_number);
            return CollectionsKt.joinToString$default(arrayList, ", ", "Exception{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ Exception copy$default(Exception exception, String str, String str2, String str3, int i, ByteString byteString, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = exception.name;
            }
            if ((i2 & 2) != 0) {
                str2 = exception.message;
            }
            if ((i2 & 4) != 0) {
                str3 = exception.filename;
            }
            if ((i2 & 8) != 0) {
                i = exception.line_number;
            }
            if ((i2 & 16) != 0) {
                byteString = exception.unknownFields();
            }
            ByteString byteString2 = byteString;
            String str4 = str3;
            return exception.copy(str, str2, str4, i, byteString2);
        }

        public final Exception copy(String name, String message, String filename, int line_number, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(message, "message");
            Intrinsics.checkNotNullParameter(filename, "filename");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new Exception(name, message, filename, line_number, unknownFields);
        }

        /* JADX INFO: compiled from: ApplicationLifecycleEvent.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Exception$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Exception;", "()V", ContentDisposition.Parameters.FileName, "", "line_number", "", "message", "name", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<Exception, Builder> {
            public int line_number;
            public String name = "";
            public String message = "";
            public String filename = "";

            public final Builder name(String name) {
                Intrinsics.checkNotNullParameter(name, "name");
                this.name = name;
                return this;
            }

            public final Builder message(String message) {
                Intrinsics.checkNotNullParameter(message, "message");
                this.message = message;
                return this;
            }

            public final Builder filename(String filename) {
                Intrinsics.checkNotNullParameter(filename, "filename");
                this.filename = filename;
                return this;
            }

            public final Builder line_number(int line_number) {
                this.line_number = line_number;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public Exception build() {
                return new Exception(this.name, this.message, this.filename, this.line_number, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: ApplicationLifecycleEvent.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Exception$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Exception;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Exception$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Exception build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Exception.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<Exception>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.app_event.ApplicationLifecycleEvent$Exception$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(ApplicationLifecycleEvent.Exception value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (!Intrinsics.areEqual(value.name, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.name);
                    }
                    if (!Intrinsics.areEqual(value.message, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.message);
                    }
                    if (!Intrinsics.areEqual(value.filename, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.filename);
                    }
                    return value.line_number != 0 ? size + ProtoAdapter.INT32.encodedSizeWithTag(4, Integer.valueOf(value.line_number)) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, ApplicationLifecycleEvent.Exception value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (!Intrinsics.areEqual(value.name, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.name);
                    }
                    if (!Intrinsics.areEqual(value.message, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.message);
                    }
                    if (!Intrinsics.areEqual(value.filename, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 3, value.filename);
                    }
                    if (value.line_number != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 4, Integer.valueOf(value.line_number));
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, ApplicationLifecycleEvent.Exception value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.line_number != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 4, Integer.valueOf(value.line_number));
                    }
                    if (!Intrinsics.areEqual(value.filename, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 3, value.filename);
                    }
                    if (!Intrinsics.areEqual(value.message, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.message);
                    }
                    if (Intrinsics.areEqual(value.name, "")) {
                        return;
                    }
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.name);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public ApplicationLifecycleEvent.Exception redact(ApplicationLifecycleEvent.Exception value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return ApplicationLifecycleEvent.Exception.copy$default(value, null, null, null, 0, ByteString.EMPTY, 15, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public ApplicationLifecycleEvent.Exception decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = "";
                    String strDecode2 = "";
                    int iIntValue = 0;
                    String strDecode3 = strDecode2;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new ApplicationLifecycleEvent.Exception(strDecode, strDecode3, strDecode2, iIntValue, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 2) {
                            strDecode3 = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 3) {
                            strDecode2 = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 4) {
                            iIntValue = ProtoAdapter.INT32.decode(reader).intValue();
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }

    /* JADX INFO: compiled from: ApplicationLifecycleEvent.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u0000 \u00182\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0017\u0018BM\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJN\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\rJ\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0096\u0002J\b\u0010\u0014\u001a\u00020\u0004H\u0016J\b\u0010\u0015\u001a\u00020\u0002H\u0016J\b\u0010\u0016\u001a\u00020\u0007H\u0016R\u0010\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent$Builder;", "app_process_id", "", "app_user_id", "app_package_name", "", "app_flags", "exception", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Exception;", "app_version_code", "unknownFields", "Lokio/ByteString;", "(IILjava/lang/String;ILcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Exception;ILokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class CrashEvent extends Message<CrashEvent, Builder> {
        public static final ProtoAdapter<CrashEvent> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "appFlags", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
        public final int app_flags;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "appPackageName", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
        public final String app_package_name;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "appProcessId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final int app_process_id;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "appUserId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final int app_user_id;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "appVersionCode", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
        public final int app_version_code;

        @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.app_event.ApplicationLifecycleEvent$Exception#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
        public final Exception exception;

        public CrashEvent() {
            this(0, 0, null, 0, null, 0, null, 127, null);
        }

        public /* synthetic */ CrashEvent(int i, int i2, String str, int i3, Exception exception, int i4, ByteString byteString, int i5, DefaultConstructorMarker defaultConstructorMarker) {
            this((i5 & 1) != 0 ? 0 : i, (i5 & 2) != 0 ? 0 : i2, (i5 & 4) != 0 ? "" : str, (i5 & 8) != 0 ? 0 : i3, (i5 & 16) != 0 ? null : exception, (i5 & 32) != 0 ? 0 : i4, (i5 & 64) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CrashEvent(int i, int i2, String app_package_name, int i3, Exception exception, int i4, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(app_package_name, "app_package_name");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.app_process_id = i;
            this.app_user_id = i2;
            this.app_package_name = app_package_name;
            this.app_flags = i3;
            this.exception = exception;
            this.app_version_code = i4;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.app_process_id = this.app_process_id;
            builder.app_user_id = this.app_user_id;
            builder.app_package_name = this.app_package_name;
            builder.app_flags = this.app_flags;
            builder.exception = this.exception;
            builder.app_version_code = this.app_version_code;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof CrashEvent)) {
                return false;
            }
            CrashEvent crashEvent = (CrashEvent) other;
            return Intrinsics.areEqual(unknownFields(), crashEvent.unknownFields()) && this.app_process_id == crashEvent.app_process_id && this.app_user_id == crashEvent.app_user_id && Intrinsics.areEqual(this.app_package_name, crashEvent.app_package_name) && this.app_flags == crashEvent.app_flags && Intrinsics.areEqual(this.exception, crashEvent.exception) && this.app_version_code == crashEvent.app_version_code;
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = ((((((((unknownFields().hashCode() * 37) + Integer.hashCode(this.app_process_id)) * 37) + Integer.hashCode(this.app_user_id)) * 37) + this.app_package_name.hashCode()) * 37) + Integer.hashCode(this.app_flags)) * 37;
            Exception exception = this.exception;
            int iHashCode2 = ((iHashCode + (exception != null ? exception.hashCode() : 0)) * 37) + Integer.hashCode(this.app_version_code);
            this.hashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("app_process_id=" + this.app_process_id);
            arrayList2.add("app_user_id=" + this.app_user_id);
            arrayList2.add("app_package_name=" + Internal.sanitize(this.app_package_name));
            arrayList2.add("app_flags=" + this.app_flags);
            if (this.exception != null) {
                arrayList2.add("exception=" + this.exception);
            }
            arrayList2.add("app_version_code=" + this.app_version_code);
            return CollectionsKt.joinToString$default(arrayList, ", ", "CrashEvent{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ CrashEvent copy$default(CrashEvent crashEvent, int i, int i2, String str, int i3, Exception exception, int i4, ByteString byteString, int i5, Object obj) {
            if ((i5 & 1) != 0) {
                i = crashEvent.app_process_id;
            }
            if ((i5 & 2) != 0) {
                i2 = crashEvent.app_user_id;
            }
            if ((i5 & 4) != 0) {
                str = crashEvent.app_package_name;
            }
            if ((i5 & 8) != 0) {
                i3 = crashEvent.app_flags;
            }
            if ((i5 & 16) != 0) {
                exception = crashEvent.exception;
            }
            if ((i5 & 32) != 0) {
                i4 = crashEvent.app_version_code;
            }
            if ((i5 & 64) != 0) {
                byteString = crashEvent.unknownFields();
            }
            int i6 = i4;
            ByteString byteString2 = byteString;
            Exception exception2 = exception;
            String str2 = str;
            return crashEvent.copy(i, i2, str2, i3, exception2, i6, byteString2);
        }

        public final CrashEvent copy(int app_process_id, int app_user_id, String app_package_name, int app_flags, Exception exception, int app_version_code, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(app_package_name, "app_package_name");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new CrashEvent(app_process_id, app_user_id, app_package_name, app_flags, exception, app_version_code, unknownFields);
        }

        /* JADX INFO: compiled from: ApplicationLifecycleEvent.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005J\b\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\fR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;", "()V", "app_flags", "", "app_package_name", "", "app_process_id", "app_user_id", "app_version_code", "exception", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Exception;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<CrashEvent, Builder> {
            public int app_flags;
            public String app_package_name = "";
            public int app_process_id;
            public int app_user_id;
            public int app_version_code;
            public Exception exception;

            public final Builder app_process_id(int app_process_id) {
                this.app_process_id = app_process_id;
                return this;
            }

            public final Builder app_user_id(int app_user_id) {
                this.app_user_id = app_user_id;
                return this;
            }

            public final Builder app_package_name(String app_package_name) {
                Intrinsics.checkNotNullParameter(app_package_name, "app_package_name");
                this.app_package_name = app_package_name;
                return this;
            }

            public final Builder app_flags(int app_flags) {
                this.app_flags = app_flags;
                return this;
            }

            public final Builder exception(Exception exception) {
                this.exception = exception;
                return this;
            }

            public final Builder app_version_code(int app_version_code) {
                this.app_version_code = app_version_code;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public CrashEvent build() {
                return new CrashEvent(this.app_process_id, this.app_user_id, this.app_package_name, this.app_flags, this.exception, this.app_version_code, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: ApplicationLifecycleEvent.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ CrashEvent build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CrashEvent.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<CrashEvent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.app_event.ApplicationLifecycleEvent$CrashEvent$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(ApplicationLifecycleEvent.CrashEvent value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.app_process_id != 0) {
                        size += ProtoAdapter.INT32.encodedSizeWithTag(1, Integer.valueOf(value.app_process_id));
                    }
                    if (value.app_user_id != 0) {
                        size += ProtoAdapter.INT32.encodedSizeWithTag(2, Integer.valueOf(value.app_user_id));
                    }
                    if (!Intrinsics.areEqual(value.app_package_name, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.app_package_name);
                    }
                    if (value.app_flags != 0) {
                        size += ProtoAdapter.INT32.encodedSizeWithTag(4, Integer.valueOf(value.app_flags));
                    }
                    if (value.exception != null) {
                        size += ApplicationLifecycleEvent.Exception.ADAPTER.encodedSizeWithTag(5, value.exception);
                    }
                    return value.app_version_code != 0 ? size + ProtoAdapter.INT32.encodedSizeWithTag(6, Integer.valueOf(value.app_version_code)) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, ApplicationLifecycleEvent.CrashEvent value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.app_process_id != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 1, Integer.valueOf(value.app_process_id));
                    }
                    if (value.app_user_id != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 2, Integer.valueOf(value.app_user_id));
                    }
                    if (!Intrinsics.areEqual(value.app_package_name, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 3, value.app_package_name);
                    }
                    if (value.app_flags != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 4, Integer.valueOf(value.app_flags));
                    }
                    if (value.exception != null) {
                        ApplicationLifecycleEvent.Exception.ADAPTER.encodeWithTag(writer, 5, value.exception);
                    }
                    if (value.app_version_code != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 6, Integer.valueOf(value.app_version_code));
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, ApplicationLifecycleEvent.CrashEvent value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.app_version_code != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 6, Integer.valueOf(value.app_version_code));
                    }
                    if (value.exception != null) {
                        ApplicationLifecycleEvent.Exception.ADAPTER.encodeWithTag(writer, 5, value.exception);
                    }
                    if (value.app_flags != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 4, Integer.valueOf(value.app_flags));
                    }
                    if (!Intrinsics.areEqual(value.app_package_name, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 3, value.app_package_name);
                    }
                    if (value.app_user_id != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 2, Integer.valueOf(value.app_user_id));
                    }
                    if (value.app_process_id != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 1, Integer.valueOf(value.app_process_id));
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public ApplicationLifecycleEvent.CrashEvent redact(ApplicationLifecycleEvent.CrashEvent value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    ApplicationLifecycleEvent.Exception exception = value.exception;
                    return ApplicationLifecycleEvent.CrashEvent.copy$default(value, 0, 0, null, 0, exception != null ? ApplicationLifecycleEvent.Exception.ADAPTER.redact(exception) : null, 0, ByteString.EMPTY, 47, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public ApplicationLifecycleEvent.CrashEvent decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = "";
                    ApplicationLifecycleEvent.Exception exceptionDecode = null;
                    int iIntValue = 0;
                    int iIntValue2 = 0;
                    int iIntValue3 = 0;
                    int iIntValue4 = 0;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag != -1) {
                            switch (iNextTag) {
                                case 1:
                                    iIntValue = ProtoAdapter.INT32.decode(reader).intValue();
                                    break;
                                case 2:
                                    iIntValue2 = ProtoAdapter.INT32.decode(reader).intValue();
                                    break;
                                case 3:
                                    strDecode = ProtoAdapter.STRING.decode(reader);
                                    break;
                                case 4:
                                    iIntValue3 = ProtoAdapter.INT32.decode(reader).intValue();
                                    break;
                                case 5:
                                    exceptionDecode = ApplicationLifecycleEvent.Exception.ADAPTER.decode(reader);
                                    break;
                                case 6:
                                    iIntValue4 = ProtoAdapter.INT32.decode(reader).intValue();
                                    break;
                                default:
                                    reader.readUnknownField(iNextTag);
                                    break;
                            }
                        } else {
                            return new ApplicationLifecycleEvent.CrashEvent(iIntValue, iIntValue2, strDecode, iIntValue3, exceptionDecode, iIntValue4, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                    }
                }
            };
        }
    }

    /* JADX INFO: compiled from: ApplicationLifecycleEvent.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B-\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ.\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\u00072\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0004H\u0016R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent$Builder;", "package_name", "", "action", "allowed", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;ZLokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class AndroidSettingsIntentEvent extends Message<AndroidSettingsIntentEvent, Builder> {
        public static final ProtoAdapter<AndroidSettingsIntentEvent> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final String action;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
        public final boolean allowed;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = RemoteConfigConstants.RequestFieldKey.PACKAGE_NAME, label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final String package_name;

        public AndroidSettingsIntentEvent() {
            this(null, null, false, null, 15, null);
        }

        public /* synthetic */ AndroidSettingsIntentEvent(String str, String str2, boolean z, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? false : z, (i & 8) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AndroidSettingsIntentEvent(String package_name, String action, boolean z, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(package_name, "package_name");
            Intrinsics.checkNotNullParameter(action, "action");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.package_name = package_name;
            this.action = action;
            this.allowed = z;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.package_name = this.package_name;
            builder.action = this.action;
            builder.allowed = this.allowed;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof AndroidSettingsIntentEvent)) {
                return false;
            }
            AndroidSettingsIntentEvent androidSettingsIntentEvent = (AndroidSettingsIntentEvent) other;
            return Intrinsics.areEqual(unknownFields(), androidSettingsIntentEvent.unknownFields()) && Intrinsics.areEqual(this.package_name, androidSettingsIntentEvent.package_name) && Intrinsics.areEqual(this.action, androidSettingsIntentEvent.action) && this.allowed == androidSettingsIntentEvent.allowed;
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((((unknownFields().hashCode() * 37) + this.package_name.hashCode()) * 37) + this.action.hashCode()) * 37) + Boolean.hashCode(this.allowed);
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("package_name=" + Internal.sanitize(this.package_name));
            arrayList2.add("action=" + Internal.sanitize(this.action));
            arrayList2.add("allowed=" + this.allowed);
            return CollectionsKt.joinToString$default(arrayList, ", ", "AndroidSettingsIntentEvent{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ AndroidSettingsIntentEvent copy$default(AndroidSettingsIntentEvent androidSettingsIntentEvent, String str, String str2, boolean z, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = androidSettingsIntentEvent.package_name;
            }
            if ((i & 2) != 0) {
                str2 = androidSettingsIntentEvent.action;
            }
            if ((i & 4) != 0) {
                z = androidSettingsIntentEvent.allowed;
            }
            if ((i & 8) != 0) {
                byteString = androidSettingsIntentEvent.unknownFields();
            }
            return androidSettingsIntentEvent.copy(str, str2, z, byteString);
        }

        public final AndroidSettingsIntentEvent copy(String package_name, String action, boolean allowed, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(package_name, "package_name");
            Intrinsics.checkNotNullParameter(action, "action");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new AndroidSettingsIntentEvent(package_name, action, allowed, unknownFields);
        }

        /* JADX INFO: compiled from: ApplicationLifecycleEvent.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\b\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent;", "()V", "action", "", "allowed", "", "package_name", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<AndroidSettingsIntentEvent, Builder> {
            public boolean allowed;
            public String package_name = "";
            public String action = "";

            public final Builder package_name(String package_name) {
                Intrinsics.checkNotNullParameter(package_name, "package_name");
                this.package_name = package_name;
                return this;
            }

            public final Builder action(String action) {
                Intrinsics.checkNotNullParameter(action, "action");
                this.action = action;
                return this;
            }

            public final Builder allowed(boolean allowed) {
                this.allowed = allowed;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public AndroidSettingsIntentEvent build() {
                return new AndroidSettingsIntentEvent(this.package_name, this.action, this.allowed, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: ApplicationLifecycleEvent.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$AndroidSettingsIntentEvent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ AndroidSettingsIntentEvent build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AndroidSettingsIntentEvent.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<AndroidSettingsIntentEvent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.app_event.ApplicationLifecycleEvent$AndroidSettingsIntentEvent$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(ApplicationLifecycleEvent.AndroidSettingsIntentEvent value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (!Intrinsics.areEqual(value.package_name, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.package_name);
                    }
                    if (!Intrinsics.areEqual(value.action, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.action);
                    }
                    return value.allowed ? size + ProtoAdapter.BOOL.encodedSizeWithTag(3, Boolean.valueOf(value.allowed)) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, ApplicationLifecycleEvent.AndroidSettingsIntentEvent value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (!Intrinsics.areEqual(value.package_name, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.package_name);
                    }
                    if (!Intrinsics.areEqual(value.action, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.action);
                    }
                    if (value.allowed) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 3, Boolean.valueOf(value.allowed));
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, ApplicationLifecycleEvent.AndroidSettingsIntentEvent value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.allowed) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 3, Boolean.valueOf(value.allowed));
                    }
                    if (!Intrinsics.areEqual(value.action, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 2, value.action);
                    }
                    if (Intrinsics.areEqual(value.package_name, "")) {
                        return;
                    }
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.package_name);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public ApplicationLifecycleEvent.AndroidSettingsIntentEvent redact(ApplicationLifecycleEvent.AndroidSettingsIntentEvent value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return ApplicationLifecycleEvent.AndroidSettingsIntentEvent.copy$default(value, null, null, false, ByteString.EMPTY, 7, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public ApplicationLifecycleEvent.AndroidSettingsIntentEvent decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = "";
                    boolean zBooleanValue = false;
                    String strDecode2 = "";
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new ApplicationLifecycleEvent.AndroidSettingsIntentEvent(strDecode, strDecode2, zBooleanValue, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 2) {
                            strDecode2 = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 3) {
                            zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }
}
