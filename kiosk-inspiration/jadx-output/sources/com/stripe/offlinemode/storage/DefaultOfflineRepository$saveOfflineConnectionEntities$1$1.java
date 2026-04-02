package com.stripe.offlinemode.storage;

import com.stripe.proto.model.offline_mode.OfflineConnection;
import com.stripe.proto.model.offline_mode.OfflineLocation;
import com.stripe.proto.model.offline_mode.OfflineReader;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: DefaultOfflineRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.offlinemode.storage.DefaultOfflineRepository$saveOfflineConnectionEntities$1$1", f = "DefaultOfflineRepository.kt", i = {0, 1, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7}, l = {283, 289, 293, 306, 308, 310, 323, 325, 328}, m = "invokeSuspend", n = {"$this$runBlocking", "$this$runBlocking", "$this$runBlocking", "oldReaderEntity", "$this$runBlocking", "stripeLocationId", "readerId", "$this$runBlocking", "stripeLocationId", "readerId", "$this$runBlocking", "stripeLocationId", "savedLocationEntity", "readerId", "$this$runBlocking", "stripeLocationId", "readerId", "locationId", "$this$runBlocking", "readerId", "locationId"}, s = {"L$0", "L$0", "L$0", "L$1", "L$0", "L$1", "J$0", "L$0", "L$1", "J$0", "L$0", "L$1", "L$2", "J$0", "L$0", "L$1", "J$0", "J$1", "L$0", "J$0", "J$1"})
final class DefaultOfflineRepository$saveOfflineConnectionEntities$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Long>, Object> {
    final /* synthetic */ OfflineConnection $offlineConnection;
    final /* synthetic */ OfflineLocation $offlineLocation;
    final /* synthetic */ OfflineReader $offlineReader;
    long J$0;
    long J$1;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ DefaultOfflineRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DefaultOfflineRepository$saveOfflineConnectionEntities$1$1(DefaultOfflineRepository defaultOfflineRepository, OfflineReader offlineReader, OfflineLocation offlineLocation, OfflineConnection offlineConnection, Continuation<? super DefaultOfflineRepository$saveOfflineConnectionEntities$1$1> continuation) {
        super(2, continuation);
        this.this$0 = defaultOfflineRepository;
        this.$offlineReader = offlineReader;
        this.$offlineLocation = offlineLocation;
        this.$offlineConnection = offlineConnection;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DefaultOfflineRepository$saveOfflineConnectionEntities$1$1 defaultOfflineRepository$saveOfflineConnectionEntities$1$1 = new DefaultOfflineRepository$saveOfflineConnectionEntities$1$1(this.this$0, this.$offlineReader, this.$offlineLocation, this.$offlineConnection, continuation);
        defaultOfflineRepository$saveOfflineConnectionEntities$1$1.L$0 = obj;
        return defaultOfflineRepository$saveOfflineConnectionEntities$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Long> continuation) {
        return ((DefaultOfflineRepository$saveOfflineConnectionEntities$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00ea, code lost:
    
        if (r4 == r1) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0248, code lost:
    
        if (r8 == r1) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x02c9, code lost:
    
        if (r2 != r1) goto L70;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x016b A[PHI: r2 r4 r6 r7
      0x016b: PHI (r2v15 kotlinx.coroutines.CoroutineScope) = (r2v10 kotlinx.coroutines.CoroutineScope), (r2v20 kotlinx.coroutines.CoroutineScope) binds: [B:34:0x0167, B:11:0x006a] A[DONT_GENERATE, DONT_INLINE]
      0x016b: PHI (r4v19 long) = (r4v14 long), (r4v20 long) binds: [B:34:0x0167, B:11:0x006a] A[DONT_GENERATE, DONT_INLINE]
      0x016b: PHI (r6v15 java.lang.String) = (r6v13 java.lang.String), (r6v19 java.lang.String) binds: [B:34:0x0167, B:11:0x006a] A[DONT_GENERATE, DONT_INLINE]
      0x016b: PHI (r7v11 java.lang.Object) = (r7v10 java.lang.Object), (r7v18 java.lang.Object) binds: [B:34:0x0167, B:11:0x006a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0222  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x022c  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0266 A[PHI: r4 r6
      0x0266: PHI (r4v29 long) = (r4v27 long), (r4v33 long) binds: [B:53:0x022a, B:65:0x025e] A[DONT_GENERATE, DONT_INLINE]
      0x0266: PHI (r6v31 long) = (r6v29 long), (r6v35 long) binds: [B:53:0x022a, B:65:0x025e] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r33) {
        /*
            Method dump skipped, instruction units count: 752
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.storage.DefaultOfflineRepository$saveOfflineConnectionEntities$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
