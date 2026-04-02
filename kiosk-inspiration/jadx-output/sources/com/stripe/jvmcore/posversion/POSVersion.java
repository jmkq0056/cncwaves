package com.stripe.jvmcore.posversion;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: POSVersion.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\b\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001b\u001cB)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\u0011\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0000H\u0086\u0002J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0007HÆ\u0003J3\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001d"}, d2 = {"Lcom/stripe/jvmcore/posversion/POSVersion;", "", "major", "", "minor", "patch", "subPatch", "Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;", "(IIILcom/stripe/jvmcore/posversion/POSVersion$SubPatch;)V", "getMajor", "()I", "getMinor", "getPatch", "getSubPatch", "()Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;", "compareTo", "other", "component1", "component2", "component3", "component4", "copy", "equals", "", "hashCode", "toString", "", "Companion", "SubPatch", "posversion"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class POSVersion {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Regex versionRegex = new Regex("(\\d+)\\.(\\d+)\\.(\\d+)(-([a-z]*)(\\d+))?");
    private final int major;
    private final int minor;
    private final int patch;
    private final SubPatch subPatch;

    public static /* synthetic */ POSVersion copy$default(POSVersion pOSVersion, int i, int i2, int i3, SubPatch subPatch, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i = pOSVersion.major;
        }
        if ((i4 & 2) != 0) {
            i2 = pOSVersion.minor;
        }
        if ((i4 & 4) != 0) {
            i3 = pOSVersion.patch;
        }
        if ((i4 & 8) != 0) {
            subPatch = pOSVersion.subPatch;
        }
        return pOSVersion.copy(i, i2, i3, subPatch);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getMajor() {
        return this.major;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getMinor() {
        return this.minor;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getPatch() {
        return this.patch;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final SubPatch getSubPatch() {
        return this.subPatch;
    }

    public final POSVersion copy(int major, int minor, int patch, SubPatch subPatch) {
        return new POSVersion(major, minor, patch, subPatch);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof POSVersion)) {
            return false;
        }
        POSVersion pOSVersion = (POSVersion) other;
        return this.major == pOSVersion.major && this.minor == pOSVersion.minor && this.patch == pOSVersion.patch && Intrinsics.areEqual(this.subPatch, pOSVersion.subPatch);
    }

    public int hashCode() {
        int iHashCode = ((((Integer.hashCode(this.major) * 31) + Integer.hashCode(this.minor)) * 31) + Integer.hashCode(this.patch)) * 31;
        SubPatch subPatch = this.subPatch;
        return iHashCode + (subPatch == null ? 0 : subPatch.hashCode());
    }

    public String toString() {
        return "POSVersion(major=" + this.major + ", minor=" + this.minor + ", patch=" + this.patch + ", subPatch=" + this.subPatch + ')';
    }

    public POSVersion(int i, int i2, int i3, SubPatch subPatch) {
        this.major = i;
        this.minor = i2;
        this.patch = i3;
        this.subPatch = subPatch;
    }

    public /* synthetic */ POSVersion(int i, int i2, int i3, SubPatch subPatch, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, i3, (i4 & 8) != 0 ? null : subPatch);
    }

    public final int getMajor() {
        return this.major;
    }

    public final int getMinor() {
        return this.minor;
    }

    public final int getPatch() {
        return this.patch;
    }

    public final SubPatch getSubPatch() {
        return this.subPatch;
    }

    /* JADX INFO: compiled from: POSVersion.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0011\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u0000H\u0086\u0002J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\u001f\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/stripe/jvmcore/posversion/POSVersion$SubPatch;", "", "prefix", "", "suffix", "", "(Ljava/lang/String;I)V", "getPrefix", "()Ljava/lang/String;", "getSuffix", "()I", "compareTo", "other", "component1", "component2", "copy", "equals", "", "hashCode", "toString", "posversion"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class SubPatch {
        private final String prefix;
        private final int suffix;

        public static /* synthetic */ SubPatch copy$default(SubPatch subPatch, String str, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = subPatch.prefix;
            }
            if ((i2 & 2) != 0) {
                i = subPatch.suffix;
            }
            return subPatch.copy(str, i);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getPrefix() {
            return this.prefix;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final int getSuffix() {
            return this.suffix;
        }

        public final SubPatch copy(String prefix, int suffix) {
            return new SubPatch(prefix, suffix);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof SubPatch)) {
                return false;
            }
            SubPatch subPatch = (SubPatch) other;
            return Intrinsics.areEqual(this.prefix, subPatch.prefix) && this.suffix == subPatch.suffix;
        }

        public int hashCode() {
            String str = this.prefix;
            return ((str == null ? 0 : str.hashCode()) * 31) + Integer.hashCode(this.suffix);
        }

        public String toString() {
            return "SubPatch(prefix=" + this.prefix + ", suffix=" + this.suffix + ')';
        }

        public SubPatch(String str, int i) {
            this.prefix = str;
            this.suffix = i;
        }

        public final String getPrefix() {
            return this.prefix;
        }

        public final int getSuffix() {
            return this.suffix;
        }

        public final int compareTo(SubPatch other) {
            Intrinsics.checkNotNullParameter(other, "other");
            String str = this.prefix;
            if (str == null && other.prefix != null) {
                return -1;
            }
            String str2 = other.prefix;
            if (str2 != null || str == null) {
                return (str == null || str2 == null || Intrinsics.areEqual(str, str2)) ? Intrinsics.compare(this.suffix, other.suffix) : this.prefix.compareTo(other.prefix);
            }
            return 1;
        }
    }

    /* JADX INFO: compiled from: POSVersion.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\f\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u00020\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/jvmcore/posversion/POSVersion$Companion;", "", "()V", "versionRegex", "Lkotlin/text/Regex;", "toPOSVersion", "Lcom/stripe/jvmcore/posversion/POSVersion;", "", "posversion"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final POSVersion toPOSVersion(String str) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            MatchResult matchResultMatchEntire = POSVersion.versionRegex.matchEntire(str);
            SubPatch subPatch = null;
            if (matchResultMatchEntire == null) {
                return null;
            }
            List<String> groupValues = matchResultMatchEntire.getGroupValues();
            int i = Integer.parseInt(groupValues.get(1));
            int i2 = Integer.parseInt(groupValues.get(2));
            int i3 = Integer.parseInt(groupValues.get(3));
            if (!StringsKt.isBlank(groupValues.get(6))) {
                String str2 = groupValues.get(5);
                subPatch = new SubPatch(StringsKt.isBlank(str2) ? null : str2, Integer.parseInt(groupValues.get(6)));
            }
            return new POSVersion(i, i2, i3, subPatch);
        }
    }

    public final int compareTo(POSVersion other) {
        SubPatch subPatch;
        Intrinsics.checkNotNullParameter(other, "other");
        int i = other.major;
        int i2 = this.major;
        if (i != i2) {
            return Intrinsics.compare(i2, i);
        }
        int i3 = other.minor;
        int i4 = this.minor;
        if (i3 != i4) {
            return Intrinsics.compare(i4, i3);
        }
        int i5 = other.patch;
        int i6 = this.patch;
        if (i5 != i6) {
            return Intrinsics.compare(i6, i5);
        }
        SubPatch subPatch2 = other.subPatch;
        if (subPatch2 != null && (subPatch = this.subPatch) != null) {
            return subPatch.compareTo(subPatch2);
        }
        if (subPatch2 == null || this.subPatch != null) {
            return (subPatch2 != null || this.subPatch == null) ? 0 : -1;
        }
        return 1;
    }
}
