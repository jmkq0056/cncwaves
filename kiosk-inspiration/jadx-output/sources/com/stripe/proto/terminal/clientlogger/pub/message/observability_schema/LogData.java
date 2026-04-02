package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.battery.BatteryState;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.battery.CoinCellBatteryState;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Deprecated;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: LogData.kt */
/* JADX INFO: loaded from: classes4.dex */
@kotlin.Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001c2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001b\u001cBG\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJH\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\f\u001a\u00020\rJ\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u0002H\u0016J\b\u0010\u001a\u001a\u00020\u0004H\u0016R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u000f\u0010\u0010R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0011\u0010\u0010R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData$Builder;", "message", "", "exception", "test_log", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TestLog;", "battery_state", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;", "tamper_coin_cell_battery_state", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TestLog;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;Lokio/ByteString;)V", "getBattery_state$annotations", "()V", "getTamper_coin_cell_battery_state$annotations", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class LogData extends Message<LogData, Builder> {
    public static final ProtoAdapter<LogData> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.battery.BatteryState#ADAPTER", jsonName = "batteryState", oneofName = "log_event", schemaIndex = 3, tag = 4)
    public final BatteryState battery_state;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String exception;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String message;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.battery.CoinCellBatteryState#ADAPTER", jsonName = "tamperCoinCellBatteryState", oneofName = "log_event", schemaIndex = 4, tag = 5)
    public final CoinCellBatteryState tamper_coin_cell_battery_state;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.TestLog#ADAPTER", jsonName = "testLog", oneofName = "log_event", schemaIndex = 2, tag = 3)
    public final TestLog test_log;

    public LogData() {
        this(null, null, null, null, null, null, 63, null);
    }

    @Deprecated(message = "battery_state is deprecated")
    public static /* synthetic */ void getBattery_state$annotations() {
    }

    @Deprecated(message = "tamper_coin_cell_battery_state is deprecated")
    public static /* synthetic */ void getTamper_coin_cell_battery_state$annotations() {
    }

    public /* synthetic */ LogData(String str, String str2, TestLog testLog, BatteryState batteryState, CoinCellBatteryState coinCellBatteryState, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? null : testLog, (i & 8) != 0 ? null : batteryState, (i & 16) != 0 ? null : coinCellBatteryState, (i & 32) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LogData(String message, String exception, TestLog testLog, BatteryState batteryState, CoinCellBatteryState coinCellBatteryState, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(exception, "exception");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.message = message;
        this.exception = exception;
        this.test_log = testLog;
        this.battery_state = batteryState;
        this.tamper_coin_cell_battery_state = coinCellBatteryState;
        if (Internal.countNonNull(testLog, batteryState, coinCellBatteryState) > 1) {
            throw new IllegalArgumentException("At most one of test_log, battery_state, tamper_coin_cell_battery_state may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.message = this.message;
        builder.exception = this.exception;
        builder.test_log = this.test_log;
        builder.battery_state = this.battery_state;
        builder.tamper_coin_cell_battery_state = this.tamper_coin_cell_battery_state;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof LogData)) {
            return false;
        }
        LogData logData = (LogData) other;
        return Intrinsics.areEqual(unknownFields(), logData.unknownFields()) && Intrinsics.areEqual(this.message, logData.message) && Intrinsics.areEqual(this.exception, logData.exception) && Intrinsics.areEqual(this.test_log, logData.test_log) && Intrinsics.areEqual(this.battery_state, logData.battery_state) && Intrinsics.areEqual(this.tamper_coin_cell_battery_state, logData.tamper_coin_cell_battery_state);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((unknownFields().hashCode() * 37) + this.message.hashCode()) * 37) + this.exception.hashCode()) * 37;
        TestLog testLog = this.test_log;
        int iHashCode2 = (iHashCode + (testLog != null ? testLog.hashCode() : 0)) * 37;
        BatteryState batteryState = this.battery_state;
        int iHashCode3 = (iHashCode2 + (batteryState != null ? batteryState.hashCode() : 0)) * 37;
        CoinCellBatteryState coinCellBatteryState = this.tamper_coin_cell_battery_state;
        int iHashCode4 = iHashCode3 + (coinCellBatteryState != null ? coinCellBatteryState.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("message=" + Internal.sanitize(this.message));
        arrayList2.add("exception=" + Internal.sanitize(this.exception));
        if (this.test_log != null) {
            arrayList2.add("test_log=" + this.test_log);
        }
        if (this.battery_state != null) {
            arrayList2.add("battery_state=" + this.battery_state);
        }
        if (this.tamper_coin_cell_battery_state != null) {
            arrayList2.add("tamper_coin_cell_battery_state=" + this.tamper_coin_cell_battery_state);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "LogData{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ LogData copy$default(LogData logData, String str, String str2, TestLog testLog, BatteryState batteryState, CoinCellBatteryState coinCellBatteryState, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = logData.message;
        }
        if ((i & 2) != 0) {
            str2 = logData.exception;
        }
        if ((i & 4) != 0) {
            testLog = logData.test_log;
        }
        if ((i & 8) != 0) {
            batteryState = logData.battery_state;
        }
        if ((i & 16) != 0) {
            coinCellBatteryState = logData.tamper_coin_cell_battery_state;
        }
        if ((i & 32) != 0) {
            byteString = logData.unknownFields();
        }
        CoinCellBatteryState coinCellBatteryState2 = coinCellBatteryState;
        ByteString byteString2 = byteString;
        return logData.copy(str, str2, testLog, batteryState, coinCellBatteryState2, byteString2);
    }

    public final LogData copy(String message, String exception, TestLog test_log, BatteryState battery_state, CoinCellBatteryState tamper_coin_cell_battery_state, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(exception, "exception");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new LogData(message, exception, test_log, battery_state, tamper_coin_cell_battery_state, unknownFields);
    }

    /* JADX INFO: compiled from: LogData.kt */
    @kotlin.Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0007J\b\u0010\r\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007J\u0012\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0007J\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\fR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData;", "()V", "battery_state", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;", "exception", "", "message", "tamper_coin_cell_battery_state", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;", "test_log", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TestLog;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<LogData, Builder> {
        public BatteryState battery_state;
        public CoinCellBatteryState tamper_coin_cell_battery_state;
        public TestLog test_log;
        public String message = "";
        public String exception = "";

        public final Builder message(String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            this.message = message;
            return this;
        }

        public final Builder exception(String exception) {
            Intrinsics.checkNotNullParameter(exception, "exception");
            this.exception = exception;
            return this;
        }

        public final Builder test_log(TestLog test_log) {
            this.test_log = test_log;
            this.battery_state = null;
            this.tamper_coin_cell_battery_state = null;
            return this;
        }

        @Deprecated(message = "battery_state is deprecated")
        public final Builder battery_state(BatteryState battery_state) {
            this.battery_state = battery_state;
            this.test_log = null;
            this.tamper_coin_cell_battery_state = null;
            return this;
        }

        @Deprecated(message = "tamper_coin_cell_battery_state is deprecated")
        public final Builder tamper_coin_cell_battery_state(CoinCellBatteryState tamper_coin_cell_battery_state) {
            this.tamper_coin_cell_battery_state = tamper_coin_cell_battery_state;
            this.test_log = null;
            this.battery_state = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public LogData build() {
            return new LogData(this.message, this.exception, this.test_log, this.battery_state, this.tamper_coin_cell_battery_state, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: LogData.kt */
    @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ LogData build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(LogData.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<LogData>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.LogData$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(LogData value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.message, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.message);
                }
                if (!Intrinsics.areEqual(value.exception, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.exception);
                }
                return size + TestLog.ADAPTER.encodedSizeWithTag(3, value.test_log) + BatteryState.ADAPTER.encodedSizeWithTag(4, value.battery_state) + CoinCellBatteryState.ADAPTER.encodedSizeWithTag(5, value.tamper_coin_cell_battery_state);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, LogData value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.message, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.message);
                }
                if (!Intrinsics.areEqual(value.exception, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.exception);
                }
                TestLog.ADAPTER.encodeWithTag(writer, 3, value.test_log);
                BatteryState.ADAPTER.encodeWithTag(writer, 4, value.battery_state);
                CoinCellBatteryState.ADAPTER.encodeWithTag(writer, 5, value.tamper_coin_cell_battery_state);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, LogData value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                CoinCellBatteryState.ADAPTER.encodeWithTag(writer, 5, value.tamper_coin_cell_battery_state);
                BatteryState.ADAPTER.encodeWithTag(writer, 4, value.battery_state);
                TestLog.ADAPTER.encodeWithTag(writer, 3, value.test_log);
                if (!Intrinsics.areEqual(value.exception, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.exception);
                }
                if (Intrinsics.areEqual(value.message, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.message);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public LogData redact(LogData value) {
                Intrinsics.checkNotNullParameter(value, "value");
                TestLog testLog = value.test_log;
                TestLog testLogRedact = testLog != null ? TestLog.ADAPTER.redact(testLog) : null;
                BatteryState batteryState = value.battery_state;
                BatteryState batteryStateRedact = batteryState != null ? BatteryState.ADAPTER.redact(batteryState) : null;
                CoinCellBatteryState coinCellBatteryState = value.tamper_coin_cell_battery_state;
                return LogData.copy$default(value, null, null, testLogRedact, batteryStateRedact, coinCellBatteryState != null ? CoinCellBatteryState.ADAPTER.redact(coinCellBatteryState) : null, ByteString.EMPTY, 3, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public LogData decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                TestLog testLogDecode = null;
                BatteryState batteryStateDecode = null;
                CoinCellBatteryState coinCellBatteryStateDecode = null;
                String strDecode2 = "";
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new LogData(strDecode, strDecode2, testLogDecode, batteryStateDecode, coinCellBatteryStateDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 2) {
                        strDecode2 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 3) {
                        testLogDecode = TestLog.ADAPTER.decode(reader);
                    } else if (iNextTag == 4) {
                        batteryStateDecode = BatteryState.ADAPTER.decode(reader);
                    } else if (iNextTag == 5) {
                        coinCellBatteryStateDecode = CoinCellBatteryState.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
