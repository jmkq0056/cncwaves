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
import com.stripe.stripeterminal.external.models.TerminalException;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Triple;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: compiled from: OfflineRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000¦\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u000e\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00150!H&J\b\u0010\"\u001a\u00020#H&J\u0016\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020&H¦@¢\u0006\u0002\u0010'J\u0018\u0010(\u001a\u00020#2\b\b\u0002\u0010)\u001a\u00020\tH¦@¢\u0006\u0002\u0010*J\u0018\u0010+\u001a\b\u0012\u0004\u0012\u00020-0,2\b\b\u0002\u0010)\u001a\u00020\tH&J\u001c\u0010.\u001a\b\u0012\u0004\u0012\u00020/0\u001c2\u0006\u0010)\u001a\u00020\tH¦@¢\u0006\u0002\u0010*J\n\u00100\u001a\u0004\u0018\u00010\u001dH&J\u0010\u00101\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0!H&J\u0010\u00102\u001a\u0002032\u0006\u00104\u001a\u00020\tH&J\u0010\u00105\u001a\u0002062\u0006\u00107\u001a\u00020\u000fH&J.\u00108\u001a\u0016\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u000206\u0012\u0004\u0012\u000203\u0018\u0001092\u0006\u0010;\u001a\u00020-2\b\b\u0002\u0010)\u001a\u00020\tH&J\u0012\u0010<\u001a\u0004\u0018\u0001032\u0006\u0010=\u001a\u00020\tH&J\u0012\u0010>\u001a\u0004\u0018\u0001032\u0006\u0010?\u001a\u000206H&J,\u0010@\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020B0A2\b\b\u0002\u0010)\u001a\u00020\t2\f\u0010C\u001a\b\u0012\u0004\u0012\u00020\t0,H&J$\u0010D\u001a\u00020\u00152\b\u0010E\u001a\u0004\u0018\u00010\t2\u0006\u0010F\u001a\u00020\t2\b\b\u0002\u0010)\u001a\u00020\tH&J\b\u0010G\u001a\u00020\u0015H\u0016J\u001c\u0010H\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002060,0\u001c2\u0006\u0010)\u001a\u00020\tH&J\u001c\u0010I\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002030,0\u001c2\u0006\u0010)\u001a\u00020\tH&J\u0016\u0010J\u001a\b\u0012\u0004\u0012\u00020K0\u001c2\u0006\u0010)\u001a\u00020\tH&J\u001c\u0010L\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020:0,0\u001c2\u0006\u0010)\u001a\u00020\tH&J\u0012\u0010M\u001a\u00020#2\b\b\u0002\u0010)\u001a\u00020\tH&J\u0010\u0010N\u001a\u00020#2\u0006\u0010O\u001a\u00020&H&J \u0010P\u001a\u00020\u000f2\u0006\u0010Q\u001a\u00020:2\u0006\u0010?\u001a\u0002062\u0006\u0010R\u001a\u000203H&J\u0016\u0010S\u001a\u00020T2\u0006\u0010U\u001a\u00020&H¦@¢\u0006\u0002\u0010'J\u001e\u0010V\u001a\u00020#2\u0006\u0010W\u001a\u00020X2\u0006\u0010Y\u001a\u00020&H¦@¢\u0006\u0002\u0010ZJ\u001e\u0010[\u001a\u00020#2\u0006\u0010=\u001a\u00020\t2\u0006\u0010\\\u001a\u00020]H¦@¢\u0006\u0002\u0010^R\u0018\u0010\u0002\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007R\u0018\u0010\b\u001a\u00020\tX¦\u000e¢\u0006\f\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u0018\u0010\u000e\u001a\u00020\u000fX¦\u000e¢\u0006\f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0014\u001a\u00020\u0015X¦\u000e¢\u0006\f\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u0012\u0010\u001a\u001a\u00020\u0015X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0017R\u0018\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cX¦\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001fø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006_À\u0006\u0001"}, d2 = {"Lcom/stripe/offlinemode/storage/OfflineRepository;", "", "accountOfflineConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;", "getAccountOfflineConfig", "()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;", "setAccountOfflineConfig", "(Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;)V", "activeAccountId", "", "getActiveAccountId", "()Ljava/lang/String;", "setActiveAccountId", "(Ljava/lang/String;)V", "currentConnectionId", "", "getCurrentConnectionId", "()J", "setCurrentConnectionId", "(J)V", "currentConnectionSupportsOfflineSetupIntents", "", "getCurrentConnectionSupportsOfflineSetupIntents", "()Z", "setCurrentConnectionSupportsOfflineSetupIntents", "(Z)V", "isSupported", "offlineRequestStatsFlow", "Lkotlinx/coroutines/flow/Flow;", "Lcom/stripe/offlinemode/storage/OfflineEntityStats;", "getOfflineRequestStatsFlow", "()Lkotlinx/coroutines/flow/Flow;", "activeReaderOfflineEnabledFlow", "Lkotlinx/coroutines/flow/StateFlow;", "clearCache", "", "delete", "toDelete", "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;", "(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteExpiredEntities", "accountId", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "discoverOfflineReaderList", "", "Lcom/stripe/stripeterminal/external/models/Reader;", "fetchNextToForward", "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;", "forceBlockingUpdateOfflinePaymentStats", "getActiveAccountFlow", "getLatestOfflineLocationForReader", "Lcom/stripe/proto/model/offline_mode/OfflineLocation;", "serialNumber", "getOfflineConnection", "Lcom/stripe/proto/model/offline_mode/OfflineConnection;", "connectionId", "getOfflineConnectionEntitiesIfSaved", "Lkotlin/Triple;", "Lcom/stripe/proto/model/offline_mode/OfflineReader;", OfflineStorageConstantsKt.READER, "getOfflineLocationByStripeId", "stripeLocationId", "getOfflineLocationForConnection", "offlineConnection", "getSavedLocationsMap", "", "Lcom/stripe/proto/model/merchant/ApiLocationPb;", "serials", "isOfflineEnabledForLocationAndReader", "locationId", "readerSerial", "isOfflineModeEnabledOnActiveReader", "offlineConnections", "offlineLocations", "offlinePaymentRequestsToSync", "Lcom/stripe/offlinemode/models/OfflineRequestsToSync;", "offlineReaders", "restoreSoftDeletedPayments", "saveOfflineApiRequest", "offlineApiRequest", "saveOfflineConnectionEntities", "offlineReader", "offlineLocation", "softDelete", "", "toSoftDelete", "updateOfflineConfirmRequestWithOnlineEntity", "forwardedEntity", "Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;", "createRequest", "(Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateOfflineLocationWithConfig", "config", "Lcom/stripe/device/OfflineLocationConfigs;", "(Ljava/lang/String;Lcom/stripe/device/OfflineLocationConfigs;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface OfflineRepository {
    StateFlow<Boolean> activeReaderOfflineEnabledFlow();

    void clearCache();

    Object delete(OfflineApiRequest offlineApiRequest, Continuation<? super Unit> continuation) throws TerminalException;

    Object deleteExpiredEntities(String str, Continuation<? super Unit> continuation) throws TerminalException;

    List<Reader> discoverOfflineReaderList(String accountId) throws TerminalException;

    Object fetchNextToForward(String str, Continuation<? super Flow<OfflineForwardingRequest>> continuation) throws TerminalException;

    OfflineEntityStats forceBlockingUpdateOfflinePaymentStats();

    OfflineConfigPb.AccountOfflineConfigPb getAccountOfflineConfig();

    StateFlow<String> getActiveAccountFlow();

    String getActiveAccountId();

    long getCurrentConnectionId();

    boolean getCurrentConnectionSupportsOfflineSetupIntents();

    OfflineLocation getLatestOfflineLocationForReader(String serialNumber) throws TerminalException;

    OfflineConnection getOfflineConnection(long connectionId) throws TerminalException;

    Triple<OfflineReader, OfflineConnection, OfflineLocation> getOfflineConnectionEntitiesIfSaved(Reader reader, String accountId) throws TerminalException;

    OfflineLocation getOfflineLocationByStripeId(String stripeLocationId) throws TerminalException;

    OfflineLocation getOfflineLocationForConnection(OfflineConnection offlineConnection) throws TerminalException;

    Flow<OfflineEntityStats> getOfflineRequestStatsFlow();

    Map<String, ApiLocationPb> getSavedLocationsMap(String accountId, List<String> serials) throws TerminalException;

    boolean isOfflineEnabledForLocationAndReader(String locationId, String readerSerial, String accountId) throws TerminalException;

    /* JADX INFO: renamed from: isSupported */
    boolean getIsSupported();

    Flow<List<OfflineConnection>> offlineConnections(String accountId) throws TerminalException;

    Flow<List<OfflineLocation>> offlineLocations(String accountId) throws TerminalException;

    Flow<OfflineRequestsToSync> offlinePaymentRequestsToSync(String accountId) throws TerminalException;

    Flow<List<OfflineReader>> offlineReaders(String accountId) throws TerminalException;

    void restoreSoftDeletedPayments(String accountId) throws TerminalException;

    void saveOfflineApiRequest(OfflineApiRequest offlineApiRequest) throws TerminalException;

    long saveOfflineConnectionEntities(OfflineReader offlineReader, OfflineConnection offlineConnection, OfflineLocation offlineLocation) throws TerminalException;

    void setAccountOfflineConfig(OfflineConfigPb.AccountOfflineConfigPb accountOfflineConfigPb);

    void setActiveAccountId(String str);

    void setCurrentConnectionId(long j);

    void setCurrentConnectionSupportsOfflineSetupIntents(boolean z);

    Object softDelete(OfflineApiRequest offlineApiRequest, Continuation<? super Integer> continuation) throws TerminalException;

    Object updateOfflineConfirmRequestWithOnlineEntity(OfflineForwardingResponse.Success success, OfflineApiRequest offlineApiRequest, Continuation<? super Unit> continuation) throws TerminalException;

    Object updateOfflineLocationWithConfig(String str, OfflineLocationConfigs offlineLocationConfigs, Continuation<? super Unit> continuation) throws TerminalException;

    default boolean isOfflineModeEnabledOnActiveReader() {
        return activeReaderOfflineEnabledFlow().getValue().booleanValue();
    }

    static /* synthetic */ Triple getOfflineConnectionEntitiesIfSaved$default(OfflineRepository offlineRepository, Reader reader, String str, int i, Object obj) throws TerminalException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getOfflineConnectionEntitiesIfSaved");
        }
        if ((i & 2) != 0) {
            str = offlineRepository.getActiveAccountId();
        }
        return offlineRepository.getOfflineConnectionEntitiesIfSaved(reader, str);
    }

    static /* synthetic */ Map getSavedLocationsMap$default(OfflineRepository offlineRepository, String str, List list, int i, Object obj) throws TerminalException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getSavedLocationsMap");
        }
        if ((i & 1) != 0) {
            str = offlineRepository.getActiveAccountId();
        }
        return offlineRepository.getSavedLocationsMap(str, list);
    }

    static /* synthetic */ boolean isOfflineEnabledForLocationAndReader$default(OfflineRepository offlineRepository, String str, String str2, String str3, int i, Object obj) throws TerminalException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: isOfflineEnabledForLocationAndReader");
        }
        if ((i & 4) != 0) {
            str3 = offlineRepository.getActiveAccountId();
        }
        return offlineRepository.isOfflineEnabledForLocationAndReader(str, str2, str3);
    }

    static /* synthetic */ void restoreSoftDeletedPayments$default(OfflineRepository offlineRepository, String str, int i, Object obj) throws TerminalException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: restoreSoftDeletedPayments");
        }
        if ((i & 1) != 0) {
            str = offlineRepository.getActiveAccountId();
        }
        offlineRepository.restoreSoftDeletedPayments(str);
    }

    static /* synthetic */ Object deleteExpiredEntities$default(OfflineRepository offlineRepository, String str, Continuation continuation, int i, Object obj) throws TerminalException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: deleteExpiredEntities");
        }
        if ((i & 1) != 0) {
            str = offlineRepository.getActiveAccountId();
        }
        return offlineRepository.deleteExpiredEntities(str, continuation);
    }

    static /* synthetic */ List discoverOfflineReaderList$default(OfflineRepository offlineRepository, String str, int i, Object obj) throws TerminalException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: discoverOfflineReaderList");
        }
        if ((i & 1) != 0) {
            str = offlineRepository.getActiveAccountId();
        }
        return offlineRepository.discoverOfflineReaderList(str);
    }
}
