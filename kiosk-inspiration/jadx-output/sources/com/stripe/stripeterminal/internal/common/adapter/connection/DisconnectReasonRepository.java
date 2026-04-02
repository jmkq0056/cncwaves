package com.stripe.stripeterminal.internal.common.adapter.connection;

import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.stripeterminal.external.models.DisconnectReason;
import com.stripe.time.Clock;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: compiled from: DisconnectReasonRepository.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\u0018\u0000 \u00142\u00020\u0001:\u0002\u0014\u0015B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005j\u0002`\b¢\u0006\u0002\u0010\tJ\u0006\u0010\f\u001a\u00020\rJ\u0006\u0010\u000e\u001a\u00020\u000fJ\b\u0010\u0010\u001a\u00020\u0011H\u0002J\u000e\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005j\u0002`\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;", "", "clock", "Lcom/stripe/time/Clock;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "disconnectReason", "Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository$RecordedDisconnectReason;", "clearDisconnectReason", "", "consumeDisconnectReason", "Lcom/stripe/stripeterminal/external/models/DisconnectReason;", "now", "", "setDisconnectReason", "reason", "Companion", "RecordedDisconnectReason", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DisconnectReasonRepository {
    private static final Companion Companion = new Companion(null);
    private static final long DISCONNECT_REASON_LIFETIME;
    private final Clock clock;
    private RecordedDisconnectReason disconnectReason;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;

    public DisconnectReasonRepository(Clock clock, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.clock = clock;
        this.logger = logger;
    }

    public final void setDisconnectReason(DisconnectReason reason) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        long jNow = now();
        this.logger.d("Disconnect reason set to " + reason + " at " + jNow, new Pair[0]);
        this.disconnectReason = new RecordedDisconnectReason(reason, jNow);
    }

    public final DisconnectReason consumeDisconnectReason() {
        RecordedDisconnectReason recordedDisconnectReason = this.disconnectReason;
        if (recordedDisconnectReason == null) {
            return DisconnectReason.UNKNOWN;
        }
        this.disconnectReason = null;
        long jNow = now();
        if (jNow - recordedDisconnectReason.getTime() > Duration.m2190getInWholeMillisecondsimpl(DISCONNECT_REASON_LIFETIME)) {
            this.logger.d("Disconnect reason recorded, but already expired by " + jNow, new Pair[0]);
            return DisconnectReason.UNKNOWN;
        }
        this.logger.d("Disconnect reason consumed at " + jNow, new Pair[0]);
        return recordedDisconnectReason.getReason();
    }

    public final void clearDisconnectReason() {
        this.logger.d("Disconnect reason cleared", new Pair[0]);
        this.disconnectReason = null;
    }

    private final long now() {
        return this.clock.elapsedTimeMillis();
    }

    /* JADX INFO: compiled from: DisconnectReasonRepository.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0082\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository$RecordedDisconnectReason;", "", "reason", "Lcom/stripe/stripeterminal/external/models/DisconnectReason;", "time", "", "(Lcom/stripe/stripeterminal/external/models/DisconnectReason;J)V", "getReason", "()Lcom/stripe/stripeterminal/external/models/DisconnectReason;", "getTime", "()J", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final /* data */ class RecordedDisconnectReason {
        private final DisconnectReason reason;
        private final long time;

        public static /* synthetic */ RecordedDisconnectReason copy$default(RecordedDisconnectReason recordedDisconnectReason, DisconnectReason disconnectReason, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                disconnectReason = recordedDisconnectReason.reason;
            }
            if ((i & 2) != 0) {
                j = recordedDisconnectReason.time;
            }
            return recordedDisconnectReason.copy(disconnectReason, j);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final DisconnectReason getReason() {
            return this.reason;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final long getTime() {
            return this.time;
        }

        public final RecordedDisconnectReason copy(DisconnectReason reason, long time) {
            Intrinsics.checkNotNullParameter(reason, "reason");
            return new RecordedDisconnectReason(reason, time);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof RecordedDisconnectReason)) {
                return false;
            }
            RecordedDisconnectReason recordedDisconnectReason = (RecordedDisconnectReason) other;
            return this.reason == recordedDisconnectReason.reason && this.time == recordedDisconnectReason.time;
        }

        public int hashCode() {
            return (this.reason.hashCode() * 31) + Long.hashCode(this.time);
        }

        public String toString() {
            return "RecordedDisconnectReason(reason=" + this.reason + ", time=" + this.time + ')';
        }

        public RecordedDisconnectReason(DisconnectReason reason, long j) {
            Intrinsics.checkNotNullParameter(reason, "reason");
            this.reason = reason;
            this.time = j;
        }

        public final DisconnectReason getReason() {
            return this.reason;
        }

        public final long getTime() {
            return this.time;
        }
    }

    /* JADX INFO: compiled from: DisconnectReasonRepository.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0019\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\b"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository$Companion;", "", "()V", "DISCONNECT_REASON_LIFETIME", "Lkotlin/time/Duration;", "getDISCONNECT_REASON_LIFETIME-UwyO8pc", "()J", "J", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: getDISCONNECT_REASON_LIFETIME-UwyO8pc, reason: not valid java name */
        public final long m509getDISCONNECT_REASON_LIFETIMEUwyO8pc() {
            return DisconnectReasonRepository.DISCONNECT_REASON_LIFETIME;
        }
    }

    static {
        Duration.Companion companion = Duration.INSTANCE;
        DISCONNECT_REASON_LIFETIME = DurationKt.toDuration(5, DurationUnit.SECONDS);
    }
}
