package com.stripe.stripeterminal.dagger;

import android.content.Context;
import com.stripe.core.device.SerialSupplier;
import com.stripe.jvmcore.dagger.AppScope;
import com.stripe.jvmcore.dagger.ForApplication;
import com.stripe.jvmcore.dagger.Main;
import com.stripe.jvmcore.featureflag.FeatureFlagsRepository;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.offlinemode.readerevent.ReaderEventContracts;
import com.stripe.jvmcore.offlinemode.repositories.OfflineStatusDetailsListener;
import com.stripe.jvmcore.terminal.requestfactories.JackRabbitApiRequestFactory;
import com.stripe.stripeterminal.external.callable.ConnectionTokenProvider;
import com.stripe.stripeterminal.internal.common.CurrentActivityTracker;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.common.api.ApiRequestFactory;
import com.stripe.stripeterminal.internal.common.crpc.RemoteReaderRequestContextProvider;
import com.stripe.stripeterminal.internal.common.remotereadercontrollers.ReaderActivator;
import com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController;
import com.stripe.stripeterminal.internal.common.terminalsession.HandoffConnectionTokenProviderSupplier;
import dagger.Module;
import dagger.Provides;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: HandoffClientModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0001\u0018\u00002\u00020\u0001:\u0001'B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007J\u001a\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\nH\u0007J\u0014\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0007J\u0080\u0001\u0010\r\u001a\u0004\u0018\u00010\b2\b\b\u0001\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\b\b\u0001\u0010\u001f\u001a\u00020 2\b\b\u0001\u0010!\u001a\u00020\"2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0007¨\u0006("}, d2 = {"Lcom/stripe/stripeterminal/dagger/HandoffClientModule;", "", "()V", "provideCurrentActivityTracker", "Lcom/stripe/stripeterminal/internal/common/CurrentActivityTracker;", "provideHandoffConnectionTokenProviderSupplier", "Lcom/stripe/stripeterminal/internal/common/terminalsession/HandoffConnectionTokenProviderSupplier;", "providerMirror", "Lcom/stripe/stripeterminal/dagger/HandoffClientModule$ProviderMirror;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "provideHandoffReaderController", "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;", "provideProviderMirror", "context", "Landroid/content/Context;", "apiRequestFactory", "Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;", "remoteReaderRequestContextProvider", "Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;", "currentActivityTracker", "terminalStatusManager", "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;", "jackRabbitApiRequestFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;", "offlineStatusDetailsListener", "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;", "readerEventListener", "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;", "readerActivator", "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;", "appScope", "Lkotlinx/coroutines/CoroutineScope;", "mainDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "featureFlagsRepository", "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;", "serialSupplier", "Lcom/stripe/core/device/SerialSupplier;", "ProviderMirror", "sdkmanager_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class HandoffClientModule {

    /* JADX INFO: compiled from: HandoffClientModule.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0001¢\u0006\u0002\u0010\u0005J \u0010\u0006\u001a\u0004\u0018\u0001H\u0007\"\u0006\b\u0000\u0010\u0007\u0018\u00012\u0006\u0010\b\u001a\u00020\tH\u0082\b¢\u0006\u0002\u0010\nJ\b\u0010\u000b\u001a\u0004\u0018\u00010\fJ\f\u0010\r\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0003J\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fR\u0012\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/stripe/stripeterminal/dagger/HandoffClientModule$ProviderMirror;", "", "providerClass", "Ljava/lang/Class;", "providerInstance", "(Ljava/lang/Class;Ljava/lang/Object;)V", "invokeMethod", "T", "name", "", "(Ljava/lang/String;)Ljava/lang/Object;", "provideHandoffConnectionTokenProvider", "Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;", "provideHandoffConnectionTokenProviderSentinelClass", "provideHandoffReaderController", "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;", "sdkmanager_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ProviderMirror {
        private final Class<?> providerClass;
        private final Object providerInstance;

        public ProviderMirror(Class<?> providerClass, Object providerInstance) {
            Intrinsics.checkNotNullParameter(providerClass, "providerClass");
            Intrinsics.checkNotNullParameter(providerInstance, "providerInstance");
            this.providerClass = providerClass;
            this.providerInstance = providerInstance;
            if (!providerClass.isInstance(providerInstance)) {
                throw new IllegalArgumentException("providerInstance must be an instance of providerClass".toString());
            }
        }

        private final /* synthetic */ <T> T invokeMethod(String name) {
            T t;
            Class<?> cls = this.providerClass;
            try {
                Result.Companion companion = Result.INSTANCE;
                Object objInvoke = cls.getMethod(name, new Class[0]).invoke(this.providerInstance, new Object[0]);
                Intrinsics.reifiedOperationMarker(1, "T");
                Object obj = objInvoke;
                t = (T) Result.m817constructorimpl(objInvoke);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                t = (T) Result.m817constructorimpl(ResultKt.createFailure(th));
            }
            if (Result.m823isFailureimpl(t)) {
                return null;
            }
            return t;
        }

        public final RemoteReaderController provideHandoffReaderController() {
            Object objM817constructorimpl;
            Object objInvoke;
            Class<?> cls = this.providerClass;
            try {
                Result.Companion companion = Result.INSTANCE;
                objInvoke = cls.getMethod("provideHandoffReaderController", new Class[0]).invoke(this.providerInstance, new Object[0]);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
            }
            if (objInvoke != null) {
                objM817constructorimpl = Result.m817constructorimpl((RemoteReaderController) objInvoke);
                if (Result.m823isFailureimpl(objM817constructorimpl)) {
                    objM817constructorimpl = null;
                }
                return (RemoteReaderController) objM817constructorimpl;
            }
            throw new NullPointerException("null cannot be cast to non-null type com.stripe.stripeterminal.internal.common.remotereadercontrollers.RemoteReaderController");
        }

        public final ConnectionTokenProvider provideHandoffConnectionTokenProvider() {
            Object objM817constructorimpl;
            Object objInvoke;
            Class<?> cls = this.providerClass;
            try {
                Result.Companion companion = Result.INSTANCE;
                objInvoke = cls.getMethod("provideHandoffConnectionTokenProvider", new Class[0]).invoke(this.providerInstance, new Object[0]);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
            }
            if (objInvoke != null) {
                objM817constructorimpl = Result.m817constructorimpl((ConnectionTokenProvider) objInvoke);
                if (Result.m823isFailureimpl(objM817constructorimpl)) {
                    objM817constructorimpl = null;
                }
                return (ConnectionTokenProvider) objM817constructorimpl;
            }
            throw new NullPointerException("null cannot be cast to non-null type com.stripe.stripeterminal.external.callable.ConnectionTokenProvider");
        }

        public final Class<?> provideHandoffConnectionTokenProviderSentinelClass() {
            Object objM817constructorimpl;
            Object objInvoke;
            Class<?> cls = this.providerClass;
            try {
                Result.Companion companion = Result.INSTANCE;
                objInvoke = cls.getMethod("provideHandoffConnectionTokenProviderSentinelClass", new Class[0]).invoke(this.providerInstance, new Object[0]);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
            }
            if (objInvoke != null) {
                objM817constructorimpl = Result.m817constructorimpl((Class) objInvoke);
                if (Result.m823isFailureimpl(objM817constructorimpl)) {
                    objM817constructorimpl = null;
                }
                return (Class) objM817constructorimpl;
            }
            throw new NullPointerException("null cannot be cast to non-null type java.lang.Class<*>");
        }
    }

    @Provides
    @Singleton
    public final ProviderMirror provideProviderMirror(@ForApplication Context context, ApiRequestFactory apiRequestFactory, RemoteReaderRequestContextProvider remoteReaderRequestContextProvider, CurrentActivityTracker currentActivityTracker, TerminalStatusManager terminalStatusManager, JackRabbitApiRequestFactory jackRabbitApiRequestFactory, OfflineStatusDetailsListener offlineStatusDetailsListener, ReaderEventContracts.Listener readerEventListener, ReaderActivator readerActivator, @AppScope CoroutineScope appScope, @Main CoroutineDispatcher mainDispatcher, LoggerFactory loggerFactory, FeatureFlagsRepository featureFlagsRepository, SerialSupplier serialSupplier) throws IllegalAccessException, NoSuchMethodException, InstantiationException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(apiRequestFactory, "apiRequestFactory");
        Intrinsics.checkNotNullParameter(remoteReaderRequestContextProvider, "remoteReaderRequestContextProvider");
        Intrinsics.checkNotNullParameter(currentActivityTracker, "currentActivityTracker");
        Intrinsics.checkNotNullParameter(terminalStatusManager, "terminalStatusManager");
        Intrinsics.checkNotNullParameter(jackRabbitApiRequestFactory, "jackRabbitApiRequestFactory");
        Intrinsics.checkNotNullParameter(offlineStatusDetailsListener, "offlineStatusDetailsListener");
        Intrinsics.checkNotNullParameter(readerEventListener, "readerEventListener");
        Intrinsics.checkNotNullParameter(readerActivator, "readerActivator");
        Intrinsics.checkNotNullParameter(appScope, "appScope");
        Intrinsics.checkNotNullParameter(mainDispatcher, "mainDispatcher");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        Intrinsics.checkNotNullParameter(featureFlagsRepository, "featureFlagsRepository");
        Intrinsics.checkNotNullParameter(serialSupplier, "serialSupplier");
        try {
            Class<?> cls = Class.forName("com.stripe.stripeterminal.handoffclient.HandoffReaderControllerProvider");
            Constructor<?> constructor = cls.getConstructor(Context.class, ApiRequestFactory.class, RemoteReaderRequestContextProvider.class, CurrentActivityTracker.class, TerminalStatusManager.class, JackRabbitApiRequestFactory.class, OfflineStatusDetailsListener.class, ReaderEventContracts.Listener.class, ReaderActivator.class, CoroutineScope.class, CoroutineDispatcher.class, LoggerFactory.class, FeatureFlagsRepository.class, SerialSupplier.class);
            Intrinsics.checkNotNull(cls);
            Object objNewInstance = constructor.newInstance(context, apiRequestFactory, remoteReaderRequestContextProvider, currentActivityTracker, terminalStatusManager, jackRabbitApiRequestFactory, offlineStatusDetailsListener, readerEventListener, readerActivator, appScope, mainDispatcher, loggerFactory, featureFlagsRepository, serialSupplier);
            Intrinsics.checkNotNullExpressionValue(objNewInstance, "newInstance(...)");
            return new ProviderMirror(cls, objNewInstance);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    @HandoffReaderController
    @Provides
    @Singleton
    public final RemoteReaderController provideHandoffReaderController(ProviderMirror providerMirror) {
        if (providerMirror != null) {
            return providerMirror.provideHandoffReaderController();
        }
        return null;
    }

    @Provides
    @Singleton
    public final HandoffConnectionTokenProviderSupplier provideHandoffConnectionTokenProviderSupplier(ProviderMirror providerMirror, LoggerFactory loggerFactory) {
        Class<?> clsProvideHandoffConnectionTokenProviderSentinelClass;
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        if (providerMirror != null) {
            ConnectionTokenProvider connectionTokenProviderProvideHandoffConnectionTokenProvider = providerMirror.provideHandoffConnectionTokenProvider();
            HandoffConnectionTokenProviderSupplier.HandoffClientAvailable handoffClientAvailable = null;
            if (connectionTokenProviderProvideHandoffConnectionTokenProvider != null && (clsProvideHandoffConnectionTokenProviderSentinelClass = providerMirror.provideHandoffConnectionTokenProviderSentinelClass()) != null) {
                handoffClientAvailable = new HandoffConnectionTokenProviderSupplier.HandoffClientAvailable(connectionTokenProviderProvideHandoffConnectionTokenProvider, clsProvideHandoffConnectionTokenProviderSentinelClass, loggerFactory.create(Reflection.getOrCreateKotlinClass(HandoffConnectionTokenProviderSupplier.class)));
            }
            if (handoffClientAvailable != null) {
                return handoffClientAvailable;
            }
        }
        return HandoffConnectionTokenProviderSupplier.HandoffClientNotAvailable.INSTANCE;
    }

    @Provides
    @Singleton
    public final CurrentActivityTracker provideCurrentActivityTracker() {
        return CurrentActivityTracker.INSTANCE;
    }
}
