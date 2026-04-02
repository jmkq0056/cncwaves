package com.stripe.jvmcore.gator;

import com.stripe.jvmcore.batchdispatcher.Dispatcher;
import com.stripe.jvmcore.dagger.IO;
import com.stripe.jvmcore.dagger.IsNetworkAvailable;
import com.stripe.proto.api.gator.GatorApi;
import com.stripe.proto.api.gator.ProxySpanPb;
import com.stripe.proto.api.gator.ReportTraceRequest;
import com.stripe.proto.api.gator.ReportedSpanPb;
import dagger.Lazy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: GatorDispatchers.kt */
/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B7\b\u0007\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u000e\b\u0001\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ\u001c\u0010\u000e\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u0011H\u0096@¢\u0006\u0002\u0010\u0012R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/jvmcore/gator/GatorTraceDispatcher;", "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;", "Lcom/stripe/proto/api/gator/ProxySpanPb;", "io", "Lkotlinx/coroutines/CoroutineDispatcher;", "gatorApi", "Ldagger/Lazy;", "Lcom/stripe/proto/api/gator/GatorApi;", "isNetworkAvailable", "Ljavax/inject/Provider;", "", "gatorUploaderOutOfMemoryLogger", "Lcom/stripe/jvmcore/gator/GatorUploaderOutOfMemoryLogger;", "(Lkotlinx/coroutines/CoroutineDispatcher;Ldagger/Lazy;Ljavax/inject/Provider;Lcom/stripe/jvmcore/gator/GatorUploaderOutOfMemoryLogger;)V", "dispatch", "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result;", "batch", "", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "gator"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class GatorTraceDispatcher implements Dispatcher<ProxySpanPb> {
    private final Lazy<GatorApi> gatorApi;
    private final GatorUploaderOutOfMemoryLogger gatorUploaderOutOfMemoryLogger;
    private final CoroutineDispatcher io;
    private final Provider<Boolean> isNetworkAvailable;

    @Inject
    public GatorTraceDispatcher(@IO CoroutineDispatcher io2, Lazy<GatorApi> gatorApi, @IsNetworkAvailable Provider<Boolean> isNetworkAvailable, GatorUploaderOutOfMemoryLogger gatorUploaderOutOfMemoryLogger) {
        Intrinsics.checkNotNullParameter(io2, "io");
        Intrinsics.checkNotNullParameter(gatorApi, "gatorApi");
        Intrinsics.checkNotNullParameter(isNetworkAvailable, "isNetworkAvailable");
        Intrinsics.checkNotNullParameter(gatorUploaderOutOfMemoryLogger, "gatorUploaderOutOfMemoryLogger");
        this.io = io2;
        this.gatorApi = gatorApi;
        this.isNetworkAvailable = isNetworkAvailable;
        this.gatorUploaderOutOfMemoryLogger = gatorUploaderOutOfMemoryLogger;
    }

    /* JADX INFO: renamed from: com.stripe.jvmcore.gator.GatorTraceDispatcher$dispatch$2, reason: invalid class name */
    /* JADX INFO: compiled from: GatorDispatchers.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.jvmcore.gator.GatorTraceDispatcher$dispatch$2", f = "GatorDispatchers.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Dispatcher.Result>, Object> {
        final /* synthetic */ List<ProxySpanPb> $batch;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(List<ProxySpanPb> list, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$batch = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return GatorTraceDispatcher.this.new AnonymousClass2(this.$batch, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Dispatcher.Result> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            List<ReportedSpanPb.SpanPointPb> list;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                if (!((Boolean) GatorTraceDispatcher.this.isNetworkAvailable.get()).booleanValue()) {
                    return Dispatcher.Result.Retry.INSTANCE;
                }
                List<ProxySpanPb> list2 = this.$batch;
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
                Iterator<T> it = list2.iterator();
                while (it.hasNext()) {
                    arrayList.add(new ProxySpanPb(null, null, null, ((ProxySpanPb) it.next()).trace, null, null, 55, null));
                }
                ReportTraceRequest reportTraceRequest = new ReportTraceRequest(arrayList, null, 2, 0 == true ? 1 : 0);
                try {
                    return GatorDispatchersKt.toResult(((GatorApi) GatorTraceDispatcher.this.gatorApi.get()).reportTrace(reportTraceRequest));
                } catch (OutOfMemoryError e) {
                    GatorUploaderOutOfMemoryLogger gatorUploaderOutOfMemoryLogger = GatorTraceDispatcher.this.gatorUploaderOutOfMemoryLogger;
                    int size = reportTraceRequest.proxy_traces.size();
                    List<ProxySpanPb> list3 = reportTraceRequest.proxy_traces;
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list3, 10));
                    Iterator<T> it2 = list3.iterator();
                    while (it2.hasNext()) {
                        ReportedSpanPb reportedSpanPb = ((ProxySpanPb) it2.next()).trace;
                        arrayList2.add(Boxing.boxInt((reportedSpanPb == null || (list = reportedSpanPb.traces) == null) ? 0 : list.size()));
                    }
                    gatorUploaderOutOfMemoryLogger.onOutOfMemoryException(size, CollectionsKt.averageOfInt(arrayList2), e);
                    return Dispatcher.Result.Drop.INSTANCE;
                }
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @Override // com.stripe.jvmcore.batchdispatcher.Dispatcher
    public Object dispatch(List<? extends ProxySpanPb> list, Continuation<? super Dispatcher.Result> continuation) {
        return BuildersKt.withContext(this.io, new AnonymousClass2(list, null), continuation);
    }
}
