package com.stripe.offlinemode.storage;

import com.stripe.proto.model.offline_mode.OfflineConnection;
import com.stripe.proto.model.offline_mode.OfflineLocation;
import com.stripe.proto.model.offline_mode.OfflineReader;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: DefaultOfflineRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcom/stripe/proto/model/offline_mode/OfflineLocation;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.offlinemode.storage.DefaultOfflineRepository$getOfflineLocationForConnection$1$1", f = "DefaultOfflineRepository.kt", i = {0}, l = {500, 503}, m = "invokeSuspend", n = {"$this$runBlocking"}, s = {"L$0"})
final class DefaultOfflineRepository$getOfflineLocationForConnection$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super OfflineLocation>, Object> {
    final /* synthetic */ OfflineConnection $offlineConnection;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ DefaultOfflineRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DefaultOfflineRepository$getOfflineLocationForConnection$1$1(DefaultOfflineRepository defaultOfflineRepository, OfflineConnection offlineConnection, Continuation<? super DefaultOfflineRepository$getOfflineLocationForConnection$1$1> continuation) {
        super(2, continuation);
        this.this$0 = defaultOfflineRepository;
        this.$offlineConnection = offlineConnection;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DefaultOfflineRepository$getOfflineLocationForConnection$1$1 defaultOfflineRepository$getOfflineLocationForConnection$1$1 = new DefaultOfflineRepository$getOfflineLocationForConnection$1$1(this.this$0, this.$offlineConnection, continuation);
        defaultOfflineRepository$getOfflineLocationForConnection$1$1.L$0 = obj;
        return defaultOfflineRepository$getOfflineLocationForConnection$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super OfflineLocation> continuation) {
        return ((DefaultOfflineRepository$getOfflineLocationForConnection$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws TerminalException {
        DefaultOfflineRepository defaultOfflineRepository;
        OfflineConnection offlineConnection;
        OfflineLocation offlineLocationDecrypt;
        OfflineReaderEntity offlineReaderEntity;
        OfflineReader offlineReaderDecrypt;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.L$0 = (CoroutineScope) this.L$0;
            this.label = 1;
            obj = this.this$0.offlineLocationDao.getById(this.$offlineConnection.location_id, this);
            if (obj != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            offlineConnection = (OfflineConnection) this.L$1;
            defaultOfflineRepository = (DefaultOfflineRepository) this.L$0;
            ResultKt.throwOnFailure(obj);
            offlineReaderEntity = (OfflineReaderEntity) obj;
            if (offlineReaderEntity == null && (offlineReaderDecrypt = defaultOfflineRepository.offlineReaderCipher.decrypt(offlineReaderEntity)) != null) {
                OfflineLocation offlineLocationExtractEmbeddedOfflineLocation = defaultOfflineRepository.extractEmbeddedOfflineLocation(offlineReaderDecrypt, offlineConnection);
                if (offlineLocationExtractEmbeddedOfflineLocation != null) {
                    return offlineLocationExtractEmbeddedOfflineLocation;
                }
                throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Finding offline location with ID " + this.$offlineConnection.location_id + " returned null.", null, null, 12, null);
            }
            throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Failed to fetch reader with ID " + offlineConnection.reader_id + '.', null, null, 12, null);
        }
        ResultKt.throwOnFailure(obj);
        OfflineLocationEntity offlineLocationEntity = (OfflineLocationEntity) obj;
        if (offlineLocationEntity != null && (offlineLocationDecrypt = this.this$0.offlineLocationCipher.decrypt(offlineLocationEntity)) != null) {
            return offlineLocationDecrypt;
        }
        defaultOfflineRepository = this.this$0;
        OfflineConnection offlineConnection2 = this.$offlineConnection;
        OfflineReaderDao offlineReaderDao = defaultOfflineRepository.offlineReaderDao;
        long j = offlineConnection2.reader_id;
        this.L$0 = defaultOfflineRepository;
        this.L$1 = offlineConnection2;
        this.label = 2;
        Object byReaderId = offlineReaderDao.getByReaderId(j, this);
        if (byReaderId != coroutine_suspended) {
            offlineConnection = offlineConnection2;
            obj = byReaderId;
            offlineReaderEntity = (OfflineReaderEntity) obj;
            if (offlineReaderEntity == null) {
            }
            throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Failed to fetch reader with ID " + offlineConnection.reader_id + '.', null, null, 12, null);
        }
        return coroutine_suspended;
    }
}
