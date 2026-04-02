package com.stripe.stripeterminal.internal.common.discovery;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.le.BluetoothLeScanner;
import android.bluetooth.le.ScanCallback;
import android.bluetooth.le.ScanFilter;
import android.bluetooth.le.ScanResult;
import android.bluetooth.le.ScanSettings;
import android.os.ParcelUuid;
import com.stripe.core.hardware.Reader;
import com.stripe.core.hardware.status.ReaderStatusListener;
import com.stripe.core.hardware.status.ScanFailedFatalError;
import com.stripe.core.stripeterminal.log.AndroidLog;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.stripeterminal.internal.common.makers.ReaderMaker;
import com.sun.jna.platform.win32.WinError;
import java.util.concurrent.locks.ReentrantLock;
import javax.inject.Provider;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: compiled from: BbposBluetoothScanner.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 !2\u00020\u0001:\u0002!\"B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0007¢\u0006\u0002\u0010\tJ\u0010\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u0014H\u0016J\u001a\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u00142\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0017JJ\u0010\u001f\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u001426\u0010\n\u001a2\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u00120\u000bH\u0007J\b\u0010 \u001a\u00020\u0012H\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R>\u0010\n\u001a2\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u00120\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;", "Landroid/bluetooth/le/ScanCallback;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "readerStatusListener", "Lcom/stripe/core/hardware/status/ReaderStatusListener;", "scannerProvider", "Ljavax/inject/Provider;", "Landroid/bluetooth/le/BluetoothLeScanner;", "(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/core/hardware/status/ReaderStatusListener;Ljavax/inject/Provider;)V", "onReaderDiscovered", "Lkotlin/Function2;", "Lcom/stripe/core/hardware/Reader$BluetoothReader;", "Lkotlin/ParameterName;", "name", OfflineStorageConstantsKt.READER, "", "deviceName", "", "retryCount", "", "scanState", "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$ScanState;", "scanStateLock", "Ljava/util/concurrent/locks/ReentrantLock;", "onScanFailed", "errorCode", "onScanResult", "callbackType", "result", "Landroid/bluetooth/le/ScanResult;", "startScan", "stopScan", "Companion", "ScanState", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BbposBluetoothScanner extends ScanCallback {
    private static final String BASE_BLUETOOTH_UUID_POSTFIX = "0000-1000-8000-00805F9B34FB";
    private static final String BASE_BLUETOOTH_UUID_PREFIX = "0000";
    private static final String BBPOS_BLUETOOTH_SID = "FFA0";
    private static final String BLUETOOTH_SERVICE_ID = "0000FFA0-0000-1000-8000-00805F9B34FB";
    private static final int MAX_RETRIES = 5;
    private static final long RETRY_DELAY = 5000;
    private static final String TAG = "BbposBluetoothScanner";
    private final CoroutineDispatcher dispatcher;
    private Function2<? super Reader.BluetoothReader, ? super String, Unit> onReaderDiscovered;
    private final ReaderStatusListener readerStatusListener;
    private int retryCount;
    private volatile ScanState scanState;
    private final ReentrantLock scanStateLock;
    private final Provider<BluetoothLeScanner> scannerProvider;

    /* JADX INFO: compiled from: BbposBluetoothScanner.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ScanState.values().length];
            try {
                iArr[ScanState.STARTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ScanState.STOPPING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ScanState.STOPPED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public BbposBluetoothScanner(CoroutineDispatcher dispatcher, ReaderStatusListener readerStatusListener, Provider<BluetoothLeScanner> scannerProvider) {
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(readerStatusListener, "readerStatusListener");
        Intrinsics.checkNotNullParameter(scannerProvider, "scannerProvider");
        this.dispatcher = dispatcher;
        this.readerStatusListener = readerStatusListener;
        this.scannerProvider = scannerProvider;
        this.onReaderDiscovered = new Function2<Reader.BluetoothReader, String, Unit>() { // from class: com.stripe.stripeterminal.internal.common.discovery.BbposBluetoothScanner$onReaderDiscovered$1
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Reader.BluetoothReader bluetoothReader, String str) {
                Intrinsics.checkNotNullParameter(bluetoothReader, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(str, "<anonymous parameter 1>");
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Reader.BluetoothReader bluetoothReader, String str) {
                invoke2(bluetoothReader, str);
                return Unit.INSTANCE;
            }
        };
        this.scanState = ScanState.STOPPED;
        this.scanStateLock = new ReentrantLock();
    }

    public static /* synthetic */ void startScan$default(BbposBluetoothScanner bbposBluetoothScanner, int i, Function2 function2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        bbposBluetoothScanner.startScan(i, function2);
    }

    public final void startScan(int retryCount, Function2<? super Reader.BluetoothReader, ? super String, Unit> onReaderDiscovered) {
        Intrinsics.checkNotNullParameter(onReaderDiscovered, "onReaderDiscovered");
        this.onReaderDiscovered = onReaderDiscovered;
        this.retryCount = retryCount;
        ReentrantLock reentrantLock = this.scanStateLock;
        reentrantLock.lock();
        try {
            int i = WhenMappings.$EnumSwitchMapping$0[this.scanState.ordinal()];
            if (i == 1 || i == 2) {
                this.scanState = ScanState.STARTED;
            } else if (i == 3) {
                ScanFilter scanFilterBuild = new ScanFilter.Builder().setServiceUuid(ParcelUuid.fromString(BLUETOOTH_SERVICE_ID)).build();
                ScanSettings scanSettingsBuild = new ScanSettings.Builder().setScanMode(2).build();
                BluetoothLeScanner bluetoothLeScanner = this.scannerProvider.get();
                if (bluetoothLeScanner != null) {
                    bluetoothLeScanner.startScan(CollectionsKt.listOf(scanFilterBuild), scanSettingsBuild, this);
                }
                this.scanState = ScanState.STARTED;
            }
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void stopScan() {
        ReentrantLock reentrantLock = this.scanStateLock;
        reentrantLock.lock();
        try {
            if (this.scanState == ScanState.STARTED) {
                this.scanState = ScanState.STOPPING;
            }
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(this.dispatcher), null, null, new AnonymousClass2(null), 3, null);
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.discovery.BbposBluetoothScanner$stopScan$2, reason: invalid class name */
    /* JADX INFO: compiled from: BbposBluetoothScanner.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.discovery.BbposBluetoothScanner$stopScan$2", f = "BbposBluetoothScanner.kt", i = {}, l = {104}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return BbposBluetoothScanner.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (DelayKt.delay(5000L, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            ReentrantLock reentrantLock = BbposBluetoothScanner.this.scanStateLock;
            BbposBluetoothScanner bbposBluetoothScanner = BbposBluetoothScanner.this;
            reentrantLock.lock();
            try {
                if (bbposBluetoothScanner.scanState == ScanState.STOPPING) {
                    BluetoothLeScanner bluetoothLeScanner = (BluetoothLeScanner) bbposBluetoothScanner.scannerProvider.get();
                    if (bluetoothLeScanner != null) {
                        bluetoothLeScanner.stopScan(bbposBluetoothScanner);
                    }
                    bbposBluetoothScanner.scanState = ScanState.STOPPED;
                }
                Unit unit = Unit.INSTANCE;
                reentrantLock.unlock();
                return Unit.INSTANCE;
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
    }

    @Override // android.bluetooth.le.ScanCallback
    public void onScanResult(int callbackType, ScanResult result) {
        BluetoothDevice device;
        String name;
        Reader.BluetoothReader bluetoothReaderFromBluetoothDeviceOrNull;
        if (result == null || (device = result.getDevice()) == null || (name = device.getName()) == null || (bluetoothReaderFromBluetoothDeviceOrNull = ReaderMaker.INSTANCE.fromBluetoothDeviceOrNull(result.getDevice())) == null) {
            return;
        }
        this.onReaderDiscovered.invoke(bluetoothReaderFromBluetoothDeviceOrNull, name);
    }

    @Override // android.bluetooth.le.ScanCallback
    public void onScanFailed(int errorCode) {
        AndroidLog.INSTANCE.d(TAG, "scanFailed, errorCode: " + errorCode);
        switch (errorCode) {
            case 1:
                break;
            case 2:
            case 3:
            case 4:
                this.readerStatusListener.handleReaderException(new ScanFailedFatalError(errorCode, "Bluetooth scan failed", null, 4, null));
                break;
            case 5:
            case 6:
                if (this.retryCount < 5) {
                    BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(this.dispatcher), null, null, new AnonymousClass1(null), 3, null);
                } else {
                    this.readerStatusListener.handleReaderException(new ScanFailedFatalError(errorCode, "Bluetooth scan failed", null, 4, null));
                }
                break;
            default:
                this.readerStatusListener.handleReaderException(new ScanFailedFatalError(errorCode, "Bluetooth scan failed", null, 4, null));
                break;
        }
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.discovery.BbposBluetoothScanner$onScanFailed$1, reason: invalid class name */
    /* JADX INFO: compiled from: BbposBluetoothScanner.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.discovery.BbposBluetoothScanner$onScanFailed$1", f = "BbposBluetoothScanner.kt", i = {}, l = {WinError.ERROR_SAME_DRIVE}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return BbposBluetoothScanner.this.new AnonymousClass1(continuation);
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
                if (DelayKt.delay(5000L, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            BbposBluetoothScanner bbposBluetoothScanner = BbposBluetoothScanner.this;
            bbposBluetoothScanner.startScan(bbposBluetoothScanner.retryCount + 1, BbposBluetoothScanner.this.onReaderDiscovered);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: BbposBluetoothScanner.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$ScanState;", "", "(Ljava/lang/String;I)V", "STARTED", "STOPPING", "STOPPED", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final class ScanState {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ScanState[] $VALUES;
        public static final ScanState STARTED = new ScanState("STARTED", 0);
        public static final ScanState STOPPING = new ScanState("STOPPING", 1);
        public static final ScanState STOPPED = new ScanState("STOPPED", 2);

        private static final /* synthetic */ ScanState[] $values() {
            return new ScanState[]{STARTED, STOPPING, STOPPED};
        }

        public static EnumEntries<ScanState> getEntries() {
            return $ENTRIES;
        }

        public static ScanState valueOf(String str) {
            return (ScanState) Enum.valueOf(ScanState.class, str);
        }

        public static ScanState[] values() {
            return (ScanState[]) $VALUES.clone();
        }

        private ScanState(String str, int i) {
        }

        static {
            ScanState[] scanStateArr$values = $values();
            $VALUES = scanStateArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(scanStateArr$values);
        }
    }
}
