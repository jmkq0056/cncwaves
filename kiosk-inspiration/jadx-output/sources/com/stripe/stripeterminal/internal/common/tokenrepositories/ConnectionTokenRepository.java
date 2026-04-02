package com.stripe.stripeterminal.internal.common.tokenrepositories;

import com.stripe.jvmcore.dagger.ConnectionTokenManagement;
import com.stripe.jvmcore.logging.terminal.log.Log;
import com.stripe.stripeterminal.external.callable.ConnectionTokenCallback;
import com.stripe.stripeterminal.external.callable.ConnectionTokenProvider;
import com.stripe.stripeterminal.external.models.ConnectionTokenException;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.extensions.TerminalExceptionExtensionsKt;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;

/* JADX INFO: compiled from: ConnectionTokenRepository.kt */
/* JADX INFO: loaded from: classes4.dex */
@Singleton
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0007\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB)\b\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\b\u0001\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\b\b\u0001\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u0015\u001a\u00020\u000bJ\u0006\u0010\u0016\u001a\u00020\u000bJ\b\u0010\u0017\u001a\u00020\u0018H\u0002J\b\u0010\u0019\u001a\u00020\u0014H\u0002J\b\u0010\u001a\u001a\u00020\u0014H\u0002R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\rR\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n\u0018\u00010\u000fj\u0004\u0018\u0001`\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;", "", "tokenProvider", "Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;", "epochProvider", "Lkotlin/Function0;", "", "executor", "Ljava/util/concurrent/ExecutorService;", "(Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Lkotlin/jvm/functions/Function0;Ljava/util/concurrent/ExecutorService;)V", "cachedToken", "", "cachedTokenExpiration", "Ljava/lang/Long;", "exception", "Ljava/lang/Exception;", "Lkotlin/Exception;", "future", "Ljava/util/concurrent/Future;", "clearToken", "", "getToken", "getTokenAndRefresh", "isCachedTokenExpired", "", "refreshToken", "waitForToken", "Companion", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ConnectionTokenRepository {
    private static final Log LOGGER = Log.INSTANCE.getLogger(ConnectionTokenRepository.class);
    public static final String OFFLINE_TOKEN = "psst_offline_token";
    private static final long TIMEOUT_SECONDS = 60;
    private static final int TOKEN_LIFETIME_MS = 1800000;
    private String cachedToken;
    private Long cachedTokenExpiration;
    private final Function0<Long> epochProvider;
    private Exception exception;
    private final ExecutorService executor;
    private Future<?> future;
    private final ConnectionTokenProvider tokenProvider;

    @Inject
    public ConnectionTokenRepository(ConnectionTokenProvider tokenProvider, @ConnectionTokenManagement Function0<Long> epochProvider, @ConnectionTokenManagement ExecutorService executor) {
        Intrinsics.checkNotNullParameter(tokenProvider, "tokenProvider");
        Intrinsics.checkNotNullParameter(epochProvider, "epochProvider");
        Intrinsics.checkNotNullParameter(executor, "executor");
        this.tokenProvider = tokenProvider;
        this.epochProvider = epochProvider;
        this.executor = executor;
        refreshToken();
    }

    public final String getTokenAndRefresh() throws TerminalException {
        getToken();
        String str = this.cachedToken;
        Intrinsics.checkNotNull(str);
        this.cachedToken = null;
        this.cachedTokenExpiration = null;
        refreshToken();
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String getToken() throws com.stripe.stripeterminal.external.models.TerminalException {
        /*
            r1 = this;
            java.lang.String r0 = r1.cachedToken
            if (r0 == 0) goto La
            boolean r0 = r1.isCachedTokenExpired()
            if (r0 == 0) goto L20
        La:
            r0 = 0
            r1.exception = r0
            java.util.concurrent.Future<?> r0 = r1.future
            if (r0 == 0) goto L1a
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            boolean r0 = r0.isDone()
            if (r0 == 0) goto L1d
        L1a:
            r1.refreshToken()
        L1d:
            r1.waitForToken()
        L20:
            java.lang.String r0 = r1.cachedToken
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.tokenrepositories.ConnectionTokenRepository.getToken():java.lang.String");
    }

    public final void clearToken() {
        this.cachedToken = null;
        this.cachedTokenExpiration = null;
        this.exception = null;
    }

    private final boolean isCachedTokenExpired() {
        Long l = this.cachedTokenExpiration;
        return l == null || l.longValue() <= this.epochProvider.invoke().longValue();
    }

    private final void refreshToken() {
        LOGGER.d("refreshToken", new Pair[0]);
        this.future = this.executor.submit(new Runnable() { // from class: com.stripe.stripeterminal.internal.common.tokenrepositories.ConnectionTokenRepository$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ConnectionTokenRepository.refreshToken$lambda$1(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void refreshToken$lambda$1(ConnectionTokenRepository this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        final CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        this$0.tokenProvider.fetchConnectionToken(new ConnectionTokenCallback() { // from class: com.stripe.stripeterminal.internal.common.tokenrepositories.ConnectionTokenRepository$refreshToken$1$1
            @Override // com.stripe.stripeterminal.external.callable.ConnectionTokenCallback
            public void onSuccess(String token) {
                Intrinsics.checkNotNullParameter(token, "token");
                ConnectionTokenRepository.LOGGER.d("fetchConnectionToken.onSuccess", new Pair[0]);
                completableDeferredCompletableDeferred$default.complete(token);
            }

            @Override // com.stripe.stripeterminal.external.callable.ConnectionTokenCallback
            public void onFailure(ConnectionTokenException e) {
                Intrinsics.checkNotNullParameter(e, "e");
                ConnectionTokenException connectionTokenException = e;
                ConnectionTokenRepository.LOGGER.e("Error in external token provider", connectionTokenException, new Pair[0]);
                completableDeferredCompletableDeferred$default.completeExceptionally(connectionTokenException);
            }
        });
        try {
            this$0.cachedToken = (String) BuildersKt__BuildersKt.runBlocking$default(null, new ConnectionTokenRepository$refreshToken$1$2(completableDeferredCompletableDeferred$default, null), 1, null);
            this$0.cachedTokenExpiration = Long.valueOf(this$0.epochProvider.invoke().longValue() + ((long) TOKEN_LIFETIME_MS));
        } catch (InterruptedException e) {
            this$0.exception = e;
        } catch (ExecutionException e2) {
            this$0.exception = e2;
        }
    }

    private final void waitForToken() throws TerminalException {
        try {
            Future<?> future = this.future;
            Intrinsics.checkNotNull(future);
            future.get(60L, TimeUnit.SECONDS);
            Exception exc = this.exception;
            if (exc == null) {
            } else {
                throw TerminalExceptionExtensionsKt.findTerminalExceptionOrWrap(exc, TerminalErrorCode.CONNECTION_TOKEN_PROVIDER_ERROR, "Error retrieving connection token");
            }
        } catch (InterruptedException e) {
            throw TerminalExceptionExtensionsKt.findTerminalExceptionOrWrap(e, TerminalErrorCode.CONNECTION_TOKEN_PROVIDER_ERROR, "Interruption while waiting for connection token");
        } catch (ExecutionException e2) {
            throw TerminalExceptionExtensionsKt.findTerminalExceptionOrWrap(e2, TerminalErrorCode.CONNECTION_TOKEN_PROVIDER_ERROR, "Execution error while retrieving connection token");
        } catch (TimeoutException e3) {
            throw TerminalExceptionExtensionsKt.findTerminalExceptionOrWrap(e3, TerminalErrorCode.CONNECTION_TOKEN_PROVIDER_ERROR, "Timed out waiting for connection token");
        }
    }
}
