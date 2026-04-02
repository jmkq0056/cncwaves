package com.stripe.core.readerupdate;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.stripe.core.hardware.reactive.emv.ClientConfigData;
import com.stripe.core.hardware.updates.ReaderUpdateException;
import com.stripe.core.transaction.SettingsRepository;
import com.stripe.device.DeviceInfoRepository;
import com.stripe.device.PlatformDeviceInfo;
import com.stripe.jvmcore.client.OkHttpClientProvider;
import com.stripe.jvmcore.crpcclient.CrpcResponse;
import com.stripe.jvmcore.featureflag.FeatureFlagsRepository;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.proto.api.armada.ArmadaApi;
import com.stripe.proto.api.armada.DownloadMobilePosConfigRequest;
import com.stripe.proto.api.armada.DownloadMobilePosConfigResponse;
import com.stripe.proto.model.common.ApplicationModel;
import com.stripe.proto.model.common.DeviceInfo;
import com.stripe.proto.model.common.HardwareModel;
import com.stripe.proto.model.common.SimulatedHardware;
import com.stripe.proto.model.common.UrlPb;
import com.stripe.proto.model.config.BBPOSConfig;
import com.stripe.proto.model.config.MagstripeConfig;
import com.stripe.proto.model.config.MobileClientConfig;
import com.stripe.proto.model.config.ReaderFeatureFlags;
import com.stripe.proto.terminal.terminal.pub.message.common.ImageRef;
import com.stripe.proto.terminal.terminal.pub.message.config.BluetoothAutoReconnectConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.TippingConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.UsbAutoReconnectConfigPb;
import com.sun.jna.platform.win32.WinError;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.TuplesKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.ByteString;
import org.kamranzafar.jtar.TarEntry;
import org.kamranzafar.jtar.TarInputStream;

/* JADX INFO: compiled from: UpdateClient.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 62\u00020\u0001:\u000267BU\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0016\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011j\u0002`\u0014¢\u0006\u0002\u0010\u0015J\u000e\u0010 \u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\"J\u000e\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&J\u0010\u0010'\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010*J\u001a\u0010'\u001a\u00020(2\b\u0010+\u001a\u0004\u0018\u00010\u001d2\b\u0010,\u001a\u0004\u0018\u00010\u001dJ\u0015\u0010-\u001a\u00020$2\u0006\u0010.\u001a\u00020/H\u0001¢\u0006\u0002\b0J \u00101\u001a\u00020(2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010*2\n\b\u0002\u00102\u001a\u0004\u0018\u000103H\u0002J\u0010\u00104\u001a\u00020(2\u0006\u00105\u001a\u00020(H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011j\u0002`\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0016\u001a\u00020\u00178BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u0018\u0010\u0019R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u001c\u001a\u00020\u001d*\u00020\t8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001f¨\u00068"}, d2 = {"Lcom/stripe/core/readerupdate/UpdateClient;", "", "armadaApi", "Lcom/stripe/proto/api/armada/ArmadaApi;", "okHttpClientProvider", "Lcom/stripe/jvmcore/client/OkHttpClientProvider;", "deviceInfoRepository", "Lcom/stripe/device/DeviceInfoRepository;", "embeddedSoftwareVersionProvider", "Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;", "featureFlagRepository", "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;", "settingsRepository", "Lcom/stripe/core/transaction/SettingsRepository;", "offlineConfigUpdateListener", "Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/proto/api/armada/ArmadaApi;Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/device/DeviceInfoRepository;Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "okHttpClient", "Lokhttp3/OkHttpClient;", "getOkHttpClient", "()Lokhttp3/OkHttpClient;", "okHttpClient$delegate", "Lcom/stripe/jvmcore/client/OkHttpClientProvider;", RemoteConfigConstants.RequestFieldKey.APP_VERSION, "", "getAppVersion", "(Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;)Ljava/lang/String;", "downloadConfig", ImagesContract.URL, "Lcom/stripe/proto/model/common/UrlPb;", "downloadImage", "Landroid/graphics/Bitmap;", "imageRef", "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;", "downloadMobilePosConfig", "Lcom/stripe/proto/model/config/MobileClientConfig;", "data", "Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;", "configVersion", "firmwareVersion", "processResponse", "response", "Lokhttp3/Response;", "processResponse$readerupdate_release", "retrieveMobilePosConfig", "bbposConfig", "Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig;", "validateConfig", "config", "Companion", "OfflineConfigUpdateListener", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UpdateClient {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(UpdateClient.class, "okHttpClient", "getOkHttpClient()Lokhttp3/OkHttpClient;", 0))};

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String FIRMWARE_CONFIG_KEY = "firmware-config-key";
    private static final String TAR = "application/x-tar";
    private final ArmadaApi armadaApi;
    private final DeviceInfoRepository deviceInfoRepository;
    private final EmbeddedSoftwareVersionProvider embeddedSoftwareVersionProvider;
    private final FeatureFlagsRepository featureFlagRepository;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final OfflineConfigUpdateListener offlineConfigUpdateListener;

    /* JADX INFO: renamed from: okHttpClient$delegate, reason: from kotlin metadata */
    private final OkHttpClientProvider okHttpClient;
    private final SettingsRepository settingsRepository;

    /* JADX INFO: compiled from: UpdateClient.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J8\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000eÀ\u0006\u0001"}, d2 = {"Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;", "", "onOfflineConfigUpdateForMobileReader", "", "serialNumber", "", "offlineConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;", "tippingConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;", "bluetoothAutoReconnectConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;", "usbAutoReconnectConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface OfflineConfigUpdateListener {
        void onOfflineConfigUpdateForMobileReader(String serialNumber, OfflineConfigPb offlineConfig, TippingConfigPb tippingConfig, BluetoothAutoReconnectConfigPb bluetoothAutoReconnectConfig, UsbAutoReconnectConfigPb usbAutoReconnectConfig);
    }

    public UpdateClient(ArmadaApi armadaApi, OkHttpClientProvider okHttpClientProvider, DeviceInfoRepository deviceInfoRepository, EmbeddedSoftwareVersionProvider embeddedSoftwareVersionProvider, FeatureFlagsRepository featureFlagRepository, SettingsRepository settingsRepository, OfflineConfigUpdateListener offlineConfigUpdateListener, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(armadaApi, "armadaApi");
        Intrinsics.checkNotNullParameter(okHttpClientProvider, "okHttpClientProvider");
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        Intrinsics.checkNotNullParameter(embeddedSoftwareVersionProvider, "embeddedSoftwareVersionProvider");
        Intrinsics.checkNotNullParameter(featureFlagRepository, "featureFlagRepository");
        Intrinsics.checkNotNullParameter(settingsRepository, "settingsRepository");
        Intrinsics.checkNotNullParameter(offlineConfigUpdateListener, "offlineConfigUpdateListener");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.armadaApi = armadaApi;
        this.deviceInfoRepository = deviceInfoRepository;
        this.embeddedSoftwareVersionProvider = embeddedSoftwareVersionProvider;
        this.featureFlagRepository = featureFlagRepository;
        this.settingsRepository = settingsRepository;
        this.offlineConfigUpdateListener = offlineConfigUpdateListener;
        this.logger = logger;
        this.okHttpClient = okHttpClientProvider;
    }

    private final OkHttpClient getOkHttpClient() {
        return this.okHttpClient.getValue(this, $$delegatedProperties[0]);
    }

    public final MobileClientConfig downloadMobilePosConfig(ClientConfigData data) throws ReaderUpdateException {
        return retrieveMobilePosConfig$default(this, data, null, 2, null);
    }

    public final MobileClientConfig downloadMobilePosConfig(String configVersion, String firmwareVersion) throws ReaderUpdateException {
        if (configVersion == null && firmwareVersion == null) {
            throw new ReaderUpdateException.UpdateFailedServerError("Failed to update, no version info", null, 2, null);
        }
        return retrieveMobilePosConfig$default(this, null, new DownloadMobilePosConfigRequest.BBPOSConfig(firmwareVersion == null ? "" : firmwareVersion, configVersion == null ? "" : configVersion, null, 4, null), 1, null);
    }

    public final Bitmap downloadImage(ImageRef imageRef) throws ReaderUpdateException {
        Intrinsics.checkNotNullParameter(imageRef, "imageRef");
        return processResponse$readerupdate_release(FirebasePerfOkHttpClient.execute(getOkHttpClient().newCall(new Request.Builder().get().url(imageRef.image_url).build())));
    }

    public final Bitmap processResponse$readerupdate_release(Response response) throws ReaderUpdateException {
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.isSuccessful()) {
            try {
                ResponseBody responseBodyBody = response.body();
                if (responseBodyBody != null) {
                    InputStream inputStreamByteStream = responseBodyBody;
                    try {
                        inputStreamByteStream = inputStreamByteStream.byteStream();
                        try {
                            Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamByteStream);
                            CloseableKt.closeFinally(inputStreamByteStream, null);
                            Intrinsics.checkNotNullExpressionValue(bitmapDecodeStream, "use(...)");
                            CloseableKt.closeFinally(inputStreamByteStream, null);
                            return bitmapDecodeStream;
                        } finally {
                        }
                    } finally {
                    }
                }
            } catch (Exception unused) {
                throw new ReaderUpdateException.UpdateFailed("Failure to decode image", null, 2, null);
            }
        }
        throw new ReaderUpdateException.UpdateFailedServerError("Failure downloading image. Code: " + response.code() + ", Message: " + response.message(), null, 2, null);
    }

    public final String downloadConfig(UrlPb url) throws ReaderUpdateException, IOException {
        String strString;
        Intrinsics.checkNotNullParameter(url, "url");
        Request.Builder builder = new Request.Builder().get();
        Companion companion = INSTANCE;
        Response responseExecute = FirebasePerfOkHttpClient.execute(getOkHttpClient().newCall(builder.url(companion.toUrl(url)).build()));
        if (!responseExecute.isSuccessful()) {
            throw new ReaderUpdateException.UpdateFailedServerError("Failure downloading config. Code: " + responseExecute.code() + ", Message: " + responseExecute.message(), null, 2, null);
        }
        ResponseBody responseBodyBody = responseExecute.body();
        if (responseBodyBody != null) {
            if (Intrinsics.areEqual(String.valueOf(responseBodyBody.get$contentType()), TAR)) {
                strString = companion.extractFirstHexFileFromTar(responseBodyBody.byteStream());
            } else {
                strString = responseBodyBody.string();
            }
            if (strString != null) {
                return strString;
            }
        }
        throw new ReaderUpdateException.UpdateFailed("Unexpected failure downloading config", null, 2, null);
    }

    static /* synthetic */ MobileClientConfig retrieveMobilePosConfig$default(UpdateClient updateClient, ClientConfigData clientConfigData, DownloadMobilePosConfigRequest.BBPOSConfig bBPOSConfig, int i, Object obj) throws ReaderUpdateException {
        if ((i & 1) != 0) {
            clientConfigData = null;
        }
        if ((i & 2) != 0) {
            bBPOSConfig = null;
        }
        return updateClient.retrieveMobilePosConfig(clientConfigData, bBPOSConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private final MobileClientConfig retrieveMobilePosConfig(ClientConfigData data, DownloadMobilePosConfigRequest.BBPOSConfig bbposConfig) throws ReaderUpdateException {
        TippingConfigPb tippingConfigPb;
        BBPOSConfig bBPOSConfig;
        PlatformDeviceInfo platformDeviceInfo = this.deviceInfoRepository.getPlatformDeviceInfo();
        HardwareModel hardwareModel = platformDeviceInfo.getHardwareModel();
        int i = 2;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        Object[] objArr4 = 0;
        Object[] objArr5 = 0;
        if (hardwareModel.unknown_hardware != null) {
            throw new ReaderUpdateException.UnexpectedError("No connected reader", null, 2, null);
        }
        DeviceInfo.DeviceClass deviceClass = DeviceInfo.DeviceClass.READER;
        ApplicationModel applicationModel = new ApplicationModel(FIRMWARE_CONFIG_KEY, getAppVersion(this.embeddedSoftwareVersionProvider), null, 4, null);
        SimulatedHardware simulatedHardware = hardwareModel.simulated_hardware;
        HardwareModel hardwareModel2 = new HardwareModel(null, null, null, !platformDeviceInfo.isSimulated() ? hardwareModel.bbpos_hardware : null, (simulatedHardware == null || !platformDeviceInfo.isSimulated()) ? null : simulatedHardware, null, null, null, null, WinError.ERROR_INVALID_ADDRESS, null);
        String serialNumber = platformDeviceInfo.getSerialNumber();
        String pinKeyProfileId = this.embeddedSoftwareVersionProvider.getPinKeyProfileId();
        String str = pinKeyProfileId == null ? "" : pinKeyProfileId;
        String configVersion = this.embeddedSoftwareVersionProvider.getConfigVersion();
        String str2 = configVersion == null ? "" : configVersion;
        String firmwareVersion = this.embeddedSoftwareVersionProvider.getFirmwareVersion();
        DeviceInfo deviceInfo = new DeviceInfo(deviceClass, serialNumber, hardwareModel2, applicationModel, null, null, null, null, null, firmwareVersion == null ? "" : firmwareVersion, str2, str, null, null, null, null, 61936, null);
        String configHash = data != null ? data.getConfigHash() : null;
        CrpcResponse<DownloadMobilePosConfigResponse> crpcResponseDownloadMobilePosConfig = this.armadaApi.downloadMobilePosConfig(new DownloadMobilePosConfigRequest(deviceInfo, configHash == null ? "" : configHash, bbposConfig, null, 8, null));
        boolean z = false;
        if (crpcResponseDownloadMobilePosConfig instanceof CrpcResponse.Success) {
            CrpcResponse.Success success = (CrpcResponse.Success) crpcResponseDownloadMobilePosConfig;
            ReaderFeatureFlags readerFeatureFlags = ((DownloadMobilePosConfigResponse) success.getResponse()).reader_feature_flags;
            if (readerFeatureFlags == null) {
                readerFeatureFlags = new ReaderFeatureFlags(false, false, false, false, 0L, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, 0L, false, false, false, false, false, false, 0L, 0L, false, 0L, false, false, false, false, false, false, false, 0L, false, false, 0L, false, 0L, false, false, 0L, 0L, false, null, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, 0L, false, false, false, false, false, 0L, 0L, false, null, -1, -1, -1, -1, 63, null);
            }
            this.featureFlagRepository.putFeatureFlags(readerFeatureFlags);
            MobileClientConfig mobileClientConfig = ((DownloadMobilePosConfigResponse) success.getResponse()).config;
            if (mobileClientConfig == null || (tippingConfigPb = mobileClientConfig.tipping_config) == null) {
                tippingConfigPb = new TippingConfigPb(objArr3 == true ? 1 : 0, objArr2 == true ? 1 : 0, 3, objArr == true ? 1 : 0);
            }
            TippingConfigPb tippingConfigPb2 = tippingConfigPb;
            SettingsRepository settingsRepository = this.settingsRepository;
            MobileClientConfig mobileClientConfig2 = ((DownloadMobilePosConfigResponse) success.getResponse()).config;
            settingsRepository.setKeyProfileName((mobileClientConfig2 == null || (bBPOSConfig = mobileClientConfig2.bbpos_config) == null) ? null : bBPOSConfig.key_profile_name);
            this.settingsRepository.setTippingConfig(tippingConfigPb2);
            this.settingsRepository.setMagstripeConfig(new MagstripeConfig(z, objArr5 == true ? 1 : 0, i, objArr4 == true ? 1 : 0));
            if (!platformDeviceInfo.isSimulated()) {
                OfflineConfigUpdateListener offlineConfigUpdateListener = this.offlineConfigUpdateListener;
                String serialNumber2 = platformDeviceInfo.getSerialNumber();
                MobileClientConfig mobileClientConfig3 = ((DownloadMobilePosConfigResponse) success.getResponse()).config;
                OfflineConfigPb offlineConfigPb = mobileClientConfig3 != null ? mobileClientConfig3.offline_config : null;
                MobileClientConfig mobileClientConfig4 = ((DownloadMobilePosConfigResponse) success.getResponse()).config;
                BluetoothAutoReconnectConfigPb bluetoothAutoReconnectConfigPb = mobileClientConfig4 != null ? mobileClientConfig4.bluetooth_auto_reconnect_config : null;
                MobileClientConfig mobileClientConfig5 = ((DownloadMobilePosConfigResponse) success.getResponse()).config;
                offlineConfigUpdateListener.onOfflineConfigUpdateForMobileReader(serialNumber2, offlineConfigPb, tippingConfigPb2, bluetoothAutoReconnectConfigPb, mobileClientConfig5 != null ? mobileClientConfig5.usb_auto_reconnect_config : null);
            }
            MobileClientConfig mobileClientConfig6 = ((DownloadMobilePosConfigResponse) success.getResponse()).config;
            if (mobileClientConfig6 == null) {
                mobileClientConfig6 = new MobileClientConfig(null, null, null, null, null, null, null, null, null, null, null, 2047, null);
            }
            return validateConfig(mobileClientConfig6);
        }
        if (crpcResponseDownloadMobilePosConfig instanceof CrpcResponse.RpcError) {
            CrpcResponse.RpcError rpcError = (CrpcResponse.RpcError) crpcResponseDownloadMobilePosConfig;
            this.logger.w("DownloadMobilePosConfig failed", TuplesKt.to("code", rpcError.getCode().name()), TuplesKt.to("message", rpcError.getMessage()));
            throw new ReaderUpdateException.UpdateFailedServerError("DownloadMobilePosConfig failed", null, 2, null);
        }
        if (!(crpcResponseDownloadMobilePosConfig instanceof CrpcResponse.ApplicationError)) {
            throw new NoWhenBranchMatchedException();
        }
        CrpcResponse.ApplicationError applicationError = (CrpcResponse.ApplicationError) crpcResponseDownloadMobilePosConfig;
        this.logger.w("DownloadMobilePosConfig failed", TuplesKt.to("code", applicationError.getCode().name()), TuplesKt.to("message", applicationError.getMessage()));
        throw new ReaderUpdateException.UpdateFailedServerError("DownloadMobilePosConfig failed", null, 2, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.stripe.proto.model.config.MobileClientConfig validateConfig(com.stripe.proto.model.config.MobileClientConfig r15) {
        /*
            r14 = this;
            com.stripe.proto.model.config.BBPOSConfig r0 = r15.bbpos_config
            r1 = 0
            if (r0 == 0) goto L70
            com.stripe.proto.model.common.ClientVersionSpecPb r2 = r0.config_spec
            if (r2 == 0) goto L21
            com.stripe.proto.model.common.ClientVersionSpecPb r2 = r0.config_spec
            com.stripe.proto.model.common.ClientVersionSpecPb r3 = new com.stripe.proto.model.common.ClientVersionSpecPb
            r12 = 255(0xff, float:3.57E-43)
            r13 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            r10 = 0
            r11 = 0
            r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r3)
            if (r2 == 0) goto L2a
        L21:
            com.stripe.jvmcore.logging.terminal.log.SimpleLogger<com.stripe.loggingmodels.ApplicationTrace, com.stripe.loggingmodels.ApplicationTraceResult> r2 = r14.logger
            java.lang.String r3 = "MobileClientConfig missing configSpec"
            kotlin.Pair[] r4 = new kotlin.Pair[r1]
            r2.w(r3, r4)
        L2a:
            com.stripe.proto.model.common.ClientVersionSpecPb r2 = r0.firmware_spec
            if (r2 == 0) goto L46
            com.stripe.proto.model.common.ClientVersionSpecPb r2 = r0.firmware_spec
            com.stripe.proto.model.common.ClientVersionSpecPb r3 = new com.stripe.proto.model.common.ClientVersionSpecPb
            r12 = 255(0xff, float:3.57E-43)
            r13 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            r10 = 0
            r11 = 0
            r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r3)
            if (r2 == 0) goto L4f
        L46:
            com.stripe.jvmcore.logging.terminal.log.SimpleLogger<com.stripe.loggingmodels.ApplicationTrace, com.stripe.loggingmodels.ApplicationTraceResult> r2 = r14.logger
            java.lang.String r3 = "MobileClientConfig missing firmwareSpec"
            kotlin.Pair[] r4 = new kotlin.Pair[r1]
            r2.w(r3, r4)
        L4f:
            java.lang.String r2 = r0.key_profile_pek0
            java.lang.CharSequence r2 = (java.lang.CharSequence) r2
            int r2 = r2.length()
            if (r2 != 0) goto L5a
            goto L64
        L5a:
            java.lang.String r0 = r0.key_profile_name
            java.lang.CharSequence r0 = (java.lang.CharSequence) r0
            int r0 = r0.length()
            if (r0 != 0) goto L6d
        L64:
            com.stripe.jvmcore.logging.terminal.log.SimpleLogger<com.stripe.loggingmodels.ApplicationTrace, com.stripe.loggingmodels.ApplicationTraceResult> r0 = r14.logger
            java.lang.String r2 = "MobileClientConfig missing valid key name or pek0"
            kotlin.Pair[] r3 = new kotlin.Pair[r1]
            r0.w(r2, r3)
        L6d:
            kotlin.Unit r0 = kotlin.Unit.INSTANCE
            goto L71
        L70:
            r0 = 0
        L71:
            if (r0 != 0) goto L7c
            com.stripe.jvmcore.logging.terminal.log.SimpleLogger<com.stripe.loggingmodels.ApplicationTrace, com.stripe.loggingmodels.ApplicationTraceResult> r0 = r14.logger
            java.lang.String r2 = "MobileClientConfig missing bbposConfig"
            kotlin.Pair[] r3 = new kotlin.Pair[r1]
            r0.w(r2, r3)
        L7c:
            java.lang.String r0 = r15.client_config_version
            java.lang.CharSequence r0 = (java.lang.CharSequence) r0
            int r0 = r0.length()
            if (r0 != 0) goto L8f
            com.stripe.jvmcore.logging.terminal.log.SimpleLogger<com.stripe.loggingmodels.ApplicationTrace, com.stripe.loggingmodels.ApplicationTraceResult> r0 = r14.logger
            java.lang.String r2 = "MobileClientConfig missing clientConfigVersion"
            kotlin.Pair[] r1 = new kotlin.Pair[r1]
            r0.w(r2, r1)
        L8f:
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.readerupdate.UpdateClient.validateConfig(com.stripe.proto.model.config.MobileClientConfig):com.stripe.proto.model.config.MobileClientConfig");
    }

    private final String getAppVersion(EmbeddedSoftwareVersionProvider embeddedSoftwareVersionProvider) {
        String configVersion;
        String pinKeysetId;
        String firmwareVersion = embeddedSoftwareVersionProvider.getFirmwareVersion();
        if (firmwareVersion == null || firmwareVersion.length() == 0 || (configVersion = embeddedSoftwareVersionProvider.getConfigVersion()) == null || configVersion.length() == 0 || (pinKeysetId = embeddedSoftwareVersionProvider.getPinKeysetId()) == null || pinKeysetId.length() == 0) {
            return "";
        }
        return embeddedSoftwareVersionProvider.getFirmwareVersion() + '-' + embeddedSoftwareVersionProvider.getConfigVersion() + '-' + embeddedSoftwareVersionProvider.getPinKeysetId();
    }

    /* JADX INFO: compiled from: UpdateClient.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\bH\u0007J\n\u0010\t\u001a\u00020\u0004*\u00020\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/core/readerupdate/UpdateClient$Companion;", "", "()V", "FIRMWARE_CONFIG_KEY", "", "TAR", "extractFirstHexFileFromTar", "inputStream", "Ljava/io/InputStream;", "toUrl", "Lcom/stripe/proto/model/common/UrlPb;", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String toUrl(UrlPb urlPb) {
            Intrinsics.checkNotNullParameter(urlPb, "<this>");
            return urlPb.protocol + "://" + urlPb.host + urlPb.path;
        }

        public final String extractFirstHexFileFromTar(InputStream inputStream) {
            Object next;
            ByteString byteString;
            Intrinsics.checkNotNullParameter(inputStream, "inputStream");
            TarInputStream tarInputStream = new TarInputStream(inputStream);
            try {
                final TarInputStream tarInputStream2 = tarInputStream;
                Iterator it = SequencesKt.generateSequence(new Function0<TarEntry>() { // from class: com.stripe.core.readerupdate.UpdateClient$Companion$extractFirstHexFileFromTar$1$1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final TarEntry invoke() {
                        return tarInputStream2.getNextEntry();
                    }
                }).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    String name = ((TarEntry) next).getName();
                    Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                    if (StringsKt.endsWith$default(name, ".hex", false, 2, (Object) null)) {
                        break;
                    }
                }
                TarEntry tarEntry = (TarEntry) next;
                String strUtf8 = (tarEntry == null || (byteString = ByteString.INSTANCE.read(tarInputStream2, (int) tarEntry.getSize())) == null) ? null : byteString.utf8();
                CloseableKt.closeFinally(tarInputStream, null);
                return strUtf8;
            } finally {
            }
        }
    }
}
