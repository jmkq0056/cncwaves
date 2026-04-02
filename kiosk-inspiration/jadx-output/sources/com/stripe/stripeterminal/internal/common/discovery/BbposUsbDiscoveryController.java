package com.stripe.stripeterminal.internal.common.discovery;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import com.stripe.core.hardware.ConnectionType;
import com.stripe.core.hardware.Reader;
import com.stripe.core.hardware.status.ReaderStatusListener;
import com.stripe.stripeterminal.internal.common.connectandupdate.DiscoveryController;
import com.stripe.stripeterminal.internal.common.makers.ReaderMaker;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: BbposUsbDiscoveryController.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ&\u0010\u000b\u001a\u00020\f2\u0014\u0010\r\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00100\u000f0\u000e2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u000e\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014H\u0002J\b\u0010\u0016\u001a\u00020\fH\u0016R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;", "Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "readerStatusListener", "Lcom/stripe/core/hardware/status/ReaderStatusListener;", "usbManager", "Landroid/hardware/usb/UsbManager;", "(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/core/hardware/status/ReaderStatusListener;Landroid/hardware/usb/UsbManager;)V", "job", "Lkotlinx/coroutines/Job;", "discover", "", "readerClasses", "", "Lkotlin/reflect/KClass;", "Lcom/stripe/core/hardware/Reader;", "connectionType", "Lcom/stripe/core/hardware/ConnectionType;", "getUsbDevices", "", "Landroid/hardware/usb/UsbDevice;", "stopDiscover", "Companion", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BbposUsbDiscoveryController implements DiscoveryController {
    private static final Companion Companion = new Companion(null);
    private static final long POLL_DELAY;
    private Job job;
    private final ReaderStatusListener readerStatusListener;
    private final CoroutineScope scope;
    private final UsbManager usbManager;

    public BbposUsbDiscoveryController(CoroutineScope scope, ReaderStatusListener readerStatusListener, UsbManager usbManager) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(readerStatusListener, "readerStatusListener");
        Intrinsics.checkNotNullParameter(usbManager, "usbManager");
        this.scope = scope;
        this.readerStatusListener = readerStatusListener;
        this.usbManager = usbManager;
    }

    @Override // com.stripe.stripeterminal.internal.common.connectandupdate.DiscoveryController
    public void discover(List<? extends KClass<? extends Reader>> readerClasses, ConnectionType connectionType) {
        Intrinsics.checkNotNullParameter(readerClasses, "readerClasses");
        Intrinsics.checkNotNullParameter(connectionType, "connectionType");
        if (this.job != null) {
            return;
        }
        this.job = BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new AnonymousClass1(readerClasses, null), 3, null);
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.discovery.BbposUsbDiscoveryController$discover$1, reason: invalid class name */
    /* JADX INFO: compiled from: BbposUsbDiscoveryController.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.discovery.BbposUsbDiscoveryController$discover$1", f = "BbposUsbDiscoveryController.kt", i = {0}, l = {37}, m = "invokeSuspend", n = {"$this$launch"}, s = {"L$0"})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ List<KClass<? extends Reader>> $readerClasses;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(List<? extends KClass<? extends Reader>> list, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$readerClasses = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = BbposUsbDiscoveryController.this.new AnonymousClass1(this.$readerClasses, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineScope coroutineScope;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                coroutineScope = (CoroutineScope) this.L$0;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                coroutineScope = (CoroutineScope) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            while (CoroutineScopeKt.isActive(coroutineScope)) {
                Collection usbDevices = BbposUsbDiscoveryController.this.getUsbDevices();
                ReaderMaker readerMaker = ReaderMaker.INSTANCE;
                ArrayList arrayList = new ArrayList();
                Iterator it = usbDevices.iterator();
                while (it.hasNext()) {
                    Reader.UsbReader usbReaderFromUsbDeviceOrNull = readerMaker.fromUsbDeviceOrNull((UsbDevice) it.next());
                    if (usbReaderFromUsbDeviceOrNull != null) {
                        arrayList.add(usbReaderFromUsbDeviceOrNull);
                    }
                }
                List<KClass<? extends Reader>> list = this.$readerClasses;
                ArrayList arrayList2 = new ArrayList();
                for (Object obj2 : arrayList) {
                    if (list.contains(Reflection.getOrCreateKotlinClass(((Reader.UsbReader) obj2).getClass()))) {
                        arrayList2.add(obj2);
                    }
                }
                BbposUsbDiscoveryController.this.readerStatusListener.handleReaderDiscovery(CollectionsKt.toSet(arrayList2));
                this.L$0 = coroutineScope;
                this.label = 1;
                if (DelayKt.m2320delayVtjQ1oo(BbposUsbDiscoveryController.POLL_DELAY, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Collection<UsbDevice> getUsbDevices() {
        Collection<UsbDevice> collectionValues = this.usbManager.getDeviceList().values();
        Intrinsics.checkNotNullExpressionValue(collectionValues, "<get-values>(...)");
        return collectionValues;
    }

    @Override // com.stripe.stripeterminal.internal.common.connectandupdate.DiscoveryController
    public void stopDiscover() {
        Job job = this.job;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        this.job = null;
    }

    /* JADX INFO: compiled from: BbposUsbDiscoveryController.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\u00020\u0004X\u0082\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\n\u0002\u0010\u0005\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController$Companion;", "", "()V", "POLL_DELAY", "Lkotlin/time/Duration;", "J", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    static {
        Duration.Companion companion = Duration.INSTANCE;
        POLL_DELAY = DurationKt.toDuration(1, DurationUnit.SECONDS);
    }
}
