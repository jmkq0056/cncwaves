package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.core.hardware.reactive.emv.ClientConfigData;
import com.stripe.core.readerupdate.UpdateClient;
import com.stripe.core.transaction.TransactionRepository;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.terminal.api.ActivateReaderResponse;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.stripeterminal.external.models.DeviceType;
import com.stripe.stripeterminal.external.models.ExpandableLocation;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.ReaderSoftwareUpdate;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.common.makers.ReaderMaker;
import com.stripe.stripeterminal.internal.models.PaymentMethodData;
import com.stripe.time.Clock;
import com.stripe.transaction.PaymentMethodCollectionType;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: SimulatedIpAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Singleton
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 $2\u00020\u0001:\u0001$B?\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010J\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0010\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0012H\u0016J\u0018\u0010!\u001a\u00020\u001f2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020#H\u0016R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;", "Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;", "clock", "Lcom/stripe/time/Clock;", "transactionRepository", "Lcom/stripe/core/transaction/TransactionRepository;", "simulatorConfigurationRepository", "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;", "statusManager", "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "updateClient", "Lcom/stripe/core/readerupdate/UpdateClient;", "offlineConfigUpdateListener", "Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;", "(Lcom/stripe/time/Clock;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lcom/stripe/core/readerupdate/UpdateClient;Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;)V", "checkForUpdate", "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "failSilently", "", "collectPaymentMethod", "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", "paymentMethodCollectionType", "Lcom/stripe/transaction/PaymentMethodCollectionType;", "getSimulatedReader", "deviceType", "Lcom/stripe/stripeterminal/external/models/DeviceType;", "installUpdate", "", "update", "onReaderActivated", "response", "Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;", "Companion", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SimulatedIpAdapter extends BaseSimulatedAdapter {
    public static final String SIMULATED_SMART_READER_CONFIG = "192.168.2.12";
    public static final String SIMULATED_SMART_READER_FIRMWARE = "192.168.2.12";
    public static final String SIMULATED_SMART_READER_IP_ADDRESS = "192.168.2.12";
    public static final String SIMULATED_SMART_READER_KEY_PROFILE = "192.168.2.12";
    private final UpdateClient.OfflineConfigUpdateListener offlineConfigUpdateListener;
    private final UpdateClient updateClient;

    /* JADX INFO: compiled from: SimulatedIpAdapter.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DeviceType.values().length];
            try {
                iArr[DeviceType.VERIFONE_P400.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DeviceType.WISEPOS_E.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public ReaderSoftwareUpdate checkForUpdate(Reader reader, boolean failSilently) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        return null;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public SimulatedIpAdapter(Clock clock, TransactionRepository transactionRepository, SimulatorConfigurationRepository simulatorConfigurationRepository, TerminalStatusManager statusManager, LoggerFactory loggerFactory, UpdateClient updateClient, UpdateClient.OfflineConfigUpdateListener offlineConfigUpdateListener) {
        super(clock, transactionRepository, simulatorConfigurationRepository, statusManager, new Function0<Boolean>() { // from class: com.stripe.stripeterminal.internal.common.adapter.SimulatedIpAdapter.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                return false;
            }
        }, loggerFactory.create(Reflection.getOrCreateKotlinClass(SimulatedIpAdapter.class)));
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(transactionRepository, "transactionRepository");
        Intrinsics.checkNotNullParameter(simulatorConfigurationRepository, "simulatorConfigurationRepository");
        Intrinsics.checkNotNullParameter(statusManager, "statusManager");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        Intrinsics.checkNotNullParameter(updateClient, "updateClient");
        Intrinsics.checkNotNullParameter(offlineConfigUpdateListener, "offlineConfigUpdateListener");
        this.updateClient = updateClient;
        this.offlineConfigUpdateListener = offlineConfigUpdateListener;
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void onReaderActivated(Reader reader, ActivateReaderResponse response) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(response, "response");
        super.onReaderActivated(reader, response);
        try {
            ClientConfigData clientConfigData = ClientConfigData.INSTANCE.parseClientConfigData(BaseSimulatedAdapter.CHIPPER_OR_M2_CONFIG_HASH);
            UpdateClient.OfflineConfigUpdateListener offlineConfigUpdateListener = this.offlineConfigUpdateListener;
            String serialNumber = reader.getSerialNumber();
            if (serialNumber != null) {
                offlineConfigUpdateListener.onOfflineConfigUpdateForMobileReader(serialNumber, updateOfflineConfigForSimulatedReader$adapter_release(this.updateClient.downloadMobilePosConfig(clientConfigData).offline_config, reader), null, null, null);
                return;
            }
            throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Simulated reader serial should never be null.", null, null, 12, null);
        } catch (Exception unused) {
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.adapter.BaseSimulatedAdapter
    public Reader getSimulatedReader(DeviceType deviceType) throws TerminalException {
        List listListOf;
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        int i = WhenMappings.$EnumSwitchMapping$0[deviceType.ordinal()];
        if (i == 1) {
            listListOf = CollectionsKt.listOf((Object[]) new String[]{"123-456-789", "created-lamb-elephant", "3.0.1.16"});
        } else if (i == 2) {
            listListOf = CollectionsKt.listOf((Object[]) new String[]{deviceType.getSerialPrefixes().get(0) + BaseSimulatedAdapter.SERIAL_NUMBER_SUFFIX, "My " + deviceType, "2.12.0.8"});
        } else {
            throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Attempting to create simulated reader for unexpected device type " + deviceType, null, null, 12, null);
        }
        return new Reader(deviceType, new ExpandableLocation.Expanded(ReaderMaker.INSTANCE.simulatedLocation()), null, "tmr_DsNvhA6mLpMH48", true, Reader.NetworkStatus.ONLINE, (String) listListOf.get(0), (String) listListOf.get(1), (String) listListOf.get(2), "", "192.168.2.12", false, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, -4092, 15, null);
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public void installUpdate(ReaderSoftwareUpdate update) {
        Intrinsics.checkNotNullParameter(update, "update");
        throw new UnsupportedOperationException("Not implemented");
    }

    @Override // com.stripe.stripeterminal.internal.common.Adapter
    public PaymentMethodData collectPaymentMethod(PaymentMethodCollectionType paymentMethodCollectionType) throws TerminalException {
        Intrinsics.checkNotNullParameter(paymentMethodCollectionType, "paymentMethodCollectionType");
        return readCard(false, paymentMethodCollectionType);
    }
}
