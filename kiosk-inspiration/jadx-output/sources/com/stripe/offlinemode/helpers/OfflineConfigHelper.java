package com.stripe.offlinemode.helpers;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.model.offline_mode.OfflineApiRequest;
import com.stripe.proto.model.offline_mode.OfflineLocation;
import com.stripe.proto.terminal.terminal.pub.message.config.BluetoothAutoReconnectConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.TippingConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.UsbAutoReconnectConfigPb;
import com.stripe.stripeterminal.external.models.Reader;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: OfflineConfigHelper.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u000f\u0010\u0004\u001a\u0004\u0018\u00010\u0003H&¢\u0006\u0002\u0010\u0005J\u000f\u0010\u0006\u001a\u0004\u0018\u00010\u0003H&¢\u0006\u0002\u0010\u0005J\u000f\u0010\u0007\u001a\u0004\u0018\u00010\u0003H&¢\u0006\u0002\u0010\u0005J\u0017\u0010\b\u001a\u0004\u0018\u00010\u00032\u0006\u0010\t\u001a\u00020\nH&¢\u0006\u0002\u0010\u000bJ&\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\n2\b\u0010\u000f\u001a\u0004\u0018\u00010\n2\b\u0010\u0010\u001a\u0004\u0018\u00010\nH&J\b\u0010\u0011\u001a\u00020\rH&J\u0018\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\nH&J\b\u0010\u0016\u001a\u00020\rH&J\u001a\u0010\u0017\u001a\u00020\r2\b\u0010\u0018\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0019\u001a\u00020\nH&J\b\u0010\u001a\u001a\u00020\rH&J\b\u0010\u001b\u001a\u00020\rH&J\b\u0010\u001c\u001a\u00020\rH&J\b\u0010\u001d\u001a\u00020\rH&J8\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0018\u001a\u00020\n2\b\u0010 \u001a\u0004\u0018\u00010!2\b\u0010\"\u001a\u0004\u0018\u00010#2\b\u0010$\u001a\u0004\u0018\u00010%2\b\u0010&\u001a\u0004\u0018\u00010'H&JP\u0010(\u001a\u00020\u001f2\u0006\u0010)\u001a\u00020*2>\u0010+\u001a:\u0012\u0015\u0012\u0013\u0018\u00010%¢\u0006\f\b-\u0012\b\b.\u0012\u0004\b\b(/\u0012\u0015\u0012\u0013\u0018\u00010'¢\u0006\f\b-\u0012\b\b.\u0012\u0004\b\b(0\u0012\u0004\u0012\u00020\u001f0,j\u0002`1H&J8\u00102\u001a\u00020\r2\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u00020\n2\u0006\u00106\u001a\u00020\n2\u0006\u00107\u001a\u00020\n2\u0006\u00108\u001a\u00020\n2\u0006\u00109\u001a\u00020\u0003H&J\u0010\u0010:\u001a\u00020\r2\u0006\u0010;\u001a\u00020\nH&J\b\u0010<\u001a\u00020\rH&J\b\u0010=\u001a\u00020\rH&J\u0012\u0010>\u001a\u0004\u0018\u00010\n2\u0006\u0010?\u001a\u00020\nH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006@À\u0006\u0001"}, d2 = {"Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;", "", "getForwardingJitterMs", "", "getHttpHealthCheckTimeoutMs", "()Ljava/lang/Long;", "getHttpHighTimeoutMs", "getHttpLowTimeoutMs", "getMaxTransactionLimit", BbposDeviceControllerImpl.CURRENCY_CODE_PARAM_NAME, "", "(Ljava/lang/String;)Ljava/lang/Long;", "isCardDenylistedForOffline", "", "firstSix", "lastFour", "cardholderName", "isDeferredAuthorizationCountry", "isKnownForwardingError", "type", "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;", "errorCode", "isMobileWalletOnSetupIntentsEnabled", "isOfflineEnabledForLocationAndReader", "locationId", "serialNumber", "isOfflineListenerSet", "isOfflineModeEnabled", "isSetupIntentsEnabled", "offlineListenerHasSetupIntentCallbacks", "onOfflineConfigUpdate", "", "offlineConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;", "tippingConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;", "bluetoothAutoReconnectConfigPb", "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;", "usbAutoReconnectConfigPb", "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;", "setActiveConfigs", "offlineLocation", "Lcom/stripe/proto/model/offline_mode/OfflineLocation;", "setReconnectParams", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "bluetoothConfig", "usbConfig", "Lcom/stripe/offlinemode/helpers/SetReconnectParams;", "shouldAllowOfflineConnection", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "firmware", "config", "keyProfileVersion", "keyProfileId", "currentTimeMs", "shouldAllowOfflineTransaction", "tvrStringHex", "shouldAllowPairingUnseenReader", "supportsSca", "switchInterfaceAuthorizationResponseCodeForAid", "aid", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface OfflineConfigHelper {
    long getForwardingJitterMs();

    Long getHttpHealthCheckTimeoutMs();

    Long getHttpHighTimeoutMs();

    Long getHttpLowTimeoutMs();

    Long getMaxTransactionLimit(String currencyCode);

    boolean isCardDenylistedForOffline(String firstSix, String lastFour, String cardholderName);

    boolean isDeferredAuthorizationCountry();

    boolean isKnownForwardingError(OfflineApiRequest.ApiRequestType type, String errorCode);

    boolean isMobileWalletOnSetupIntentsEnabled();

    boolean isOfflineEnabledForLocationAndReader(String locationId, String serialNumber);

    boolean isOfflineListenerSet();

    boolean isOfflineModeEnabled();

    boolean isSetupIntentsEnabled();

    boolean offlineListenerHasSetupIntentCallbacks();

    void onOfflineConfigUpdate(String locationId, OfflineConfigPb offlineConfig, TippingConfigPb tippingConfig, BluetoothAutoReconnectConfigPb bluetoothAutoReconnectConfigPb, UsbAutoReconnectConfigPb usbAutoReconnectConfigPb);

    void setActiveConfigs(OfflineLocation offlineLocation, Function2<? super BluetoothAutoReconnectConfigPb, ? super UsbAutoReconnectConfigPb, Unit> setReconnectParams);

    boolean shouldAllowOfflineConnection(Reader reader, String firmware, String config, String keyProfileVersion, String keyProfileId, long currentTimeMs);

    boolean shouldAllowOfflineTransaction(String tvrStringHex);

    boolean shouldAllowPairingUnseenReader();

    boolean supportsSca();

    String switchInterfaceAuthorizationResponseCodeForAid(String aid);
}
