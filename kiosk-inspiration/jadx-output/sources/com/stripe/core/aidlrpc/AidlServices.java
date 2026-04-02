package com.stripe.core.aidlrpc;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX INFO: compiled from: AidlServices.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0006\u0007R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005\u0082\u0001\u0002\b\tø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\nÀ\u0006\u0001"}, d2 = {"Lcom/stripe/core/aidlrpc/AidlServices;", "", "descriptor", "", "getDescriptor", "()Ljava/lang/String;", "ReaderService", "UpdaterService", "Lcom/stripe/core/aidlrpc/AidlServices$ReaderService;", "Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;", "aidlrpc_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface AidlServices {
    String getDescriptor();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: AidlServices.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/stripe/core/aidlrpc/AidlServices$ReaderService;", "", "Lcom/stripe/core/aidlrpc/AidlServices;", "descriptor", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getDescriptor", "()Ljava/lang/String;", "HandoffService", "aidlrpc_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ReaderService implements AidlServices {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ReaderService[] $VALUES;
        public static final ReaderService HandoffService = new ReaderService("HandoffService", 0, "HANDOFF_SERVICE");
        private final String descriptor;

        private static final /* synthetic */ ReaderService[] $values() {
            return new ReaderService[]{HandoffService};
        }

        public static EnumEntries<ReaderService> getEntries() {
            return $ENTRIES;
        }

        public static ReaderService valueOf(String str) {
            return (ReaderService) Enum.valueOf(ReaderService.class, str);
        }

        public static ReaderService[] values() {
            return (ReaderService[]) $VALUES.clone();
        }

        private ReaderService(String str, int i, String str2) {
            this.descriptor = str2;
        }

        @Override // com.stripe.core.aidlrpc.AidlServices
        public String getDescriptor() {
            return this.descriptor;
        }

        static {
            ReaderService[] readerServiceArr$values = $values();
            $VALUES = readerServiceArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(readerServiceArr$values);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: AidlServices.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/stripe/core/aidlrpc/AidlServices$UpdaterService;", "", "Lcom/stripe/core/aidlrpc/AidlServices;", "descriptor", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getDescriptor", "()Ljava/lang/String;", "RegistrationService", "DeviceSettingsService", "AssetUpdateService", "aidlrpc_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class UpdaterService implements AidlServices {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ UpdaterService[] $VALUES;
        private final String descriptor;
        public static final UpdaterService RegistrationService = new UpdaterService("RegistrationService", 0, "REGISTRATION_SERVICE");
        public static final UpdaterService DeviceSettingsService = new UpdaterService("DeviceSettingsService", 1, "DEVICE_SETTINGS_SERVICE");
        public static final UpdaterService AssetUpdateService = new UpdaterService("AssetUpdateService", 2, "ASSET_UPDATES_SERVICE");

        private static final /* synthetic */ UpdaterService[] $values() {
            return new UpdaterService[]{RegistrationService, DeviceSettingsService, AssetUpdateService};
        }

        public static EnumEntries<UpdaterService> getEntries() {
            return $ENTRIES;
        }

        public static UpdaterService valueOf(String str) {
            return (UpdaterService) Enum.valueOf(UpdaterService.class, str);
        }

        public static UpdaterService[] values() {
            return (UpdaterService[]) $VALUES.clone();
        }

        private UpdaterService(String str, int i, String str2) {
            this.descriptor = str2;
        }

        @Override // com.stripe.core.aidlrpc.AidlServices
        public String getDescriptor() {
            return this.descriptor;
        }

        static {
            UpdaterService[] updaterServiceArr$values = $values();
            $VALUES = updaterServiceArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(updaterServiceArr$values);
        }
    }
}
