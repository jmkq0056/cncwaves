package kotlinx.datetime;

import com.sun.jna.platform.win32.Ddeml;
import java.time.ZoneOffset;
import java.time.format.DateTimeFormatter;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.datetime.format.DateTimeFormat;
import kotlinx.datetime.format.DateTimeFormatBuilder;
import kotlinx.datetime.format.UtcOffsetFormat;
import kotlinx.datetime.format.UtcOffsetFormatKt;
import kotlinx.datetime.serializers.UtcOffsetSerializer;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX INFO: compiled from: UtcOffsetJvm.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0007\u0018\u0000 \u00112\u00020\u0001:\u0002\u0011\u0012B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u000e\u001a\u00020\u0006H\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0016R\u0011\u0010\u0005\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lkotlinx/datetime/UtcOffset;", "", "zoneOffset", "Ljava/time/ZoneOffset;", "(Ljava/time/ZoneOffset;)V", "totalSeconds", "", "getTotalSeconds", "()I", "getZoneOffset$kotlinx_datetime", "()Ljava/time/ZoneOffset;", "equals", "", "other", "hashCode", "toString", "", "Companion", Ddeml.SZDDESYS_ITEM_FORMATS, "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable(with = UtcOffsetSerializer.class)
public final class UtcOffset {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final UtcOffset ZERO;
    private final ZoneOffset zoneOffset;

    public UtcOffset(ZoneOffset zoneOffset) {
        Intrinsics.checkNotNullParameter(zoneOffset, "zoneOffset");
        this.zoneOffset = zoneOffset;
    }

    /* JADX INFO: renamed from: getZoneOffset$kotlinx_datetime, reason: from getter */
    public final ZoneOffset getZoneOffset() {
        return this.zoneOffset;
    }

    public final int getTotalSeconds() {
        return this.zoneOffset.getTotalSeconds();
    }

    public int hashCode() {
        return this.zoneOffset.hashCode();
    }

    public boolean equals(Object other) {
        return (other instanceof UtcOffset) && Intrinsics.areEqual(this.zoneOffset, ((UtcOffset) other).zoneOffset);
    }

    public String toString() {
        String string = this.zoneOffset.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    /* JADX INFO: compiled from: UtcOffsetJvm.kt */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\b2\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rJ\u001e\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00102\u000e\b\u0002\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\bJ\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J\u000f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00040\u0015HÆ\u0001R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0016"}, d2 = {"Lkotlinx/datetime/UtcOffset$Companion;", "", "()V", "ZERO", "Lkotlinx/datetime/UtcOffset;", "getZERO", "()Lkotlinx/datetime/UtcOffset;", "Format", "Lkotlinx/datetime/format/DateTimeFormat;", "block", "Lkotlin/Function1;", "Lkotlinx/datetime/format/DateTimeFormatBuilder$WithUtcOffset;", "", "Lkotlin/ExtensionFunctionType;", "parse", "input", "", "format", "offsetString", "", "serializer", "Lkotlinx/serialization/KSerializer;", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<UtcOffset> serializer() {
            return UtcOffsetSerializer.INSTANCE;
        }

        public final UtcOffset getZERO() {
            return UtcOffset.ZERO;
        }

        public final UtcOffset parse(CharSequence input, DateTimeFormat<UtcOffset> format) {
            Intrinsics.checkNotNullParameter(input, "input");
            Intrinsics.checkNotNullParameter(format, "format");
            if (format == Formats.INSTANCE.getISO()) {
                DateTimeFormatter isoFormat = UtcOffsetJvmKt.getIsoFormat();
                Intrinsics.checkNotNullExpressionValue(isoFormat, "access$getIsoFormat(...)");
                return UtcOffsetJvmKt.parseWithFormat(input, isoFormat);
            }
            if (format == Formats.INSTANCE.getISO_BASIC()) {
                DateTimeFormatter isoBasicFormat = UtcOffsetJvmKt.getIsoBasicFormat();
                Intrinsics.checkNotNullExpressionValue(isoBasicFormat, "access$getIsoBasicFormat(...)");
                return UtcOffsetJvmKt.parseWithFormat(input, isoBasicFormat);
            }
            if (format == Formats.INSTANCE.getFOUR_DIGITS()) {
                DateTimeFormatter fourDigitsFormat = UtcOffsetJvmKt.getFourDigitsFormat();
                Intrinsics.checkNotNullExpressionValue(fourDigitsFormat, "access$getFourDigitsFormat(...)");
                return UtcOffsetJvmKt.parseWithFormat(input, fourDigitsFormat);
            }
            return format.parse(input);
        }

        @Deprecated(level = DeprecationLevel.HIDDEN, message = "This overload is only kept for binary compatibility")
        public final /* synthetic */ UtcOffset parse(String offsetString) {
            Intrinsics.checkNotNullParameter(offsetString, "offsetString");
            return parse$default(this, offsetString, null, 2, null);
        }

        public final DateTimeFormat<UtcOffset> Format(Function1<? super DateTimeFormatBuilder.WithUtcOffset, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            return UtcOffsetFormat.INSTANCE.build(block);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ UtcOffset parse$default(Companion companion, CharSequence charSequence, DateTimeFormat dateTimeFormat, int i, Object obj) {
            if ((i & 2) != 0) {
                dateTimeFormat = UtcOffsetKt.getIsoUtcOffsetFormat();
            }
            return companion.parse(charSequence, dateTimeFormat);
        }
    }

    static {
        ZoneOffset UTC = ZoneOffset.UTC;
        Intrinsics.checkNotNullExpressionValue(UTC, "UTC");
        ZERO = new UtcOffset(UTC);
    }

    /* JADX INFO: compiled from: UtcOffsetJvm.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048F¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048F¢\u0006\u0006\u001a\u0004\b\t\u0010\u0007R\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\u0007¨\u0006\f"}, d2 = {"Lkotlinx/datetime/UtcOffset$Formats;", "", "()V", "FOUR_DIGITS", "Lkotlinx/datetime/format/DateTimeFormat;", "Lkotlinx/datetime/UtcOffset;", "getFOUR_DIGITS", "()Lkotlinx/datetime/format/DateTimeFormat;", "ISO", "getISO", "ISO_BASIC", "getISO_BASIC", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Formats {
        public static final Formats INSTANCE = new Formats();

        private Formats() {
        }

        public final DateTimeFormat<UtcOffset> getISO() {
            return UtcOffsetFormatKt.getISO_OFFSET();
        }

        public final DateTimeFormat<UtcOffset> getISO_BASIC() {
            return UtcOffsetFormatKt.getISO_OFFSET_BASIC();
        }

        public final DateTimeFormat<UtcOffset> getFOUR_DIGITS() {
            return UtcOffsetFormatKt.getFOUR_DIGIT_OFFSET();
        }
    }
}
