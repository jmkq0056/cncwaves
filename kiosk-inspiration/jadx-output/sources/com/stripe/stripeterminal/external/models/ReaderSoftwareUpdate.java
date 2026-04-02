package com.stripe.stripeterminal.external.models;

import com.stripe.proto.model.common.ClientVersionSpecPb;
import com.stripe.proto.model.config.MobileClientConfig;
import com.stripe.proto.terminal.terminal.pub.message.common.ImageRef;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReaderSoftwareUpdate.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0015\u0018\u00002\u00020\u0001:\u000223BY\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\u0002\u0010\u0011R\u0017\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0013\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001aR\u0013\u0010\u001e\u001a\u00020\u001f8G¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010 R\u0013\u0010!\u001a\u00020\u001f8G¢\u0006\b\n\u0000\u001a\u0004\b!\u0010 R\u0013\u0010\"\u001a\u00020\u001f8G¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010 R\u0013\u0010#\u001a\u00020\u001f8G¢\u0006\b\n\u0000\u001a\u0004\b#\u0010 R\u000e\u0010$\u001a\u00020\u001fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u001fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\b\n\u0000\u001a\u0004\b&\u0010'R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b(\u0010)R\u001a\u0010*\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010 \"\u0004\b,\u0010-R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b.\u0010/R\u0013\u0010\f\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b0\u0010)R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b1\u0010)¨\u00064"}, d2 = {"Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;", "", "requiredAtMs", "", "durationEstimate", "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateDurationEstimate;", "version", "", "configSpec", "Lcom/stripe/proto/model/common/ClientVersionSpecPb;", "firmwareSpec", "keyProfileName", "settingsVersion", "imageRef", "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;", "config", "Lcom/stripe/proto/model/config/MobileClientConfig;", "(JLcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateDurationEstimate;Ljava/lang/String;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;Lcom/stripe/proto/model/config/MobileClientConfig;)V", "components", "", "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;", "getComponents", "()Ljava/util/Set;", "getConfig", "()Lcom/stripe/proto/model/config/MobileClientConfig;", "getConfigSpec", "()Lcom/stripe/proto/model/common/ClientVersionSpecPb;", "getDurationEstimate", "()Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateDurationEstimate;", "getFirmwareSpec", "hasConfigUpdate", "", "()Z", "hasFirmwareUpdate", "hasIncrementalUpdate", "hasKeyUpdate", "hasSettingsUpdate", "hasSplashScreenUpdate", "getImageRef", "()Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;", "getKeyProfileName", "()Ljava/lang/String;", "onlyInstallRequiredUpdates", "getOnlyInstallRequiredUpdates", "setOnlyInstallRequiredUpdates", "(Z)V", "getRequiredAtMs", "()J", "getSettingsVersion", "getVersion", "UpdateComponent", "UpdateDurationEstimate", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReaderSoftwareUpdate {
    private final Set<UpdateComponent> components;
    private final MobileClientConfig config;
    private final ClientVersionSpecPb configSpec;
    private final UpdateDurationEstimate durationEstimate;
    private final ClientVersionSpecPb firmwareSpec;
    private final boolean hasConfigUpdate;
    private final boolean hasFirmwareUpdate;
    private final boolean hasIncrementalUpdate;
    private final boolean hasKeyUpdate;
    private final boolean hasSettingsUpdate;
    private final boolean hasSplashScreenUpdate;
    private final ImageRef imageRef;
    private final String keyProfileName;
    private boolean onlyInstallRequiredUpdates;
    private final long requiredAtMs;
    private final String settingsVersion;
    private final String version;

    public ReaderSoftwareUpdate(long j, UpdateDurationEstimate durationEstimate, String version, ClientVersionSpecPb clientVersionSpecPb, ClientVersionSpecPb clientVersionSpecPb2, String str, String str2, ImageRef imageRef, MobileClientConfig mobileClientConfig) {
        Intrinsics.checkNotNullParameter(durationEstimate, "durationEstimate");
        Intrinsics.checkNotNullParameter(version, "version");
        this.requiredAtMs = j;
        this.durationEstimate = durationEstimate;
        this.version = version;
        this.configSpec = clientVersionSpecPb;
        this.firmwareSpec = clientVersionSpecPb2;
        this.keyProfileName = str;
        this.settingsVersion = str2;
        this.imageRef = imageRef;
        this.config = mobileClientConfig;
        boolean z = true;
        boolean z2 = clientVersionSpecPb != null;
        this.hasConfigUpdate = z2;
        boolean z3 = clientVersionSpecPb2 != null;
        this.hasFirmwareUpdate = z3;
        boolean z4 = str != null;
        this.hasKeyUpdate = z4;
        boolean z5 = str2 != null;
        this.hasSettingsUpdate = z5;
        boolean z6 = imageRef != null;
        this.hasSplashScreenUpdate = z6;
        if (!z5 && !z6) {
            z = false;
        }
        this.hasIncrementalUpdate = z;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        this.components = linkedHashSet;
        if (z) {
            linkedHashSet.add(UpdateComponent.INCREMENTAL);
        }
        if (z4) {
            linkedHashSet.add(UpdateComponent.KEYS);
        }
        if (z2) {
            linkedHashSet.add(UpdateComponent.CONFIG);
        }
        if (z3) {
            linkedHashSet.add(UpdateComponent.FIRMWARE);
        }
    }

    public final long getRequiredAtMs() {
        return this.requiredAtMs;
    }

    public final UpdateDurationEstimate getDurationEstimate() {
        return this.durationEstimate;
    }

    public final String getVersion() {
        return this.version;
    }

    public final ClientVersionSpecPb getConfigSpec() {
        return this.configSpec;
    }

    public final ClientVersionSpecPb getFirmwareSpec() {
        return this.firmwareSpec;
    }

    public final String getKeyProfileName() {
        return this.keyProfileName;
    }

    public final String getSettingsVersion() {
        return this.settingsVersion;
    }

    public final ImageRef getImageRef() {
        return this.imageRef;
    }

    public final MobileClientConfig getConfig() {
        return this.config;
    }

    /* JADX INFO: renamed from: hasConfigUpdate, reason: from getter */
    public final boolean getHasConfigUpdate() {
        return this.hasConfigUpdate;
    }

    /* JADX INFO: renamed from: hasFirmwareUpdate, reason: from getter */
    public final boolean getHasFirmwareUpdate() {
        return this.hasFirmwareUpdate;
    }

    /* JADX INFO: renamed from: hasKeyUpdate, reason: from getter */
    public final boolean getHasKeyUpdate() {
        return this.hasKeyUpdate;
    }

    /* JADX INFO: renamed from: hasIncrementalUpdate, reason: from getter */
    public final boolean getHasIncrementalUpdate() {
        return this.hasIncrementalUpdate;
    }

    public final boolean getOnlyInstallRequiredUpdates() {
        return this.onlyInstallRequiredUpdates;
    }

    public final void setOnlyInstallRequiredUpdates(boolean z) {
        this.onlyInstallRequiredUpdates = z;
    }

    public final Set<UpdateComponent> getComponents() {
        return this.components;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: ReaderSoftwareUpdate.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;", "", "(Ljava/lang/String;I)V", "INCREMENTAL", "FIRMWARE", "CONFIG", "KEYS", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class UpdateComponent {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ UpdateComponent[] $VALUES;
        public static final UpdateComponent INCREMENTAL = new UpdateComponent("INCREMENTAL", 0);
        public static final UpdateComponent FIRMWARE = new UpdateComponent("FIRMWARE", 1);
        public static final UpdateComponent CONFIG = new UpdateComponent("CONFIG", 2);
        public static final UpdateComponent KEYS = new UpdateComponent("KEYS", 3);

        private static final /* synthetic */ UpdateComponent[] $values() {
            return new UpdateComponent[]{INCREMENTAL, FIRMWARE, CONFIG, KEYS};
        }

        public static EnumEntries<UpdateComponent> getEntries() {
            return $ENTRIES;
        }

        public static UpdateComponent valueOf(String str) {
            return (UpdateComponent) Enum.valueOf(UpdateComponent.class, str);
        }

        public static UpdateComponent[] values() {
            return (UpdateComponent[]) $VALUES.clone();
        }

        private UpdateComponent(String str, int i) {
        }

        static {
            UpdateComponent[] updateComponentArr$values = $values();
            $VALUES = updateComponentArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(updateComponentArr$values);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: ReaderSoftwareUpdate.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateDurationEstimate;", "", "description", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getDescription", "()Ljava/lang/String;", "LESS_THAN_ONE_MINUTE", "ONE_TO_TWO_MINUTES", "TWO_TO_FIVE_MINUTES", "FIVE_TO_FIFTEEN_MINUTES", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class UpdateDurationEstimate {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ UpdateDurationEstimate[] $VALUES;
        private final String description;
        public static final UpdateDurationEstimate LESS_THAN_ONE_MINUTE = new UpdateDurationEstimate("LESS_THAN_ONE_MINUTE", 0, "less than 1 minute");
        public static final UpdateDurationEstimate ONE_TO_TWO_MINUTES = new UpdateDurationEstimate("ONE_TO_TWO_MINUTES", 1, "1-2 minutes");
        public static final UpdateDurationEstimate TWO_TO_FIVE_MINUTES = new UpdateDurationEstimate("TWO_TO_FIVE_MINUTES", 2, "2-5 minutes");
        public static final UpdateDurationEstimate FIVE_TO_FIFTEEN_MINUTES = new UpdateDurationEstimate("FIVE_TO_FIFTEEN_MINUTES", 3, "5-15 minutes");

        private static final /* synthetic */ UpdateDurationEstimate[] $values() {
            return new UpdateDurationEstimate[]{LESS_THAN_ONE_MINUTE, ONE_TO_TWO_MINUTES, TWO_TO_FIVE_MINUTES, FIVE_TO_FIFTEEN_MINUTES};
        }

        public static EnumEntries<UpdateDurationEstimate> getEntries() {
            return $ENTRIES;
        }

        public static UpdateDurationEstimate valueOf(String str) {
            return (UpdateDurationEstimate) Enum.valueOf(UpdateDurationEstimate.class, str);
        }

        public static UpdateDurationEstimate[] values() {
            return (UpdateDurationEstimate[]) $VALUES.clone();
        }

        private UpdateDurationEstimate(String str, int i, String str2) {
            this.description = str2;
        }

        public final String getDescription() {
            return this.description;
        }

        static {
            UpdateDurationEstimate[] updateDurationEstimateArr$values = $values();
            $VALUES = updateDurationEstimateArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(updateDurationEstimateArr$values);
        }
    }
}
