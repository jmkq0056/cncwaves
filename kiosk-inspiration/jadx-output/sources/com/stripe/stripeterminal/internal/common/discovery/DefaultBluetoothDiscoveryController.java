package com.stripe.stripeterminal.internal.common.discovery;

import com.stripe.core.hardware.ConnectionType;
import com.stripe.core.hardware.Reader;
import com.stripe.core.hardware.status.ReaderStatusListener;
import com.stripe.core.stripeterminal.log.AndroidLog;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.stripeterminal.internal.common.connectandupdate.DiscoveryController;
import com.stripe.time.Clock;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: DefaultBluetoothDiscoveryController.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB'\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ&\u0010\u0011\u001a\u00020\u00122\u0014\u0010\u0013\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00160\u00150\u00142\u0006\u0010\u0017\u001a\u00020\u0018H\u0017J\u0018\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\rH\u0002J\b\u0010\u001d\u001a\u00020\u0012H\u0002J\b\u0010\u001e\u001a\u00020\u0012H\u0017R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;", "Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "bluetoothScanner", "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;", "readerStatusListener", "Lcom/stripe/core/hardware/status/ReaderStatusListener;", "clock", "Lcom/stripe/time/Clock;", "(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;Lcom/stripe/core/hardware/status/ReaderStatusListener;Lcom/stripe/time/Clock;)V", "discoveredReaders", "", "", "Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;", "removeStaleEntriesJob", "Lkotlinx/coroutines/Job;", "discover", "", "readerClasses", "", "Lkotlin/reflect/KClass;", "Lcom/stripe/core/hardware/Reader;", "connectionType", "Lcom/stripe/core/hardware/ConnectionType;", "onReaderDiscovered", OfflineStorageConstantsKt.READER, "Lcom/stripe/core/hardware/Reader$BluetoothReader;", "deviceName", "removeStaleEntries", "stopDiscover", "Companion", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultBluetoothDiscoveryController implements DiscoveryController {
    private static final long POLL_TIME_MS = 5000;
    private static final String TAG = "BBBTDiscoveryController";
    private final BbposBluetoothScanner bluetoothScanner;
    private final Clock clock;
    private final Map<String, Companion.ReaderEntry> discoveredReaders;
    private final ReaderStatusListener readerStatusListener;
    private Job removeStaleEntriesJob;
    private final CoroutineScope scope;

    public DefaultBluetoothDiscoveryController(CoroutineScope scope, BbposBluetoothScanner bluetoothScanner, ReaderStatusListener readerStatusListener, Clock clock) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(bluetoothScanner, "bluetoothScanner");
        Intrinsics.checkNotNullParameter(readerStatusListener, "readerStatusListener");
        Intrinsics.checkNotNullParameter(clock, "clock");
        this.scope = scope;
        this.bluetoothScanner = bluetoothScanner;
        this.readerStatusListener = readerStatusListener;
        this.clock = clock;
        this.discoveredReaders = new LinkedHashMap();
    }

    @Override // com.stripe.stripeterminal.internal.common.connectandupdate.DiscoveryController
    public void discover(final List<? extends KClass<? extends Reader>> readerClasses, ConnectionType connectionType) {
        Intrinsics.checkNotNullParameter(readerClasses, "readerClasses");
        Intrinsics.checkNotNullParameter(connectionType, "connectionType");
        AndroidLog.INSTANCE.i(TAG, "discoverDevices");
        this.discoveredReaders.clear();
        BbposBluetoothScanner.startScan$default(this.bluetoothScanner, 0, new Function2<Reader.BluetoothReader, String, Unit>() { // from class: com.stripe.stripeterminal.internal.common.discovery.DefaultBluetoothDiscoveryController.discover.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Reader.BluetoothReader bluetoothReader, String str) {
                invoke2(bluetoothReader, str);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Reader.BluetoothReader reader, String deviceName) {
                Intrinsics.checkNotNullParameter(reader, "reader");
                Intrinsics.checkNotNullParameter(deviceName, "deviceName");
                if (readerClasses.contains(Reflection.getOrCreateKotlinClass(reader.getClass()))) {
                    this.onReaderDiscovered(reader, deviceName);
                }
            }
        }, 1, null);
        this.removeStaleEntriesJob = BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new AnonymousClass2(null), 3, null);
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.discovery.DefaultBluetoothDiscoveryController$discover$2, reason: invalid class name */
    /* JADX INFO: compiled from: DefaultBluetoothDiscoveryController.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.discovery.DefaultBluetoothDiscoveryController$discover$2", f = "DefaultBluetoothDiscoveryController.kt", i = {0}, l = {41}, m = "invokeSuspend", n = {"$this$launch"}, s = {"L$0"})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = DefaultBluetoothDiscoveryController.this.new AnonymousClass2(continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x0029  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x003f  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0036 -> B:14:0x0039). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r6) {
            /*
                r5 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r5.label
                r2 = 1
                if (r1 == 0) goto L1b
                if (r1 != r2) goto L13
                java.lang.Object r1 = r5.L$0
                kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
                kotlin.ResultKt.throwOnFailure(r6)
                goto L39
            L13:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r0)
                throw r6
            L1b:
                kotlin.ResultKt.throwOnFailure(r6)
                java.lang.Object r6 = r5.L$0
                kotlinx.coroutines.CoroutineScope r6 = (kotlinx.coroutines.CoroutineScope) r6
                r1 = r6
            L23:
                boolean r6 = kotlinx.coroutines.CoroutineScopeKt.isActive(r1)
                if (r6 == 0) goto L3f
                r6 = r5
                kotlin.coroutines.Continuation r6 = (kotlin.coroutines.Continuation) r6
                r5.L$0 = r1
                r5.label = r2
                r3 = 5000(0x1388, double:2.4703E-320)
                java.lang.Object r6 = kotlinx.coroutines.DelayKt.delay(r3, r6)
                if (r6 != r0) goto L39
                return r0
            L39:
                com.stripe.stripeterminal.internal.common.discovery.DefaultBluetoothDiscoveryController r6 = com.stripe.stripeterminal.internal.common.discovery.DefaultBluetoothDiscoveryController.this
                com.stripe.stripeterminal.internal.common.discovery.DefaultBluetoothDiscoveryController.access$removeStaleEntries(r6)
                goto L23
            L3f:
                kotlin.Unit r6 = kotlin.Unit.INSTANCE
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.discovery.DefaultBluetoothDiscoveryController.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removeStaleEntries() {
        long jCurrentTimeMillis = this.clock.currentTimeMillis();
        Set<Map.Entry<String, Companion.ReaderEntry>> setEntrySet = this.discoveredReaders.entrySet();
        ArrayList arrayList = new ArrayList();
        for (Object obj : setEntrySet) {
            if (jCurrentTimeMillis - ((Companion.ReaderEntry) ((Map.Entry) obj).getValue()).getTimeStamp() > 5000) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = arrayList;
        if (arrayList2.isEmpty()) {
            return;
        }
        this.discoveredReaders.entrySet().removeAll(arrayList2);
        ReaderStatusListener readerStatusListener = this.readerStatusListener;
        Collection<Companion.ReaderEntry> collectionValues = this.discoveredReaders.values();
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(collectionValues, 10));
        Iterator<T> it = collectionValues.iterator();
        while (it.hasNext()) {
            arrayList3.add(((Companion.ReaderEntry) it.next()).getReader());
        }
        readerStatusListener.handleReaderDiscovery(CollectionsKt.toSet(arrayList3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onReaderDiscovered(Reader.BluetoothReader reader, String deviceName) {
        if (!this.discoveredReaders.containsKey(deviceName)) {
            this.discoveredReaders.put(deviceName, new Companion.ReaderEntry(reader, this.clock.currentTimeMillis()));
            ReaderStatusListener readerStatusListener = this.readerStatusListener;
            Collection<Companion.ReaderEntry> collectionValues = this.discoveredReaders.values();
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(collectionValues, 10));
            Iterator<T> it = collectionValues.iterator();
            while (it.hasNext()) {
                arrayList.add(((Companion.ReaderEntry) it.next()).getReader());
            }
            readerStatusListener.handleReaderDiscovery(CollectionsKt.toSet(arrayList));
            return;
        }
        Companion.ReaderEntry readerEntry = this.discoveredReaders.get(deviceName);
        if (readerEntry == null) {
            return;
        }
        readerEntry.setTimeStamp(this.clock.currentTimeMillis());
    }

    @Override // com.stripe.stripeterminal.internal.common.connectandupdate.DiscoveryController
    public void stopDiscover() {
        AndroidLog.INSTANCE.i(TAG, "stopDiscoverReaders");
        this.bluetoothScanner.stopScan();
        Job job = this.removeStaleEntriesJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        this.removeStaleEntriesJob = null;
    }
}
