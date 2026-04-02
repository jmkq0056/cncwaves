package com.stripe.jvmcore.clientlogger;

import com.stripe.jvmcore.batchdispatcher.Dispatcher;
import com.stripe.jvmcore.dagger.IO;
import com.stripe.jvmcore.dagger.IsNetworkAvailable;
import com.stripe.logwriter.LogWriter;
import com.stripe.proto.api.gator.ProxySpanPb;
import com.stripe.proto.terminal.clientlogger.pub.api.ClientLoggerApi;
import com.stripe.proto.terminal.clientlogger.pub.api.ReportTraceRequest;
import dagger.Lazy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Provider;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: ClientLoggerDispatchers.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B5\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u000e\b\u0001\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\u0002\u0010\rJ\u001c\u0010\u000e\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u0011H\u0096@¢\u0006\u0002\u0010\u0012R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/jvmcore/clientlogger/ClientLoggerTraceDispatcher;", "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;", "Lcom/stripe/proto/api/gator/ProxySpanPb;", "io", "Lkotlinx/coroutines/CoroutineDispatcher;", "api", "Ldagger/Lazy;", "Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "isNetworkAvailable", "Ljavax/inject/Provider;", "", "(Lkotlinx/coroutines/CoroutineDispatcher;Ldagger/Lazy;Lcom/stripe/logwriter/LogWriter;Ljavax/inject/Provider;)V", "dispatch", "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result;", "batch", "", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "clientlogger"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ClientLoggerTraceDispatcher implements Dispatcher<ProxySpanPb> {
    private final Lazy<ClientLoggerApi> api;
    private final CoroutineDispatcher io;
    private final Provider<Boolean> isNetworkAvailable;
    private final LogWriter logWriter;

    public ClientLoggerTraceDispatcher(@IO CoroutineDispatcher io2, Lazy<ClientLoggerApi> api, LogWriter logWriter, @IsNetworkAvailable Provider<Boolean> isNetworkAvailable) {
        Intrinsics.checkNotNullParameter(io2, "io");
        Intrinsics.checkNotNullParameter(api, "api");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        Intrinsics.checkNotNullParameter(isNetworkAvailable, "isNetworkAvailable");
        this.io = io2;
        this.api = api;
        this.logWriter = logWriter;
        this.isNetworkAvailable = isNetworkAvailable;
    }

    /* JADX INFO: renamed from: com.stripe.jvmcore.clientlogger.ClientLoggerTraceDispatcher$dispatch$2, reason: invalid class name */
    /* JADX INFO: compiled from: ClientLoggerDispatchers.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.jvmcore.clientlogger.ClientLoggerTraceDispatcher$dispatch$2", f = "ClientLoggerDispatchers.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
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
            return ClientLoggerTraceDispatcher.this.new AnonymousClass2(this.$batch, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Dispatcher.Result> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                if (!((Boolean) ClientLoggerTraceDispatcher.this.isNetworkAvailable.get()).booleanValue()) {
                    return Dispatcher.Result.Retry.INSTANCE;
                }
                List<ProxySpanPb> list = this.$batch;
                ClientLoggerTraceDispatcher clientLoggerTraceDispatcher = ClientLoggerTraceDispatcher.this;
                ArrayList arrayList = new ArrayList();
                Iterator<T> it = list.iterator();
                while (it.hasNext()) {
                    com.stripe.proto.terminal.clientlogger.pub.api.ProxySpanPb clientLoggerProxySpanPb = UtilsKt.toClientLoggerProxySpanPb((ProxySpanPb) it.next(), clientLoggerTraceDispatcher.logWriter);
                    if (clientLoggerProxySpanPb != null) {
                        arrayList.add(clientLoggerProxySpanPb);
                    }
                }
                ArrayList arrayList2 = arrayList;
                if (arrayList2.isEmpty()) {
                    return Dispatcher.Result.Drop.INSTANCE;
                }
                return ClientLoggerDispatchersKt.toResult(((ClientLoggerApi) ClientLoggerTraceDispatcher.this.api.get()).reportTrace(new ReportTraceRequest(arrayList2, null, 2, 0 == true ? 1 : 0)));
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @Override // com.stripe.jvmcore.batchdispatcher.Dispatcher
    public Object dispatch(List<? extends ProxySpanPb> list, Continuation<? super Dispatcher.Result> continuation) {
        return BuildersKt.withContext(this.io, new AnonymousClass2(list, null), continuation);
    }
}
