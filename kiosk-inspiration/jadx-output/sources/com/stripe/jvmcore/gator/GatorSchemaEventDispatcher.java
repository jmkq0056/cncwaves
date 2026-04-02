package com.stripe.jvmcore.gator;

import com.stripe.jvmcore.batchdispatcher.Dispatcher;
import com.stripe.jvmcore.dagger.IO;
import com.stripe.jvmcore.dagger.IsNetworkAvailable;
import com.stripe.proto.api.gator.GatorApi;
import com.stripe.proto.api.gator.LogEvent;
import com.stripe.proto.api.gator.ReportLogEventsRequest;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;
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

/* JADX INFO: compiled from: GatorDispatchers.kt */
/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B)\b\u0007\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000e\b\u0001\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0002\u0010\nJ\u001c\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00020\u000eH\u0096@¢\u0006\u0002\u0010\u000fR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/stripe/jvmcore/gator/GatorSchemaEventDispatcher;", "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;", "Lcom/stripe/proto/api/gator/LogEvent;", "io", "Lkotlinx/coroutines/CoroutineDispatcher;", "gatorApi", "Lcom/stripe/proto/api/gator/GatorApi;", "isNetworkAvailable", "Ljavax/inject/Provider;", "", "(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/proto/api/gator/GatorApi;Ljavax/inject/Provider;)V", "dispatch", "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result;", "batch", "", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "gator"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class GatorSchemaEventDispatcher implements Dispatcher<LogEvent> {
    private final GatorApi gatorApi;
    private final CoroutineDispatcher io;
    private final Provider<Boolean> isNetworkAvailable;

    @Inject
    public GatorSchemaEventDispatcher(@IO CoroutineDispatcher io2, GatorApi gatorApi, @IsNetworkAvailable Provider<Boolean> isNetworkAvailable) {
        Intrinsics.checkNotNullParameter(io2, "io");
        Intrinsics.checkNotNullParameter(gatorApi, "gatorApi");
        Intrinsics.checkNotNullParameter(isNetworkAvailable, "isNetworkAvailable");
        this.io = io2;
        this.gatorApi = gatorApi;
        this.isNetworkAvailable = isNetworkAvailable;
    }

    /* JADX INFO: renamed from: com.stripe.jvmcore.gator.GatorSchemaEventDispatcher$dispatch$2, reason: invalid class name */
    /* JADX INFO: compiled from: GatorDispatchers.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.jvmcore.gator.GatorSchemaEventDispatcher$dispatch$2", f = "GatorDispatchers.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Dispatcher.Result>, Object> {
        final /* synthetic */ List<LogEvent> $batch;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(List<LogEvent> list, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$batch = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return GatorSchemaEventDispatcher.this.new AnonymousClass2(this.$batch, continuation);
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
                if (!((Boolean) GatorSchemaEventDispatcher.this.isNetworkAvailable.get()).booleanValue()) {
                    return Dispatcher.Result.Retry.INSTANCE;
                }
                return GatorDispatchersKt.toResult(GatorSchemaEventDispatcher.this.gatorApi.reportLogEvents(new ReportLogEventsRequest(this.$batch, null, 2, 0 == true ? 1 : 0)));
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @Override // com.stripe.jvmcore.batchdispatcher.Dispatcher
    public Object dispatch(List<? extends LogEvent> list, Continuation<? super Dispatcher.Result> continuation) {
        return BuildersKt.withContext(this.io, new AnonymousClass2(list, null), continuation);
    }
}
