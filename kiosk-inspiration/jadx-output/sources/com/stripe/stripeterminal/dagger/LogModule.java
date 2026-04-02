package com.stripe.stripeterminal.dagger;

import com.stripe.core.stripeterminal.log.dagger.AndroidLogModule;
import com.stripe.jvmcore.client.OkHttpClientProvider;
import com.stripe.jvmcore.crpcclient.CrpcClient;
import com.stripe.jvmcore.crpcclient.CustomCrpcInterceptor;
import com.stripe.jvmcore.crpcclient.interfaces.RpcSessionTokenProvider;
import com.stripe.jvmcore.dagger.ClientLogger;
import com.stripe.jvmcore.dagger.LogRole;
import com.stripe.jvmcore.dagger.ObservabilityClientFailures;
import com.stripe.jvmcore.dagger.ReportTraces;
import com.stripe.jvmcore.environment.EnvironmentProvider;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import com.stripe.jvmcore.logging.terminal.dagger.LogLevelModule;
import com.stripe.jvmcore.logging.terminal.log.DeviceRoleLogUploader;
import com.stripe.jvmcore.logging.terminal.log.LogUploader;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.logginginterceptors.ApiLogPointInterceptor;
import com.stripe.jvmcore.restclient.RestInterceptor;
import com.stripe.jvmcore.terminal.tokenrepositories.SessionTokenRepository;
import com.stripe.logwriter.LogWriter;
import com.stripe.proto.terminal.clientlogger.pub.api.ClientLoggerApi;
import com.stripe.proto.terminal.clientlogger.pub.message.health.HealthMetric;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.connectivity.BluetoothScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.connectivity.ConnectivityDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.connectivity.UsbScope;
import com.stripe.stripeterminal.internal.common.crpc.CrpcLogPointInterceptor;
import com.stripe.stripeterminal.internal.common.crpc.IdentifierHeadersInterceptor;
import com.stripe.stripeterminal.internal.common.crpc.PlymouthRequestContextProvider;
import com.stripe.terminal.appinfo.DeviceUuidProvider;
import dagger.Lazy;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;

/* JADX INFO: compiled from: LogModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Æ\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J,\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\bj\u0002`\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u0018\u0010\u0010\u001a\u00020\u00112\u000e\b\u0001\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H\u0007J@\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00172\b\b\u0001\u0010\u0018\u001a\u00020\u00192\b\b\u0001\u0010\u001a\u001a\u00020\u001b2\n\b\u0001\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0007J\u0010\u0010\"\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020$H\u0007J\u0015\u0010%\u001a\u00020\u001b2\u0006\u0010&\u001a\u00020'H\u0001¢\u0006\u0002\b(J/\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\b\b\u0001\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\u00112\u0006\u00100\u001a\u000201H\u0001¢\u0006\u0002\b2J\b\u00103\u001a\u00020.H\u0007J\u0010\u00104\u001a\u0002052\u0006\u00106\u001a\u00020*H\u0007J\n\u00107\u001a\u0004\u0018\u00010\u001dH\u0007J\u0015\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020;H\u0001¢\u0006\u0002\b<J\u0010\u0010=\u001a\u00020\u00192\u0006\u0010>\u001a\u00020?H\u0007J,\u0010@\u001a\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020A\u0012\u0004\u0012\u00020B0\bj\u0002`C2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007¨\u0006D"}, d2 = {"Lcom/stripe/stripeterminal/dagger/LogModule;", "", "()V", "provideApiLogPointInterceptor", "Lcom/stripe/jvmcore/restclient/RestInterceptor;", "apiLogPointInterceptor", "Lcom/stripe/jvmcore/logginginterceptors/ApiLogPointInterceptor;", "provideBluetoothConnectivityHealthLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/BluetoothScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/BluetoothScope$Builder;", "Lcom/stripe/stripeterminal/internal/common/log/BluetoothConnectivityHealthLogger;", "healthLoggerBuilder", "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;", "provideClientLoggerApi", "Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;", "crpcClient", "Ldagger/Lazy;", "Lcom/stripe/jvmcore/crpcclient/CrpcClient;", "provideCrpcClient", "okHttpClientProvider", "Lcom/stripe/jvmcore/client/OkHttpClientProvider;", "serviceUrlProvider", "Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;", "crpcRequestContextProvider", "Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;", "observabilityClientFailuresInterceptor", "Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;", "headerInterceptor", "Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "provideCrpcLogPointInterceptor", "crpcLogPointInterceptor", "Lcom/stripe/stripeterminal/internal/common/crpc/CrpcLogPointInterceptor;", "provideCrpcRequestContextProvider", "requestContextProvider", "Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;", "provideCrpcRequestContextProvider$sdkmanager_publish", "provideDeviceRoleLogUploader", "Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader;", "deviceUuidProvider", "Lcom/stripe/terminal/appinfo/DeviceUuidProvider;", "role", "", "clientLoggerApi", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "provideDeviceRoleLogUploader$sdkmanager_publish", "provideLogRole", "provideLogUploader", "Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;", "uploader", "provideObservabilityClientFailuresInterceptor", "provideRpcSessionTokenProvider", "Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;", "sessionTokenRepository", "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;", "provideRpcSessionTokenProvider$sdkmanager_publish", "provideServiceUrlProvider", "environmentProvider", "Lcom/stripe/jvmcore/environment/EnvironmentProvider;", "provideUsbConnectivityHealthLogger", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope$Builder;", "Lcom/stripe/stripeterminal/internal/common/log/UsbConnectivityHealthLogger;", "sdkmanager_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module(includes = {AndroidLogModule.class, LogLevelModule.class})
public final class LogModule {
    public static final LogModule INSTANCE = new LogModule();

    @Provides
    @ObservabilityClientFailures
    public final CustomCrpcInterceptor provideObservabilityClientFailuresInterceptor() {
        return null;
    }

    private LogModule() {
    }

    @Provides
    @LogRole
    public final String provideLogRole() {
        return "terminal-android-sdk";
    }

    @Provides
    @Singleton
    public final LogUploader provideLogUploader(DeviceRoleLogUploader uploader) {
        Intrinsics.checkNotNullParameter(uploader, "uploader");
        return uploader;
    }

    @Provides
    public final RpcSessionTokenProvider provideRpcSessionTokenProvider$sdkmanager_publish(SessionTokenRepository sessionTokenRepository) {
        Intrinsics.checkNotNullParameter(sessionTokenRepository, "sessionTokenRepository");
        return sessionTokenRepository;
    }

    @Provides
    @Singleton
    public final DeviceRoleLogUploader provideDeviceRoleLogUploader$sdkmanager_publish(DeviceUuidProvider deviceUuidProvider, @LogRole String role, ClientLoggerApi clientLoggerApi, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(deviceUuidProvider, "deviceUuidProvider");
        Intrinsics.checkNotNullParameter(role, "role");
        Intrinsics.checkNotNullParameter(clientLoggerApi, "clientLoggerApi");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new DeviceRoleLogUploader(deviceUuidProvider, role, clientLoggerApi, loggerFactory);
    }

    @Provides
    @Singleton
    public final CrpcClient.CrpcRequestContextProvider provideCrpcRequestContextProvider$sdkmanager_publish(PlymouthRequestContextProvider requestContextProvider) {
        Intrinsics.checkNotNullParameter(requestContextProvider, "requestContextProvider");
        return requestContextProvider;
    }

    @Provides
    @ClientLogger
    public final CrpcClient.BaseUrlProvider provideServiceUrlProvider(final EnvironmentProvider environmentProvider) {
        Intrinsics.checkNotNullParameter(environmentProvider, "environmentProvider");
        return new CrpcClient.BaseUrlProvider() { // from class: com.stripe.stripeterminal.dagger.LogModule$$ExternalSyntheticLambda0
            @Override // com.stripe.jvmcore.crpcclient.CrpcClient.BaseUrlProvider
            public final String getBaseUrl() {
                return LogModule.provideServiceUrlProvider$lambda$0(environmentProvider);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String provideServiceUrlProvider$lambda$0(EnvironmentProvider environmentProvider) {
        Intrinsics.checkNotNullParameter(environmentProvider, "$environmentProvider");
        return environmentProvider.getEnvironment().getClientLoggerApiUrl();
    }

    @Provides
    @Singleton
    @ClientLogger
    public final CrpcClient provideCrpcClient(final OkHttpClientProvider okHttpClientProvider, @ClientLogger CrpcClient.BaseUrlProvider serviceUrlProvider, @ClientLogger CrpcClient.CrpcRequestContextProvider crpcRequestContextProvider, @ObservabilityClientFailures CustomCrpcInterceptor observabilityClientFailuresInterceptor, final IdentifierHeadersInterceptor headerInterceptor, LogWriter logWriter) {
        Intrinsics.checkNotNullParameter(okHttpClientProvider, "okHttpClientProvider");
        Intrinsics.checkNotNullParameter(serviceUrlProvider, "serviceUrlProvider");
        Intrinsics.checkNotNullParameter(crpcRequestContextProvider, "crpcRequestContextProvider");
        Intrinsics.checkNotNullParameter(headerInterceptor, "headerInterceptor");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        CrpcClient.Builder builder = new CrpcClient.Builder(new Function0<OkHttpClient>() { // from class: com.stripe.stripeterminal.dagger.LogModule.provideCrpcClient.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final OkHttpClient invoke() {
                return okHttpClientProvider.get().newBuilder().addInterceptor(headerInterceptor).build();
            }
        }, serviceUrlProvider, crpcRequestContextProvider, logWriter);
        if (observabilityClientFailuresInterceptor != null) {
            builder.addCustomCrpcInterceptor(observabilityClientFailuresInterceptor);
        }
        return builder.build();
    }

    @Provides
    @Singleton
    public final ClientLoggerApi provideClientLoggerApi(@ClientLogger Lazy<CrpcClient> crpcClient) {
        Intrinsics.checkNotNullParameter(crpcClient, "crpcClient");
        return new ClientLoggerApi(crpcClient);
    }

    @Provides
    @Singleton
    @ReportTraces
    public final CustomCrpcInterceptor provideCrpcLogPointInterceptor(CrpcLogPointInterceptor crpcLogPointInterceptor) {
        Intrinsics.checkNotNullParameter(crpcLogPointInterceptor, "crpcLogPointInterceptor");
        return crpcLogPointInterceptor;
    }

    @Provides
    @Singleton
    @ReportTraces
    public final RestInterceptor provideApiLogPointInterceptor(ApiLogPointInterceptor apiLogPointInterceptor) {
        Intrinsics.checkNotNullParameter(apiLogPointInterceptor, "apiLogPointInterceptor");
        return apiLogPointInterceptor;
    }

    @Provides
    @Singleton
    public final HealthLogger<ConnectivityDomain, ConnectivityDomain.Builder, BluetoothScope, BluetoothScope.Builder> provideBluetoothConnectivityHealthLogger(HealthLoggerBuilder healthLoggerBuilder) {
        Intrinsics.checkNotNullParameter(healthLoggerBuilder, "healthLoggerBuilder");
        return new HealthLoggerBuilder.DomainedBuilder.ScopedBuilder(new HealthLoggerBuilder.DomainedBuilder(healthLoggerBuilder, ConnectivityDomain.class, ConnectivityDomain.Builder.class, new Function2<HealthMetric.Builder, ConnectivityDomain, Unit>() { // from class: com.stripe.stripeterminal.dagger.LogModule.provideBluetoothConnectivityHealthLogger.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(HealthMetric.Builder builder, ConnectivityDomain connectivityDomain) {
                invoke2(builder, connectivityDomain);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(HealthMetric.Builder withDomain, ConnectivityDomain d) {
                Intrinsics.checkNotNullParameter(withDomain, "$this$withDomain");
                Intrinsics.checkNotNullParameter(d, "d");
                withDomain.connectivity = d;
            }
        }), BluetoothScope.class, BluetoothScope.Builder.class, new Function2<ConnectivityDomain.Builder, BluetoothScope, Unit>() { // from class: com.stripe.stripeterminal.dagger.LogModule.provideBluetoothConnectivityHealthLogger.2
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(ConnectivityDomain.Builder builder, BluetoothScope bluetoothScope) {
                invoke2(builder, bluetoothScope);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(ConnectivityDomain.Builder withScope, BluetoothScope s) {
                Intrinsics.checkNotNullParameter(withScope, "$this$withScope");
                Intrinsics.checkNotNullParameter(s, "s");
                withScope.bluetooth = s;
            }
        }).build();
    }

    @Provides
    @Singleton
    public final HealthLogger<ConnectivityDomain, ConnectivityDomain.Builder, UsbScope, UsbScope.Builder> provideUsbConnectivityHealthLogger(HealthLoggerBuilder healthLoggerBuilder) {
        Intrinsics.checkNotNullParameter(healthLoggerBuilder, "healthLoggerBuilder");
        return new HealthLoggerBuilder.DomainedBuilder.ScopedBuilder(new HealthLoggerBuilder.DomainedBuilder(healthLoggerBuilder, ConnectivityDomain.class, ConnectivityDomain.Builder.class, new Function2<HealthMetric.Builder, ConnectivityDomain, Unit>() { // from class: com.stripe.stripeterminal.dagger.LogModule.provideUsbConnectivityHealthLogger.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(HealthMetric.Builder builder, ConnectivityDomain connectivityDomain) {
                invoke2(builder, connectivityDomain);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(HealthMetric.Builder withDomain, ConnectivityDomain d) {
                Intrinsics.checkNotNullParameter(withDomain, "$this$withDomain");
                Intrinsics.checkNotNullParameter(d, "d");
                withDomain.connectivity = d;
            }
        }), UsbScope.class, UsbScope.Builder.class, new Function2<ConnectivityDomain.Builder, UsbScope, Unit>() { // from class: com.stripe.stripeterminal.dagger.LogModule.provideUsbConnectivityHealthLogger.2
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(ConnectivityDomain.Builder builder, UsbScope usbScope) {
                invoke2(builder, usbScope);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(ConnectivityDomain.Builder withScope, UsbScope s) {
                Intrinsics.checkNotNullParameter(withScope, "$this$withScope");
                Intrinsics.checkNotNullParameter(s, "s");
                withScope.usb = s;
            }
        }).build();
    }
}
