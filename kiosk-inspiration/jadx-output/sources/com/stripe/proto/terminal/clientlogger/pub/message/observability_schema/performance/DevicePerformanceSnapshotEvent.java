package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.performance;

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
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: DevicePerformanceSnapshotEvent.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u001c2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001b\u001cBU\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010¢\u0006\u0002\u0010\u0011JV\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u0010J\u0013\u0010\u0013\u001a\u00020\u00072\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0002H\u0016J\b\u0010\u0019\u001a\u00020\u001aH\u0016R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;", "available_memory_percentage", "", "low_memory_threshold_percentage", "is_low_memory", "", "running_apps", "", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/ApplicationMetadata;", "accessibility_snapshot", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;", "data_partition_snapshot", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DiskPartitionUsageSnapshot;", "unknownFields", "Lokio/ByteString;", "(DDZLjava/util/List;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DiskPartitionUsageSnapshot;Lokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DevicePerformanceSnapshotEvent extends Message<DevicePerformanceSnapshotEvent, Builder> {
    public static final ProtoAdapter<DevicePerformanceSnapshotEvent> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.performance.AccessibilitySnapshot#ADAPTER", jsonName = "accessibilitySnapshot", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final AccessibilitySnapshot accessibility_snapshot;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#DOUBLE", jsonName = "availableMemoryPercentage", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final double available_memory_percentage;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.performance.DiskPartitionUsageSnapshot#ADAPTER", jsonName = "dataPartitionSnapshot", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final DiskPartitionUsageSnapshot data_partition_snapshot;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "isLowMemory", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final boolean is_low_memory;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#DOUBLE", jsonName = "lowMemoryThresholdPercentage", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final double low_memory_threshold_percentage;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.performance.ApplicationMetadata#ADAPTER", jsonName = "runningApps", label = WireField.Label.REPEATED, schemaIndex = 3, tag = 4)
    public final List<ApplicationMetadata> running_apps;

    public DevicePerformanceSnapshotEvent() {
        this(0.0d, 0.0d, false, null, null, null, null, 127, null);
    }

    public /* synthetic */ DevicePerformanceSnapshotEvent(double d, double d2, boolean z, List list, AccessibilitySnapshot accessibilitySnapshot, DiskPartitionUsageSnapshot diskPartitionUsageSnapshot, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0.0d : d, (i & 2) != 0 ? 0.0d : d2, (i & 4) != 0 ? false : z, (i & 8) != 0 ? CollectionsKt.emptyList() : list, (i & 16) != 0 ? null : accessibilitySnapshot, (i & 32) != 0 ? null : diskPartitionUsageSnapshot, (i & 64) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DevicePerformanceSnapshotEvent(double d, double d2, boolean z, List<ApplicationMetadata> running_apps, AccessibilitySnapshot accessibilitySnapshot, DiskPartitionUsageSnapshot diskPartitionUsageSnapshot, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(running_apps, "running_apps");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.available_memory_percentage = d;
        this.low_memory_threshold_percentage = d2;
        this.is_low_memory = z;
        this.accessibility_snapshot = accessibilitySnapshot;
        this.data_partition_snapshot = diskPartitionUsageSnapshot;
        this.running_apps = Internal.immutableCopyOf("running_apps", running_apps);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.available_memory_percentage = this.available_memory_percentage;
        builder.low_memory_threshold_percentage = this.low_memory_threshold_percentage;
        builder.is_low_memory = this.is_low_memory;
        builder.running_apps = this.running_apps;
        builder.accessibility_snapshot = this.accessibility_snapshot;
        builder.data_partition_snapshot = this.data_partition_snapshot;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof DevicePerformanceSnapshotEvent)) {
            return false;
        }
        DevicePerformanceSnapshotEvent devicePerformanceSnapshotEvent = (DevicePerformanceSnapshotEvent) other;
        return Intrinsics.areEqual(unknownFields(), devicePerformanceSnapshotEvent.unknownFields()) && this.available_memory_percentage == devicePerformanceSnapshotEvent.available_memory_percentage && this.low_memory_threshold_percentage == devicePerformanceSnapshotEvent.low_memory_threshold_percentage && this.is_low_memory == devicePerformanceSnapshotEvent.is_low_memory && Intrinsics.areEqual(this.running_apps, devicePerformanceSnapshotEvent.running_apps) && Intrinsics.areEqual(this.accessibility_snapshot, devicePerformanceSnapshotEvent.accessibility_snapshot) && Intrinsics.areEqual(this.data_partition_snapshot, devicePerformanceSnapshotEvent.data_partition_snapshot);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((((unknownFields().hashCode() * 37) + Double.hashCode(this.available_memory_percentage)) * 37) + Double.hashCode(this.low_memory_threshold_percentage)) * 37) + Boolean.hashCode(this.is_low_memory)) * 37) + this.running_apps.hashCode()) * 37;
        AccessibilitySnapshot accessibilitySnapshot = this.accessibility_snapshot;
        int iHashCode2 = (iHashCode + (accessibilitySnapshot != null ? accessibilitySnapshot.hashCode() : 0)) * 37;
        DiskPartitionUsageSnapshot diskPartitionUsageSnapshot = this.data_partition_snapshot;
        int iHashCode3 = iHashCode2 + (diskPartitionUsageSnapshot != null ? diskPartitionUsageSnapshot.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("available_memory_percentage=" + this.available_memory_percentage);
        arrayList2.add("low_memory_threshold_percentage=" + this.low_memory_threshold_percentage);
        arrayList2.add("is_low_memory=" + this.is_low_memory);
        if (!this.running_apps.isEmpty()) {
            arrayList2.add("running_apps=" + this.running_apps);
        }
        if (this.accessibility_snapshot != null) {
            arrayList2.add("accessibility_snapshot=" + this.accessibility_snapshot);
        }
        if (this.data_partition_snapshot != null) {
            arrayList2.add("data_partition_snapshot=" + this.data_partition_snapshot);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "DevicePerformanceSnapshotEvent{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DevicePerformanceSnapshotEvent copy$default(DevicePerformanceSnapshotEvent devicePerformanceSnapshotEvent, double d, double d2, boolean z, List list, AccessibilitySnapshot accessibilitySnapshot, DiskPartitionUsageSnapshot diskPartitionUsageSnapshot, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            d = devicePerformanceSnapshotEvent.available_memory_percentage;
        }
        double d3 = d;
        if ((i & 2) != 0) {
            d2 = devicePerformanceSnapshotEvent.low_memory_threshold_percentage;
        }
        double d4 = d2;
        if ((i & 4) != 0) {
            z = devicePerformanceSnapshotEvent.is_low_memory;
        }
        return devicePerformanceSnapshotEvent.copy(d3, d4, z, (i & 8) != 0 ? devicePerformanceSnapshotEvent.running_apps : list, (i & 16) != 0 ? devicePerformanceSnapshotEvent.accessibility_snapshot : accessibilitySnapshot, (i & 32) != 0 ? devicePerformanceSnapshotEvent.data_partition_snapshot : diskPartitionUsageSnapshot, (i & 64) != 0 ? devicePerformanceSnapshotEvent.unknownFields() : byteString);
    }

    public final DevicePerformanceSnapshotEvent copy(double available_memory_percentage, double low_memory_threshold_percentage, boolean is_low_memory, List<ApplicationMetadata> running_apps, AccessibilitySnapshot accessibility_snapshot, DiskPartitionUsageSnapshot data_partition_snapshot, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(running_apps, "running_apps");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new DevicePerformanceSnapshotEvent(available_memory_percentage, low_memory_threshold_percentage, is_low_memory, running_apps, accessibility_snapshot, data_partition_snapshot, unknownFields);
    }

    /* JADX INFO: compiled from: DevicePerformanceSnapshotEvent.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0007J\u0014\u0010\r\u001a\u00020\u00002\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;", "()V", "accessibility_snapshot", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/AccessibilitySnapshot;", "available_memory_percentage", "", "data_partition_snapshot", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DiskPartitionUsageSnapshot;", "is_low_memory", "", "low_memory_threshold_percentage", "running_apps", "", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/ApplicationMetadata;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<DevicePerformanceSnapshotEvent, Builder> {
        public AccessibilitySnapshot accessibility_snapshot;
        public double available_memory_percentage;
        public DiskPartitionUsageSnapshot data_partition_snapshot;
        public boolean is_low_memory;
        public double low_memory_threshold_percentage;
        public List<ApplicationMetadata> running_apps = CollectionsKt.emptyList();

        public final Builder available_memory_percentage(double available_memory_percentage) {
            this.available_memory_percentage = available_memory_percentage;
            return this;
        }

        public final Builder low_memory_threshold_percentage(double low_memory_threshold_percentage) {
            this.low_memory_threshold_percentage = low_memory_threshold_percentage;
            return this;
        }

        public final Builder is_low_memory(boolean is_low_memory) {
            this.is_low_memory = is_low_memory;
            return this;
        }

        public final Builder running_apps(List<ApplicationMetadata> running_apps) {
            Intrinsics.checkNotNullParameter(running_apps, "running_apps");
            Internal.checkElementsNotNull(running_apps);
            this.running_apps = running_apps;
            return this;
        }

        public final Builder accessibility_snapshot(AccessibilitySnapshot accessibility_snapshot) {
            this.accessibility_snapshot = accessibility_snapshot;
            return this;
        }

        public final Builder data_partition_snapshot(DiskPartitionUsageSnapshot data_partition_snapshot) {
            this.data_partition_snapshot = data_partition_snapshot;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public DevicePerformanceSnapshotEvent build() {
            return new DevicePerformanceSnapshotEvent(this.available_memory_percentage, this.low_memory_threshold_percentage, this.is_low_memory, this.running_apps, this.accessibility_snapshot, this.data_partition_snapshot, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: DevicePerformanceSnapshotEvent.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ DevicePerformanceSnapshotEvent build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DevicePerformanceSnapshotEvent.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<DevicePerformanceSnapshotEvent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.performance.DevicePerformanceSnapshotEvent$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(DevicePerformanceSnapshotEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                Double dValueOf = Double.valueOf(value.available_memory_percentage);
                Double dValueOf2 = Double.valueOf(0.0d);
                if (!dValueOf.equals(dValueOf2)) {
                    size += ProtoAdapter.DOUBLE.encodedSizeWithTag(1, Double.valueOf(value.available_memory_percentage));
                }
                if (!Double.valueOf(value.low_memory_threshold_percentage).equals(dValueOf2)) {
                    size += ProtoAdapter.DOUBLE.encodedSizeWithTag(2, Double.valueOf(value.low_memory_threshold_percentage));
                }
                if (value.is_low_memory) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(3, Boolean.valueOf(value.is_low_memory));
                }
                int iEncodedSizeWithTag = size + ApplicationMetadata.ADAPTER.asRepeated().encodedSizeWithTag(4, value.running_apps);
                if (value.accessibility_snapshot != null) {
                    iEncodedSizeWithTag += AccessibilitySnapshot.ADAPTER.encodedSizeWithTag(5, value.accessibility_snapshot);
                }
                return value.data_partition_snapshot != null ? iEncodedSizeWithTag + DiskPartitionUsageSnapshot.ADAPTER.encodedSizeWithTag(6, value.data_partition_snapshot) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, DevicePerformanceSnapshotEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                Double dValueOf = Double.valueOf(value.available_memory_percentage);
                Double dValueOf2 = Double.valueOf(0.0d);
                if (!dValueOf.equals(dValueOf2)) {
                    ProtoAdapter.DOUBLE.encodeWithTag(writer, 1, Double.valueOf(value.available_memory_percentage));
                }
                if (!Double.valueOf(value.low_memory_threshold_percentage).equals(dValueOf2)) {
                    ProtoAdapter.DOUBLE.encodeWithTag(writer, 2, Double.valueOf(value.low_memory_threshold_percentage));
                }
                if (value.is_low_memory) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 3, Boolean.valueOf(value.is_low_memory));
                }
                ApplicationMetadata.ADAPTER.asRepeated().encodeWithTag(writer, 4, value.running_apps);
                if (value.accessibility_snapshot != null) {
                    AccessibilitySnapshot.ADAPTER.encodeWithTag(writer, 5, value.accessibility_snapshot);
                }
                if (value.data_partition_snapshot != null) {
                    DiskPartitionUsageSnapshot.ADAPTER.encodeWithTag(writer, 6, value.data_partition_snapshot);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, DevicePerformanceSnapshotEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.data_partition_snapshot != null) {
                    DiskPartitionUsageSnapshot.ADAPTER.encodeWithTag(writer, 6, value.data_partition_snapshot);
                }
                if (value.accessibility_snapshot != null) {
                    AccessibilitySnapshot.ADAPTER.encodeWithTag(writer, 5, value.accessibility_snapshot);
                }
                ApplicationMetadata.ADAPTER.asRepeated().encodeWithTag(writer, 4, value.running_apps);
                if (value.is_low_memory) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 3, Boolean.valueOf(value.is_low_memory));
                }
                if (!Double.valueOf(value.low_memory_threshold_percentage).equals(Double.valueOf(0.0d))) {
                    ProtoAdapter.DOUBLE.encodeWithTag(writer, 2, Double.valueOf(value.low_memory_threshold_percentage));
                }
                if (Double.valueOf(value.available_memory_percentage).equals(Double.valueOf(0.0d))) {
                    return;
                }
                ProtoAdapter.DOUBLE.encodeWithTag(writer, 1, Double.valueOf(value.available_memory_percentage));
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public DevicePerformanceSnapshotEvent decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                double dDoubleValue = 0.0d;
                boolean zBooleanValue = false;
                AccessibilitySnapshot accessibilitySnapshotDecode = null;
                DiskPartitionUsageSnapshot diskPartitionUsageSnapshotDecode = null;
                double dDoubleValue2 = 0.0d;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                dDoubleValue = ProtoAdapter.DOUBLE.decode(reader).doubleValue();
                                break;
                            case 2:
                                dDoubleValue2 = ProtoAdapter.DOUBLE.decode(reader).doubleValue();
                                break;
                            case 3:
                                zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 4:
                                arrayList.add(ApplicationMetadata.ADAPTER.decode(reader));
                                break;
                            case 5:
                                accessibilitySnapshotDecode = AccessibilitySnapshot.ADAPTER.decode(reader);
                                break;
                            case 6:
                                diskPartitionUsageSnapshotDecode = DiskPartitionUsageSnapshot.ADAPTER.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new DevicePerformanceSnapshotEvent(dDoubleValue, dDoubleValue2, zBooleanValue, arrayList, accessibilitySnapshotDecode, diskPartitionUsageSnapshotDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public DevicePerformanceSnapshotEvent redact(DevicePerformanceSnapshotEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                List listM361redactElements = Internal.m361redactElements(value.running_apps, ApplicationMetadata.ADAPTER);
                AccessibilitySnapshot accessibilitySnapshot = value.accessibility_snapshot;
                AccessibilitySnapshot accessibilitySnapshotRedact = accessibilitySnapshot != null ? AccessibilitySnapshot.ADAPTER.redact(accessibilitySnapshot) : null;
                DiskPartitionUsageSnapshot diskPartitionUsageSnapshot = value.data_partition_snapshot;
                return DevicePerformanceSnapshotEvent.copy$default(value, 0.0d, 0.0d, false, listM361redactElements, accessibilitySnapshotRedact, diskPartitionUsageSnapshot != null ? DiskPartitionUsageSnapshot.ADAPTER.redact(diskPartitionUsageSnapshot) : null, ByteString.EMPTY, 7, null);
            }
        };
    }
}
