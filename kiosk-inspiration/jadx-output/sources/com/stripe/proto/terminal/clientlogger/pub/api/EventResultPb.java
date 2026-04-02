package com.stripe.proto.terminal.clientlogger.pub.api;

import androidx.constraintlayout.core.motion.utils.TypedValues;
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
import com.stripe.proto.terminal.clientlogger.pub.api.EventResultPb;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
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

/* JADX INFO: compiled from: EventResultPb.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u001e2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u001d\u001e\u001fBo\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0004\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010¢\u0006\u0002\u0010\u0011Ju\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\b\u0002\u0010\u000f\u001a\u00020\u0010¢\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u0002H\u0016J\b\u0010\u001c\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0012R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0012R\u0010\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;", "domain", "", "scope", NotificationCompat.CATEGORY_EVENT, "tags", "", "result", "Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Result;", "outcome", TypedValues.TransitionType.S_DURATION, "", "measurement", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Result;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lokio/ByteString;)V", "Ljava/lang/Long;", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Result;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lokio/ByteString;)Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb;", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "Result", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class EventResultPb extends Message<EventResultPb, Builder> {
    public static final ProtoAdapter<EventResultPb> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String domain;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", schemaIndex = 6, tag = 6)
    public final Long duration;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String event;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE", schemaIndex = 7, tag = 7)
    public final Long measurement;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 5)
    public final String outcome;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.api.EventResultPb$Result#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 4)
    public final Result result;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String scope;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 3, tag = 8)
    public final Map<String, String> tags;

    public EventResultPb() {
        this(null, null, null, null, null, null, null, null, null, 511, null);
    }

    public /* synthetic */ EventResultPb(String str, String str2, String str3, Map map, Result result, String str4, Long l, Long l2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? MapsKt.emptyMap() : map, (i & 16) != 0 ? Result.OK : result, (i & 32) != 0 ? "" : str4, (i & 64) != 0 ? null : l, (i & 128) != 0 ? null : l2, (i & 256) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EventResultPb(String domain, String scope, String event, Map<String, String> tags, Result result, String outcome, Long l, Long l2, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(domain, "domain");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(outcome, "outcome");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.domain = domain;
        this.scope = scope;
        this.event = event;
        this.result = result;
        this.outcome = outcome;
        this.duration = l;
        this.measurement = l2;
        this.tags = Internal.immutableCopyOf("tags", tags);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.domain = this.domain;
        builder.scope = this.scope;
        builder.event = this.event;
        builder.tags = this.tags;
        builder.result = this.result;
        builder.outcome = this.outcome;
        builder.duration = this.duration;
        builder.measurement = this.measurement;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof EventResultPb)) {
            return false;
        }
        EventResultPb eventResultPb = (EventResultPb) other;
        return Intrinsics.areEqual(unknownFields(), eventResultPb.unknownFields()) && Intrinsics.areEqual(this.domain, eventResultPb.domain) && Intrinsics.areEqual(this.scope, eventResultPb.scope) && Intrinsics.areEqual(this.event, eventResultPb.event) && Intrinsics.areEqual(this.tags, eventResultPb.tags) && this.result == eventResultPb.result && Intrinsics.areEqual(this.outcome, eventResultPb.outcome) && Intrinsics.areEqual(this.duration, eventResultPb.duration) && Intrinsics.areEqual(this.measurement, eventResultPb.measurement);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((((((((unknownFields().hashCode() * 37) + this.domain.hashCode()) * 37) + this.scope.hashCode()) * 37) + this.event.hashCode()) * 37) + this.tags.hashCode()) * 37) + this.result.hashCode()) * 37) + this.outcome.hashCode()) * 37;
        Long l = this.duration;
        int iHashCode2 = (iHashCode + (l != null ? l.hashCode() : 0)) * 37;
        Long l2 = this.measurement;
        int iHashCode3 = iHashCode2 + (l2 != null ? l2.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("domain=" + Internal.sanitize(this.domain));
        arrayList2.add("scope=" + Internal.sanitize(this.scope));
        arrayList2.add("event=" + Internal.sanitize(this.event));
        if (!this.tags.isEmpty()) {
            arrayList2.add("tags=" + this.tags);
        }
        arrayList2.add("result=" + this.result);
        arrayList2.add("outcome=" + Internal.sanitize(this.outcome));
        if (this.duration != null) {
            arrayList2.add("duration=" + this.duration);
        }
        if (this.measurement != null) {
            arrayList2.add("measurement=" + this.measurement);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "EventResultPb{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ EventResultPb copy$default(EventResultPb eventResultPb, String str, String str2, String str3, Map map, Result result, String str4, Long l, Long l2, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = eventResultPb.domain;
        }
        if ((i & 2) != 0) {
            str2 = eventResultPb.scope;
        }
        if ((i & 4) != 0) {
            str3 = eventResultPb.event;
        }
        if ((i & 8) != 0) {
            map = eventResultPb.tags;
        }
        if ((i & 16) != 0) {
            result = eventResultPb.result;
        }
        if ((i & 32) != 0) {
            str4 = eventResultPb.outcome;
        }
        if ((i & 64) != 0) {
            l = eventResultPb.duration;
        }
        if ((i & 128) != 0) {
            l2 = eventResultPb.measurement;
        }
        if ((i & 256) != 0) {
            byteString = eventResultPb.unknownFields();
        }
        Long l3 = l2;
        ByteString byteString2 = byteString;
        String str5 = str4;
        Long l4 = l;
        Result result2 = result;
        String str6 = str3;
        return eventResultPb.copy(str, str2, str6, map, result2, str5, l4, l3, byteString2);
    }

    public final EventResultPb copy(String domain, String scope, String event, Map<String, String> tags, Result result, String outcome, Long duration, Long measurement, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(domain, "domain");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(outcome, "outcome");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new EventResultPb(domain, scope, event, tags, result, outcome, duration, measurement, unknownFields);
    }

    /* JADX INFO: compiled from: EventResultPb.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0015\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u0012J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u0015\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u0012J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0005J\u001a\u0010\u000f\u001a\u00020\u00002\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0010R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\bR\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\bR\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb;", "()V", "domain", "", TypedValues.TransitionType.S_DURATION, "", "Ljava/lang/Long;", NotificationCompat.CATEGORY_EVENT, "measurement", "outcome", "result", "Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Result;", "scope", "tags", "", "build", "(Ljava/lang/Long;)Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<EventResultPb, Builder> {
        public Long duration;
        public Long measurement;
        public String domain = "";
        public String scope = "";
        public String event = "";
        public Map<String, String> tags = MapsKt.emptyMap();
        public Result result = Result.OK;
        public String outcome = "";

        public final Builder domain(String domain) {
            Intrinsics.checkNotNullParameter(domain, "domain");
            this.domain = domain;
            return this;
        }

        public final Builder scope(String scope) {
            Intrinsics.checkNotNullParameter(scope, "scope");
            this.scope = scope;
            return this;
        }

        public final Builder event(String event) {
            Intrinsics.checkNotNullParameter(event, "event");
            this.event = event;
            return this;
        }

        public final Builder tags(Map<String, String> tags) {
            Intrinsics.checkNotNullParameter(tags, "tags");
            this.tags = tags;
            return this;
        }

        public final Builder result(Result result) {
            Intrinsics.checkNotNullParameter(result, "result");
            this.result = result;
            return this;
        }

        public final Builder outcome(String outcome) {
            Intrinsics.checkNotNullParameter(outcome, "outcome");
            this.outcome = outcome;
            return this;
        }

        public final Builder duration(Long duration) {
            this.duration = duration;
            return this;
        }

        public final Builder measurement(Long measurement) {
            this.measurement = measurement;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public EventResultPb build() {
            return new EventResultPb(this.domain, this.scope, this.event, this.tags, this.result, this.outcome, this.duration, this.measurement, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: EventResultPb.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ EventResultPb build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(EventResultPb.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<EventResultPb>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.api.EventResultPb$Companion$ADAPTER$1

            /* JADX INFO: renamed from: tagsAdapter$delegate, reason: from kotlin metadata */
            private final Lazy tagsAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends String>>>() { // from class: com.stripe.proto.terminal.clientlogger.pub.api.EventResultPb$Companion$ADAPTER$1$tagsAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends String>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.STRING);
                }
            });

            private final ProtoAdapter<Map<String, String>> getTagsAdapter() {
                return (ProtoAdapter) this.tagsAdapter.getValue();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(EventResultPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.domain, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.domain);
                }
                if (!Intrinsics.areEqual(value.scope, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.scope);
                }
                if (!Intrinsics.areEqual(value.event, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.event);
                }
                int iEncodedSizeWithTag = size + getTagsAdapter().encodedSizeWithTag(8, value.tags);
                if (value.result != EventResultPb.Result.OK) {
                    iEncodedSizeWithTag += EventResultPb.Result.ADAPTER.encodedSizeWithTag(4, value.result);
                }
                if (!Intrinsics.areEqual(value.outcome, "")) {
                    iEncodedSizeWithTag += ProtoAdapter.STRING.encodedSizeWithTag(5, value.outcome);
                }
                if (value.duration != null) {
                    iEncodedSizeWithTag += ProtoAdapter.INT64_VALUE.encodedSizeWithTag(6, value.duration);
                }
                return value.measurement != null ? iEncodedSizeWithTag + ProtoAdapter.INT64_VALUE.encodedSizeWithTag(7, value.measurement) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, EventResultPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.domain, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.domain);
                }
                if (!Intrinsics.areEqual(value.scope, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.scope);
                }
                if (!Intrinsics.areEqual(value.event, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.event);
                }
                getTagsAdapter().encodeWithTag(writer, 8, value.tags);
                if (value.result != EventResultPb.Result.OK) {
                    EventResultPb.Result.ADAPTER.encodeWithTag(writer, 4, value.result);
                }
                if (!Intrinsics.areEqual(value.outcome, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.outcome);
                }
                if (value.duration != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 6, value.duration);
                }
                if (value.measurement != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 7, value.measurement);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, EventResultPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.measurement != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 7, value.measurement);
                }
                if (value.duration != null) {
                    ProtoAdapter.INT64_VALUE.encodeWithTag(writer, 6, value.duration);
                }
                if (!Intrinsics.areEqual(value.outcome, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.outcome);
                }
                if (value.result != EventResultPb.Result.OK) {
                    EventResultPb.Result.ADAPTER.encodeWithTag(writer, 4, value.result);
                }
                getTagsAdapter().encodeWithTag(writer, 8, value.tags);
                if (!Intrinsics.areEqual(value.event, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.event);
                }
                if (!Intrinsics.areEqual(value.scope, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.scope);
                }
                if (Intrinsics.areEqual(value.domain, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.domain);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public EventResultPb decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                EventResultPb.Result result = EventResultPb.Result.OK;
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = strDecode;
                String strDecode3 = strDecode2;
                Long lDecode = null;
                Long lDecode2 = null;
                EventResultPb.Result resultDecode = result;
                String strDecode4 = strDecode3;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode4 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 2:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 3:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 4:
                                try {
                                    resultDecode = EventResultPb.Result.ADAPTER.decode(reader);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                }
                                break;
                            case 5:
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 6:
                                lDecode = ProtoAdapter.INT64_VALUE.decode(reader);
                                break;
                            case 7:
                                lDecode2 = ProtoAdapter.INT64_VALUE.decode(reader);
                                break;
                            case 8:
                                linkedHashMap.putAll(getTagsAdapter().decode(reader));
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new EventResultPb(strDecode4, strDecode, strDecode2, linkedHashMap, resultDecode, strDecode3, lDecode, lDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public EventResultPb redact(EventResultPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                Long l = value.duration;
                Long lRedact = l != null ? ProtoAdapter.INT64_VALUE.redact(l) : null;
                Long l2 = value.measurement;
                return EventResultPb.copy$default(value, null, null, null, null, null, null, lRedact, l2 != null ? ProtoAdapter.INT64_VALUE.redact(l2) : null, ByteString.EMPTY, 63, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: EventResultPb.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Result;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "OK", "ERROR", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Result implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Result[] $VALUES;
        public static final ProtoAdapter<Result> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final Result ERROR;
        public static final Result OK;
        private final int value;

        private static final /* synthetic */ Result[] $values() {
            return new Result[]{OK, ERROR};
        }

        @JvmStatic
        public static final Result fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<Result> getEntries() {
            return $ENTRIES;
        }

        public static Result valueOf(String str) {
            return (Result) Enum.valueOf(Result.class, str);
        }

        public static Result[] values() {
            return (Result[]) $VALUES.clone();
        }

        private Result(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final Result result = new Result("OK", 0, 0);
            OK = result;
            ERROR = new Result("ERROR", 1, 1);
            Result[] resultArr$values = $values();
            $VALUES = resultArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(resultArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Result.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<Result>(orCreateKotlinClass, syntax, result) { // from class: com.stripe.proto.terminal.clientlogger.pub.api.EventResultPb$Result$Companion$ADAPTER$1
                {
                    EventResultPb.Result result2 = result;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public EventResultPb.Result fromValue(int value) {
                    return EventResultPb.Result.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: EventResultPb.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Result$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Result;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final Result fromValue(int value) {
                if (value == 0) {
                    return Result.OK;
                }
                if (value != 1) {
                    return null;
                }
                return Result.ERROR;
            }
        }
    }
}
