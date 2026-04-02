package com.stripe.core.hardware.reactive.emv;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.stripe.core.hardware.reactive.emv.DesiredSettings;
import com.stripe.core.hardware.updates.ReaderConfigurationUpdateController;
import com.stripe.core.transaction.TransactionRepository;
import com.stripe.device.DeviceInfoRepository;
import com.stripe.hardware.emv.DomesticDebitAidsParser;
import com.stripe.hardware.emv.ReaderSettings;
import com.stripe.hardware.emv.TlvMap;
import com.stripe.jvmcore.dagger.IO;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.jvmcore.storage.SharedPrefs;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.proto.model.config.ClientCheckoutOptions;
import com.stripe.proto.model.config.ContactApplicationParameters;
import com.stripe.proto.model.config.ContactApplicationParametersList;
import com.stripe.proto.model.config.ContactlessCombination;
import com.stripe.proto.model.config.ContactlessCombinationsList;
import com.stripe.proto.model.config.DiscoverParameters;
import com.stripe.proto.model.config.ExpressPayParameters;
import com.stripe.proto.model.config.InteracParameters;
import com.stripe.proto.model.config.JcbParameters;
import com.stripe.proto.model.config.MobileClientConfig;
import com.stripe.proto.model.config.PayPassParameters;
import com.stripe.proto.model.config.PayWaveParameters;
import com.stripe.proto.model.config.Tlv;
import com.stripe.proto.model.config.VectorRegionalConfiguration;
import com.sun.jna.platform.win32.WinError;
import com.sun.jna.platform.win32.WinUser;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: compiled from: ConfigurationHandler.kt */
/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000À\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 _2\u00020\u0001:\u0001_BI\b\u0017\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011¢\u0006\u0002\u0010\u0012BY\b\u0000\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0016\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00160\u0014j\u0002`\u0017¢\u0006\u0002\u0010\u0018J\"\u0010)\u001a\u00020%2\u0006\u0010*\u001a\u00020+2\b\b\u0002\u0010,\u001a\u00020%H\u0081@¢\u0006\u0004\b-\u0010.J\u0010\u0010/\u001a\u0004\u0018\u000100H\u0086@¢\u0006\u0002\u00101J\u0018\u00102\u001a\u0004\u0018\u0001002\u0006\u00103\u001a\u00020%H\u0082@¢\u0006\u0002\u00104J\n\u00105\u001a\u0004\u0018\u000100H\u0002J\\\u00106\u001a\u0002072\u001e\u00108\u001a\u001a\u0012\u0004\u0012\u00020 \u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020 0\u001f0\u001f2\u0012\u00109\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020 0\u001f2\u0016\u0010:\u001a\u0012\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u0002070;j\u0002`=H\u0081@¢\u0006\u0004\b>\u0010?J8\u0010@\u001a\u0002072\u0006\u0010A\u001a\u00020B2\b\u0010C\u001a\u0004\u0018\u00010D2\u0016\u0010:\u001a\u0012\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u0002070;j\u0002`=H\u0086@¢\u0006\u0002\u0010EJ$\u0010F\u001a\u0010\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020 \u0018\u00010\u001f2\u0006\u0010G\u001a\u00020 H\u0087@¢\u0006\u0002\u0010HJB\u0010I\u001a\u0004\u0018\u00010\"2\b\b\u0002\u0010J\u001a\u00020%2\b\b\u0002\u0010K\u001a\u00020%2\b\b\u0002\u0010L\u001a\u00020%2\b\b\u0002\u0010M\u001a\u00020%2\b\b\u0002\u0010N\u001a\u00020%H\u0086@¢\u0006\u0002\u0010OJ\"\u0010P\u001a\u00020+2\u0006\u0010A\u001a\u00020B2\b\u0010Q\u001a\u0004\u0018\u0001002\u0006\u0010N\u001a\u00020 H\u0002J\u0006\u0010R\u001a\u000207J\b\u0010S\u001a\u00020TH\u0002J\"\u0010U\u001a\u00020%2\u0012\u0010V\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020 0\u001fH\u0087@¢\u0006\u0002\u0010WJ\"\u0010X\u001a\u00020%2\u0012\u0010Y\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u00010\u001fH\u0087@¢\u0006\u0002\u0010WJ\u0016\u0010Z\u001a\u00020%2\u0006\u0010*\u001a\u00020+H\u0086@¢\u0006\u0002\u0010[J\u0016\u0010Z\u001a\u00020%2\u0006\u0010\\\u001a\u00020]H\u0086@¢\u0006\u0002\u0010^R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00160\u0014j\u0002`\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\"\u0010\u001d\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020 0\u001f\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010!\u001a\n\u0012\u0004\u0012\u00020\"\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010$\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010&\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010'\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u001cX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006`"}, d2 = {"Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;", "", "scheduler", "Lio/reactivex/rxjava3/core/Scheduler;", "configurationUpdateController", "Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;", "deviceInfoRepository", "Lcom/stripe/device/DeviceInfoRepository;", "sharedPrefs", "Lcom/stripe/jvmcore/storage/SharedPrefs;", "configListener", "Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;", "transactionRepository", "Lcom/stripe/core/transaction/TransactionRepository;", "domesticDebitAidsParser", "Lcom/stripe/hardware/emv/DomesticDebitAidsParser;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "(Lio/reactivex/rxjava3/core/Scheduler;Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;Lcom/stripe/device/DeviceInfoRepository;Lcom/stripe/jvmcore/storage/SharedPrefs;Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/hardware/emv/DomesticDebitAidsParser;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lio/reactivex/rxjava3/core/Scheduler;Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;Lcom/stripe/device/DeviceInfoRepository;Lcom/stripe/jvmcore/storage/SharedPrefs;Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/hardware/emv/DomesticDebitAidsParser;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "compositeDisposable", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "installConfigMutex", "Lkotlinx/coroutines/sync/Mutex;", "readAidDeferred", "Lkotlinx/coroutines/CompletableDeferred;", "", "", "readTerminalSettingDeferred", "Lcom/stripe/hardware/emv/ReaderSettings;", "readTerminalSettingMutex", "updateAidDeferred", "", "updateDisplayDeferred", "updateTerminalSettingFuture", "updateTerminalSettingMutex", "configureTerminalSetting", "desiredSetting", "Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;", "includeDomesticDebitAidList", "configureTerminalSetting$hardware_reactive_release", "(Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getClientConfigData", "Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getClientConfigDataFromEmvTag", "readConfigHashTag", "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getClientConfigDataFromSharedPref", "handleAidData", "", "updateMap", "aidMap", "updater", "Lkotlin/Function1;", "", "Lcom/stripe/core/hardware/reactive/emv/ProgressUpdater;", "handleAidData$hardware_reactive_release", "(Ljava/util/Map;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "installConfig", "config", "Lcom/stripe/proto/model/config/MobileClientConfig;", "image", "Landroid/graphics/Bitmap;", "(Lcom/stripe/proto/model/config/MobileClientConfig;Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "readAid", FirebaseAnalytics.Param.INDEX, "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "readTerminalSetting", "merchantName", "buzzerSoundEnabled", RemoteConfigConstants.RequestFieldKey.COUNTRY_CODE, "domesticDebitAidList", "configHash", "(ZZZZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "recordNewSetting", "currentSettings", "resetSettingCacheDueToBBPOSConfigUpdate", "storedConfigSource", "Lcom/stripe/core/hardware/reactive/emv/ClientConfigDataSource;", "updateAid", "aidData", "(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateDisplaySettings", "displayData", "updateTerminalSetting", "(Lcom/stripe/core/hardware/reactive/emv/DesiredSettings;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "tlvMap", "Lcom/stripe/hardware/emv/TlvMap;", "(Lcom/stripe/hardware/emv/TlvMap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "hardware-reactive_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ConfigurationHandler {
    private static final String AID_DISABLED = "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String DEFAULT_BACKGROUND_COLOR = "FFFF";
    private static final String DEFAULT_FOREGROUND_COLOR = "E618";
    private static final long GET_CLIENT_CONFIG_DATA_TIMEOUT;
    private static final long TIMEOUT_DELAY;
    private static final long TIMEOUT_DELAY_LONG;
    private final CompositeDisposable compositeDisposable;
    private final ReactiveConfigurationListener configListener;
    private final ReaderConfigurationUpdateController configurationUpdateController;
    private final DeviceInfoRepository deviceInfoRepository;
    private final DomesticDebitAidsParser domesticDebitAidsParser;
    private final Mutex installConfigMutex;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private CompletableDeferred<Map<String, String>> readAidDeferred;
    private CompletableDeferred<ReaderSettings> readTerminalSettingDeferred;
    private final Mutex readTerminalSettingMutex;
    private final Scheduler scheduler;
    private final SharedPrefs sharedPrefs;
    private final TransactionRepository transactionRepository;
    private CompletableDeferred<Boolean> updateAidDeferred;
    private CompletableDeferred<Boolean> updateDisplayDeferred;
    private CompletableDeferred<Boolean> updateTerminalSettingFuture;
    private final Mutex updateTerminalSettingMutex;

    /* JADX INFO: compiled from: ConfigurationHandler.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ClientConfigDataSource.values().length];
            try {
                iArr[ClientConfigDataSource.SHARED_PREFS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ClientConfigDataSource.EMV_TAG_MERCHANT_NAME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ClientConfigDataSource.EMV_TAG_CONFIG_HASH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: com.stripe.core.hardware.reactive.emv.ConfigurationHandler$getClientConfigDataFromEmvTag$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ConfigurationHandler.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.hardware.reactive.emv.ConfigurationHandler", f = "ConfigurationHandler.kt", i = {}, l = {385}, m = "getClientConfigDataFromEmvTag", n = {}, s = {})
    static final class C02281 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C02281(Continuation<? super C02281> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ConfigurationHandler.this.getClientConfigDataFromEmvTag(false, this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.core.hardware.reactive.emv.ConfigurationHandler$installConfig$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ConfigurationHandler.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.hardware.reactive.emv.ConfigurationHandler", f = "ConfigurationHandler.kt", i = {0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 5, 5}, l = {WinError.ERROR_NOINTERFACE, 115, 130, WinUser.VK_RMENU, 172, 177}, m = "installConfig", n = {"this", "config", "image", "updater", "$this$withLock_u24default$iv", "this", "config", "image", "updater", "$this$withLock_u24default$iv", "this", "config", "image", "updater", "$this$withLock_u24default$iv", "downloadedSettings", "useConfigHash", "this", "config", "updater", "$this$withLock_u24default$iv", "currentSettings", "downloadedSettings", "this", "config", "updater", "$this$withLock_u24default$iv", "currentSettings", "downloadedSettings", "updater", "$this$withLock_u24default$iv"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$0", "L$1", "L$2", "L$3", "L$4", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "I$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$0", "L$1"})
    static final class C02291 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        int label;
        /* synthetic */ Object result;

        C02291(Continuation<? super C02291> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ConfigurationHandler.this.installConfig(null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.core.hardware.reactive.emv.ConfigurationHandler$readAid$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ConfigurationHandler.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.hardware.reactive.emv.ConfigurationHandler", f = "ConfigurationHandler.kt", i = {0}, l = {WinError.ERROR_CANNOT_COPY}, m = "readAid", n = {"this"}, s = {"L$0"})
    static final class C02301 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02301(Continuation<? super C02301> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ConfigurationHandler.this.readAid(null, this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.core.hardware.reactive.emv.ConfigurationHandler$readTerminalSetting$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ConfigurationHandler.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.hardware.reactive.emv.ConfigurationHandler", f = "ConfigurationHandler.kt", i = {0, 0, 0, 0, 0, 0, 0, 1, 1}, l = {WinError.ERROR_NOINTERFACE, 337}, m = "readTerminalSetting", n = {"this", "$this$withLock_u24default$iv", "merchantName", "buzzerSoundEnabled", RemoteConfigConstants.RequestFieldKey.COUNTRY_CODE, "domesticDebitAidList", "configHash", "this", "$this$withLock_u24default$iv"}, s = {"L$0", "L$1", "Z$0", "Z$1", "Z$2", "Z$3", "Z$4", "L$0", "L$1"})
    static final class C02311 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        boolean Z$0;
        boolean Z$1;
        boolean Z$2;
        boolean Z$3;
        boolean Z$4;
        int label;
        /* synthetic */ Object result;

        C02311(Continuation<? super C02311> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ConfigurationHandler.this.readTerminalSetting(false, false, false, false, false, this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.core.hardware.reactive.emv.ConfigurationHandler$updateAid$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ConfigurationHandler.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.hardware.reactive.emv.ConfigurationHandler", f = "ConfigurationHandler.kt", i = {0}, l = {286}, m = "updateAid", n = {"this"}, s = {"L$0"})
    static final class C02321 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02321(Continuation<? super C02321> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ConfigurationHandler.this.updateAid(null, this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.core.hardware.reactive.emv.ConfigurationHandler$updateDisplaySettings$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ConfigurationHandler.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.hardware.reactive.emv.ConfigurationHandler", f = "ConfigurationHandler.kt", i = {0}, l = {306}, m = "updateDisplaySettings", n = {"this"}, s = {"L$0"})
    static final class C02331 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02331(Continuation<? super C02331> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ConfigurationHandler.this.updateDisplaySettings(null, this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.core.hardware.reactive.emv.ConfigurationHandler$updateTerminalSetting$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ConfigurationHandler.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.hardware.reactive.emv.ConfigurationHandler", f = "ConfigurationHandler.kt", i = {0, 0, 0, 1, 1}, l = {WinError.ERROR_NOINTERFACE, 364}, m = "updateTerminalSetting", n = {"this", "tlvMap", "$this$withLock_u24default$iv", "this", "$this$withLock_u24default$iv"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1"})
    static final class C02342 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C02342(Continuation<? super C02342> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ConfigurationHandler.this.updateTerminalSetting((TlvMap) null, this);
        }
    }

    public ConfigurationHandler(@IO Scheduler scheduler, ReaderConfigurationUpdateController configurationUpdateController, DeviceInfoRepository deviceInfoRepository, SharedPrefs sharedPrefs, ReactiveConfigurationListener configListener, TransactionRepository transactionRepository, DomesticDebitAidsParser domesticDebitAidsParser, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(scheduler, "scheduler");
        Intrinsics.checkNotNullParameter(configurationUpdateController, "configurationUpdateController");
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        Intrinsics.checkNotNullParameter(sharedPrefs, "sharedPrefs");
        Intrinsics.checkNotNullParameter(configListener, "configListener");
        Intrinsics.checkNotNullParameter(transactionRepository, "transactionRepository");
        Intrinsics.checkNotNullParameter(domesticDebitAidsParser, "domesticDebitAidsParser");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.scheduler = scheduler;
        this.configurationUpdateController = configurationUpdateController;
        this.deviceInfoRepository = deviceInfoRepository;
        this.sharedPrefs = sharedPrefs;
        this.configListener = configListener;
        this.transactionRepository = transactionRepository;
        this.domesticDebitAidsParser = domesticDebitAidsParser;
        this.logger = logger;
        CompositeDisposable compositeDisposable = new CompositeDisposable();
        this.compositeDisposable = compositeDisposable;
        this.installConfigMutex = MutexKt.Mutex$default(false, 1, null);
        this.readTerminalSettingMutex = MutexKt.Mutex$default(false, 1, null);
        this.updateTerminalSettingMutex = MutexKt.Mutex$default(false, 1, null);
        compositeDisposable.addAll(configListener.getReaderAidObservable().observeOn(scheduler).subscribe(new Consumer() { // from class: com.stripe.core.hardware.reactive.emv.ConfigurationHandler.1
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Map<String, ? extends Object> result) {
                Intrinsics.checkNotNullParameter(result, "result");
                CompletableDeferred completableDeferred = ConfigurationHandler.this.readAidDeferred;
                if (completableDeferred != null) {
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    for (Map.Entry<String, ? extends Object> entry : result.entrySet()) {
                        if (entry.getValue() instanceof String) {
                            linkedHashMap.put(entry.getKey(), entry.getValue());
                        }
                    }
                    LinkedHashMap linkedHashMap2 = linkedHashMap;
                    LinkedHashMap linkedHashMap3 = new LinkedHashMap(MapsKt.mapCapacity(linkedHashMap2.size()));
                    for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
                        linkedHashMap3.put(entry2.getKey(), entry2.getValue().toString());
                    }
                    completableDeferred.complete(linkedHashMap3);
                }
            }
        }), configListener.getReaderDisplayObservable().observeOn(scheduler).subscribe(new Consumer() { // from class: com.stripe.core.hardware.reactive.emv.ConfigurationHandler.2
            @Override // io.reactivex.rxjava3.functions.Consumer
            public /* bridge */ /* synthetic */ void accept(Object obj) {
                accept(((Boolean) obj).booleanValue());
            }

            public final void accept(boolean z) {
                CompletableDeferred completableDeferred = ConfigurationHandler.this.updateDisplayDeferred;
                if (completableDeferred != null) {
                    completableDeferred.complete(Boolean.valueOf(z));
                }
            }
        }), configListener.getReaderSettingsObservable().observeOn(scheduler).subscribe(new Consumer() { // from class: com.stripe.core.hardware.reactive.emv.ConfigurationHandler.3
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(ReaderSettings result) {
                Intrinsics.checkNotNullParameter(result, "result");
                CompletableDeferred completableDeferred = ConfigurationHandler.this.readTerminalSettingDeferred;
                if (completableDeferred != null) {
                    completableDeferred.complete(result);
                }
            }
        }), configListener.getReaderUpdateAidObservable().observeOn(scheduler).subscribe(new Consumer() { // from class: com.stripe.core.hardware.reactive.emv.ConfigurationHandler.4
            @Override // io.reactivex.rxjava3.functions.Consumer
            public /* bridge */ /* synthetic */ void accept(Object obj) {
                accept(((Boolean) obj).booleanValue());
            }

            public final void accept(boolean z) {
                CompletableDeferred completableDeferred = ConfigurationHandler.this.updateAidDeferred;
                if (completableDeferred != null) {
                    completableDeferred.complete(Boolean.valueOf(z));
                }
            }
        }), configListener.getReaderUpdateSettingsObservable().observeOn(scheduler).subscribe(new Consumer() { // from class: com.stripe.core.hardware.reactive.emv.ConfigurationHandler.5
            @Override // io.reactivex.rxjava3.functions.Consumer
            public /* bridge */ /* synthetic */ void accept(Object obj) {
                accept(((Boolean) obj).booleanValue());
            }

            public final void accept(boolean z) {
                CompletableDeferred completableDeferred = ConfigurationHandler.this.updateTerminalSettingFuture;
                if (completableDeferred != null) {
                    completableDeferred.complete(Boolean.valueOf(z));
                }
            }
        }));
    }

    /* JADX WARN: Code restructure failed: missing block: B:132:0x033f, code lost:
    
        if (r8.configureTerminalSetting$hardware_reactive_release(r0, r5, r13) == r6) goto L133;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0215 A[Catch: all -> 0x00b0, TryCatch #0 {all -> 0x00b0, blocks: (B:129:0x0317, B:131:0x031f, B:123:0x02cb, B:125:0x02de, B:28:0x00aa, B:92:0x01e0, B:95:0x01e6, B:97:0x01ea, B:101:0x01f6, B:103:0x01fc, B:105:0x0215, B:107:0x0219, B:109:0x021d, B:111:0x0221, B:116:0x022b, B:119:0x0235, B:98:0x01ef), top: B:148:0x00aa }] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x02d8  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0310  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0311  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x031f A[Catch: all -> 0x00b0, TRY_LEAVE, TryCatch #0 {all -> 0x00b0, blocks: (B:129:0x0317, B:131:0x031f, B:123:0x02cb, B:125:0x02de, B:28:0x00aa, B:92:0x01e0, B:95:0x01e6, B:97:0x01ea, B:101:0x01f6, B:103:0x01fc, B:105:0x0215, B:107:0x0219, B:109:0x021d, B:111:0x0221, B:116:0x022b, B:119:0x0235, B:98:0x01ef), top: B:148:0x00aa }] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0174 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0159 A[Catch: all -> 0x035c, TryCatch #5 {all -> 0x035c, blocks: (B:59:0x014c, B:62:0x0159, B:63:0x0163, B:43:0x0115, B:45:0x0119, B:47:0x011d, B:49:0x0121, B:51:0x0125, B:53:0x0129, B:55:0x0133), top: B:158:0x0115 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x018c A[Catch: all -> 0x017f, TRY_ENTER, TryCatch #7 {all -> 0x017f, blocks: (B:68:0x0174, B:75:0x018c, B:77:0x0190, B:79:0x0194), top: B:162:0x0174 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01e6 A[Catch: all -> 0x00b0, TRY_ENTER, TryCatch #0 {all -> 0x00b0, blocks: (B:129:0x0317, B:131:0x031f, B:123:0x02cb, B:125:0x02de, B:28:0x00aa, B:92:0x01e0, B:95:0x01e6, B:97:0x01ea, B:101:0x01f6, B:103:0x01fc, B:105:0x0215, B:107:0x0219, B:109:0x021d, B:111:0x0221, B:116:0x022b, B:119:0x0235, B:98:0x01ef), top: B:148:0x00aa }] */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v12, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r14v8, types: [boolean] */
    /* JADX WARN: Type inference failed for: r5v19, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v23 */
    /* JADX WARN: Type inference failed for: r8v26, types: [com.stripe.core.hardware.reactive.emv.ConfigurationHandler] */
    /* JADX WARN: Type inference failed for: r8v29 */
    /* JADX WARN: Type inference failed for: r8v30 */
    /* JADX WARN: Type inference failed for: r9v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object installConfig(com.stripe.proto.model.config.MobileClientConfig r26, android.graphics.Bitmap r27, kotlin.jvm.functions.Function1<? super java.lang.Float, kotlin.Unit> r28, kotlin.coroutines.Continuation<? super kotlin.Unit> r29) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 886
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.hardware.reactive.emv.ConfigurationHandler.installConfig(com.stripe.proto.model.config.MobileClientConfig, android.graphics.Bitmap, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0136 -> B:39:0x013b). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x0144 -> B:41:0x014c). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object handleAidData$hardware_reactive_release(java.util.Map<java.lang.String, ? extends java.util.Map<java.lang.String, java.lang.String>> r19, java.util.Map<java.lang.String, java.lang.String> r20, kotlin.jvm.functions.Function1<? super java.lang.Float, kotlin.Unit> r21, kotlin.coroutines.Continuation<? super kotlin.Unit> r22) {
        /*
            Method dump skipped, instruction units count: 355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.hardware.reactive.emv.ConfigurationHandler.handleAidData$hardware_reactive_release(java.util.Map, java.util.Map, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ Object configureTerminalSetting$hardware_reactive_release$default(ConfigurationHandler configurationHandler, DesiredSettings desiredSettings, boolean z, Continuation continuation, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return configurationHandler.configureTerminalSetting$hardware_reactive_release(desiredSettings, z, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x00cc, code lost:
    
        if (r15 == r0) goto L50;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object configureTerminalSetting$hardware_reactive_release(com.stripe.core.hardware.reactive.emv.DesiredSettings r13, boolean r14, kotlin.coroutines.Continuation<? super java.lang.Boolean> r15) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.hardware.reactive.emv.ConfigurationHandler.configureTerminalSetting$hardware_reactive_release(com.stripe.core.hardware.reactive.emv.DesiredSettings, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readAid(java.lang.String r8, kotlin.coroutines.Continuation<? super java.util.Map<java.lang.String, java.lang.String>> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof com.stripe.core.hardware.reactive.emv.ConfigurationHandler.C02301
            if (r0 == 0) goto L14
            r0 = r9
            com.stripe.core.hardware.reactive.emv.ConfigurationHandler$readAid$1 r0 = (com.stripe.core.hardware.reactive.emv.ConfigurationHandler.C02301) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r9 = r0.label
            int r9 = r9 - r2
            r0.label = r9
            goto L19
        L14:
            com.stripe.core.hardware.reactive.emv.ConfigurationHandler$readAid$1 r0 = new com.stripe.core.hardware.reactive.emv.ConfigurationHandler$readAid$1
            r0.<init>(r9)
        L19:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r8 = r0.L$0
            com.stripe.core.hardware.reactive.emv.ConfigurationHandler r8 = (com.stripe.core.hardware.reactive.emv.ConfigurationHandler) r8
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Exception -> L2f
            goto L60
        L2f:
            r9 = move-exception
            goto L65
        L31:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L39:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.CompletableDeferred r9 = kotlinx.coroutines.CompletableDeferredKt.CompletableDeferred$default(r4, r3, r4)
            r7.readAidDeferred = r9
            com.stripe.core.hardware.updates.ReaderConfigurationUpdateController r9 = r7.configurationUpdateController
            r9.readAid(r8)
            kotlinx.coroutines.CompletableDeferred<java.util.Map<java.lang.String, java.lang.String>> r8 = r7.readAidDeferred
            if (r8 == 0) goto L72
            long r5 = com.stripe.core.hardware.reactive.emv.ConfigurationHandler.TIMEOUT_DELAY     // Catch: java.lang.Exception -> L63
            com.stripe.core.hardware.reactive.emv.ConfigurationHandler$readAid$ret$1$1 r9 = new com.stripe.core.hardware.reactive.emv.ConfigurationHandler$readAid$ret$1$1     // Catch: java.lang.Exception -> L63
            r9.<init>(r8, r4)     // Catch: java.lang.Exception -> L63
            kotlin.jvm.functions.Function2 r9 = (kotlin.jvm.functions.Function2) r9     // Catch: java.lang.Exception -> L63
            r0.L$0 = r7     // Catch: java.lang.Exception -> L63
            r0.label = r3     // Catch: java.lang.Exception -> L63
            java.lang.Object r9 = kotlinx.coroutines.TimeoutKt.m2329withTimeoutKLykuaI(r5, r9, r0)     // Catch: java.lang.Exception -> L63
            if (r9 != r1) goto L5f
            return r1
        L5f:
            r8 = r7
        L60:
            java.util.Map r9 = (java.util.Map) r9     // Catch: java.lang.Exception -> L2f
            goto L74
        L63:
            r9 = move-exception
            r8 = r7
        L65:
            com.stripe.jvmcore.logging.terminal.log.SimpleLogger<com.stripe.loggingmodels.ApplicationTrace, com.stripe.loggingmodels.ApplicationTraceResult> r0 = r8.logger
            java.lang.Throwable r9 = (java.lang.Throwable) r9
            r1 = 0
            kotlin.Pair[] r1 = new kotlin.Pair[r1]
            java.lang.String r2 = "Failed to read AID"
            r0.w(r9, r2, r1)
            goto L73
        L72:
            r8 = r7
        L73:
            r9 = r4
        L74:
            r8.readAidDeferred = r4
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.hardware.reactive.emv.ConfigurationHandler.readAid(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object updateAid(java.util.Map<java.lang.String, java.lang.String> r9, kotlin.coroutines.Continuation<? super java.lang.Boolean> r10) {
        /*
            r8 = this;
            boolean r0 = r10 instanceof com.stripe.core.hardware.reactive.emv.ConfigurationHandler.C02321
            if (r0 == 0) goto L14
            r0 = r10
            com.stripe.core.hardware.reactive.emv.ConfigurationHandler$updateAid$1 r0 = (com.stripe.core.hardware.reactive.emv.ConfigurationHandler.C02321) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r10 = r0.label
            int r10 = r10 - r2
            r0.label = r10
            goto L19
        L14:
            com.stripe.core.hardware.reactive.emv.ConfigurationHandler$updateAid$1 r0 = new com.stripe.core.hardware.reactive.emv.ConfigurationHandler$updateAid$1
            r0.<init>(r10)
        L19:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 0
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L3a
            if (r2 != r4) goto L32
            java.lang.Object r9 = r0.L$0
            com.stripe.core.hardware.reactive.emv.ConfigurationHandler r9 = (com.stripe.core.hardware.reactive.emv.ConfigurationHandler) r9
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Exception -> L30
            goto L61
        L30:
            r10 = move-exception
            goto L6b
        L32:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L3a:
            kotlin.ResultKt.throwOnFailure(r10)
            kotlinx.coroutines.CompletableDeferred r10 = kotlinx.coroutines.CompletableDeferredKt.CompletableDeferred$default(r5, r4, r5)
            r8.updateAidDeferred = r10
            com.stripe.core.hardware.updates.ReaderConfigurationUpdateController r10 = r8.configurationUpdateController
            r10.updateAid(r9)
            kotlinx.coroutines.CompletableDeferred<java.lang.Boolean> r9 = r8.updateAidDeferred
            if (r9 == 0) goto L77
            long r6 = com.stripe.core.hardware.reactive.emv.ConfigurationHandler.TIMEOUT_DELAY     // Catch: java.lang.Exception -> L69
            com.stripe.core.hardware.reactive.emv.ConfigurationHandler$updateAid$ret$1$1 r10 = new com.stripe.core.hardware.reactive.emv.ConfigurationHandler$updateAid$ret$1$1     // Catch: java.lang.Exception -> L69
            r10.<init>(r9, r5)     // Catch: java.lang.Exception -> L69
            kotlin.jvm.functions.Function2 r10 = (kotlin.jvm.functions.Function2) r10     // Catch: java.lang.Exception -> L69
            r0.L$0 = r8     // Catch: java.lang.Exception -> L69
            r0.label = r4     // Catch: java.lang.Exception -> L69
            java.lang.Object r10 = kotlinx.coroutines.TimeoutKt.m2329withTimeoutKLykuaI(r6, r10, r0)     // Catch: java.lang.Exception -> L69
            if (r10 != r1) goto L60
            return r1
        L60:
            r9 = r8
        L61:
            java.lang.Boolean r10 = (java.lang.Boolean) r10     // Catch: java.lang.Exception -> L30
            boolean r10 = r10.booleanValue()     // Catch: java.lang.Exception -> L30
            r3 = r10
            goto L78
        L69:
            r10 = move-exception
            r9 = r8
        L6b:
            com.stripe.jvmcore.logging.terminal.log.SimpleLogger<com.stripe.loggingmodels.ApplicationTrace, com.stripe.loggingmodels.ApplicationTraceResult> r0 = r9.logger
            java.lang.Throwable r10 = (java.lang.Throwable) r10
            java.lang.String r1 = "Failed to update AID"
            kotlin.Pair[] r2 = new kotlin.Pair[r3]
            r0.w(r10, r1, r2)
            goto L78
        L77:
            r9 = r8
        L78:
            r9.updateAidDeferred = r5
            java.lang.Boolean r9 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.hardware.reactive.emv.ConfigurationHandler.updateAid(java.util.Map, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object updateDisplaySettings(java.util.Map<java.lang.String, ? extends java.lang.Object> r9, kotlin.coroutines.Continuation<? super java.lang.Boolean> r10) {
        /*
            r8 = this;
            boolean r0 = r10 instanceof com.stripe.core.hardware.reactive.emv.ConfigurationHandler.C02331
            if (r0 == 0) goto L14
            r0 = r10
            com.stripe.core.hardware.reactive.emv.ConfigurationHandler$updateDisplaySettings$1 r0 = (com.stripe.core.hardware.reactive.emv.ConfigurationHandler.C02331) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r10 = r0.label
            int r10 = r10 - r2
            r0.label = r10
            goto L19
        L14:
            com.stripe.core.hardware.reactive.emv.ConfigurationHandler$updateDisplaySettings$1 r0 = new com.stripe.core.hardware.reactive.emv.ConfigurationHandler$updateDisplaySettings$1
            r0.<init>(r10)
        L19:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 0
            r4 = 0
            r5 = 1
            if (r2 == 0) goto L38
            if (r2 != r5) goto L30
            java.lang.Object r9 = r0.L$0
            com.stripe.core.hardware.reactive.emv.ConfigurationHandler r9 = (com.stripe.core.hardware.reactive.emv.ConfigurationHandler) r9
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Exception -> L6e
            goto L65
        L30:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L38:
            kotlin.ResultKt.throwOnFailure(r10)
            kotlinx.coroutines.CompletableDeferred r10 = kotlinx.coroutines.CompletableDeferredKt.CompletableDeferred$default(r4, r5, r4)
            r8.updateDisplayDeferred = r10
            com.stripe.core.hardware.updates.ReaderConfigurationUpdateController r10 = r8.configurationUpdateController
            r10.updateDisplay(r9)
            kotlinx.coroutines.CompletableDeferred<java.lang.Boolean> r9 = r8.updateDisplayDeferred
            if (r9 == 0) goto L78
            kotlin.time.Duration$Companion r10 = kotlin.time.Duration.INSTANCE     // Catch: java.lang.Exception -> L6d
            kotlin.time.DurationUnit r10 = kotlin.time.DurationUnit.MINUTES     // Catch: java.lang.Exception -> L6d
            long r6 = kotlin.time.DurationKt.toDuration(r5, r10)     // Catch: java.lang.Exception -> L6d
            com.stripe.core.hardware.reactive.emv.ConfigurationHandler$updateDisplaySettings$ret$1$1 r10 = new com.stripe.core.hardware.reactive.emv.ConfigurationHandler$updateDisplaySettings$ret$1$1     // Catch: java.lang.Exception -> L6d
            r10.<init>(r9, r4)     // Catch: java.lang.Exception -> L6d
            kotlin.jvm.functions.Function2 r10 = (kotlin.jvm.functions.Function2) r10     // Catch: java.lang.Exception -> L6d
            r0.L$0 = r8     // Catch: java.lang.Exception -> L6d
            r0.label = r5     // Catch: java.lang.Exception -> L6d
            java.lang.Object r10 = kotlinx.coroutines.TimeoutKt.m2329withTimeoutKLykuaI(r6, r10, r0)     // Catch: java.lang.Exception -> L6d
            if (r10 != r1) goto L64
            return r1
        L64:
            r9 = r8
        L65:
            java.lang.Boolean r10 = (java.lang.Boolean) r10     // Catch: java.lang.Exception -> L6e
            boolean r10 = r10.booleanValue()     // Catch: java.lang.Exception -> L6e
            r3 = r10
            goto L79
        L6d:
            r9 = r8
        L6e:
            com.stripe.jvmcore.logging.terminal.log.SimpleLogger<com.stripe.loggingmodels.ApplicationTrace, com.stripe.loggingmodels.ApplicationTraceResult> r10 = r9.logger
            java.lang.String r0 = "Failed to update display"
            kotlin.Pair[] r1 = new kotlin.Pair[r3]
            r10.w(r0, r1)
            goto L79
        L78:
            r9 = r8
        L79:
            r9.updateDisplayDeferred = r4
            java.lang.Boolean r9 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.hardware.reactive.emv.ConfigurationHandler.updateDisplaySettings(java.util.Map, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ Object readTerminalSetting$default(ConfigurationHandler configurationHandler, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = false;
        }
        if ((i & 4) != 0) {
            z3 = false;
        }
        if ((i & 8) != 0) {
            z4 = false;
        }
        if ((i & 16) != 0) {
            z5 = false;
        }
        return configurationHandler.readTerminalSetting(z, z2, z3, z4, z5, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readTerminalSetting(boolean r13, boolean r14, boolean r15, boolean r16, boolean r17, kotlin.coroutines.Continuation<? super com.stripe.hardware.emv.ReaderSettings> r18) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.hardware.reactive.emv.ConfigurationHandler.readTerminalSetting(boolean, boolean, boolean, boolean, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Object updateTerminalSetting(DesiredSettings desiredSettings, Continuation<? super Boolean> continuation) {
        return updateTerminalSetting(new TlvMap(desiredSettings.toTlvMap$hardware_reactive_release()), continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object updateTerminalSetting(com.stripe.hardware.emv.TlvMap r12, kotlin.coroutines.Continuation<? super java.lang.Boolean> r13) throws java.lang.Throwable {
        /*
            r11 = this;
            boolean r0 = r13 instanceof com.stripe.core.hardware.reactive.emv.ConfigurationHandler.C02342
            if (r0 == 0) goto L14
            r0 = r13
            com.stripe.core.hardware.reactive.emv.ConfigurationHandler$updateTerminalSetting$2 r0 = (com.stripe.core.hardware.reactive.emv.ConfigurationHandler.C02342) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r13 = r0.label
            int r13 = r13 - r2
            r0.label = r13
            goto L19
        L14:
            com.stripe.core.hardware.reactive.emv.ConfigurationHandler$updateTerminalSetting$2 r0 = new com.stripe.core.hardware.reactive.emv.ConfigurationHandler$updateTerminalSetting$2
            r0.<init>(r13)
        L19:
            java.lang.Object r13 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 0
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L57
            if (r2 == r5) goto L45
            if (r2 != r3) goto L3d
            java.lang.Object r12 = r0.L$1
            kotlinx.coroutines.sync.Mutex r12 = (kotlinx.coroutines.sync.Mutex) r12
            java.lang.Object r0 = r0.L$0
            com.stripe.core.hardware.reactive.emv.ConfigurationHandler r0 = (com.stripe.core.hardware.reactive.emv.ConfigurationHandler) r0
            kotlin.ResultKt.throwOnFailure(r13)     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L3a
            goto L97
        L37:
            r13 = move-exception
            goto Lc0
        L3a:
            r13 = move-exception
            goto La5
        L3d:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r13)
            throw r12
        L45:
            java.lang.Object r12 = r0.L$2
            kotlinx.coroutines.sync.Mutex r12 = (kotlinx.coroutines.sync.Mutex) r12
            java.lang.Object r2 = r0.L$1
            com.stripe.hardware.emv.TlvMap r2 = (com.stripe.hardware.emv.TlvMap) r2
            java.lang.Object r7 = r0.L$0
            com.stripe.core.hardware.reactive.emv.ConfigurationHandler r7 = (com.stripe.core.hardware.reactive.emv.ConfigurationHandler) r7
            kotlin.ResultKt.throwOnFailure(r13)
            r13 = r12
            r12 = r2
            goto L6c
        L57:
            kotlin.ResultKt.throwOnFailure(r13)
            kotlinx.coroutines.sync.Mutex r13 = r11.updateTerminalSettingMutex
            r0.L$0 = r11
            r0.L$1 = r12
            r0.L$2 = r13
            r0.label = r5
            java.lang.Object r2 = r13.lock(r6, r0)
            if (r2 != r1) goto L6b
            goto L92
        L6b:
            r7 = r11
        L6c:
            kotlinx.coroutines.CompletableDeferred r2 = kotlinx.coroutines.CompletableDeferredKt.CompletableDeferred$default(r6, r5, r6)     // Catch: java.lang.Throwable -> Lbc
            r7.updateTerminalSettingFuture = r2     // Catch: java.lang.Throwable -> Lbc
            com.stripe.core.hardware.updates.ReaderConfigurationUpdateController r2 = r7.configurationUpdateController     // Catch: java.lang.Throwable -> Lbc
            r2.updateSettings(r12)     // Catch: java.lang.Throwable -> Lbc
            kotlinx.coroutines.CompletableDeferred<java.lang.Boolean> r12 = r7.updateTerminalSettingFuture     // Catch: java.lang.Throwable -> Lbc
            if (r12 == 0) goto Lb1
            long r8 = com.stripe.core.hardware.reactive.emv.ConfigurationHandler.TIMEOUT_DELAY_LONG     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lbc
            com.stripe.core.hardware.reactive.emv.ConfigurationHandler$updateTerminalSetting$3$ret$1$1 r2 = new com.stripe.core.hardware.reactive.emv.ConfigurationHandler$updateTerminalSetting$3$ret$1$1     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lbc
            r2.<init>(r12, r6)     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lbc
            kotlin.jvm.functions.Function2 r2 = (kotlin.jvm.functions.Function2) r2     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lbc
            r0.L$0 = r7     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lbc
            r0.L$1 = r13     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lbc
            r0.L$2 = r6     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lbc
            r0.label = r3     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lbc
            java.lang.Object r12 = kotlinx.coroutines.TimeoutKt.m2329withTimeoutKLykuaI(r8, r2, r0)     // Catch: java.lang.Exception -> La0 java.lang.Throwable -> Lbc
            if (r12 != r1) goto L93
        L92:
            return r1
        L93:
            r0 = r13
            r13 = r12
            r12 = r0
            r0 = r7
        L97:
            java.lang.Boolean r13 = (java.lang.Boolean) r13     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L3a
            boolean r13 = r13.booleanValue()     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L3a
            r4 = r13
        L9e:
            r7 = r0
            goto Lb2
        La0:
            r12 = move-exception
            r0 = r13
            r13 = r12
            r12 = r0
            r0 = r7
        La5:
            com.stripe.jvmcore.logging.terminal.log.SimpleLogger<com.stripe.loggingmodels.ApplicationTrace, com.stripe.loggingmodels.ApplicationTraceResult> r1 = r0.logger     // Catch: java.lang.Throwable -> L37
            java.lang.Throwable r13 = (java.lang.Throwable) r13     // Catch: java.lang.Throwable -> L37
            java.lang.String r2 = "Failed to update terminal setting"
            kotlin.Pair[] r3 = new kotlin.Pair[r4]     // Catch: java.lang.Throwable -> L37
            r1.w(r13, r2, r3)     // Catch: java.lang.Throwable -> L37
            goto L9e
        Lb1:
            r12 = r13
        Lb2:
            r7.updateTerminalSettingFuture = r6     // Catch: java.lang.Throwable -> L37
            java.lang.Boolean r13 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r4)     // Catch: java.lang.Throwable -> L37
            r12.unlock(r6)
            return r13
        Lbc:
            r12 = move-exception
            r10 = r13
            r13 = r12
            r12 = r10
        Lc0:
            r12.unlock(r6)
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.hardware.reactive.emv.ConfigurationHandler.updateTerminalSetting(com.stripe.hardware.emv.TlvMap, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Object getClientConfigData(Continuation<? super ClientConfigData> continuation) {
        int i = WhenMappings.$EnumSwitchMapping$0[storedConfigSource().ordinal()];
        if (i == 1) {
            return getClientConfigDataFromSharedPref();
        }
        if (i == 2) {
            return getClientConfigDataFromEmvTag(false, continuation);
        }
        if (i == 3) {
            return getClientConfigDataFromEmvTag(true, continuation);
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object getClientConfigDataFromEmvTag(boolean r8, kotlin.coroutines.Continuation<? super com.stripe.core.hardware.reactive.emv.ClientConfigData> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof com.stripe.core.hardware.reactive.emv.ConfigurationHandler.C02281
            if (r0 == 0) goto L14
            r0 = r9
            com.stripe.core.hardware.reactive.emv.ConfigurationHandler$getClientConfigDataFromEmvTag$1 r0 = (com.stripe.core.hardware.reactive.emv.ConfigurationHandler.C02281) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r9 = r0.label
            int r9 = r9 - r2
            r0.label = r9
            goto L19
        L14:
            com.stripe.core.hardware.reactive.emv.ConfigurationHandler$getClientConfigDataFromEmvTag$1 r0 = new com.stripe.core.hardware.reactive.emv.ConfigurationHandler$getClientConfigDataFromEmvTag$1
            r0.<init>(r9)
        L19:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L33
            if (r2 != r4) goto L2b
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L4e
            return r9
        L2b:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L33:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlin.Result$Companion r9 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L4e
            r9 = r7
            com.stripe.core.hardware.reactive.emv.ConfigurationHandler r9 = (com.stripe.core.hardware.reactive.emv.ConfigurationHandler) r9     // Catch: java.lang.Throwable -> L4e
            long r5 = com.stripe.core.hardware.reactive.emv.ConfigurationHandler.GET_CLIENT_CONFIG_DATA_TIMEOUT     // Catch: java.lang.Throwable -> L4e
            com.stripe.core.hardware.reactive.emv.ConfigurationHandler$getClientConfigDataFromEmvTag$2$1 r9 = new com.stripe.core.hardware.reactive.emv.ConfigurationHandler$getClientConfigDataFromEmvTag$2$1     // Catch: java.lang.Throwable -> L4e
            r9.<init>(r7, r8, r3)     // Catch: java.lang.Throwable -> L4e
            kotlin.jvm.functions.Function2 r9 = (kotlin.jvm.functions.Function2) r9     // Catch: java.lang.Throwable -> L4e
            r0.label = r4     // Catch: java.lang.Throwable -> L4e
            java.lang.Object r8 = kotlinx.coroutines.TimeoutKt.m2329withTimeoutKLykuaI(r5, r9, r0)     // Catch: java.lang.Throwable -> L4e
            if (r8 != r1) goto L4d
            return r1
        L4d:
            return r8
        L4e:
            r8 = move-exception
            kotlin.Result$Companion r9 = kotlin.Result.INSTANCE
            java.lang.Object r8 = kotlin.ResultKt.createFailure(r8)
            java.lang.Object r8 = kotlin.Result.m817constructorimpl(r8)
            boolean r9 = kotlin.Result.m823isFailureimpl(r8)
            if (r9 == 0) goto L60
            goto L61
        L60:
            r3 = r8
        L61:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.hardware.reactive.emv.ConfigurationHandler.getClientConfigDataFromEmvTag(boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final ClientConfigData getClientConfigDataFromSharedPref() {
        String mobilePosConfig = this.sharedPrefs.getMobilePosConfig();
        if (mobilePosConfig != null) {
            return ClientConfigData.INSTANCE.parseClientConfigData(mobilePosConfig);
        }
        return null;
    }

    private final DesiredSettings recordNewSetting(MobileClientConfig config, ClientConfigData currentSettings, String configHash) {
        DesiredSettings desiredSettingsCreate$default;
        VectorRegionalConfiguration vectorRegionalConfiguration;
        String countryCode;
        int i = WhenMappings.$EnumSwitchMapping$0[storedConfigSource().ordinal()];
        if (i == 1) {
            this.sharedPrefs.putMobilePosConfig(configHash);
            if ((currentSettings != null ? currentSettings.getConfigHash() : null) != null && currentSettings.getConfigHash().length() > 0) {
                desiredSettingsCreate$default = DesiredSettings.Companion.create$default(DesiredSettings.INSTANCE, "", null, null, null, 14, null);
            } else {
                desiredSettingsCreate$default = DesiredSettings.Companion.create$default(DesiredSettings.INSTANCE, null, null, null, null, 15, null);
            }
        } else if (i == 2) {
            desiredSettingsCreate$default = DesiredSettings.Companion.create$default(DesiredSettings.INSTANCE, configHash, null, null, null, 14, null);
        } else if (i == 3) {
            desiredSettingsCreate$default = DesiredSettings.Companion.create$default(DesiredSettings.INSTANCE, "", null, null, configHash, 6, null);
        } else {
            throw new NoWhenBranchMatchedException();
        }
        DesiredSettings desiredSettings = desiredSettingsCreate$default;
        ClientCheckoutOptions clientCheckoutOptions = config.client_checkout_options;
        return (clientCheckoutOptions == null || (vectorRegionalConfiguration = clientCheckoutOptions.vector_config) == null || (countryCode = VectorRegionalConfigurationExtKt.toCountryCode(vectorRegionalConfiguration)) == null) ? desiredSettings : DesiredSettings.copy$default(desiredSettings, null, countryCode, null, null, 13, null);
    }

    public final void resetSettingCacheDueToBBPOSConfigUpdate() {
        if (WhenMappings.$EnumSwitchMapping$0[storedConfigSource().ordinal()] != 1) {
            return;
        }
        this.sharedPrefs.putMobilePosConfig("");
    }

    private final ClientConfigDataSource storedConfigSource() {
        return ClientConfigDataSourceKt.getStoredConfigSource(this.deviceInfoRepository.getPlatformDeviceInfo().getHardwareModel().bbpos_hardware);
    }

    /* JADX INFO: compiled from: ConfigurationHandler.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JU\u0010\u000f\u001a\u001a\u0012\u0004\u0012\u00020\u0004\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00100\u0010*\u00020\u00112\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00102\u0016\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00160\u0014j\u0002`\u0017H\u0001¢\u0006\u0002\b\u0018J\f\u0010\u0019\u001a\u00020\u0004*\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0010\n\u0002\u0010\f\u0012\u0004\b\t\u0010\u0002\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\r\u001a\u00020\bX\u0082\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\n\u0002\u0010\fR\u0016\u0010\u000e\u001a\u00020\bX\u0082\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\n\u0002\u0010\f\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u001a"}, d2 = {"Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler$Companion;", "", "()V", "AID_DISABLED", "", "DEFAULT_BACKGROUND_COLOR", "DEFAULT_FOREGROUND_COLOR", "GET_CLIENT_CONFIG_DATA_TIMEOUT", "Lkotlin/time/Duration;", "getGET_CLIENT_CONFIG_DATA_TIMEOUT-UwyO8pc$annotations", "getGET_CLIENT_CONFIG_DATA_TIMEOUT-UwyO8pc", "()J", "J", "TIMEOUT_DELAY", "TIMEOUT_DELAY_LONG", "toAidData", "", "Lcom/stripe/proto/model/config/VectorRegionalConfiguration;", "aidMapping", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "toAidData$hardware_reactive_release", "toLimit", "hardware-reactive_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: renamed from: getGET_CLIENT_CONFIG_DATA_TIMEOUT-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m466getGET_CLIENT_CONFIG_DATA_TIMEOUTUwyO8pc$annotations() {
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: getGET_CLIENT_CONFIG_DATA_TIMEOUT-UwyO8pc, reason: not valid java name */
        public final long m467getGET_CLIENT_CONFIG_DATA_TIMEOUTUwyO8pc() {
            return ConfigurationHandler.GET_CLIENT_CONFIG_DATA_TIMEOUT;
        }

        private final String toLimit(String str) {
            String str2 = str;
            if (str2.length() == 0) {
                str2 = "999999999999";
            }
            return str2;
        }

        public final Map<String, Map<String, String>> toAidData$hardware_reactive_release(VectorRegionalConfiguration vectorRegionalConfiguration, Map<String, String> aidMapping, SimpleLogger<ApplicationTrace, ApplicationTraceResult> simpleLogger) {
            String str;
            List<ContactApplicationParameters> listEmptyList;
            String str2;
            String str3;
            String str4;
            List<ContactlessCombination> listEmptyList2;
            Iterator<ContactlessCombination> it;
            SimpleLogger<ApplicationTrace, ApplicationTraceResult> simpleLogger2;
            Map<String, Map<String, String>> map;
            String str5;
            String str6;
            String str7;
            String str8;
            Unit unit;
            Iterator<ContactApplicationParameters> it2;
            SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger = simpleLogger;
            Intrinsics.checkNotNullParameter(vectorRegionalConfiguration, "<this>");
            Intrinsics.checkNotNullParameter(aidMapping, "aidMapping");
            Intrinsics.checkNotNullParameter(logger, "logger");
            ArrayList arrayList = new ArrayList(aidMapping.size());
            Iterator<Map.Entry<String, String>> it3 = aidMapping.entrySet().iterator();
            while (true) {
                str = "aid";
                if (!it3.hasNext()) {
                    break;
                }
                Map.Entry<String, String> next = it3.next();
                arrayList.add(new Pair(next.getKey(), MapsKt.mutableMapOf(TuplesKt.to("appIndex", next.getValue()), TuplesKt.to("aid", ConfigurationHandler.AID_DISABLED))));
            }
            Map<String, Map<String, String>> map2 = MapsKt.toMap(arrayList);
            ContactApplicationParametersList contactApplicationParametersList = vectorRegionalConfiguration.contact_parameters;
            if (contactApplicationParametersList == null || (listEmptyList = contactApplicationParametersList.parameters) == null) {
                listEmptyList = CollectionsKt.emptyList();
            }
            Iterator<ContactApplicationParameters> it4 = listEmptyList.iterator();
            while (true) {
                boolean zHasNext = it4.hasNext();
                str2 = RemoteConfigConstants.RequestFieldKey.APP_VERSION;
                str3 = "defaultTDOL";
                str4 = TlvMap.TAG_TDOL;
                int i = WinError.RPC_S_NO_PRINC_NAME;
                Unit unit2 = null;
                if (!zHasNext) {
                    break;
                }
                ContactApplicationParameters next2 = it4.next();
                Map<String, String> map3 = map2.get(next2.aid);
                if (map3 != null) {
                    map3.put("aid", next2.aid);
                    map3.put("contactTACDefault", next2.tac_default);
                    map3.put("contactTACDenial", next2.tac_denial);
                    map3.put("contactTACOnline", next2.tac_online);
                    map3.put("terminalFloorLimit", "00000000");
                    Iterator<Tlv> it5 = next2.tlvs.iterator();
                    while (it5.hasNext()) {
                        Tlv next3 = it5.next();
                        Iterator<ContactApplicationParameters> it6 = it4;
                        String str9 = next3.tag;
                        Iterator<Tlv> it7 = it5;
                        int iHashCode = str9.hashCode();
                        if (iHashCode != i) {
                            if (iHashCode != 1766902) {
                                if (iHashCode == 1767026 && str9.equals(TlvMap.TAG_DDOL)) {
                                    map3.put("defaultDDOL", next3.value_);
                                }
                            } else if (str9.equals(TlvMap.TAG_TERMINAL_APPLICATION_VERSION_NUMBER)) {
                                map3.put(RemoteConfigConstants.RequestFieldKey.APP_VERSION, next3.value_);
                            }
                        } else if (str9.equals(TlvMap.TAG_TDOL)) {
                            map3.put("defaultTDOL", next3.value_);
                        }
                        it5 = it7;
                        it4 = it6;
                        i = WinError.RPC_S_NO_PRINC_NAME;
                    }
                    it2 = it4;
                    unit2 = Unit.INSTANCE;
                } else {
                    it2 = it4;
                }
                if (unit2 == null) {
                    logger.w("Index not found for CT AID " + next2.aid, new Pair[0]);
                }
                it4 = it2;
            }
            ContactlessCombinationsList contactlessCombinationsList = vectorRegionalConfiguration.contactless_combinations;
            if (contactlessCombinationsList == null || (listEmptyList2 = contactlessCombinationsList.combinations) == null) {
                listEmptyList2 = CollectionsKt.emptyList();
            }
            Iterator<ContactlessCombination> it8 = listEmptyList2.iterator();
            while (it8.hasNext()) {
                ContactlessCombination next4 = it8.next();
                Map<String, String> map4 = map2.get(next4.aid);
                if (map4 != null) {
                    map4.put(str, next4.aid);
                    PayPassParameters payPassParameters = next4.pay_pass_parameters;
                    PayWaveParameters payWaveParameters = next4.pay_wave_parameters;
                    ExpressPayParameters expressPayParameters = next4.express_pay_parameters;
                    JcbParameters jcbParameters = next4.jcb_parameters;
                    it = it8;
                    DiscoverParameters discoverParameters = next4.discover_parameters;
                    map = map2;
                    InteracParameters interacParameters = next4.interac_parameters;
                    str5 = str;
                    String str10 = str3;
                    String str11 = str4;
                    String str12 = str2;
                    if (payPassParameters != null) {
                        if (next4.is_signature_supported) {
                            map4.put("contactlessTACDefault", "F45084800C");
                            map4.put("contactlessTACDenial", "0000000000");
                            map4.put("contactlessTACOnline", "F45084800C");
                        } else {
                            map4.put("contactlessTACDefault", "F45080800C");
                            map4.put("contactlessTACDenial", "0000000000");
                            map4.put("contactlessTACOnline", "F45080800C");
                        }
                        map4.put("contactlessCVMRequiredLimit", payPassParameters.contactless_cvm_required_limit);
                        map4.put("contactlessFloorLimit", payPassParameters.contactless_floor_limit);
                    } else if (payWaveParameters != null) {
                        map4.put("contactlessTransactionLimit", ConfigurationHandler.INSTANCE.toLimit(payWaveParameters.contactless_transaction_limit));
                        map4.put("contactlessCVMRequiredLimit", ConfigurationHandler.INSTANCE.toLimit(payWaveParameters.contactless_cvm_required_limit));
                        map4.put("contactlessFloorLimit", ConfigurationHandler.INSTANCE.toLimit(payWaveParameters.contactless_floor_limit));
                    } else if (expressPayParameters != null) {
                        map4.put("contactlessTransactionLimit", ConfigurationHandler.INSTANCE.toLimit(expressPayParameters.contactless_transaction_limit));
                        map4.put("contactlessCVMRequiredLimit", ConfigurationHandler.INSTANCE.toLimit(expressPayParameters.contactless_cvm_required_limit));
                        map4.put("contactlessFloorLimit", ConfigurationHandler.INSTANCE.toLimit(expressPayParameters.contactless_floor_limit));
                        map4.put("contactlessTACDefault", expressPayParameters.tac_default);
                        map4.put("contactlessTACDenial", expressPayParameters.tac_denial);
                        map4.put("contactlessTACOnline", expressPayParameters.tac_online);
                    } else if (jcbParameters != null) {
                        map4.put("contactlessTransactionLimit", ConfigurationHandler.INSTANCE.toLimit(jcbParameters.contactless_transaction_limit));
                        map4.put("contactlessCVMRequiredLimit", ConfigurationHandler.INSTANCE.toLimit(jcbParameters.contactless_cvm_required_limit));
                        map4.put("contactlessFloorLimit", ConfigurationHandler.INSTANCE.toLimit(jcbParameters.contactless_floor_limit));
                        map4.put("contactlessTACDefault", jcbParameters.tac_default);
                        map4.put("contactlessTACDenial", jcbParameters.tac_denial);
                        map4.put("contactlessTACOnline", jcbParameters.tac_online);
                    } else if (discoverParameters != null) {
                        map4.put("contactlessTransactionLimit", ConfigurationHandler.INSTANCE.toLimit(discoverParameters.contactless_transaction_limit));
                        map4.put("contactlessCVMRequiredLimit", ConfigurationHandler.INSTANCE.toLimit(discoverParameters.contactless_cvm_required_limit));
                        map4.put("contactlessFloorLimit", ConfigurationHandler.INSTANCE.toLimit(discoverParameters.contactless_floor_limit));
                    } else if (interacParameters != null) {
                        map4.put("contactlessTransactionLimit", ConfigurationHandler.INSTANCE.toLimit(interacParameters.contactless_transaction_limit));
                        map4.put("contactlessCVMRequiredLimit", ConfigurationHandler.INSTANCE.toLimit(interacParameters.contactless_cvm_required_limit));
                        map4.put("contactlessTACDefault", interacParameters.tac_default);
                        map4.put("contactlessTACDenial", interacParameters.tac_denial);
                        map4.put("contactlessTACOnline", interacParameters.tac_online);
                    } else {
                        str7 = str10;
                        str8 = str11;
                        str6 = str12;
                        simpleLogger2 = simpleLogger;
                        simpleLogger2.w("No CTLS message for " + next4.aid + ", so skipping", new Pair[0]);
                        unit = Unit.INSTANCE;
                    }
                    for (Tlv tlv : next4.tlvs) {
                        String str13 = tlv.tag;
                        int iHashCode2 = str13.hashCode();
                        if (iHashCode2 == 1822) {
                            String str14 = str11;
                            String str15 = str12;
                            if (str13.equals(str14)) {
                                map4.put(str10, tlv.value_);
                            }
                            str12 = str15;
                            str11 = str14;
                        } else if (iHashCode2 != 1766902) {
                            if (iHashCode2 == 1767026 && str13.equals(TlvMap.TAG_DDOL)) {
                                map4.put("defaultDDOL", tlv.value_);
                            }
                        } else if (str13.equals(TlvMap.TAG_TERMINAL_APPLICATION_VERSION_NUMBER)) {
                            map4.put(str12, tlv.value_);
                        }
                    }
                    str7 = str10;
                    str8 = str11;
                    str6 = str12;
                    simpleLogger2 = simpleLogger;
                    unit = Unit.INSTANCE;
                } else {
                    it = it8;
                    simpleLogger2 = logger;
                    map = map2;
                    str5 = str;
                    str6 = str2;
                    str7 = str3;
                    str8 = str4;
                    unit = null;
                }
                if (unit == null) {
                    simpleLogger2.w("Index not found for CTLS AID " + next4.aid, new Pair[0]);
                }
                it8 = it;
                logger = simpleLogger2;
                str2 = str6;
                str4 = str8;
                str = str5;
                str3 = str7;
                map2 = map;
            }
            return map2;
        }
    }

    static {
        Duration.Companion companion = Duration.INSTANCE;
        TIMEOUT_DELAY = DurationKt.toDuration(3, DurationUnit.SECONDS);
        Duration.Companion companion2 = Duration.INSTANCE;
        TIMEOUT_DELAY_LONG = DurationKt.toDuration(5, DurationUnit.SECONDS);
        Duration.Companion companion3 = Duration.INSTANCE;
        GET_CLIENT_CONFIG_DATA_TIMEOUT = DurationKt.toDuration(3, DurationUnit.SECONDS);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Inject
    public ConfigurationHandler(@IO Scheduler scheduler, ReaderConfigurationUpdateController configurationUpdateController, DeviceInfoRepository deviceInfoRepository, SharedPrefs sharedPrefs, ReactiveConfigurationListener configListener, TransactionRepository transactionRepository, DomesticDebitAidsParser domesticDebitAidsParser, LoggerFactory loggerFactory) {
        this(scheduler, configurationUpdateController, deviceInfoRepository, sharedPrefs, configListener, transactionRepository, domesticDebitAidsParser, loggerFactory.create(Reflection.getOrCreateKotlinClass(ConfigurationHandler.class)));
        Intrinsics.checkNotNullParameter(scheduler, "scheduler");
        Intrinsics.checkNotNullParameter(configurationUpdateController, "configurationUpdateController");
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        Intrinsics.checkNotNullParameter(sharedPrefs, "sharedPrefs");
        Intrinsics.checkNotNullParameter(configListener, "configListener");
        Intrinsics.checkNotNullParameter(transactionRepository, "transactionRepository");
        Intrinsics.checkNotNullParameter(domesticDebitAidsParser, "domesticDebitAidsParser");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
    }
}
