package com.stripe.offlinemode.storage;

import com.stripe.device.OfflineLocationConfigs;
import com.stripe.offlinemode.models.OfflineForwardingRequest;
import com.stripe.offlinemode.models.OfflineForwardingResponse;
import com.stripe.offlinemode.models.OfflineRequestsToSync;
import com.stripe.proto.model.merchant.ApiLocationPb;
import com.stripe.proto.model.offline_mode.OfflineApiRequest;
import com.stripe.proto.model.offline_mode.OfflineConnection;
import com.stripe.proto.model.offline_mode.OfflineLocation;
import com.stripe.proto.model.offline_mode.OfflineReader;
import com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Triple;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: UnsupportedOfflineRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000¸\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0007¢\u0006\u0002\u0010\u0002J\u000e\u0010&\u001a\b\u0012\u0004\u0012\u00020\u001c0\u000bH\u0016J\b\u0010'\u001a\u00020(H\u0016J\u0016\u0010)\u001a\u00020(2\u0006\u0010*\u001a\u00020+H\u0096@¢\u0006\u0002\u0010,J\u0016\u0010-\u001a\u00020(2\u0006\u0010.\u001a\u00020\fH\u0096@¢\u0006\u0002\u0010/J\u0016\u00100\u001a\b\u0012\u0004\u0012\u000202012\u0006\u0010.\u001a\u00020\fH\u0016J\u001a\u00103\u001a\u0002H4\"\n\b\u0000\u00104\u0018\u0001*\u000205H\u0082\b¢\u0006\u0002\u00106J\u001c\u00107\u001a\b\u0012\u0004\u0012\u000209082\u0006\u0010.\u001a\u00020\fH\u0096@¢\u0006\u0002\u0010/J\b\u0010:\u001a\u00020#H\u0016J\u0010\u0010;\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000bH\u0016J\u0010\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020\fH\u0016J\u0010\u0010?\u001a\u00020@2\u0006\u0010A\u001a\u00020\u0015H\u0016J,\u0010B\u001a\u0016\u0012\u0004\u0012\u00020D\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020=\u0018\u00010C2\u0006\u0010E\u001a\u0002022\u0006\u0010.\u001a\u00020\fH\u0016J\u0012\u0010F\u001a\u0004\u0018\u00010=2\u0006\u0010G\u001a\u00020\fH\u0016J\u0012\u0010H\u001a\u0004\u0018\u00010=2\u0006\u0010I\u001a\u00020@H\u0016J*\u0010J\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020L0K2\u0006\u0010.\u001a\u00020\f2\f\u0010M\u001a\b\u0012\u0004\u0012\u00020\f01H\u0016J\"\u0010N\u001a\u00020\u001c2\b\u0010O\u001a\u0004\u0018\u00010\f2\u0006\u0010P\u001a\u00020\f2\u0006\u0010.\u001a\u00020\fH\u0016J\u001c\u0010Q\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020@01082\u0006\u0010.\u001a\u00020\fH\u0016J\u001c\u0010R\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020=01082\u0006\u0010.\u001a\u00020\fH\u0016J\u0016\u0010S\u001a\b\u0012\u0004\u0012\u00020T082\u0006\u0010.\u001a\u00020\fH\u0016J\u001c\u0010U\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020D01082\u0006\u0010.\u001a\u00020\fH\u0016J\u0010\u0010V\u001a\u00020(2\u0006\u0010.\u001a\u00020\fH\u0016J\u0010\u0010W\u001a\u00020(2\u0006\u0010X\u001a\u00020+H\u0016J \u0010Y\u001a\u00020\u00152\u0006\u0010Z\u001a\u00020D2\u0006\u0010I\u001a\u00020@2\u0006\u0010[\u001a\u00020=H\u0016J\u0016\u0010\\\u001a\u00020]2\u0006\u0010^\u001a\u00020+H\u0096@¢\u0006\u0002\u0010,J\u001e\u0010_\u001a\u00020(2\u0006\u0010`\u001a\u00020a2\u0006\u0010b\u001a\u00020+H\u0096@¢\u0006\u0002\u0010cJ\u001e\u0010d\u001a\u00020(2\u0006\u0010G\u001a\u00020\f2\u0006\u0010e\u001a\u00020fH\u0096@¢\u0006\u0002\u0010gR$\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u0016\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\r\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\f8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0003\u001a\u00020\u00158V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u001cX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u0014\u0010!\u001a\u00020\u001cX\u0096D¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001eR\u001a\u0010\"\u001a\b\u0012\u0004\u0012\u00020#0\u000bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%¨\u0006h"}, d2 = {"Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository;", "Lcom/stripe/offlinemode/storage/OfflineRepository;", "()V", "value", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;", "accountOfflineConfig", "getAccountOfflineConfig", "()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;", "setAccountOfflineConfig", "(Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;)V", "activeAccountFlow", "Lkotlinx/coroutines/flow/StateFlow;", "", "activeAccountId", "getActiveAccountId", "()Ljava/lang/String;", "setActiveAccountId", "(Ljava/lang/String;)V", "activeReaderFlow", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;", "", "currentConnectionId", "getCurrentConnectionId", "()J", "setCurrentConnectionId", "(J)V", "currentConnectionSupportsOfflineSetupIntents", "", "getCurrentConnectionSupportsOfflineSetupIntents", "()Z", "setCurrentConnectionSupportsOfflineSetupIntents", "(Z)V", "isSupported", "offlineRequestStatsFlow", "Lcom/stripe/offlinemode/storage/OfflineEntityStats;", "getOfflineRequestStatsFlow", "()Lkotlinx/coroutines/flow/StateFlow;", "activeReaderOfflineEnabledFlow", "clearCache", "", "delete", "toDelete", "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;", "(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteExpiredEntities", "accountId", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "discoverOfflineReaderList", "", "Lcom/stripe/stripeterminal/external/models/Reader;", "failWithTerminalException", "T", "", "()Ljava/lang/Object;", "fetchNextToForward", "Lkotlinx/coroutines/flow/Flow;", "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;", "forceBlockingUpdateOfflinePaymentStats", "getActiveAccountFlow", "getLatestOfflineLocationForReader", "Lcom/stripe/proto/model/offline_mode/OfflineLocation;", "serialNumber", "getOfflineConnection", "Lcom/stripe/proto/model/offline_mode/OfflineConnection;", "connectionId", "getOfflineConnectionEntitiesIfSaved", "Lkotlin/Triple;", "Lcom/stripe/proto/model/offline_mode/OfflineReader;", OfflineStorageConstantsKt.READER, "getOfflineLocationByStripeId", "stripeLocationId", "getOfflineLocationForConnection", "offlineConnection", "getSavedLocationsMap", "", "Lcom/stripe/proto/model/merchant/ApiLocationPb;", "serials", "isOfflineEnabledForLocationAndReader", "locationId", "readerSerial", "offlineConnections", "offlineLocations", "offlinePaymentRequestsToSync", "Lcom/stripe/offlinemode/models/OfflineRequestsToSync;", "offlineReaders", "restoreSoftDeletedPayments", "saveOfflineApiRequest", "offlinePaymentIntentRequest", "saveOfflineConnectionEntities", "offlineReader", "offlineLocation", "softDelete", "", "toSoftDelete", "updateOfflineConfirmRequestWithOnlineEntity", "forwardedEntity", "Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;", "createRequest", "(Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateOfflineLocationWithConfig", "config", "Lcom/stripe/device/OfflineLocationConfigs;", "(Ljava/lang/String;Lcom/stripe/device/OfflineLocationConfigs;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UnsupportedOfflineRepository implements OfflineRepository {
    private boolean currentConnectionSupportsOfflineSetupIntents;
    private final boolean isSupported;
    private final StateFlow<String> activeAccountFlow = StateFlowKt.MutableStateFlow(null);
    private final MutableStateFlow<OfflineConfigPb.ReaderOfflineConfigPb> activeReaderFlow = StateFlowKt.MutableStateFlow(new OfflineConfigPb.ReaderOfflineConfigPb(false, false, false, null, 14, null));
    private final StateFlow<OfflineEntityStats> offlineRequestStatsFlow = StateFlowKt.MutableStateFlow(new OfflineEntityStats(0, 0, MapsKt.emptyMap()));

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public void clearCache() {
    }

    @Inject
    public UnsupportedOfflineRepository() {
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public StateFlow<OfflineEntityStats> getOfflineRequestStatsFlow() {
        return this.offlineRequestStatsFlow;
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    /* JADX INFO: renamed from: isSupported, reason: from getter */
    public boolean getIsSupported() {
        return this.isSupported;
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public boolean getCurrentConnectionSupportsOfflineSetupIntents() {
        return this.currentConnectionSupportsOfflineSetupIntents;
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public void setCurrentConnectionSupportsOfflineSetupIntents(boolean z) {
        this.currentConnectionSupportsOfflineSetupIntents = z;
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public StateFlow<String> getActiveAccountFlow() {
        return this.activeAccountFlow;
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public StateFlow<Boolean> activeReaderOfflineEnabledFlow() {
        return StateFlowKt.MutableStateFlow(false);
    }

    private final /* synthetic */ <T> T failWithTerminalException() throws TerminalException {
        throw new TerminalException(TerminalErrorCode.OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION, "Offline mode is not available on this device", null, null, 12, null);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public String getActiveAccountId() throws TerminalException {
        throw new TerminalException(TerminalErrorCode.OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION, "Offline mode is not available on this device", null, null, 12, null);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public void setActiveAccountId(String value) throws TerminalException {
        Intrinsics.checkNotNullParameter(value, "value");
        throw new TerminalException(TerminalErrorCode.OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION, "Offline mode is not available on this device", null, null, 12, null);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public long getCurrentConnectionId() throws TerminalException {
        throw new TerminalException(TerminalErrorCode.OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION, "Offline mode is not available on this device", null, null, 12, null);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public void setCurrentConnectionId(long j) throws TerminalException {
        throw new TerminalException(TerminalErrorCode.OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION, "Offline mode is not available on this device", null, null, 12, null);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public OfflineConfigPb.AccountOfflineConfigPb getAccountOfflineConfig() throws TerminalException {
        throw new TerminalException(TerminalErrorCode.OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION, "Offline mode is not available on this device", null, null, 12, null);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public void setAccountOfflineConfig(OfflineConfigPb.AccountOfflineConfigPb value) throws TerminalException {
        Intrinsics.checkNotNullParameter(value, "value");
        throw new TerminalException(TerminalErrorCode.OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION, "Offline mode is not available on this device", null, null, 12, null);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public long saveOfflineConnectionEntities(OfflineReader offlineReader, OfflineConnection offlineConnection, OfflineLocation offlineLocation) throws TerminalException {
        Intrinsics.checkNotNullParameter(offlineReader, "offlineReader");
        Intrinsics.checkNotNullParameter(offlineConnection, "offlineConnection");
        Intrinsics.checkNotNullParameter(offlineLocation, "offlineLocation");
        throw new TerminalException(TerminalErrorCode.OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION, "Offline mode is not available on this device", null, null, 12, null);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public void saveOfflineApiRequest(OfflineApiRequest offlinePaymentIntentRequest) throws TerminalException {
        Intrinsics.checkNotNullParameter(offlinePaymentIntentRequest, "offlinePaymentIntentRequest");
        throw new TerminalException(TerminalErrorCode.OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION, "Offline mode is not available on this device", null, null, 12, null);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public Flow<OfflineRequestsToSync> offlinePaymentRequestsToSync(String accountId) throws TerminalException {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        throw new TerminalException(TerminalErrorCode.OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION, "Offline mode is not available on this device", null, null, 12, null);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public Flow<List<OfflineReader>> offlineReaders(String accountId) throws TerminalException {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        throw new TerminalException(TerminalErrorCode.OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION, "Offline mode is not available on this device", null, null, 12, null);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public Flow<List<OfflineConnection>> offlineConnections(String accountId) throws TerminalException {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        throw new TerminalException(TerminalErrorCode.OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION, "Offline mode is not available on this device", null, null, 12, null);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public OfflineConnection getOfflineConnection(long connectionId) throws TerminalException {
        throw new TerminalException(TerminalErrorCode.OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION, "Offline mode is not available on this device", null, null, 12, null);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public Flow<List<OfflineLocation>> offlineLocations(String accountId) throws TerminalException {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        throw new TerminalException(TerminalErrorCode.OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION, "Offline mode is not available on this device", null, null, 12, null);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public OfflineLocation getOfflineLocationForConnection(OfflineConnection offlineConnection) throws TerminalException {
        Intrinsics.checkNotNullParameter(offlineConnection, "offlineConnection");
        throw new TerminalException(TerminalErrorCode.OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION, "Offline mode is not available on this device", null, null, 12, null);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public OfflineLocation getOfflineLocationByStripeId(String stripeLocationId) throws TerminalException {
        Intrinsics.checkNotNullParameter(stripeLocationId, "stripeLocationId");
        throw new TerminalException(TerminalErrorCode.OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION, "Offline mode is not available on this device", null, null, 12, null);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public Object fetchNextToForward(String str, Continuation<? super Flow<OfflineForwardingRequest>> continuation) throws TerminalException {
        throw new TerminalException(TerminalErrorCode.OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION, "Offline mode is not available on this device", null, null, 12, null);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public Object delete(OfflineApiRequest offlineApiRequest, Continuation<? super Unit> continuation) throws TerminalException {
        throw new TerminalException(TerminalErrorCode.OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION, "Offline mode is not available on this device", null, null, 12, null);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public Object softDelete(OfflineApiRequest offlineApiRequest, Continuation<? super Integer> continuation) throws TerminalException {
        throw new TerminalException(TerminalErrorCode.OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION, "Offline mode is not available on this device", null, null, 12, null);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public Object updateOfflineConfirmRequestWithOnlineEntity(OfflineForwardingResponse.Success success, OfflineApiRequest offlineApiRequest, Continuation<? super Unit> continuation) throws TerminalException {
        throw new TerminalException(TerminalErrorCode.OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION, "Offline mode is not available on this device", null, null, 12, null);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public Object updateOfflineLocationWithConfig(String str, OfflineLocationConfigs offlineLocationConfigs, Continuation<? super Unit> continuation) throws TerminalException {
        throw new TerminalException(TerminalErrorCode.OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION, "Offline mode is not available on this device", null, null, 12, null);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public Triple<OfflineReader, OfflineConnection, OfflineLocation> getOfflineConnectionEntitiesIfSaved(Reader reader, String accountId) throws TerminalException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        throw new TerminalException(TerminalErrorCode.OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION, "Offline mode is not available on this device", null, null, 12, null);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public Map<String, ApiLocationPb> getSavedLocationsMap(String accountId, List<String> serials) throws TerminalException {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(serials, "serials");
        throw new TerminalException(TerminalErrorCode.OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION, "Offline mode is not available on this device", null, null, 12, null);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public boolean isOfflineEnabledForLocationAndReader(String locationId, String readerSerial, String accountId) throws TerminalException {
        Intrinsics.checkNotNullParameter(readerSerial, "readerSerial");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        throw new TerminalException(TerminalErrorCode.OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION, "Offline mode is not available on this device", null, null, 12, null);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public void restoreSoftDeletedPayments(String accountId) throws TerminalException {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        throw new TerminalException(TerminalErrorCode.OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION, "Offline mode is not available on this device", null, null, 12, null);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public Object deleteExpiredEntities(String str, Continuation<? super Unit> continuation) throws TerminalException {
        throw new TerminalException(TerminalErrorCode.OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION, "Offline mode is not available on this device", null, null, 12, null);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public OfflineLocation getLatestOfflineLocationForReader(String serialNumber) throws TerminalException {
        Intrinsics.checkNotNullParameter(serialNumber, "serialNumber");
        throw new TerminalException(TerminalErrorCode.OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION, "Offline mode is not available on this device", null, null, 12, null);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public List<Reader> discoverOfflineReaderList(String accountId) throws TerminalException {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        throw new TerminalException(TerminalErrorCode.OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION, "Offline mode is not available on this device", null, null, 12, null);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public OfflineEntityStats forceBlockingUpdateOfflinePaymentStats() throws TerminalException {
        throw new TerminalException(TerminalErrorCode.OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION, "Offline mode is not available on this device", null, null, 12, null);
    }
}
