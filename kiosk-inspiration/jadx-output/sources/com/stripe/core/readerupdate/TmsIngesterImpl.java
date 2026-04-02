package com.stripe.core.readerupdate;

import com.stripe.core.hardware.updates.ReaderVersion;
import com.stripe.core.readerupdate.RemoteUpdate;
import com.stripe.core.readerupdate.Update;
import com.stripe.core.updater.Ingester;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: TmsIngester.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001j\u0002`\u0004B\u0005¢\u0006\u0002\u0010\u0005J\u0016\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0002H\u0096@¢\u0006\u0002\u0010\b¨\u0006\t"}, d2 = {"Lcom/stripe/core/readerupdate/TmsIngesterImpl;", "Lcom/stripe/core/updater/Ingester;", "Lcom/stripe/core/hardware/updates/ReaderVersion;", "Lcom/stripe/core/readerupdate/UpdatePackage;", "Lcom/stripe/core/readerupdate/TmsIngester;", "()V", "ingest", "coordinates", "(Lcom/stripe/core/hardware/updates/ReaderVersion;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TmsIngesterImpl implements Ingester<ReaderVersion, UpdatePackage> {
    @Override // com.stripe.core.updater.Ingester
    public Object ingest(ReaderVersion readerVersion, Continuation<? super UpdatePackage> continuation) {
        String keyProfileName = readerVersion.getKeyProfileName();
        Update.Keys keys = keyProfileName != null ? new Update.Keys(new RemoteUpdate.Ota(keyProfileName)) : null;
        String configVersion = readerVersion.getConfigVersion();
        Update.Config config = configVersion != null ? new Update.Config(new RemoteUpdate.Ota(configVersion)) : null;
        String firmwareVersion = readerVersion.getFirmwareVersion();
        return new UpdatePackage(keys, config, firmwareVersion != null ? new Update.Firmware(new RemoteUpdate.Ota(firmwareVersion)) : null, null, 8, null);
    }
}
