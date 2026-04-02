package com.stripe.stripeterminal.external.models;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TapToPayUxConfiguration.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0087\b\u0018\u00002\u00020\u0001:\u0007%&'()*+B%\b\u0000\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0007HÆ\u0003J'\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cHÖ\u0003J\t\u0010\u001d\u001a\u00020\u0018HÖ\u0001J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001J\u0019\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0018HÖ\u0001R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001c\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\r\u0010\n\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0010\u0010\n\u001a\u0004\b\u0011\u0010\u0012¨\u0006,"}, d2 = {"Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;", "Landroid/os/Parcelable;", "tapZone", "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone;", "colors", "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;", "darkMode", "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$DarkMode;", "(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$DarkMode;)V", "getColors$annotations", "()V", "getColors", "()Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;", "getDarkMode$annotations", "getDarkMode", "()Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$DarkMode;", "getTapZone$annotations", "getTapZone", "()Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone;", "component1", "component2", "component3", "copy", "describeContents", "", "equals", "", "other", "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "Builder", "Color", "ColorScheme", "DarkMode", "TapZone", "TapZoneIndicator", "TapZonePosition", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class TapToPayUxConfiguration implements Parcelable {
    public static final Parcelable.Creator<TapToPayUxConfiguration> CREATOR = new Creator();
    private final ColorScheme colors;
    private final DarkMode darkMode;
    private final TapZone tapZone;

    /* JADX INFO: compiled from: TapToPayUxConfiguration.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<TapToPayUxConfiguration> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final TapToPayUxConfiguration createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new TapToPayUxConfiguration((TapZone) parcel.readParcelable(TapToPayUxConfiguration.class.getClassLoader()), ColorScheme.CREATOR.createFromParcel(parcel), DarkMode.valueOf(parcel.readString()));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final TapToPayUxConfiguration[] newArray(int i) {
            return new TapToPayUxConfiguration[i];
        }
    }

    public TapToPayUxConfiguration() {
        this(null, null, null, 7, null);
    }

    public static /* synthetic */ TapToPayUxConfiguration copy$default(TapToPayUxConfiguration tapToPayUxConfiguration, TapZone tapZone, ColorScheme colorScheme, DarkMode darkMode, int i, Object obj) {
        if ((i & 1) != 0) {
            tapZone = tapToPayUxConfiguration.tapZone;
        }
        if ((i & 2) != 0) {
            colorScheme = tapToPayUxConfiguration.colors;
        }
        if ((i & 4) != 0) {
            darkMode = tapToPayUxConfiguration.darkMode;
        }
        return tapToPayUxConfiguration.copy(tapZone, colorScheme, darkMode);
    }

    public static /* synthetic */ void getColors$annotations() {
    }

    public static /* synthetic */ void getDarkMode$annotations() {
    }

    public static /* synthetic */ void getTapZone$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final TapZone getTapZone() {
        return this.tapZone;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final ColorScheme getColors() {
        return this.colors;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final DarkMode getDarkMode() {
        return this.darkMode;
    }

    public final TapToPayUxConfiguration copy(TapZone tapZone, ColorScheme colors, DarkMode darkMode) {
        Intrinsics.checkNotNullParameter(tapZone, "tapZone");
        Intrinsics.checkNotNullParameter(colors, "colors");
        Intrinsics.checkNotNullParameter(darkMode, "darkMode");
        return new TapToPayUxConfiguration(tapZone, colors, darkMode);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TapToPayUxConfiguration)) {
            return false;
        }
        TapToPayUxConfiguration tapToPayUxConfiguration = (TapToPayUxConfiguration) other;
        return Intrinsics.areEqual(this.tapZone, tapToPayUxConfiguration.tapZone) && Intrinsics.areEqual(this.colors, tapToPayUxConfiguration.colors) && this.darkMode == tapToPayUxConfiguration.darkMode;
    }

    public int hashCode() {
        return (((this.tapZone.hashCode() * 31) + this.colors.hashCode()) * 31) + this.darkMode.hashCode();
    }

    public String toString() {
        return "TapToPayUxConfiguration(tapZone=" + this.tapZone + ", colors=" + this.colors + ", darkMode=" + this.darkMode + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.checkNotNullParameter(parcel, "out");
        parcel.writeParcelable(this.tapZone, flags);
        this.colors.writeToParcel(parcel, flags);
        parcel.writeString(this.darkMode.name());
    }

    public TapToPayUxConfiguration(TapZone tapZone, ColorScheme colors, DarkMode darkMode) {
        Intrinsics.checkNotNullParameter(tapZone, "tapZone");
        Intrinsics.checkNotNullParameter(colors, "colors");
        Intrinsics.checkNotNullParameter(darkMode, "darkMode");
        this.tapZone = tapZone;
        this.colors = colors;
        this.darkMode = darkMode;
    }

    public /* synthetic */ TapToPayUxConfiguration(TapZone.Default r7, ColorScheme colorScheme, DarkMode darkMode, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? TapZone.Default.INSTANCE : r7, (i & 2) != 0 ? new ColorScheme(null, null, null, 7, null) : colorScheme, (i & 4) != 0 ? DarkMode.LIGHT : darkMode);
    }

    public final TapZone getTapZone() {
        return this.tapZone;
    }

    public final ColorScheme getColors() {
        return this.colors;
    }

    public final DarkMode getDarkMode() {
        return this.darkMode;
    }

    /* JADX INFO: compiled from: TapToPayUxConfiguration.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Builder;", "", "()V", "colors", "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;", "darkMode", "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$DarkMode;", "tapZone", "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone;", "build", "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder {
        private TapZone tapZone = TapZone.Default.INSTANCE;
        private ColorScheme colors = new ColorScheme(null, null, null, 7, null);
        private DarkMode darkMode = DarkMode.LIGHT;

        public final Builder tapZone(TapZone tapZone) {
            Intrinsics.checkNotNullParameter(tapZone, "tapZone");
            this.tapZone = tapZone;
            return this;
        }

        public final Builder colors(ColorScheme colors) {
            Intrinsics.checkNotNullParameter(colors, "colors");
            this.colors = colors;
            return this;
        }

        public final Builder darkMode(DarkMode darkMode) {
            Intrinsics.checkNotNullParameter(darkMode, "darkMode");
            this.darkMode = darkMode;
            return this;
        }

        public final TapToPayUxConfiguration build() {
            return new TapToPayUxConfiguration(this.tapZone, this.colors, this.darkMode);
        }
    }

    /* JADX INFO: compiled from: TapToPayUxConfiguration.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone;", "Landroid/os/Parcelable;", "Default", "Manual", "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Default;", "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface TapZone extends Parcelable {

        /* JADX INFO: compiled from: TapToPayUxConfiguration.kt */
        @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\t\u0010\u0003\u001a\u00020\u0004HÖ\u0001J\u0013\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bHÖ\u0003J\t\u0010\t\u001a\u00020\u0004HÖ\u0001J\t\u0010\n\u001a\u00020\u000bHÖ\u0001J\u0019\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0004HÖ\u0001¨\u0006\u0011"}, d2 = {"Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Default;", "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone;", "()V", "describeContents", "", "equals", "", "other", "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Default implements TapZone {
            public static final Default INSTANCE = new Default();
            public static final Parcelable.Creator<Default> CREATOR = new Creator();

            /* JADX INFO: compiled from: TapToPayUxConfiguration.kt */
            @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
            public static final class Creator implements Parcelable.Creator<Default> {
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public final Default createFromParcel(Parcel parcel) {
                    Intrinsics.checkNotNullParameter(parcel, "parcel");
                    parcel.readInt();
                    return Default.INSTANCE;
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public final Default[] newArray(int i) {
                    return new Default[i];
                }
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Default)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -707135669;
            }

            public String toString() {
                return "Default";
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int flags) {
                Intrinsics.checkNotNullParameter(parcel, "out");
                parcel.writeInt(1);
            }

            private Default() {
            }
        }

        /* JADX INFO: compiled from: TapToPayUxConfiguration.kt */
        @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\u001cB\u0017\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013HÖ\u0003J\t\u0010\u0014\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\u0019\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u000fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u001d"}, d2 = {"Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;", "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone;", "indicator", "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZoneIndicator;", "position", "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;", "(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZoneIndicator;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;)V", "getIndicator", "()Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZoneIndicator;", "getPosition", "()Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;", "component1", "component2", "copy", "describeContents", "", "equals", "", "other", "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "Builder", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Manual implements TapZone {
            public static final Parcelable.Creator<Manual> CREATOR = new Creator();
            private final TapZoneIndicator indicator;
            private final TapZonePosition position;

            /* JADX INFO: compiled from: TapToPayUxConfiguration.kt */
            @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
            public static final class Creator implements Parcelable.Creator<Manual> {
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public final Manual createFromParcel(Parcel parcel) {
                    Intrinsics.checkNotNullParameter(parcel, "parcel");
                    return new Manual(TapZoneIndicator.valueOf(parcel.readString()), (TapZonePosition) parcel.readParcelable(Manual.class.getClassLoader()));
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public final Manual[] newArray(int i) {
                    return new Manual[i];
                }
            }

            public static /* synthetic */ Manual copy$default(Manual manual, TapZoneIndicator tapZoneIndicator, TapZonePosition tapZonePosition, int i, Object obj) {
                if ((i & 1) != 0) {
                    tapZoneIndicator = manual.indicator;
                }
                if ((i & 2) != 0) {
                    tapZonePosition = manual.position;
                }
                return manual.copy(tapZoneIndicator, tapZonePosition);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final TapZoneIndicator getIndicator() {
                return this.indicator;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final TapZonePosition getPosition() {
                return this.position;
            }

            public final Manual copy(TapZoneIndicator indicator, TapZonePosition position) {
                Intrinsics.checkNotNullParameter(indicator, "indicator");
                Intrinsics.checkNotNullParameter(position, "position");
                return new Manual(indicator, position);
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Manual)) {
                    return false;
                }
                Manual manual = (Manual) other;
                return this.indicator == manual.indicator && Intrinsics.areEqual(this.position, manual.position);
            }

            public int hashCode() {
                return (this.indicator.hashCode() * 31) + this.position.hashCode();
            }

            public String toString() {
                return "Manual(indicator=" + this.indicator + ", position=" + this.position + ')';
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int flags) {
                Intrinsics.checkNotNullParameter(parcel, "out");
                parcel.writeString(this.indicator.name());
                parcel.writeParcelable(this.position, flags);
            }

            public Manual(TapZoneIndicator indicator, TapZonePosition position) {
                Intrinsics.checkNotNullParameter(indicator, "indicator");
                Intrinsics.checkNotNullParameter(position, "position");
                this.indicator = indicator;
                this.position = position;
            }

            public final TapZoneIndicator getIndicator() {
                return this.indicator;
            }

            public final TapZonePosition getPosition() {
                return this.position;
            }

            /* JADX INFO: compiled from: TapToPayUxConfiguration.kt */
            @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual$Builder;", "", "()V", "indicator", "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZoneIndicator;", "position", "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;", "build", "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder {
                private TapZoneIndicator indicator = TapZoneIndicator.DEFAULT;
                private TapZonePosition position = TapZonePosition.Default.INSTANCE;

                public final Builder indicator(TapZoneIndicator indicator) {
                    Intrinsics.checkNotNullParameter(indicator, "indicator");
                    this.indicator = indicator;
                    return this;
                }

                public final Builder position(TapZonePosition position) {
                    Intrinsics.checkNotNullParameter(position, "position");
                    this.position = position;
                    return this;
                }

                public final Manual build() {
                    return new Manual(this.indicator, this.position);
                }
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: TapToPayUxConfiguration.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZoneIndicator;", "", "(Ljava/lang/String;I)V", "DEFAULT", "ABOVE", "BELOW", "FRONT", "BEHIND", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class TapZoneIndicator {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ TapZoneIndicator[] $VALUES;
        public static final TapZoneIndicator DEFAULT = new TapZoneIndicator("DEFAULT", 0);
        public static final TapZoneIndicator ABOVE = new TapZoneIndicator("ABOVE", 1);
        public static final TapZoneIndicator BELOW = new TapZoneIndicator("BELOW", 2);
        public static final TapZoneIndicator FRONT = new TapZoneIndicator("FRONT", 3);
        public static final TapZoneIndicator BEHIND = new TapZoneIndicator("BEHIND", 4);

        private static final /* synthetic */ TapZoneIndicator[] $values() {
            return new TapZoneIndicator[]{DEFAULT, ABOVE, BELOW, FRONT, BEHIND};
        }

        public static EnumEntries<TapZoneIndicator> getEntries() {
            return $ENTRIES;
        }

        public static TapZoneIndicator valueOf(String str) {
            return (TapZoneIndicator) Enum.valueOf(TapZoneIndicator.class, str);
        }

        public static TapZoneIndicator[] values() {
            return (TapZoneIndicator[]) $VALUES.clone();
        }

        private TapZoneIndicator(String str, int i) {
        }

        static {
            TapZoneIndicator[] tapZoneIndicatorArr$values = $values();
            $VALUES = tapZoneIndicatorArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(tapZoneIndicatorArr$values);
        }
    }

    /* JADX INFO: compiled from: TapToPayUxConfiguration.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;", "Landroid/os/Parcelable;", "Default", "Manual", "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Default;", "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface TapZonePosition extends Parcelable {

        /* JADX INFO: compiled from: TapToPayUxConfiguration.kt */
        @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\t\u0010\u0003\u001a\u00020\u0004HÖ\u0001J\u0013\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bHÖ\u0003J\t\u0010\t\u001a\u00020\u0004HÖ\u0001J\t\u0010\n\u001a\u00020\u000bHÖ\u0001J\u0019\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0004HÖ\u0001¨\u0006\u0011"}, d2 = {"Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Default;", "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;", "()V", "describeContents", "", "equals", "", "other", "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Default implements TapZonePosition {
            public static final Default INSTANCE = new Default();
            public static final Parcelable.Creator<Default> CREATOR = new Creator();

            /* JADX INFO: compiled from: TapToPayUxConfiguration.kt */
            @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
            public static final class Creator implements Parcelable.Creator<Default> {
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public final Default createFromParcel(Parcel parcel) {
                    Intrinsics.checkNotNullParameter(parcel, "parcel");
                    parcel.readInt();
                    return Default.INSTANCE;
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public final Default[] newArray(int i) {
                    return new Default[i];
                }
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Default)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -77659244;
            }

            public String toString() {
                return "Default";
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int flags) {
                Intrinsics.checkNotNullParameter(parcel, "out");
                parcel.writeInt(1);
            }

            private Default() {
            }
        }

        /* JADX INFO: compiled from: TapToPayUxConfiguration.kt */
        @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\t\u0010\f\u001a\u00020\rHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\rHÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\u0019\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\rHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u001a"}, d2 = {"Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Manual;", "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;", "xBias", "", "yBias", "(FF)V", "getXBias", "()F", "getYBias", "component1", "component2", "copy", "describeContents", "", "equals", "", "other", "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Manual implements TapZonePosition {
            public static final Parcelable.Creator<Manual> CREATOR = new Creator();
            private final float xBias;
            private final float yBias;

            /* JADX INFO: compiled from: TapToPayUxConfiguration.kt */
            @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
            public static final class Creator implements Parcelable.Creator<Manual> {
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public final Manual createFromParcel(Parcel parcel) {
                    Intrinsics.checkNotNullParameter(parcel, "parcel");
                    return new Manual(parcel.readFloat(), parcel.readFloat());
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public final Manual[] newArray(int i) {
                    return new Manual[i];
                }
            }

            public static /* synthetic */ Manual copy$default(Manual manual, float f, float f2, int i, Object obj) {
                if ((i & 1) != 0) {
                    f = manual.xBias;
                }
                if ((i & 2) != 0) {
                    f2 = manual.yBias;
                }
                return manual.copy(f, f2);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final float getXBias() {
                return this.xBias;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final float getYBias() {
                return this.yBias;
            }

            public final Manual copy(float xBias, float yBias) {
                return new Manual(xBias, yBias);
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Manual)) {
                    return false;
                }
                Manual manual = (Manual) other;
                return Float.compare(this.xBias, manual.xBias) == 0 && Float.compare(this.yBias, manual.yBias) == 0;
            }

            public int hashCode() {
                return (Float.hashCode(this.xBias) * 31) + Float.hashCode(this.yBias);
            }

            public String toString() {
                return "Manual(xBias=" + this.xBias + ", yBias=" + this.yBias + ')';
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int flags) {
                Intrinsics.checkNotNullParameter(parcel, "out");
                parcel.writeFloat(this.xBias);
                parcel.writeFloat(this.yBias);
            }

            public Manual(float f, float f2) {
                this.xBias = f;
                this.yBias = f2;
                double d = f;
                if (0.0d > d || d > 1.0d) {
                    throw new IllegalArgumentException("xBias must be between 0 and 1".toString());
                }
                double d2 = f2;
                if (0.0d > d2 || d2 > 1.0d) {
                    throw new IllegalArgumentException("yBias must be between 0 and 1".toString());
                }
            }

            public final float getXBias() {
                return this.xBias;
            }

            public final float getYBias() {
                return this.yBias;
            }
        }
    }

    /* JADX INFO: compiled from: TapToPayUxConfiguration.kt */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\u001dB%\b\u0000\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J'\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\u0019\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u001e"}, d2 = {"Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;", "Landroid/os/Parcelable;", "primary", "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;", FirebaseAnalytics.Param.SUCCESS, "error", "(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;)V", "getError", "()Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;", "getPrimary", "getSuccess", "component1", "component2", "component3", "copy", "describeContents", "", "equals", "", "other", "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "Builder", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class ColorScheme implements Parcelable {
        public static final Parcelable.Creator<ColorScheme> CREATOR = new Creator();
        private final Color error;
        private final Color primary;
        private final Color success;

        /* JADX INFO: compiled from: TapToPayUxConfiguration.kt */
        @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<ColorScheme> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final ColorScheme createFromParcel(Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                return new ColorScheme((Color) parcel.readParcelable(ColorScheme.class.getClassLoader()), (Color) parcel.readParcelable(ColorScheme.class.getClassLoader()), (Color) parcel.readParcelable(ColorScheme.class.getClassLoader()));
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final ColorScheme[] newArray(int i) {
                return new ColorScheme[i];
            }
        }

        public ColorScheme() {
            this(null, null, null, 7, null);
        }

        public static /* synthetic */ ColorScheme copy$default(ColorScheme colorScheme, Color color, Color color2, Color color3, int i, Object obj) {
            if ((i & 1) != 0) {
                color = colorScheme.primary;
            }
            if ((i & 2) != 0) {
                color2 = colorScheme.success;
            }
            if ((i & 4) != 0) {
                color3 = colorScheme.error;
            }
            return colorScheme.copy(color, color2, color3);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Color getPrimary() {
            return this.primary;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final Color getSuccess() {
            return this.success;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final Color getError() {
            return this.error;
        }

        public final ColorScheme copy(Color primary, Color success, Color error) {
            Intrinsics.checkNotNullParameter(primary, "primary");
            Intrinsics.checkNotNullParameter(success, "success");
            Intrinsics.checkNotNullParameter(error, "error");
            return new ColorScheme(primary, success, error);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ColorScheme)) {
                return false;
            }
            ColorScheme colorScheme = (ColorScheme) other;
            return Intrinsics.areEqual(this.primary, colorScheme.primary) && Intrinsics.areEqual(this.success, colorScheme.success) && Intrinsics.areEqual(this.error, colorScheme.error);
        }

        public int hashCode() {
            return (((this.primary.hashCode() * 31) + this.success.hashCode()) * 31) + this.error.hashCode();
        }

        public String toString() {
            return "ColorScheme(primary=" + this.primary + ", success=" + this.success + ", error=" + this.error + ')';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int flags) {
            Intrinsics.checkNotNullParameter(parcel, "out");
            parcel.writeParcelable(this.primary, flags);
            parcel.writeParcelable(this.success, flags);
            parcel.writeParcelable(this.error, flags);
        }

        public ColorScheme(Color primary, Color success, Color error) {
            Intrinsics.checkNotNullParameter(primary, "primary");
            Intrinsics.checkNotNullParameter(success, "success");
            Intrinsics.checkNotNullParameter(error, "error");
            this.primary = primary;
            this.success = success;
            this.error = error;
        }

        public /* synthetic */ ColorScheme(Color.Default r1, Color.Default r2, Color.Default r3, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? Color.Default.INSTANCE : r1, (i & 2) != 0 ? Color.Default.INSTANCE : r2, (i & 4) != 0 ? Color.Default.INSTANCE : r3);
        }

        public final Color getPrimary() {
            return this.primary;
        }

        public final Color getSuccess() {
            return this.success;
        }

        public final Color getError() {
            return this.error;
        }

        /* JADX INFO: compiled from: TapToPayUxConfiguration.kt */
        @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme$Builder;", "", "()V", "error", "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;", "primary", FirebaseAnalytics.Param.SUCCESS, "build", "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder {
            private Color primary = Color.Default.INSTANCE;
            private Color success = Color.Default.INSTANCE;
            private Color error = Color.Default.INSTANCE;

            public final Builder primary(Color primary) {
                Intrinsics.checkNotNullParameter(primary, "primary");
                this.primary = primary;
                return this;
            }

            public final Builder success(Color success) {
                Intrinsics.checkNotNullParameter(success, "success");
                this.success = success;
                return this;
            }

            public final Builder error(Color error) {
                Intrinsics.checkNotNullParameter(error, "error");
                this.error = error;
                return this;
            }

            public final ColorScheme build() {
                return new ColorScheme(this.primary, this.success, this.error);
            }
        }
    }

    /* JADX INFO: compiled from: TapToPayUxConfiguration.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\bÀ\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;", "Landroid/os/Parcelable;", "Default", "Resource", "Value", "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color$Default;", "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color$Resource;", "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color$Value;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface Color extends Parcelable {

        /* JADX INFO: compiled from: TapToPayUxConfiguration.kt */
        @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\t\u0010\t\u001a\u00020\u0003HÖ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\u0019\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0016"}, d2 = {"Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color$Resource;", "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;", "resId", "", "(I)V", "getResId", "()I", "component1", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Resource implements Color {
            public static final Parcelable.Creator<Resource> CREATOR = new Creator();
            private final int resId;

            /* JADX INFO: compiled from: TapToPayUxConfiguration.kt */
            @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
            public static final class Creator implements Parcelable.Creator<Resource> {
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public final Resource createFromParcel(Parcel parcel) {
                    Intrinsics.checkNotNullParameter(parcel, "parcel");
                    return new Resource(parcel.readInt());
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public final Resource[] newArray(int i) {
                    return new Resource[i];
                }
            }

            public static /* synthetic */ Resource copy$default(Resource resource, int i, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    i = resource.resId;
                }
                return resource.copy(i);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final int getResId() {
                return this.resId;
            }

            public final Resource copy(int resId) {
                return new Resource(resId);
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Resource) && this.resId == ((Resource) other).resId;
            }

            public int hashCode() {
                return Integer.hashCode(this.resId);
            }

            public String toString() {
                return "Resource(resId=" + this.resId + ')';
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int flags) {
                Intrinsics.checkNotNullParameter(parcel, "out");
                parcel.writeInt(this.resId);
            }

            public Resource(int i) {
                this.resId = i;
            }

            public final int getResId() {
                return this.resId;
            }
        }

        /* JADX INFO: compiled from: TapToPayUxConfiguration.kt */
        @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\t\u0010\t\u001a\u00020\u0003HÖ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\u0019\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0016"}, d2 = {"Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color$Value;", "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;", "color", "", "(I)V", "getColor", "()I", "component1", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Value implements Color {
            public static final Parcelable.Creator<Value> CREATOR = new Creator();
            private final int color;

            /* JADX INFO: compiled from: TapToPayUxConfiguration.kt */
            @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
            public static final class Creator implements Parcelable.Creator<Value> {
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public final Value createFromParcel(Parcel parcel) {
                    Intrinsics.checkNotNullParameter(parcel, "parcel");
                    return new Value(parcel.readInt());
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public final Value[] newArray(int i) {
                    return new Value[i];
                }
            }

            public static /* synthetic */ Value copy$default(Value value, int i, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    i = value.color;
                }
                return value.copy(i);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final int getColor() {
                return this.color;
            }

            public final Value copy(int color) {
                return new Value(color);
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Value) && this.color == ((Value) other).color;
            }

            public int hashCode() {
                return Integer.hashCode(this.color);
            }

            public String toString() {
                return "Value(color=" + this.color + ')';
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int flags) {
                Intrinsics.checkNotNullParameter(parcel, "out");
                parcel.writeInt(this.color);
            }

            public Value(int i) {
                this.color = i;
            }

            public final int getColor() {
                return this.color;
            }
        }

        /* JADX INFO: compiled from: TapToPayUxConfiguration.kt */
        @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\t\u0010\u0003\u001a\u00020\u0004HÖ\u0001J\u0013\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bHÖ\u0003J\t\u0010\t\u001a\u00020\u0004HÖ\u0001J\t\u0010\n\u001a\u00020\u000bHÖ\u0001J\u0019\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0004HÖ\u0001¨\u0006\u0011"}, d2 = {"Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color$Default;", "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;", "()V", "describeContents", "", "equals", "", "other", "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Default implements Color {
            public static final Default INSTANCE = new Default();
            public static final Parcelable.Creator<Default> CREATOR = new Creator();

            /* JADX INFO: compiled from: TapToPayUxConfiguration.kt */
            @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
            public static final class Creator implements Parcelable.Creator<Default> {
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public final Default createFromParcel(Parcel parcel) {
                    Intrinsics.checkNotNullParameter(parcel, "parcel");
                    parcel.readInt();
                    return Default.INSTANCE;
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public final Default[] newArray(int i) {
                    return new Default[i];
                }
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Default)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 1707285247;
            }

            public String toString() {
                return "Default";
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int flags) {
                Intrinsics.checkNotNullParameter(parcel, "out");
                parcel.writeInt(1);
            }

            private Default() {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: TapToPayUxConfiguration.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$DarkMode;", "", "(Ljava/lang/String;I)V", "SYSTEM", "DARK", "LIGHT", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class DarkMode {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ DarkMode[] $VALUES;
        public static final DarkMode SYSTEM = new DarkMode("SYSTEM", 0);
        public static final DarkMode DARK = new DarkMode("DARK", 1);
        public static final DarkMode LIGHT = new DarkMode("LIGHT", 2);

        private static final /* synthetic */ DarkMode[] $values() {
            return new DarkMode[]{SYSTEM, DARK, LIGHT};
        }

        public static EnumEntries<DarkMode> getEntries() {
            return $ENTRIES;
        }

        public static DarkMode valueOf(String str) {
            return (DarkMode) Enum.valueOf(DarkMode.class, str);
        }

        public static DarkMode[] values() {
            return (DarkMode[]) $VALUES.clone();
        }

        private DarkMode(String str, int i) {
        }

        static {
            DarkMode[] darkModeArr$values = $values();
            $VALUES = darkModeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(darkModeArr$values);
        }
    }
}
