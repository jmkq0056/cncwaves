package com.stripe.core.readerupdate;

import android.graphics.Bitmap;
import com.stripe.core.hardware.Reader;
import com.stripe.core.hardware.updates.ReaderUpdateException;
import com.stripe.core.readerupdate.RemoteUpdate;
import com.stripe.core.readerupdate.Update;
import com.stripe.core.readerupdate.UpdateSummary;
import com.stripe.core.updater.Ingester;
import com.stripe.jvmcore.featureflag.FeatureFlagsRepository;
import com.stripe.jvmcore.logging.terminal.contracts.Logger;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.proto.model.common.ClientVersionSpecPb;
import com.stripe.proto.model.common.UrlPb;
import com.stripe.proto.model.common.VersionInfoPb;
import com.stripe.proto.model.config.BBPOSConfig;
import com.stripe.proto.model.config.MobileClientConfig;
import com.stripe.proto.terminal.terminal.pub.message.common.ImageRef;
import javax.inject.Provider;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ArmadaIngester.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0000\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001j\u0002`\u0004B=\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\b\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0016\u0010\f\u001a\u0012\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rj\u0002`\u0010¢\u0006\u0002\u0010\u0011J\u001a\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J(\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00062\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\bH\u0002J\u0016\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u0002H\u0096@¢\u0006\u0002\u0010\u001dJ\u0014\u0010\u001e\u001a\u00020\u001f*\u00020\u00142\u0006\u0010 \u001a\u00020!H\u0002J\u0014\u0010\"\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0002R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\f\u001a\u0012\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rj\u0002`\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0012\u001a\u00020\u0013*\u00020\u00148BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016¨\u0006#"}, d2 = {"Lcom/stripe/core/readerupdate/ArmadaIngesterImpl;", "Lcom/stripe/core/updater/Ingester;", "Lcom/stripe/core/readerupdate/UpdateSummary;", "Lcom/stripe/core/readerupdate/UpdatePackage;", "Lcom/stripe/core/readerupdate/ArmadaIngester;", "updateClient", "Lcom/stripe/core/readerupdate/UpdateClient;", "readerProvider", "Ljavax/inject/Provider;", "Lcom/stripe/core/hardware/Reader;", "featureFlagsRepository", "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/core/readerupdate/UpdateClient;Ljavax/inject/Provider;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "otaVersion", "", "Lcom/stripe/proto/model/common/ClientVersionSpecPb;", "getOtaVersion", "(Lcom/stripe/proto/model/common/ClientVersionSpecPb;)Ljava/lang/String;", "downloadSettings", "Lcom/stripe/core/readerupdate/Update$Settings;", "summary", "downloadUpdates", "ingest", "coordinates", "(Lcom/stripe/core/readerupdate/UpdateSummary;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "toRemoteUpdate", "Lcom/stripe/core/readerupdate/RemoteUpdate;", "needsOtaUpdate", "", "updatePresignedUrls", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ArmadaIngesterImpl implements Ingester<UpdateSummary, UpdatePackage> {
    private final FeatureFlagsRepository featureFlagsRepository;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final Provider<Reader> readerProvider;
    private final UpdateClient updateClient;

    public ArmadaIngesterImpl(UpdateClient updateClient, Provider<Reader> readerProvider, FeatureFlagsRepository featureFlagsRepository, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(updateClient, "updateClient");
        Intrinsics.checkNotNullParameter(readerProvider, "readerProvider");
        Intrinsics.checkNotNullParameter(featureFlagsRepository, "featureFlagsRepository");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.updateClient = updateClient;
        this.readerProvider = readerProvider;
        this.featureFlagsRepository = featureFlagsRepository;
        this.logger = logger;
    }

    @Override // com.stripe.core.updater.Ingester
    public Object ingest(UpdateSummary updateSummary, Continuation<? super UpdatePackage> continuation) {
        try {
            return downloadUpdates(updateSummary, this.updateClient, this.readerProvider);
        } catch (ReaderUpdateException.UpdateFailedServerError unused) {
            return downloadUpdates(updatePresignedUrls(updateSummary, this.updateClient), this.updateClient, this.readerProvider);
        }
    }

    private final UpdatePackage downloadUpdates(UpdateSummary summary, UpdateClient updateClient, Provider<Reader> readerProvider) throws ReaderUpdateException.NotConnectedToReader {
        RemoteUpdate remoteUpdate;
        RemoteUpdate remoteUpdate2;
        this.logger.d("downloadUpdates", new Pair[0]);
        Reader reader = readerProvider.get();
        Update.Firmware firmware = null;
        if (reader == null) {
            throw new ReaderUpdateException.NotConnectedToReader("Not connected to reader", null, 2, null);
        }
        boolean z = reader.getNeedsOtaUpdate() || this.featureFlagsRepository.getFeatureFlags().enableBbposDownloading || this.featureFlagsRepository.getFeatureFlags().enableBbposVersioning;
        String keyProfileName = summary.getKeyProfileName();
        Update.Keys keys = keyProfileName != null ? new Update.Keys(new RemoteUpdate.Ota(keyProfileName)) : null;
        ClientVersionSpecPb configSpec = summary.getConfigSpec();
        Update.Config config = (configSpec == null || (remoteUpdate2 = toRemoteUpdate(configSpec, z)) == null) ? null : new Update.Config(remoteUpdate2);
        ClientVersionSpecPb firmwareSpec = summary.getFirmwareSpec();
        if (firmwareSpec != null && (remoteUpdate = toRemoteUpdate(firmwareSpec, z)) != null) {
            firmware = new Update.Firmware(remoteUpdate);
        }
        return new UpdatePackage(keys, config, firmware, downloadSettings(summary, updateClient));
    }

    private final Update.Settings downloadSettings(UpdateSummary summary, UpdateClient updateClient) throws ReaderUpdateException {
        this.logger.d("downloadSettings", new Pair[0]);
        MobileClientConfig fullConfig = summary.getFullConfig();
        Bitmap bitmapDownloadImage = null;
        if (fullConfig == null) {
            return null;
        }
        if (summary.getSettingsVersion() == null && summary.getImageRef() == null) {
            return null;
        }
        ImageRef imageRef = summary.getImageRef();
        if (imageRef != null) {
            try {
                bitmapDownloadImage = updateClient.downloadImage(imageRef);
            } catch (Exception e) {
                Logger.w$default(this.logger, e, null, new Pair[0], 2, null);
            }
        }
        return new Update.Settings(fullConfig, bitmapDownloadImage, summary.getSettingsVersion());
    }

    private final UpdateSummary updatePresignedUrls(UpdateSummary updateSummary, UpdateClient updateClient) {
        VersionInfoPb versionInfoPb;
        VersionInfoPb versionInfoPb2;
        this.logger.w("Expired S3 link. Updating presigned URLs", new Pair[0]);
        ClientVersionSpecPb configSpec = updateSummary.getConfigSpec();
        String str = (configSpec == null || (versionInfoPb2 = configSpec.version_info) == null) ? null : versionInfoPb2.client_version;
        ClientVersionSpecPb firmwareSpec = updateSummary.getFirmwareSpec();
        BBPOSConfig bBPOSConfig = updateClient.downloadMobilePosConfig(str, (firmwareSpec == null || (versionInfoPb = firmwareSpec.version_info) == null) ? null : versionInfoPb.client_version).bbpos_config;
        UpdateSummary.Builder builder = updateSummary.getBuilder();
        if (updateSummary.getConfigSpec() != null) {
            builder.setConfigSpec(bBPOSConfig != null ? bBPOSConfig.config_spec : null);
        }
        if (updateSummary.getFirmwareSpec() != null) {
            builder.setFirmwareSpec(bBPOSConfig != null ? bBPOSConfig.firmware_spec : null);
        }
        return builder.build();
    }

    private final String getOtaVersion(ClientVersionSpecPb clientVersionSpecPb) {
        String str;
        VersionInfoPb versionInfoPb = clientVersionSpecPb.version_info;
        return (versionInfoPb == null || (str = versionInfoPb.client_version) == null) ? "" : str;
    }

    private final RemoteUpdate toRemoteUpdate(ClientVersionSpecPb clientVersionSpecPb, boolean z) {
        if (z) {
            return new RemoteUpdate.Ota(getOtaVersion(clientVersionSpecPb));
        }
        UpdateClient updateClient = this.updateClient;
        UrlPb urlPb = clientVersionSpecPb.presigned_url;
        if (urlPb == null) {
            urlPb = new UrlPb(null, null, null, null, 15, null);
        }
        return new RemoteUpdate.Local(updateClient.downloadConfig(urlPb), getOtaVersion(clientVersionSpecPb));
    }
}
