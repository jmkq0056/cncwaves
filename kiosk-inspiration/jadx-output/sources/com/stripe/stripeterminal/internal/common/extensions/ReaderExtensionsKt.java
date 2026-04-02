package com.stripe.stripeterminal.internal.common.extensions;

import com.stripe.proto.api.rest.ConnectionType;
import com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb;
import com.stripe.stripeterminal.external.models.Reader;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: ReaderExtensions.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a$\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0002\u001a\f\u0010\b\u001a\u0004\u0018\u00010\t*\u00020\n\u001a\u001a\u0010\u000b\u001a\u00020\u0001*\u00020\n2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u0007\u001a:\u0010\u000b\u001a\u00020\u0001*\u00020\n2\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u0007\u001a\u001c\u0010\u0012\u001a\u00020\u0001*\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0002¨\u0006\u0015"}, d2 = {"checkValidKeyProfile", "", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$KeyProfileMetadata;", "currentKeyProfileId", "", "currentKeyProfilePek0", "currentTimeMs", "", "getConnectionType", "Lcom/stripe/proto/api/rest/ConnectionType;", "Lcom/stripe/stripeterminal/external/models/Reader;", "isRunningAllowedVersionFromOfflineKFC", "offlineConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;", "firmware", "config", "keyProfileVersion", "keyProfileId", "isValidMatch", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$VersionWithExpiration;", "version", "public_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class ReaderExtensionsKt {
    public static final ConnectionType getConnectionType(Reader reader) {
        Intrinsics.checkNotNullParameter(reader, "<this>");
        if (reader.getBluetoothDevice() != null || reader.getIsSimulated()) {
            return ConnectionType.bluetooth;
        }
        if (reader.getUsbDevice() != null) {
            return ConnectionType.usb;
        }
        return null;
    }

    public static final boolean isRunningAllowedVersionFromOfflineKFC(Reader reader, OfflineConfigPb.AccountOfflineConfigPb offlineConfig, long j) {
        Intrinsics.checkNotNullParameter(reader, "<this>");
        Intrinsics.checkNotNullParameter(offlineConfig, "offlineConfig");
        String firmwareVersion = reader.getFirmwareVersion();
        String str = firmwareVersion == null ? "" : firmwareVersion;
        String configVersion = reader.getConfigVersion();
        String str2 = configVersion == null ? "" : configVersion;
        String pinKeysetId = reader.getPinKeysetId();
        String str3 = pinKeysetId == null ? "" : pinKeysetId;
        String pinKeyProfileId = reader.getPinKeyProfileId();
        return isRunningAllowedVersionFromOfflineKFC(reader, str, str2, str3, pinKeyProfileId == null ? "" : pinKeyProfileId, offlineConfig, j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x004b, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x004b, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean isRunningAllowedVersionFromOfflineKFC(com.stripe.stripeterminal.external.models.Reader r5, java.lang.String r6, java.lang.String r7, java.lang.String r8, java.lang.String r9, com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb.AccountOfflineConfigPb r10, long r11) {
        /*
            Method dump skipped, instruction units count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.extensions.ReaderExtensionsKt.isRunningAllowedVersionFromOfflineKFC(com.stripe.stripeterminal.external.models.Reader, java.lang.String, java.lang.String, java.lang.String, java.lang.String, com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb$AccountOfflineConfigPb, long):boolean");
    }

    private static final boolean checkValidKeyProfile(OfflineConfigPb.KeyProfileMetadata keyProfileMetadata, String str, String str2, long j) {
        if (j > keyProfileMetadata.expiration_time_ms) {
            return false;
        }
        String str3 = str;
        if (str3.length() == 0 && str2.length() == 0) {
            return true;
        }
        if (keyProfileMetadata.key_profile_id.length() > 0 && str3.length() > 0) {
            String lowerCase = keyProfileMetadata.key_profile_id.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            return StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) str3, false, 2, (Object) null);
        }
        if (keyProfileMetadata.key_profile_pek0.length() <= 0 || str2.length() <= 0) {
            return false;
        }
        String lowerCase2 = keyProfileMetadata.key_profile_pek0.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
        String lowerCase3 = str2.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase3, "toLowerCase(...)");
        return StringsKt.contains$default((CharSequence) lowerCase2, (CharSequence) lowerCase3, false, 2, (Object) null);
    }

    private static final boolean isValidMatch(OfflineConfigPb.OfflineAllowedVersionsWithExpirationsPb.VersionWithExpiration versionWithExpiration, String str, long j) {
        String lowerCase = versionWithExpiration.version.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        String lowerCase2 = str.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
        return StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) lowerCase2, false, 2, (Object) null) && versionWithExpiration.expiration_time_ms >= j;
    }
}
