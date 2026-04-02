package com.stripe.proto.api.ipc;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
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

/* JADX INFO: compiled from: RebootTimeStatus.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B/\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ0\u0010\u000b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\u00062\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/api/ipc/RebootTimeStatus;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/ipc/RebootTimeStatus$Builder;", "time_window", "Lcom/stripe/proto/api/ipc/TimeWindow;", "can_override_locally", "", "can_reset_locally", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/ipc/TimeWindow;ZZLokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RebootTimeStatus extends Message<RebootTimeStatus, Builder> {
    public static final ProtoAdapter<RebootTimeStatus> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "canOverrideLocally", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 3)
    public final boolean can_override_locally;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "canResetLocally", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 4)
    public final boolean can_reset_locally;

    @WireField(adapter = "com.stripe.proto.api.ipc.TimeWindow#ADAPTER", jsonName = "timeWindow", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final TimeWindow time_window;

    public RebootTimeStatus() {
        this(null, false, false, null, 15, null);
    }

    public /* synthetic */ RebootTimeStatus(TimeWindow timeWindow, boolean z, boolean z2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : timeWindow, (i & 2) != 0 ? false : z, (i & 4) != 0 ? false : z2, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RebootTimeStatus(TimeWindow timeWindow, boolean z, boolean z2, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.time_window = timeWindow;
        this.can_override_locally = z;
        this.can_reset_locally = z2;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.time_window = this.time_window;
        builder.can_override_locally = this.can_override_locally;
        builder.can_reset_locally = this.can_reset_locally;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof RebootTimeStatus)) {
            return false;
        }
        RebootTimeStatus rebootTimeStatus = (RebootTimeStatus) other;
        return Intrinsics.areEqual(unknownFields(), rebootTimeStatus.unknownFields()) && Intrinsics.areEqual(this.time_window, rebootTimeStatus.time_window) && this.can_override_locally == rebootTimeStatus.can_override_locally && this.can_reset_locally == rebootTimeStatus.can_reset_locally;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        TimeWindow timeWindow = this.time_window;
        int iHashCode2 = ((((iHashCode + (timeWindow != null ? timeWindow.hashCode() : 0)) * 37) + Boolean.hashCode(this.can_override_locally)) * 37) + Boolean.hashCode(this.can_reset_locally);
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.time_window != null) {
            arrayList.add("time_window=" + this.time_window);
        }
        ArrayList arrayList2 = arrayList;
        arrayList2.add("can_override_locally=" + this.can_override_locally);
        arrayList2.add("can_reset_locally=" + this.can_reset_locally);
        return CollectionsKt.joinToString$default(arrayList, ", ", "RebootTimeStatus{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ RebootTimeStatus copy$default(RebootTimeStatus rebootTimeStatus, TimeWindow timeWindow, boolean z, boolean z2, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            timeWindow = rebootTimeStatus.time_window;
        }
        if ((i & 2) != 0) {
            z = rebootTimeStatus.can_override_locally;
        }
        if ((i & 4) != 0) {
            z2 = rebootTimeStatus.can_reset_locally;
        }
        if ((i & 8) != 0) {
            byteString = rebootTimeStatus.unknownFields();
        }
        return rebootTimeStatus.copy(timeWindow, z, z2, byteString);
    }

    public final RebootTimeStatus copy(TimeWindow time_window, boolean can_override_locally, boolean can_reset_locally, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new RebootTimeStatus(time_window, can_override_locally, can_reset_locally, unknownFields);
    }

    /* JADX INFO: compiled from: RebootTimeStatus.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\bR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/api/ipc/RebootTimeStatus$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/ipc/RebootTimeStatus;", "()V", "can_override_locally", "", "can_reset_locally", "time_window", "Lcom/stripe/proto/api/ipc/TimeWindow;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<RebootTimeStatus, Builder> {
        public boolean can_override_locally;
        public boolean can_reset_locally;
        public TimeWindow time_window;

        public final Builder time_window(TimeWindow time_window) {
            this.time_window = time_window;
            return this;
        }

        public final Builder can_override_locally(boolean can_override_locally) {
            this.can_override_locally = can_override_locally;
            return this;
        }

        public final Builder can_reset_locally(boolean can_reset_locally) {
            this.can_reset_locally = can_reset_locally;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public RebootTimeStatus build() {
            return new RebootTimeStatus(this.time_window, this.can_override_locally, this.can_reset_locally, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: RebootTimeStatus.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/ipc/RebootTimeStatus$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/ipc/RebootTimeStatus;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/ipc/RebootTimeStatus$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ RebootTimeStatus build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(RebootTimeStatus.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<RebootTimeStatus>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.ipc.RebootTimeStatus$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(RebootTimeStatus value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.time_window != null) {
                    size += TimeWindow.ADAPTER.encodedSizeWithTag(1, value.time_window);
                }
                if (value.can_override_locally) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(3, Boolean.valueOf(value.can_override_locally));
                }
                return value.can_reset_locally ? size + ProtoAdapter.BOOL.encodedSizeWithTag(4, Boolean.valueOf(value.can_reset_locally)) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, RebootTimeStatus value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.time_window != null) {
                    TimeWindow.ADAPTER.encodeWithTag(writer, 1, value.time_window);
                }
                if (value.can_override_locally) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 3, Boolean.valueOf(value.can_override_locally));
                }
                if (value.can_reset_locally) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 4, Boolean.valueOf(value.can_reset_locally));
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, RebootTimeStatus value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.can_reset_locally) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 4, Boolean.valueOf(value.can_reset_locally));
                }
                if (value.can_override_locally) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 3, Boolean.valueOf(value.can_override_locally));
                }
                if (value.time_window != null) {
                    TimeWindow.ADAPTER.encodeWithTag(writer, 1, value.time_window);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public RebootTimeStatus redact(RebootTimeStatus value) {
                Intrinsics.checkNotNullParameter(value, "value");
                TimeWindow timeWindow = value.time_window;
                return RebootTimeStatus.copy$default(value, timeWindow != null ? TimeWindow.ADAPTER.redact(timeWindow) : null, false, false, ByteString.EMPTY, 6, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public RebootTimeStatus decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                TimeWindow timeWindowDecode = null;
                boolean zBooleanValue = false;
                boolean zBooleanValue2 = false;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new RebootTimeStatus(timeWindowDecode, zBooleanValue, zBooleanValue2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        timeWindowDecode = TimeWindow.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                    } else if (iNextTag == 4) {
                        zBooleanValue2 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
