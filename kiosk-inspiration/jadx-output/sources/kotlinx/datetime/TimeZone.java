package kotlinx.datetime;

import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import java.time.DateTimeException;
import java.time.ZoneId;
import java.time.ZoneOffset;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.datetime.serializers.TimeZoneSerializer;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX INFO: compiled from: TimeZoneJvm.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0017\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u000f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0006H\u0016J\n\u0010\u0011\u001a\u00020\u0012*\u00020\u0013J\n\u0010\u0014\u001a\u00020\u0013*\u00020\u0012R\u0011\u0010\u0005\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0016"}, d2 = {"Lkotlinx/datetime/TimeZone;", "", "zoneId", "Ljava/time/ZoneId;", "(Ljava/time/ZoneId;)V", OfflineStorageConstantsKt.ID, "", "getId", "()Ljava/lang/String;", "getZoneId$kotlinx_datetime", "()Ljava/time/ZoneId;", "equals", "", "other", "hashCode", "", "toString", "toInstant", "Lkotlinx/datetime/Instant;", "Lkotlinx/datetime/LocalDateTime;", "toLocalDateTime", "Companion", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable(with = TimeZoneSerializer.class)
public class TimeZone {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final FixedOffsetTimeZone UTC;
    private final ZoneId zoneId;

    public TimeZone(ZoneId zoneId) {
        Intrinsics.checkNotNullParameter(zoneId, "zoneId");
        this.zoneId = zoneId;
    }

    /* JADX INFO: renamed from: getZoneId$kotlinx_datetime, reason: from getter */
    public final ZoneId getZoneId() {
        return this.zoneId;
    }

    public final String getId() {
        String id = this.zoneId.getId();
        Intrinsics.checkNotNullExpressionValue(id, "getId(...)");
        return id;
    }

    public final LocalDateTime toLocalDateTime(Instant instant) {
        Intrinsics.checkNotNullParameter(instant, "<this>");
        return TimeZoneKt.toLocalDateTime(instant, this);
    }

    public final Instant toInstant(LocalDateTime localDateTime) {
        Intrinsics.checkNotNullParameter(localDateTime, "<this>");
        return TimeZoneKt.toInstant(localDateTime, this);
    }

    public boolean equals(Object other) {
        if (this != other) {
            return (other instanceof TimeZone) && Intrinsics.areEqual(this.zoneId, ((TimeZone) other).zoneId);
        }
        return true;
    }

    public int hashCode() {
        return this.zoneId.hashCode();
    }

    public String toString() {
        String string = this.zoneId.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    /* JADX INFO: compiled from: TimeZoneJvm.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\f\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\tJ\u0015\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0011H\u0000¢\u0006\u0002\b\u0012J\u000f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\r0\u0014HÆ\u0001R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b8F¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lkotlinx/datetime/TimeZone$Companion;", "", "()V", "UTC", "Lkotlinx/datetime/FixedOffsetTimeZone;", "getUTC", "()Lkotlinx/datetime/FixedOffsetTimeZone;", "availableZoneIds", "", "", "getAvailableZoneIds", "()Ljava/util/Set;", "currentSystemDefault", "Lkotlinx/datetime/TimeZone;", "of", "zoneId", "ofZone", "Ljava/time/ZoneId;", "ofZone$kotlinx_datetime", "serializer", "Lkotlinx/serialization/KSerializer;", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<TimeZone> serializer() {
            return TimeZoneSerializer.INSTANCE;
        }

        public final TimeZone currentSystemDefault() {
            ZoneId zoneIdSystemDefault = ZoneId.systemDefault();
            Intrinsics.checkNotNullExpressionValue(zoneIdSystemDefault, "systemDefault(...)");
            return ofZone$kotlinx_datetime(zoneIdSystemDefault);
        }

        public final FixedOffsetTimeZone getUTC() {
            return TimeZone.UTC;
        }

        public final TimeZone of(String zoneId) throws Exception {
            Intrinsics.checkNotNullParameter(zoneId, "zoneId");
            try {
                ZoneId zoneIdOf = ZoneId.of(zoneId);
                Intrinsics.checkNotNullExpressionValue(zoneIdOf, "of(...)");
                return ofZone$kotlinx_datetime(zoneIdOf);
            } catch (Exception e) {
                if (e instanceof DateTimeException) {
                    throw new IllegalTimeZoneException(e);
                }
                throw e;
            }
        }

        public final TimeZone ofZone$kotlinx_datetime(ZoneId zoneId) {
            Intrinsics.checkNotNullParameter(zoneId, "zoneId");
            if (!(zoneId instanceof ZoneOffset)) {
                if (TimeZoneKt__TimeZoneJvmKt.isFixedOffset$TimeZoneKt__TimeZoneJvmKt(zoneId)) {
                    ZoneId zoneIdNormalized = zoneId.normalized();
                    Intrinsics.checkNotNull(zoneIdNormalized, "null cannot be cast to non-null type java.time.ZoneOffset");
                    return new FixedOffsetTimeZone(new UtcOffset((ZoneOffset) zoneIdNormalized), zoneId);
                }
                return new TimeZone(zoneId);
            }
            return new FixedOffsetTimeZone(new UtcOffset((ZoneOffset) zoneId));
        }

        public final Set<String> getAvailableZoneIds() {
            Set<String> availableZoneIds = ZoneId.getAvailableZoneIds();
            Intrinsics.checkNotNullExpressionValue(availableZoneIds, "getAvailableZoneIds(...)");
            return availableZoneIds;
        }
    }

    static {
        ZoneOffset UTC2 = ZoneOffset.UTC;
        Intrinsics.checkNotNullExpressionValue(UTC2, "UTC");
        UTC = UtcOffsetKt.asTimeZone(new UtcOffset(UTC2));
    }
}
