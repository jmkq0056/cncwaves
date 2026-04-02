package com.stripe.core.readerupdate;

import com.google.firebase.crashlytics.internal.metadata.UserMetadata;
import com.stripe.core.hardware.Reader;
import com.stripe.core.hardware.reactive.emv.ConfigurationHandler;
import com.stripe.core.readerupdate.Update;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: BbposAssetInstallProcessor.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH&J\u001e\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\bH&J\u001e\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bH&J\u001e\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0011À\u0006\u0001"}, d2 = {"Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;", "", "install", "Lkotlinx/coroutines/flow/Flow;", "", "config", "Lcom/stripe/core/readerupdate/Update$Config;", OfflineStorageConstantsKt.READER, "Lcom/stripe/core/hardware/Reader;", "firmware", "Lcom/stripe/core/readerupdate/Update$Firmware;", UserMetadata.KEYDATA_FILENAME, "Lcom/stripe/core/readerupdate/Update$Keys;", "settings", "Lcom/stripe/core/readerupdate/Update$Settings;", "configurationHandler", "Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface BbposAssetInstallProcessor {
    Flow<Float> install(Update.Config config, Reader reader);

    Flow<Float> install(Update.Firmware firmware, Reader reader);

    Flow<Float> install(Update.Keys keys, Reader reader);

    Flow<Float> install(Update.Settings settings, ConfigurationHandler configurationHandler);
}
