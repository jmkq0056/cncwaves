package com.stripe.stripeterminal.internal.common.terminalsession;

import com.squareup.wire.Message;
import com.stripe.jvmcore.logging.terminal.log.Log;
import com.stripe.jvmcore.restclient.RestInterceptor;
import com.stripe.jvmcore.restclient.RestResponse;
import com.stripe.jvmcore.terminal.api.ActivateReaderResponse;
import com.stripe.jvmcore.terminal.tokenrepositories.SessionTokenRepository;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.model.rest.ErrorWrapper;
import com.stripe.stripeterminal.external.models.ConnectionConfiguration;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.internal.common.proto.ProtoConverter;
import com.stripe.stripeterminal.internal.common.resourcerepository.ReaderActivationListener;
import com.stripe.stripeterminal.internal.common.terminalsession.BackgroundActivationResult;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Credentials;
import okhttp3.Request;

/* JADX INFO: compiled from: SessionTokenInterceptor.kt */
/* JADX INFO: loaded from: classes4.dex */
@Singleton
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000 \"2\u00020\u00012\u00020\u0002:\u0002\"#B\u0017\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0088\u0001\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u00110\u000f\"\u001c\b\u0000\u0010\u0012*\u0016\u0012\u0004\u0012\u0002H\u0012\u0012\u0002\b\u00030\u0013j\b\u0012\u0004\u0012\u0002H\u0012`\u0014\"\u001c\b\u0001\u0010\u0010*\u0016\u0012\u0004\u0012\u0002H\u0010\u0012\u0002\b\u00030\u0013j\b\u0012\u0004\u0012\u0002H\u0010`\u0014\"\u001c\b\u0002\u0010\u0011*\u0016\u0012\u0004\u0012\u0002H\u0011\u0012\u0002\b\u00030\u0013j\b\u0012\u0004\u0012\u0002H\u0011`\u00142\u0018\u0010\u0015\u001a\u0014\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u00110\u0016H\u0016J \u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\b\u0010\u001f\u001a\u00020\u0018H\u0016J\u008e\u0001\u0010 \u001a\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u00110\u000f\"\u001c\b\u0000\u0010\u0012*\u0016\u0012\u0004\u0012\u0002H\u0012\u0012\u0002\b\u00030\u0013j\b\u0012\u0004\u0012\u0002H\u0012`\u0014\"\u001c\b\u0001\u0010\u0010*\u0016\u0012\u0004\u0012\u0002H\u0010\u0012\u0002\b\u00030\u0013j\b\u0012\u0004\u0012\u0002H\u0010`\u0014\"\u001c\b\u0002\u0010\u0011*\u0016\u0012\u0004\u0012\u0002H\u0011\u0012\u0002\b\u00030\u0013j\b\u0012\u0004\u0012\u0002H\u0011`\u0014*\u0014\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u00110\u00162\b\u0010!\u001a\u0004\u0018\u00010\tH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u00020\tX\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;", "Lcom/stripe/jvmcore/restclient/RestInterceptor;", "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ReaderActivationListener;", "backgroundActivator", "Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;", "sessionTokenRepository", "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;", "(Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;)V", "name", "", "getName", "()Ljava/lang/String;", "sessionInfo", "Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor$ReaderSessionInfo;", "intercept", "Lcom/stripe/jvmcore/restclient/RestResponse;", "Rsp", "Err", "Rq", "Lcom/squareup/wire/Message;", "Lcom/stripe/jvmcore/restclient/Proto;", "chain", "Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;", "onReaderActivated", "", "config", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "response", "Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;", "onReaderDisconnected", "proceedWithSessionToken", "sessionToken", "Companion", "ReaderSessionInfo", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SessionTokenInterceptor extends RestInterceptor implements ReaderActivationListener {
    private static final Companion Companion = new Companion(null);
    private static final Log LOGGER = Log.INSTANCE.getLogger(SessionTokenInterceptor.class);
    private final BackgroundReaderActivator backgroundActivator;
    private final String name;
    private ReaderSessionInfo sessionInfo;
    private final SessionTokenRepository sessionTokenRepository;

    @Inject
    public SessionTokenInterceptor(BackgroundReaderActivator backgroundActivator, SessionTokenRepository sessionTokenRepository) {
        Intrinsics.checkNotNullParameter(backgroundActivator, "backgroundActivator");
        Intrinsics.checkNotNullParameter(sessionTokenRepository, "sessionTokenRepository");
        this.backgroundActivator = backgroundActivator;
        this.sessionTokenRepository = sessionTokenRepository;
        this.name = "SessionTokenInterceptor";
    }

    @Override // com.stripe.jvmcore.restclient.RestInterceptor
    public String getName() {
        return this.name;
    }

    @Override // com.stripe.jvmcore.restclient.RestInterceptor
    public <Rq extends Message<Rq, ?>, Rsp extends Message<Rsp, ?>, Err extends Message<Err, ?>> RestResponse<Rsp, Err> intercept(RestInterceptor.Chain<Rq, Rsp, Err> chain) {
        Intrinsics.checkNotNullParameter(chain, "chain");
        String stripeSessionToken = this.sessionTokenRepository.getStripeSessionToken();
        RestResponse<Rsp, Err> restResponseProceedWithSessionToken = proceedWithSessionToken(chain, stripeSessionToken);
        if (restResponseProceedWithSessionToken instanceof RestResponse.ServerError) {
            Message response = ((RestResponse.ServerError) restResponseProceedWithSessionToken).getResponse();
            ReaderSessionInfo readerSessionInfo = this.sessionInfo;
            if (readerSessionInfo != null && (response instanceof ErrorWrapper) && ProtoConverter.toTerminalException$default(ProtoConverter.INSTANCE, ((ErrorWrapper) response).error, null, 1, null).getErrorCode() == TerminalErrorCode.SESSION_EXPIRED) {
                BackgroundActivationResult backgroundActivationResultActivateInBackground = this.backgroundActivator.activateInBackground(readerSessionInfo.getReader(), readerSessionInfo.getConfig());
                String stripeSessionToken2 = this.sessionTokenRepository.getStripeSessionToken();
                if ((backgroundActivationResultActivateInBackground instanceof BackgroundActivationResult.ActivationCompleted) && !Intrinsics.areEqual(stripeSessionToken2, stripeSessionToken)) {
                    LOGGER.i("Retrying request with new session token", new Pair[0]);
                    return proceedWithSessionToken(chain, stripeSessionToken2);
                }
            }
        } else if (!(restResponseProceedWithSessionToken instanceof RestResponse.ParseError) && !(restResponseProceedWithSessionToken instanceof RestResponse.Success)) {
            throw new NoWhenBranchMatchedException();
        }
        return restResponseProceedWithSessionToken;
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ReaderActivationListener
    public void onReaderActivated(ConnectionConfiguration config, Reader reader, ActivateReaderResponse response) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(response, "response");
        this.sessionInfo = new ReaderSessionInfo(config, reader);
        this.sessionTokenRepository.setStripeSessionToken(response.getStripeSessionToken());
        this.sessionTokenRepository.setRpcSessionToken(response.getRpcSessionToken());
    }

    @Override // com.stripe.stripeterminal.internal.common.resourcerepository.ReaderActivationListener
    public void onReaderDisconnected() {
        this.sessionInfo = null;
    }

    private final <Rq extends Message<Rq, ?>, Rsp extends Message<Rsp, ?>, Err extends Message<Err, ?>> RestResponse<Rsp, Err> proceedWithSessionToken(RestInterceptor.Chain<Rq, Rsp, Err> chain, String str) {
        Request request = chain.request();
        Request.Builder builderNewBuilder = request.newBuilder();
        String str2 = str;
        if (str2 != null && str2.length() != 0 && request.header("Authorization") == null) {
            builderNewBuilder.header("Authorization", Credentials.basic$default(str, "", null, 4, null));
        }
        return chain.proceed(builderNewBuilder.build());
    }

    /* JADX INFO: compiled from: SessionTokenInterceptor.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0082\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor$ReaderSessionInfo;", "", "config", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "(Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lcom/stripe/stripeterminal/external/models/Reader;)V", "getConfig", "()Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", "getReader", "()Lcom/stripe/stripeterminal/external/models/Reader;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final /* data */ class ReaderSessionInfo {
        private final ConnectionConfiguration config;
        private final Reader reader;

        public static /* synthetic */ ReaderSessionInfo copy$default(ReaderSessionInfo readerSessionInfo, ConnectionConfiguration connectionConfiguration, Reader reader, int i, Object obj) {
            if ((i & 1) != 0) {
                connectionConfiguration = readerSessionInfo.config;
            }
            if ((i & 2) != 0) {
                reader = readerSessionInfo.reader;
            }
            return readerSessionInfo.copy(connectionConfiguration, reader);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final ConnectionConfiguration getConfig() {
            return this.config;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final Reader getReader() {
            return this.reader;
        }

        public final ReaderSessionInfo copy(ConnectionConfiguration config, Reader reader) {
            Intrinsics.checkNotNullParameter(config, "config");
            Intrinsics.checkNotNullParameter(reader, "reader");
            return new ReaderSessionInfo(config, reader);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ReaderSessionInfo)) {
                return false;
            }
            ReaderSessionInfo readerSessionInfo = (ReaderSessionInfo) other;
            return Intrinsics.areEqual(this.config, readerSessionInfo.config) && Intrinsics.areEqual(this.reader, readerSessionInfo.reader);
        }

        public int hashCode() {
            return (this.config.hashCode() * 31) + this.reader.hashCode();
        }

        public String toString() {
            return "ReaderSessionInfo(config=" + this.config + ", reader=" + this.reader + ')';
        }

        public ReaderSessionInfo(ConnectionConfiguration config, Reader reader) {
            Intrinsics.checkNotNullParameter(config, "config");
            Intrinsics.checkNotNullParameter(reader, "reader");
            this.config = config;
            this.reader = reader;
        }

        public final ConnectionConfiguration getConfig() {
            return this.config;
        }

        public final Reader getReader() {
            return this.reader;
        }
    }

    /* JADX INFO: compiled from: SessionTokenInterceptor.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor$Companion;", "", "()V", "LOGGER", "Lcom/stripe/jvmcore/logging/terminal/log/Log;", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
