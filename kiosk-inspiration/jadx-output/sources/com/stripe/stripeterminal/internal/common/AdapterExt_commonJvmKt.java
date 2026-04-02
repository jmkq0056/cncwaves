package com.stripe.stripeterminal.internal.common;

import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import java.util.concurrent.ExecutionException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.Deferred;

/* JADX INFO: compiled from: AdapterExt.commonJvm.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a!\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"executeBlockingAdapterOperation", "Lkotlin/Result;", "T", "Lkotlinx/coroutines/Deferred;", "(Lkotlinx/coroutines/Deferred;)Ljava/lang/Object;", "public_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class AdapterExt_commonJvmKt {
    public static final <T> Object executeBlockingAdapterOperation(Deferred<? extends T> deferred) {
        Intrinsics.checkNotNullParameter(deferred, "<this>");
        try {
            Result.Companion companion = Result.INSTANCE;
            try {
                try {
                    return Result.m817constructorimpl(BuildersKt__BuildersKt.runBlocking$default(null, new AdapterExt_commonJvmKt$executeBlockingAdapterOperation$1$1(deferred, null), 1, null));
                } catch (ExecutionException e) {
                    if (e.getCause() instanceof TerminalException) {
                        Throwable cause = e.getCause();
                        Intrinsics.checkNotNull(cause, "null cannot be cast to non-null type com.stripe.stripeterminal.external.models.TerminalException");
                        throw ((TerminalException) cause);
                    }
                    throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Exception thrown during execution", e, null, 8, null);
                }
            } catch (InterruptedException e2) {
                throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Operation was interrupted", e2, null, 8, null);
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m817constructorimpl(ResultKt.createFailure(th));
        }
    }
}
