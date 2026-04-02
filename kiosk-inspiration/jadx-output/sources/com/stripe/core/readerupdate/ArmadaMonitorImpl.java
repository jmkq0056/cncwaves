package com.stripe.core.readerupdate;

import com.stripe.core.hardware.Reader;
import com.stripe.core.hardware.reactive.ReaderInfoRepository;
import com.stripe.core.hardware.reactive.emv.ConfigurationHandler;
import com.stripe.core.transaction.SettingsRepository;
import com.stripe.core.updater.Monitor;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.model.common.ClientVersionSpecPb;
import com.stripe.proto.model.common.VersionInfoPb;
import com.stripe.proto.model.config.BBPOSConfig;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import javax.inject.Provider;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: compiled from: ArmadaMonitor.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u0012\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001j\u0002`\u0004BU\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u000e\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0016\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013j\u0002`\u0016¢\u0006\u0002\u0010\u0017J\u000e\u0010 \u001a\u00020\u0003H\u0082@¢\u0006\u0002\u0010!J\u0018\u0010\"\u001a\u00020\u00192\u0006\u0010#\u001a\u00020\u00192\u0006\u0010$\u001a\u00020%H\u0002J\u0014\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0096@¢\u0006\u0002\u0010!R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013j\u0002`\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0018\u001a\u00020\u0019*\u00020\u00038BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u001aR\u0018\u0010\u001b\u001a\u00020\u001c*\u00020\u001d8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001f¨\u0006'"}, d2 = {"Lcom/stripe/core/readerupdate/ArmadaMonitorImpl;", "Lcom/stripe/core/updater/Monitor;", "Lkotlinx/coroutines/flow/Flow;", "Lcom/stripe/core/readerupdate/UpdateSummary;", "Lcom/stripe/core/readerupdate/ArmadaMonitor;", "updateClient", "Lcom/stripe/core/readerupdate/UpdateClient;", "embeddedSoftwareVersionProvider", "Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;", "readerInfoRepository", "Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;", "settingsRepository", "Lcom/stripe/core/transaction/SettingsRepository;", "readerProvider", "Ljavax/inject/Provider;", "Lcom/stripe/core/hardware/Reader;", "configurationHandler", "Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/core/readerupdate/UpdateClient;Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;Lcom/stripe/core/transaction/SettingsRepository;Ljavax/inject/Provider;Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "isUpdateNeeded", "", "(Lcom/stripe/core/readerupdate/UpdateSummary;)Z", "version", "", "Lcom/stripe/proto/model/common/ClientVersionSpecPb;", "getVersion", "(Lcom/stripe/proto/model/common/ClientVersionSpecPb;)Ljava/lang/String;", "getUpdateSummary", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "needsKeyProfileUpdate", "isReaderMissingKeys", "bbposConfig", "Lcom/stripe/proto/model/config/BBPOSConfig;", "start", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ArmadaMonitorImpl implements Monitor<Flow<? extends UpdateSummary>> {
    private final ConfigurationHandler configurationHandler;
    private final EmbeddedSoftwareVersionProvider embeddedSoftwareVersionProvider;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final ReaderInfoRepository readerInfoRepository;
    private final Provider<Reader> readerProvider;
    private final SettingsRepository settingsRepository;
    private final UpdateClient updateClient;

    /* JADX INFO: renamed from: com.stripe.core.readerupdate.ArmadaMonitorImpl$getUpdateSummary$1, reason: invalid class name */
    /* JADX INFO: compiled from: ArmadaMonitor.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.readerupdate.ArmadaMonitorImpl", f = "ArmadaMonitor.kt", i = {0, 0}, l = {42}, m = "getUpdateSummary", n = {"this", OfflineStorageConstantsKt.READER}, s = {"L$0", "L$1"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ArmadaMonitorImpl.this.getUpdateSummary(this);
        }
    }

    public ArmadaMonitorImpl(UpdateClient updateClient, EmbeddedSoftwareVersionProvider embeddedSoftwareVersionProvider, ReaderInfoRepository readerInfoRepository, SettingsRepository settingsRepository, Provider<Reader> readerProvider, ConfigurationHandler configurationHandler, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(updateClient, "updateClient");
        Intrinsics.checkNotNullParameter(embeddedSoftwareVersionProvider, "embeddedSoftwareVersionProvider");
        Intrinsics.checkNotNullParameter(readerInfoRepository, "readerInfoRepository");
        Intrinsics.checkNotNullParameter(settingsRepository, "settingsRepository");
        Intrinsics.checkNotNullParameter(readerProvider, "readerProvider");
        Intrinsics.checkNotNullParameter(configurationHandler, "configurationHandler");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.updateClient = updateClient;
        this.embeddedSoftwareVersionProvider = embeddedSoftwareVersionProvider;
        this.readerInfoRepository = readerInfoRepository;
        this.settingsRepository = settingsRepository;
        this.readerProvider = readerProvider;
        this.configurationHandler = configurationHandler;
        this.logger = logger;
    }

    /* JADX INFO: renamed from: com.stripe.core.readerupdate.ArmadaMonitorImpl$start$2, reason: invalid class name */
    /* JADX INFO: compiled from: ArmadaMonitor.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "Lcom/stripe/core/readerupdate/UpdateSummary;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.readerupdate.ArmadaMonitorImpl$start$2", f = "ArmadaMonitor.kt", i = {0}, l = {31, 33}, m = "invokeSuspend", n = {"$this$flow"}, s = {"L$0"})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<FlowCollector<? super UpdateSummary>, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = ArmadaMonitorImpl.this.new AnonymousClass2(continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(FlowCollector<? super UpdateSummary> flowCollector, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x0050, code lost:
        
            if (r1.emit(r6, r5) == r0) goto L17;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r6) throws com.stripe.core.hardware.updates.ReaderUpdateException {
            /*
                r5 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r5.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L22
                if (r1 == r3) goto L1a
                if (r1 != r2) goto L12
                kotlin.ResultKt.throwOnFailure(r6)
                goto L53
            L12:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r0)
                throw r6
            L1a:
                java.lang.Object r1 = r5.L$0
                kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
                kotlin.ResultKt.throwOnFailure(r6)
                goto L3a
            L22:
                kotlin.ResultKt.throwOnFailure(r6)
                java.lang.Object r6 = r5.L$0
                r1 = r6
                kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
                com.stripe.core.readerupdate.ArmadaMonitorImpl r6 = com.stripe.core.readerupdate.ArmadaMonitorImpl.this
                r4 = r5
                kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
                r5.L$0 = r1
                r5.label = r3
                java.lang.Object r6 = com.stripe.core.readerupdate.ArmadaMonitorImpl.access$getUpdateSummary(r6, r4)
                if (r6 != r0) goto L3a
                goto L52
            L3a:
                com.stripe.core.readerupdate.UpdateSummary r6 = (com.stripe.core.readerupdate.UpdateSummary) r6
                com.stripe.core.readerupdate.ArmadaMonitorImpl r3 = com.stripe.core.readerupdate.ArmadaMonitorImpl.this
                boolean r3 = com.stripe.core.readerupdate.ArmadaMonitorImpl.access$isUpdateNeeded(r3, r6)
                if (r3 == 0) goto L53
                r3 = r5
                kotlin.coroutines.Continuation r3 = (kotlin.coroutines.Continuation) r3
                r4 = 0
                r5.L$0 = r4
                r5.label = r2
                java.lang.Object r6 = r1.emit(r6, r3)
                if (r6 != r0) goto L53
            L52:
                return r0
            L53:
                kotlin.Unit r6 = kotlin.Unit.INSTANCE
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.readerupdate.ArmadaMonitorImpl.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Override // com.stripe.core.updater.Monitor
    public Object start(Continuation<? super Flow<? extends UpdateSummary>> continuation) {
        return FlowKt.flow(new AnonymousClass2(null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:111:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object getUpdateSummary(kotlin.coroutines.Continuation<? super com.stripe.core.readerupdate.UpdateSummary> r30) throws com.stripe.core.hardware.updates.ReaderUpdateException {
        /*
            Method dump skipped, instruction units count: 501
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.readerupdate.ArmadaMonitorImpl.getUpdateSummary(kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final boolean needsKeyProfileUpdate(boolean isReaderMissingKeys, BBPOSConfig bbposConfig) {
        EmbeddedSoftwareVersionProvider embeddedSoftwareVersionProvider = this.embeddedSoftwareVersionProvider;
        List listListOfNotNull = CollectionsKt.listOfNotNull((Object[]) new String[]{embeddedSoftwareVersionProvider.getPinKeyProfileId(), embeddedSoftwareVersionProvider.getEmvKeyProfileId(), embeddedSoftwareVersionProvider.getMacKeyProfileId()});
        if (isReaderMissingKeys) {
            this.logger.w("needsKeyProfileUpdate - Detected missing keys on device. Requesting key update.", new Pair[0]);
            return true;
        }
        if (bbposConfig.key_profile_id.length() == 0 && bbposConfig.key_profile_pek0.length() == 0) {
            this.logger.w("needsKeyProfileUpdate - No target key version specified by Armada. Cannot update keys.", new Pair[0]);
            return false;
        }
        if (listListOfNotNull.isEmpty() && this.embeddedSoftwareVersionProvider.getPinKeysetId() == null) {
            this.logger.w("needsKeyProfileUpdate - No key information returned by the device. Requesting key update.", new Pair[0]);
            return true;
        }
        if (bbposConfig.key_profile_id.length() > 0 && !listListOfNotNull.isEmpty()) {
            this.logger.i("needsKeyProfileUpdate - comparing device key profile IDs to Armada ID.", new Pair[0]);
            List list = listListOfNotNull;
            if ((list instanceof Collection) && list.isEmpty()) {
                return false;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (!Intrinsics.areEqual((String) it.next(), bbposConfig.key_profile_id)) {
                    return true;
                }
            }
            return false;
        }
        this.logger.w("needsKeyProfileUpdate - Falling back to PIN (PEK0) keyset ID comparison.", new Pair[0]);
        return !Intrinsics.areEqual(bbposConfig.key_profile_pek0, this.embeddedSoftwareVersionProvider.getPinKeysetId());
    }

    private final String getVersion(ClientVersionSpecPb clientVersionSpecPb) {
        VersionInfoPb versionInfoPb = clientVersionSpecPb.version_info;
        String str = versionInfoPb != null ? versionInfoPb.client_version : null;
        return str == null ? "" : str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isUpdateNeeded(UpdateSummary updateSummary) {
        return (updateSummary.getFirmwareSpec() == null && updateSummary.getConfigSpec() == null && updateSummary.getKeyProfileName() == null && updateSummary.getSettingsVersion() == null && updateSummary.getImageRef() == null) ? false : true;
    }
}
