package com.stripe.stripeterminal.internal.common.makers;

import com.stripe.jvmcore.featureflag.FeatureFlagsRepository;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.model.common.ClientUpgradeArgumentPb;
import com.stripe.proto.model.common.ClientVersionSpecPb;
import com.stripe.proto.model.common.InstantPb;
import com.stripe.proto.model.common.VersionInfoPb;
import com.stripe.proto.model.config.BBPOSConfig;
import com.stripe.proto.model.config.MobileClientConfig;
import com.stripe.proto.terminal.terminal.pub.message.common.ImageRef;
import com.stripe.stripeterminal.external.models.DeviceType;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.ReaderSoftwareUpdate;
import java.util.Date;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReaderSoftwareUpdateMaker.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/makers/ReaderSoftwareUpdateMaker;", "", "()V", "Companion", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReaderSoftwareUpdateMaker {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: compiled from: ReaderSoftwareUpdateMaker.kt */
    @Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JH\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0016\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00120\u0010j\u0002`\u0013J0\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00152\u0016\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00120\u0010j\u0002`\u0013Jx\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u00192\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001c2\b\u0010\u001f\u001a\u0004\u0018\u00010 2\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0016\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00120\u0010j\u0002`\u0013H\u0002J#\u0010!\u001a\u0004\u0018\u00010\"2\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0002¢\u0006\u0002\u0010#J\u0018\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0018\u0010(\u001a\u00020%2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u000e\u0010)\u001a\u00020%*\u0004\u0018\u00010\u0019H\u0002J\u0018\u0010*\u001a\u00020%*\u0004\u0018\u00010\u00192\b\u0010+\u001a\u0004\u0018\u00010\u001cH\u0002¨\u0006,"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/makers/ReaderSoftwareUpdateMaker$Companion;", "", "()V", "create", "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "clientConfigData", "Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;", "config", "Lcom/stripe/proto/model/config/MobileClientConfig;", "featureFlagsRepository", "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;", "readerInfoRepository", "Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "targetVersion", "Lcom/stripe/core/hardware/updates/ReaderVersion;", "requiredAt", "Ljava/util/Date;", "configToUpdateTo", "Lcom/stripe/proto/model/common/ClientVersionSpecPb;", "firmwareToUpdateTo", "keyProfileId", "", "keyProfileName", "settings", "imageRef", "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;", "getNearestRequiredUpdateTimeMS", "", "(Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;)Ljava/lang/Long;", "keyProfilesMatch", "", "bbposConfig", "Lcom/stripe/proto/model/config/BBPOSConfig;", "shouldForceKeyInjectionIfNoPinKeyProfileId", "isUpdateRequired", "shouldUpdateTo", "version", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0052  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x00b5  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x0117  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.stripe.stripeterminal.external.models.ReaderSoftwareUpdate create(com.stripe.stripeterminal.external.models.Reader r27, com.stripe.core.hardware.updates.ReaderVersion r28, com.stripe.jvmcore.logging.terminal.log.SimpleLogger<com.stripe.loggingmodels.ApplicationTrace, com.stripe.loggingmodels.ApplicationTraceResult> r29) {
            /*
                Method dump skipped, instruction units count: 343
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.makers.ReaderSoftwareUpdateMaker.Companion.create(com.stripe.stripeterminal.external.models.Reader, com.stripe.core.hardware.updates.ReaderVersion, com.stripe.jvmcore.logging.terminal.log.SimpleLogger):com.stripe.stripeterminal.external.models.ReaderSoftwareUpdate");
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x0090  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x00f1  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.stripe.stripeterminal.external.models.ReaderSoftwareUpdate create(com.stripe.stripeterminal.external.models.Reader r19, com.stripe.core.hardware.reactive.emv.ClientConfigData r20, com.stripe.proto.model.config.MobileClientConfig r21, com.stripe.jvmcore.featureflag.FeatureFlagsRepository r22, com.stripe.core.hardware.reactive.ReaderInfoRepository r23, com.stripe.jvmcore.logging.terminal.log.SimpleLogger<com.stripe.loggingmodels.ApplicationTrace, com.stripe.loggingmodels.ApplicationTraceResult> r24) {
            /*
                Method dump skipped, instruction units count: 436
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.makers.ReaderSoftwareUpdateMaker.Companion.create(com.stripe.stripeterminal.external.models.Reader, com.stripe.core.hardware.reactive.emv.ClientConfigData, com.stripe.proto.model.config.MobileClientConfig, com.stripe.jvmcore.featureflag.FeatureFlagsRepository, com.stripe.core.hardware.reactive.ReaderInfoRepository, com.stripe.jvmcore.logging.terminal.log.SimpleLogger):com.stripe.stripeterminal.external.models.ReaderSoftwareUpdate");
        }

        private final boolean shouldForceKeyInjectionIfNoPinKeyProfileId(Reader reader, FeatureFlagsRepository featureFlagsRepository) {
            return CollectionsKt.listOf((Object[]) new DeviceType[]{DeviceType.WISEPAD_3, DeviceType.WISECUBE}).contains(reader.getDeviceType()) && !featureFlagsRepository.getFeatureFlags().disable_sdk_force_key_injection_when_unknown_keys;
        }

        private final Long getNearestRequiredUpdateTimeMS(ClientVersionSpecPb configToUpdateTo, ClientVersionSpecPb firmwareToUpdateTo) {
            ClientUpgradeArgumentPb clientUpgradeArgumentPb;
            InstantPb instantPb;
            ClientUpgradeArgumentPb clientUpgradeArgumentPb2;
            InstantPb instantPb2;
            long jMin = Math.min((configToUpdateTo == null || (clientUpgradeArgumentPb2 = configToUpdateTo.client_upgrade_arg) == null || (instantPb2 = clientUpgradeArgumentPb2.time_to_upgrade) == null) ? Long.MAX_VALUE : instantPb2.millis, (firmwareToUpdateTo == null || (clientUpgradeArgumentPb = firmwareToUpdateTo.client_upgrade_arg) == null || (instantPb = clientUpgradeArgumentPb.time_to_upgrade) == null) ? Long.MAX_VALUE : instantPb.millis);
            if (jMin == Long.MAX_VALUE) {
                return null;
            }
            return Long.valueOf(jMin);
        }

        private final ReaderSoftwareUpdate create(Reader reader, Date requiredAt, ClientVersionSpecPb configToUpdateTo, ClientVersionSpecPb firmwareToUpdateTo, String keyProfileId, String keyProfileName, String settings, ImageRef imageRef, MobileClientConfig config, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
            String firmwareVersion;
            String configVersion;
            ReaderSoftwareUpdate.UpdateDurationEstimate updateDurationEstimate;
            VersionInfoPb versionInfoPb;
            VersionInfoPb versionInfoPb2;
            StringBuilder sb = new StringBuilder();
            if (firmwareToUpdateTo == null || (versionInfoPb2 = firmwareToUpdateTo.version_info) == null || (firmwareVersion = versionInfoPb2.client_version) == null) {
                firmwareVersion = reader.getFirmwareVersion();
            }
            StringBuilder sbAppend = sb.append(firmwareVersion).append('-');
            if (configToUpdateTo == null || (versionInfoPb = configToUpdateTo.version_info) == null || (configVersion = versionInfoPb.client_version) == null) {
                configVersion = reader.getConfigVersion();
            }
            String string = sbAppend.append(configVersion).append('-').append(keyProfileId == null ? reader.getPinKeysetId() : keyProfileId).toString();
            logger.i("Creating update for " + string, new Pair[0]);
            if (firmwareToUpdateTo != null) {
                updateDurationEstimate = ReaderSoftwareUpdate.UpdateDurationEstimate.FIVE_TO_FIFTEEN_MINUTES;
            } else if (configToUpdateTo != null) {
                if (keyProfileName != null) {
                    updateDurationEstimate = ReaderSoftwareUpdate.UpdateDurationEstimate.TWO_TO_FIVE_MINUTES;
                } else {
                    updateDurationEstimate = ReaderSoftwareUpdate.UpdateDurationEstimate.ONE_TO_TWO_MINUTES;
                }
            } else if (keyProfileName != null || settings != null || imageRef != null) {
                updateDurationEstimate = ReaderSoftwareUpdate.UpdateDurationEstimate.LESS_THAN_ONE_MINUTE;
            } else {
                logger.i("No updates needed for " + string, new Pair[0]);
                return null;
            }
            return new ReaderSoftwareUpdate(requiredAt.getTime(), updateDurationEstimate, string, configToUpdateTo, firmwareToUpdateTo, keyProfileName, settings, imageRef, config);
        }

        private final boolean shouldUpdateTo(ClientVersionSpecPb clientVersionSpecPb, String str) {
            VersionInfoPb versionInfoPb;
            String str2;
            String lowerCase;
            if (clientVersionSpecPb != null && (versionInfoPb = clientVersionSpecPb.version_info) != null && (str2 = versionInfoPb.client_version) != null && str2.length() > 0) {
                Locale US = Locale.US;
                Intrinsics.checkNotNullExpressionValue(US, "US");
                String lowerCase2 = str2.toLowerCase(US);
                Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
                if (str != null) {
                    Locale US2 = Locale.US;
                    Intrinsics.checkNotNullExpressionValue(US2, "US");
                    lowerCase = str.toLowerCase(US2);
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                } else {
                    lowerCase = null;
                }
                if (!Intrinsics.areEqual(lowerCase2, lowerCase)) {
                    return true;
                }
            }
            return false;
        }

        private final boolean isUpdateRequired(ClientVersionSpecPb clientVersionSpecPb) {
            ClientUpgradeArgumentPb clientUpgradeArgumentPb;
            ClientUpgradeArgumentPb clientUpgradeArgumentPb2;
            InstantPb instantPb;
            if (new Date((clientVersionSpecPb == null || (clientUpgradeArgumentPb2 = clientVersionSpecPb.client_upgrade_arg) == null || (instantPb = clientUpgradeArgumentPb2.time_to_upgrade) == null) ? 0L : instantPb.millis).before(new Date())) {
                return true;
            }
            return ((clientVersionSpecPb == null || (clientUpgradeArgumentPb = clientVersionSpecPb.client_upgrade_arg) == null) ? null : clientUpgradeArgumentPb.upgrade_predicate) == ClientUpgradeArgumentPb.UpgradeTimeArgument.FORCE_IMMEDIATE;
        }

        private final boolean keyProfilesMatch(BBPOSConfig bbposConfig, Reader reader) {
            return Intrinsics.areEqual(bbposConfig.key_profile_id, reader.getEmvKeyProfileId()) && Intrinsics.areEqual(bbposConfig.key_profile_id, reader.getMacKeyProfileId()) && Intrinsics.areEqual(bbposConfig.key_profile_id, reader.getPinKeyProfileId()) && Intrinsics.areEqual(bbposConfig.key_profile_id, reader.getTrackKeyProfileId());
        }
    }
}
