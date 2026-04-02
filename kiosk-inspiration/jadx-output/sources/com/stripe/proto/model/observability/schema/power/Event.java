package com.stripe.proto.model.observability.schema.power;

import androidx.core.app.NotificationCompat;
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
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: Event.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/model/observability/schema/power/Event;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/observability/schema/power/Event$Builder;", "connectivity_changed", "Lcom/stripe/proto/model/observability/schema/power/ConnectivityChanged;", "battery_percentage_changed", "Lcom/stripe/proto/model/observability/schema/power/BatteryPercentageChanged;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/observability/schema/power/ConnectivityChanged;Lcom/stripe/proto/model/observability/schema/power/BatteryPercentageChanged;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Event extends Message<Event, Builder> {
    public static final ProtoAdapter<Event> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.observability.schema.power.BatteryPercentageChanged#ADAPTER", jsonName = "batteryPercentageChanged", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 1, tag = 2)
    public final BatteryPercentageChanged battery_percentage_changed;

    @WireField(adapter = "com.stripe.proto.model.observability.schema.power.ConnectivityChanged#ADAPTER", jsonName = "connectivityChanged", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 0, tag = 1)
    public final ConnectivityChanged connectivity_changed;

    public Event() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ Event(ConnectivityChanged connectivityChanged, BatteryPercentageChanged batteryPercentageChanged, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : connectivityChanged, (i & 2) != 0 ? null : batteryPercentageChanged, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Event(ConnectivityChanged connectivityChanged, BatteryPercentageChanged batteryPercentageChanged, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.connectivity_changed = connectivityChanged;
        this.battery_percentage_changed = batteryPercentageChanged;
        if (Internal.countNonNull(connectivityChanged, batteryPercentageChanged) > 1) {
            throw new IllegalArgumentException("At most one of connectivity_changed, battery_percentage_changed may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.connectivity_changed = this.connectivity_changed;
        builder.battery_percentage_changed = this.battery_percentage_changed;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof Event)) {
            return false;
        }
        Event event = (Event) other;
        return Intrinsics.areEqual(unknownFields(), event.unknownFields()) && Intrinsics.areEqual(this.connectivity_changed, event.connectivity_changed) && Intrinsics.areEqual(this.battery_percentage_changed, event.battery_percentage_changed);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        ConnectivityChanged connectivityChanged = this.connectivity_changed;
        int iHashCode2 = (iHashCode + (connectivityChanged != null ? connectivityChanged.hashCode() : 0)) * 37;
        BatteryPercentageChanged batteryPercentageChanged = this.battery_percentage_changed;
        int iHashCode3 = iHashCode2 + (batteryPercentageChanged != null ? batteryPercentageChanged.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.connectivity_changed != null) {
            arrayList.add("connectivity_changed=" + this.connectivity_changed);
        }
        if (this.battery_percentage_changed != null) {
            arrayList.add("battery_percentage_changed=" + this.battery_percentage_changed);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "Event{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ Event copy$default(Event event, ConnectivityChanged connectivityChanged, BatteryPercentageChanged batteryPercentageChanged, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            connectivityChanged = event.connectivity_changed;
        }
        if ((i & 2) != 0) {
            batteryPercentageChanged = event.battery_percentage_changed;
        }
        if ((i & 4) != 0) {
            byteString = event.unknownFields();
        }
        return event.copy(connectivityChanged, batteryPercentageChanged, byteString);
    }

    public final Event copy(ConnectivityChanged connectivity_changed, BatteryPercentageChanged battery_percentage_changed, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new Event(connectivity_changed, battery_percentage_changed, unknownFields);
    }

    /* JADX INFO: compiled from: Event.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/observability/schema/power/Event$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/observability/schema/power/Event;", "()V", "battery_percentage_changed", "Lcom/stripe/proto/model/observability/schema/power/BatteryPercentageChanged;", "connectivity_changed", "Lcom/stripe/proto/model/observability/schema/power/ConnectivityChanged;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<Event, Builder> {
        public BatteryPercentageChanged battery_percentage_changed;
        public ConnectivityChanged connectivity_changed;

        public final Builder connectivity_changed(ConnectivityChanged connectivity_changed) {
            this.connectivity_changed = connectivity_changed;
            this.battery_percentage_changed = null;
            return this;
        }

        public final Builder battery_percentage_changed(BatteryPercentageChanged battery_percentage_changed) {
            this.battery_percentage_changed = battery_percentage_changed;
            this.connectivity_changed = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public Event build() {
            return new Event(this.connectivity_changed, this.battery_percentage_changed, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: Event.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/observability/schema/power/Event$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/observability/schema/power/Event;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/observability/schema/power/Event$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ Event build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Event.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<Event>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.observability.schema.power.Event$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(Event value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + ConnectivityChanged.ADAPTER.encodedSizeWithTag(1, value.connectivity_changed) + BatteryPercentageChanged.ADAPTER.encodedSizeWithTag(2, value.battery_percentage_changed);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, Event value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                ConnectivityChanged.ADAPTER.encodeWithTag(writer, 1, value.connectivity_changed);
                BatteryPercentageChanged.ADAPTER.encodeWithTag(writer, 2, value.battery_percentage_changed);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, Event value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                BatteryPercentageChanged.ADAPTER.encodeWithTag(writer, 2, value.battery_percentage_changed);
                ConnectivityChanged.ADAPTER.encodeWithTag(writer, 1, value.connectivity_changed);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public Event redact(Event value) {
                Intrinsics.checkNotNullParameter(value, "value");
                ConnectivityChanged connectivityChanged = value.connectivity_changed;
                ConnectivityChanged connectivityChangedRedact = connectivityChanged != null ? ConnectivityChanged.ADAPTER.redact(connectivityChanged) : null;
                BatteryPercentageChanged batteryPercentageChanged = value.battery_percentage_changed;
                return value.copy(connectivityChangedRedact, batteryPercentageChanged != null ? BatteryPercentageChanged.ADAPTER.redact(batteryPercentageChanged) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public Event decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                ConnectivityChanged connectivityChangedDecode = null;
                BatteryPercentageChanged batteryPercentageChangedDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new Event(connectivityChangedDecode, batteryPercentageChangedDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        connectivityChangedDecode = ConnectivityChanged.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        batteryPercentageChangedDecode = BatteryPercentageChanged.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
