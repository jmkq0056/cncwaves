package com.stripe.offlinemode.storage;

import com.stripe.device.OfflineLocationConfigs;
import com.stripe.jvmcore.logging.terminal.contracts.Logger;
import com.stripe.offlinemode.dagger.DefaultOfflineRepositoryFactory;
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
import com.stripe.stripeterminal.external.models.TerminalException;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: compiled from: ProxyOfflineRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000º\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B'\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0007¢\u0006\u0002\u0010\bB\u000f\b\u0002\u0012\u0006\u0010\t\u001a\u00020\u0001¢\u0006\u0002\u0010\nJ\u000f\u0010)\u001a\b\u0012\u0004\u0012\u00020\u001e0*H\u0096\u0001J\t\u0010+\u001a\u00020,H\u0096\u0001J\u0016\u0010-\u001a\u00020,2\u0006\u0010.\u001a\u00020/H\u0096A¢\u0006\u0002\u00100J\u0018\u00101\u001a\u00020,2\b\b\u0002\u00102\u001a\u00020\u0012H\u0096A¢\u0006\u0002\u00103J\u0019\u00104\u001a\b\u0012\u0004\u0012\u000206052\b\b\u0002\u00102\u001a\u00020\u0012H\u0096\u0001J\u001c\u00107\u001a\b\u0012\u0004\u0012\u0002080%2\u0006\u00102\u001a\u00020\u0012H\u0096A¢\u0006\u0002\u00103J\u000b\u00109\u001a\u0004\u0018\u00010&H\u0096\u0001J\u0011\u0010:\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120*H\u0096\u0001J\u0011\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020\u0012H\u0096\u0001J\u0011\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020\u0018H\u0096\u0001J/\u0010A\u001a\u0016\u0012\u0004\u0012\u00020C\u0012\u0004\u0012\u00020?\u0012\u0004\u0012\u00020<\u0018\u00010B2\u0006\u0010D\u001a\u0002062\b\b\u0002\u00102\u001a\u00020\u0012H\u0096\u0001J\u0013\u0010E\u001a\u0004\u0018\u00010<2\u0006\u0010F\u001a\u00020\u0012H\u0096\u0001J\u0013\u0010G\u001a\u0004\u0018\u00010<2\u0006\u0010H\u001a\u00020?H\u0096\u0001J-\u0010I\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020K0J2\b\b\u0002\u00102\u001a\u00020\u00122\f\u0010L\u001a\b\u0012\u0004\u0012\u00020\u001205H\u0096\u0001J%\u0010M\u001a\u00020\u001e2\b\u0010N\u001a\u0004\u0018\u00010\u00122\u0006\u0010O\u001a\u00020\u00122\b\b\u0002\u00102\u001a\u00020\u0012H\u0096\u0001J\t\u0010P\u001a\u00020\u001eH\u0096\u0001J\u001d\u0010Q\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020?050%2\u0006\u00102\u001a\u00020\u0012H\u0096\u0001J\u001d\u0010R\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020<050%2\u0006\u00102\u001a\u00020\u0012H\u0096\u0001J\u0017\u0010S\u001a\b\u0012\u0004\u0012\u00020T0%2\u0006\u00102\u001a\u00020\u0012H\u0096\u0001J\u001d\u0010U\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020C050%2\u0006\u00102\u001a\u00020\u0012H\u0096\u0001J\u0013\u0010V\u001a\u00020,2\b\b\u0002\u00102\u001a\u00020\u0012H\u0096\u0001J\u0011\u0010W\u001a\u00020,2\u0006\u0010X\u001a\u00020/H\u0096\u0001J!\u0010Y\u001a\u00020\u00182\u0006\u0010Z\u001a\u00020C2\u0006\u0010H\u001a\u00020?2\u0006\u0010[\u001a\u00020<H\u0096\u0001J\u0016\u0010\\\u001a\u00020]2\u0006\u0010^\u001a\u00020/H\u0096A¢\u0006\u0002\u00100J\u001e\u0010_\u001a\u00020,2\u0006\u0010`\u001a\u00020a2\u0006\u0010b\u001a\u00020/H\u0096A¢\u0006\u0002\u0010cJ\u001e\u0010d\u001a\u00020,2\u0006\u0010F\u001a\u00020\u00122\u0006\u0010e\u001a\u00020fH\u0096A¢\u0006\u0002\u0010gR\u0018\u0010\u000b\u001a\u00020\fX\u0096\u000f¢\u0006\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0018\u0010\u0011\u001a\u00020\u0012X\u0096\u000f¢\u0006\f\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u0018\u0010\u0017\u001a\u00020\u0018X\u0096\u000f¢\u0006\f\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u0018\u0010\u001d\u001a\u00020\u001eX\u0096\u000f¢\u0006\f\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u0012\u0010#\u001a\u00020\u001eX\u0096\u0005¢\u0006\u0006\u001a\u0004\b#\u0010 R\u0018\u0010$\u001a\b\u0012\u0004\u0012\u00020&0%X\u0096\u0005¢\u0006\u0006\u001a\u0004\b'\u0010(R\u000e\u0010\t\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006h"}, d2 = {"Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;", "Lcom/stripe/offlinemode/storage/OfflineRepository;", "unsupportedOfflineRepository", "Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository;", "defaultOfflineRepositoryFactory", "Lcom/stripe/offlinemode/dagger/DefaultOfflineRepositoryFactory;", "logger", "Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;", "(Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository;Lcom/stripe/offlinemode/dagger/DefaultOfflineRepositoryFactory;Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;)V", "proxy", "(Lcom/stripe/offlinemode/storage/OfflineRepository;)V", "accountOfflineConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;", "getAccountOfflineConfig", "()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;", "setAccountOfflineConfig", "(Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;)V", "activeAccountId", "", "getActiveAccountId", "()Ljava/lang/String;", "setActiveAccountId", "(Ljava/lang/String;)V", "currentConnectionId", "", "getCurrentConnectionId", "()J", "setCurrentConnectionId", "(J)V", "currentConnectionSupportsOfflineSetupIntents", "", "getCurrentConnectionSupportsOfflineSetupIntents", "()Z", "setCurrentConnectionSupportsOfflineSetupIntents", "(Z)V", "isSupported", "offlineRequestStatsFlow", "Lkotlinx/coroutines/flow/Flow;", "Lcom/stripe/offlinemode/storage/OfflineEntityStats;", "getOfflineRequestStatsFlow", "()Lkotlinx/coroutines/flow/Flow;", "activeReaderOfflineEnabledFlow", "Lkotlinx/coroutines/flow/StateFlow;", "clearCache", "", "delete", "toDelete", "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;", "(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteExpiredEntities", "accountId", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "discoverOfflineReaderList", "", "Lcom/stripe/stripeterminal/external/models/Reader;", "fetchNextToForward", "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;", "forceBlockingUpdateOfflinePaymentStats", "getActiveAccountFlow", "getLatestOfflineLocationForReader", "Lcom/stripe/proto/model/offline_mode/OfflineLocation;", "serialNumber", "getOfflineConnection", "Lcom/stripe/proto/model/offline_mode/OfflineConnection;", "connectionId", "getOfflineConnectionEntitiesIfSaved", "Lkotlin/Triple;", "Lcom/stripe/proto/model/offline_mode/OfflineReader;", OfflineStorageConstantsKt.READER, "getOfflineLocationByStripeId", "stripeLocationId", "getOfflineLocationForConnection", "offlineConnection", "getSavedLocationsMap", "", "Lcom/stripe/proto/model/merchant/ApiLocationPb;", "serials", "isOfflineEnabledForLocationAndReader", "locationId", "readerSerial", "isOfflineModeEnabledOnActiveReader", "offlineConnections", "offlineLocations", "offlinePaymentRequestsToSync", "Lcom/stripe/offlinemode/models/OfflineRequestsToSync;", "offlineReaders", "restoreSoftDeletedPayments", "saveOfflineApiRequest", "offlineApiRequest", "saveOfflineConnectionEntities", "offlineReader", "offlineLocation", "softDelete", "", "toSoftDelete", "updateOfflineConfirmRequestWithOnlineEntity", "forwardedEntity", "Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;", "createRequest", "(Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateOfflineLocationWithConfig", "config", "Lcom/stripe/device/OfflineLocationConfigs;", "(Ljava/lang/String;Lcom/stripe/device/OfflineLocationConfigs;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ProxyOfflineRepository implements OfflineRepository {
    private final OfflineRepository proxy;

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public StateFlow<Boolean> activeReaderOfflineEnabledFlow() {
        return this.proxy.activeReaderOfflineEnabledFlow();
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public void clearCache() {
        this.proxy.clearCache();
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public Object delete(OfflineApiRequest offlineApiRequest, Continuation<? super Unit> continuation) {
        return this.proxy.delete(offlineApiRequest, continuation);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public Object deleteExpiredEntities(String str, Continuation<? super Unit> continuation) {
        return this.proxy.deleteExpiredEntities(str, continuation);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public List<Reader> discoverOfflineReaderList(String accountId) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        return this.proxy.discoverOfflineReaderList(accountId);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public Object fetchNextToForward(String str, Continuation<? super Flow<OfflineForwardingRequest>> continuation) {
        return this.proxy.fetchNextToForward(str, continuation);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public OfflineEntityStats forceBlockingUpdateOfflinePaymentStats() {
        return this.proxy.forceBlockingUpdateOfflinePaymentStats();
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public OfflineConfigPb.AccountOfflineConfigPb getAccountOfflineConfig() {
        return this.proxy.getAccountOfflineConfig();
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public StateFlow<String> getActiveAccountFlow() {
        return this.proxy.getActiveAccountFlow();
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public String getActiveAccountId() {
        return this.proxy.getActiveAccountId();
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public long getCurrentConnectionId() {
        return this.proxy.getCurrentConnectionId();
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public boolean getCurrentConnectionSupportsOfflineSetupIntents() {
        return this.proxy.getCurrentConnectionSupportsOfflineSetupIntents();
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public OfflineLocation getLatestOfflineLocationForReader(String serialNumber) {
        Intrinsics.checkNotNullParameter(serialNumber, "serialNumber");
        return this.proxy.getLatestOfflineLocationForReader(serialNumber);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public OfflineConnection getOfflineConnection(long connectionId) {
        return this.proxy.getOfflineConnection(connectionId);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public Triple<OfflineReader, OfflineConnection, OfflineLocation> getOfflineConnectionEntitiesIfSaved(Reader reader, String accountId) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        return this.proxy.getOfflineConnectionEntitiesIfSaved(reader, accountId);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public OfflineLocation getOfflineLocationByStripeId(String stripeLocationId) {
        Intrinsics.checkNotNullParameter(stripeLocationId, "stripeLocationId");
        return this.proxy.getOfflineLocationByStripeId(stripeLocationId);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public OfflineLocation getOfflineLocationForConnection(OfflineConnection offlineConnection) {
        Intrinsics.checkNotNullParameter(offlineConnection, "offlineConnection");
        return this.proxy.getOfflineLocationForConnection(offlineConnection);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public Flow<OfflineEntityStats> getOfflineRequestStatsFlow() {
        return this.proxy.getOfflineRequestStatsFlow();
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public Map<String, ApiLocationPb> getSavedLocationsMap(String accountId, List<String> serials) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(serials, "serials");
        return this.proxy.getSavedLocationsMap(accountId, serials);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public boolean isOfflineEnabledForLocationAndReader(String locationId, String readerSerial, String accountId) {
        Intrinsics.checkNotNullParameter(readerSerial, "readerSerial");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        return this.proxy.isOfflineEnabledForLocationAndReader(locationId, readerSerial, accountId);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public boolean isOfflineModeEnabledOnActiveReader() {
        return this.proxy.isOfflineModeEnabledOnActiveReader();
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    /* JADX INFO: renamed from: isSupported */
    public boolean getIsSupported() {
        return this.proxy.getIsSupported();
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public Flow<List<OfflineConnection>> offlineConnections(String accountId) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        return this.proxy.offlineConnections(accountId);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public Flow<List<OfflineLocation>> offlineLocations(String accountId) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        return this.proxy.offlineLocations(accountId);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public Flow<OfflineRequestsToSync> offlinePaymentRequestsToSync(String accountId) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        return this.proxy.offlinePaymentRequestsToSync(accountId);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public Flow<List<OfflineReader>> offlineReaders(String accountId) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        return this.proxy.offlineReaders(accountId);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public void restoreSoftDeletedPayments(String accountId) throws TerminalException {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        this.proxy.restoreSoftDeletedPayments(accountId);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public void saveOfflineApiRequest(OfflineApiRequest offlineApiRequest) throws TerminalException {
        Intrinsics.checkNotNullParameter(offlineApiRequest, "offlineApiRequest");
        this.proxy.saveOfflineApiRequest(offlineApiRequest);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public long saveOfflineConnectionEntities(OfflineReader offlineReader, OfflineConnection offlineConnection, OfflineLocation offlineLocation) {
        Intrinsics.checkNotNullParameter(offlineReader, "offlineReader");
        Intrinsics.checkNotNullParameter(offlineConnection, "offlineConnection");
        Intrinsics.checkNotNullParameter(offlineLocation, "offlineLocation");
        return this.proxy.saveOfflineConnectionEntities(offlineReader, offlineConnection, offlineLocation);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public void setAccountOfflineConfig(OfflineConfigPb.AccountOfflineConfigPb accountOfflineConfigPb) {
        Intrinsics.checkNotNullParameter(accountOfflineConfigPb, "<set-?>");
        this.proxy.setAccountOfflineConfig(accountOfflineConfigPb);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public void setActiveAccountId(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.proxy.setActiveAccountId(str);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public void setCurrentConnectionId(long j) {
        this.proxy.setCurrentConnectionId(j);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public void setCurrentConnectionSupportsOfflineSetupIntents(boolean z) {
        this.proxy.setCurrentConnectionSupportsOfflineSetupIntents(z);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public Object softDelete(OfflineApiRequest offlineApiRequest, Continuation<? super Integer> continuation) {
        return this.proxy.softDelete(offlineApiRequest, continuation);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public Object updateOfflineConfirmRequestWithOnlineEntity(OfflineForwardingResponse.Success success, OfflineApiRequest offlineApiRequest, Continuation<? super Unit> continuation) {
        return this.proxy.updateOfflineConfirmRequestWithOnlineEntity(success, offlineApiRequest, continuation);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public Object updateOfflineLocationWithConfig(String str, OfflineLocationConfigs offlineLocationConfigs, Continuation<? super Unit> continuation) {
        return this.proxy.updateOfflineLocationWithConfig(str, offlineLocationConfigs, continuation);
    }

    private ProxyOfflineRepository(OfflineRepository offlineRepository) {
        this.proxy = offlineRepository;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ProxyOfflineRepository(UnsupportedOfflineRepository unsupportedOfflineRepository, DefaultOfflineRepositoryFactory defaultOfflineRepositoryFactory, Logger<?, ?> logger) {
        UnsupportedOfflineRepository unsupportedOfflineRepositoryCreate;
        Intrinsics.checkNotNullParameter(unsupportedOfflineRepository, "unsupportedOfflineRepository");
        Intrinsics.checkNotNullParameter(defaultOfflineRepositoryFactory, "defaultOfflineRepositoryFactory");
        Intrinsics.checkNotNullParameter(logger, "logger");
        try {
            unsupportedOfflineRepositoryCreate = defaultOfflineRepositoryFactory.create(logger);
        } catch (Throwable th) {
            logger.w(th, "Failed to initialize offline repository, falling back to unsupported version.", new Pair[0]);
            unsupportedOfflineRepositoryCreate = unsupportedOfflineRepository;
        }
        this(unsupportedOfflineRepositoryCreate);
    }
}
