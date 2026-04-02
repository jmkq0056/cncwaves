package com.stripe.spos.sentry.http;

import com.stripe.spos.sentry.http.models.BuildConfigData;
import com.stripe.spos.sentry.http.models.Report;
import com.sun.jna.platform.win32.WinError;
import io.ktor.client.HttpClient;
import io.ktor.client.HttpClientConfig;
import io.ktor.client.HttpClientKt;
import io.ktor.client.engine.HttpClientEngine;
import io.ktor.client.engine.HttpClientEngineFactory;
import io.ktor.client.engine.okhttp.OkHttp;
import io.ktor.client.plugins.DefaultRequest;
import io.ktor.client.plugins.UserAgent;
import io.ktor.client.plugins.contentnegotiation.ContentNegotiation;
import io.ktor.client.request.UtilsKt;
import io.ktor.http.ContentType;
import io.ktor.http.HttpMessagePropertiesKt;
import io.ktor.http.URLBuilder;
import io.ktor.http.URLBuilderKt;
import io.ktor.http.URLProtocol;
import io.ktor.serialization.kotlinx.json.JsonSupportKt;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.datetime.Clock;
import kotlinx.serialization.json.JsonBuilder;
import kotlinx.serialization.json.JsonKt;

/* JADX INFO: compiled from: SentryHttpClient.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B)\b\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ+\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0018\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J$\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u001c\u001a\u00020\u0018H\u0082@ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001d\u0010\u001eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006\u001f"}, d2 = {"Lcom/stripe/spos/sentry/http/SentryHttpClient;", "Lcom/stripe/spos/sentry/http/ErrorReporter;", "config", "Lcom/stripe/spos/sentry/http/SentryConfig;", "(Lcom/stripe/spos/sentry/http/SentryConfig;)V", "engine", "Lio/ktor/client/engine/HttpClientEngine;", "clock", "Lkotlinx/datetime/Clock;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "(Lio/ktor/client/engine/HttpClientEngine;Lkotlinx/datetime/Clock;Lcom/stripe/spos/sentry/http/SentryConfig;Lkotlinx/coroutines/CoroutineScope;)V", "httpClient", "Lio/ktor/client/HttpClient;", "blockingReportError", "Lkotlin/Result;", "Lcom/stripe/spos/sentry/http/models/ErrorReportIdentifier;", "error", "", "handled", "", "blockingReportError-gIAlu-s", "(Ljava/lang/Throwable;Z)Ljava/lang/Object;", "createReport", "Lcom/stripe/spos/sentry/http/models/Report;", "reportErrorAsync", "", "submitReport", "report", "submitReport-gIAlu-s", "(Lcom/stripe/spos/sentry/http/models/Report;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sentry-http"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SentryHttpClient implements ErrorReporter {
    private final SentryConfig config;
    private final HttpClient httpClient;
    private final CoroutineScope scope;

    public SentryHttpClient(HttpClientEngine engine, final Clock clock, SentryConfig config, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(engine, "engine");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.config = config;
        this.scope = scope;
        this.httpClient = HttpClientKt.HttpClient(engine, new Function1<HttpClientConfig<?>, Unit>() { // from class: com.stripe.spos.sentry.http.SentryHttpClient$httpClient$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(HttpClientConfig<?> httpClientConfig) {
                invoke2(httpClientConfig);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(HttpClientConfig<?> HttpClient) {
                Intrinsics.checkNotNullParameter(HttpClient, "$this$HttpClient");
                UserAgent.Companion companion = UserAgent.INSTANCE;
                final SentryHttpClient sentryHttpClient = this.this$0;
                HttpClient.install(companion, new Function1<UserAgent.Config, Unit>() { // from class: com.stripe.spos.sentry.http.SentryHttpClient$httpClient$1.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(UserAgent.Config config2) {
                        invoke2(config2);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(UserAgent.Config install) {
                        Intrinsics.checkNotNullParameter(install, "$this$install");
                        install.setAgent(sentryHttpClient.config.getUserAgent());
                    }
                });
                HttpClient.install(ContentNegotiation.INSTANCE, new Function1<ContentNegotiation.Config, Unit>() { // from class: com.stripe.spos.sentry.http.SentryHttpClient$httpClient$1.2
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(ContentNegotiation.Config config2) {
                        invoke2(config2);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(ContentNegotiation.Config install) {
                        Intrinsics.checkNotNullParameter(install, "$this$install");
                        JsonSupportKt.json$default(install, JsonKt.Json$default(null, new Function1<JsonBuilder, Unit>() { // from class: com.stripe.spos.sentry.http.SentryHttpClient.httpClient.1.2.1
                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(JsonBuilder jsonBuilder) {
                                invoke2(jsonBuilder);
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(JsonBuilder Json) {
                                Intrinsics.checkNotNullParameter(Json, "$this$Json");
                                Json.setPrettyPrint(true);
                                Json.setIgnoreUnknownKeys(true);
                            }
                        }, 1, null), null, 2, null);
                    }
                });
                DefaultRequest.Companion companion2 = DefaultRequest.INSTANCE;
                final SentryHttpClient sentryHttpClient2 = this.this$0;
                final Clock clock2 = clock;
                HttpClient.install(companion2, new Function1<DefaultRequest.DefaultRequestBuilder, Unit>() { // from class: com.stripe.spos.sentry.http.SentryHttpClient$httpClient$1.3
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(DefaultRequest.DefaultRequestBuilder defaultRequestBuilder) {
                        invoke2(defaultRequestBuilder);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(DefaultRequest.DefaultRequestBuilder install) {
                        Intrinsics.checkNotNullParameter(install, "$this$install");
                        final SentryHttpClient sentryHttpClient3 = sentryHttpClient2;
                        install.url(new Function1<URLBuilder, Unit>() { // from class: com.stripe.spos.sentry.http.SentryHttpClient.httpClient.1.3.1
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(URLBuilder uRLBuilder) {
                                invoke2(uRLBuilder);
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(URLBuilder url) {
                                Intrinsics.checkNotNullParameter(url, "$this$url");
                                url.setHost(sentryHttpClient3.config.getDsn().getHost());
                                url.setProtocol(URLProtocol.INSTANCE.getHTTPS());
                                URLBuilderKt.path(url, "api/" + sentryHttpClient3.config.getDsn().getProjectId() + '/');
                            }
                        });
                        DefaultRequest.DefaultRequestBuilder defaultRequestBuilder = install;
                        UtilsKt.header(defaultRequestBuilder, "X-Sentry-Auth", sentryHttpClient2.config.createAuthHeader$sentry_http(clock2.now()));
                        HttpMessagePropertiesKt.contentType(defaultRequestBuilder, ContentType.Application.INSTANCE.getJson());
                    }
                });
            }
        });
    }

    public /* synthetic */ SentryHttpClient(HttpClientEngine httpClientEngine, Clock clock, SentryConfig sentryConfig, CoroutineScope coroutineScope, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(httpClientEngine, clock, sentryConfig, (i & 8) != 0 ? CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()) : coroutineScope);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SentryHttpClient(SentryConfig config) {
        this(HttpClientEngineFactory.DefaultImpls.create$default(OkHttp.INSTANCE, null, 1, null), Clock.System.INSTANCE, config, null, 8, null);
        Intrinsics.checkNotNullParameter(config, "config");
    }

    private final Report createReport(Throwable error, boolean handled) {
        BuildConfigData buildConfigData = new BuildConfigData(this.config.getEnvironment().getLibraryPackageName(), this.config.getEnvironment().getLibraryVersionName(), this.config.getEnvironment().getLibraryVersionCode());
        String simpleName = error.getClass().getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
        String message = error.getMessage();
        if (message == null) {
            message = "";
        }
        StackTraceElement[] stackTrace = error.getStackTrace();
        Intrinsics.checkNotNullExpressionValue(stackTrace, "getStackTrace(...)");
        StackTraceElement[] stackTraceElementArr = stackTrace;
        ArrayList arrayList = new ArrayList(stackTraceElementArr.length);
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            int lineNumber = stackTraceElement.getLineNumber();
            String className = stackTraceElement.getClassName();
            Intrinsics.checkNotNullExpressionValue(className, "getClassName(...)");
            String methodName = stackTraceElement.getMethodName();
            Intrinsics.checkNotNullExpressionValue(methodName, "getMethodName(...)");
            arrayList.add(new Report.StackTraceFrame(lineNumber, className, methodName));
        }
        return new Report(buildConfigData, new Report.ExceptionValuesSchema(CollectionsKt.listOf(new Report.ExceptionSchema(simpleName, message, new Report.StackTraceSchema(arrayList), new Report.MechanismSchema(handled)))), MapsKt.plus(MapsKt.mapOf(TuplesKt.to("locale", this.config.getEnvironment().getLocaleCountry()), TuplesKt.to("environment", this.config.getEnvironment().getEnvironment()), TuplesKt.to("android_os_version", String.valueOf(this.config.getEnvironment().getAndroidOsVersion()))), this.config.getCustomTags()), this.config.getContexts());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x011d, code lost:
    
        if (r13 == r1) goto L50;
     */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0108 A[Catch: all -> 0x003f, TryCatch #1 {all -> 0x003f, blocks: (B:15:0x0035, B:51:0x0120, B:52:0x0129, B:16:0x003a, B:45:0x0108, B:46:0x010f, B:47:0x0116, B:39:0x00d7, B:41:0x00e5, B:48:0x0117), top: B:56:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x010f A[Catch: all -> 0x003f, TryCatch #1 {all -> 0x003f, blocks: (B:15:0x0035, B:51:0x0120, B:52:0x0129, B:16:0x003a, B:45:0x0108, B:46:0x010f, B:47:0x0116, B:39:0x00d7, B:41:0x00e5, B:48:0x0117), top: B:56:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: submitReport-gIAlu-s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m500submitReportgIAlus(com.stripe.spos.sentry.http.models.Report r12, kotlin.coroutines.Continuation<? super kotlin.Result<com.stripe.spos.sentry.http.models.ErrorReportIdentifier>> r13) {
        /*
            Method dump skipped, instruction units count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.spos.sentry.http.SentryHttpClient.m500submitReportgIAlus(com.stripe.spos.sentry.http.models.Report, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.stripe.spos.sentry.http.ErrorReporter
    /* JADX INFO: renamed from: blockingReportError-gIAlu-s */
    public Object mo498blockingReportErrorgIAlus(Throwable error, boolean handled) {
        Intrinsics.checkNotNullParameter(error, "error");
        return ((Result) BuildersKt__BuildersKt.runBlocking$default(null, new SentryHttpClient$blockingReportError$1(this, createReport(error, handled), null), 1, null)).getValue();
    }

    /* JADX INFO: renamed from: com.stripe.spos.sentry.http.SentryHttpClient$reportErrorAsync$1, reason: invalid class name */
    /* JADX INFO: compiled from: SentryHttpClient.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.spos.sentry.http.SentryHttpClient$reportErrorAsync$1", f = "SentryHttpClient.kt", i = {}, l = {WinError.ERROR_IS_JOIN_TARGET}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Report $report;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Report report, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$report = report;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SentryHttpClient.this.new AnonymousClass1(this.$report, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (SentryHttpClient.this.m500submitReportgIAlus(this.$report, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                ((Result) obj).getValue();
            }
            return Unit.INSTANCE;
        }
    }

    @Override // com.stripe.spos.sentry.http.ErrorReporter
    public void reportErrorAsync(Throwable error, boolean handled) {
        Intrinsics.checkNotNullParameter(error, "error");
        BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new AnonymousClass1(createReport(error, handled), null), 3, null);
    }
}
