package com.stripe.stripeterminal.internal.common.adapter;

import android.hardware.usb.UsbDevice;
import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.stripe.hardware.status.ReaderInfo;
import com.stripe.stripeterminal.external.models.Location;
import com.stripe.stripeterminal.external.models.LocationStatus;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter;
import com.stripe.stripeterminal.internal.common.makers.DeviceTypeMaker;
import com.stripe.stripeterminal.internal.common.makers.KmpReaderMaker;
import com.sun.jna.platform.win32.WinError;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__CollectionKt;

/* JADX INFO: compiled from: BbposUsbAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00040\u0001H\u008a@"}, d2 = {"<anonymous>", "", "Lcom/stripe/stripeterminal/external/models/Reader;", "usbDevices", "Landroid/hardware/usb/UsbDevice;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$3", f = "BbposUsbAdapter.kt", i = {}, l = {440}, m = "invokeSuspend", n = {}, s = {})
final class BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$3 extends SuspendLambda implements Function2<List<? extends UsbDevice>, Continuation<? super List<? extends Reader>>, Object> {
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ BbposUsbAdapter.DiscoverUsbReadersOperation this$0;
    final /* synthetic */ BbposUsbAdapter this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$3(BbposUsbAdapter.DiscoverUsbReadersOperation discoverUsbReadersOperation, BbposUsbAdapter bbposUsbAdapter, Continuation<? super BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$3> continuation) {
        super(2, continuation);
        this.this$0 = discoverUsbReadersOperation;
        this.this$1 = bbposUsbAdapter;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$3 bbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$3 = new BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$3(this.this$0, this.this$1, continuation);
        bbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$3.L$0 = obj;
        return bbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$3;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(List<? extends UsbDevice> list, Continuation<? super List<? extends Reader>> continuation) {
        return invoke2(list, (Continuation<? super List<Reader>>) continuation);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(List<? extends UsbDevice> list, Continuation<? super List<Reader>> continuation) {
        return ((BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$3) create(list, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object list$default;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            final Flow flowCancellable = FlowKt.cancellable(FlowKt.asFlow((List) this.L$0));
            final BbposUsbAdapter.DiscoverUsbReadersOperation discoverUsbReadersOperation = this.this$0;
            final Flow<UsbDevice> flow = new Flow<UsbDevice>() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$3$invokeSuspend$$inlined$map$1

                /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$3$invokeSuspend$$inlined$map$1$2, reason: invalid class name */
                /* JADX INFO: compiled from: Emitters.kt */
                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", PrinterTextParser.TAGS_ALIGN_RIGHT, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
                public static final class AnonymousClass2<T> implements FlowCollector {
                    final /* synthetic */ BbposUsbAdapter.DiscoverUsbReadersOperation $receiver$inlined;
                    final /* synthetic */ FlowCollector $this_unsafeFlow;

                    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$3$invokeSuspend$$inlined$map$1$2$1, reason: invalid class name */
                    /* JADX INFO: compiled from: Emitters.kt */
                    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$3$invokeSuspend$$inlined$map$1$2", f = "BbposUsbAdapter.kt", i = {}, l = {WinError.ERROR_FILE_CHECKED_OUT, 219}, m = "emit", n = {}, s = {})
                    public static final class AnonymousClass1 extends ContinuationImpl {
                        Object L$0;
                        int label;
                        /* synthetic */ Object result;

                        public AnonymousClass1(Continuation continuation) {
                            super(continuation);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            this.result = obj;
                            this.label |= Integer.MIN_VALUE;
                            return AnonymousClass2.this.emit(null, this);
                        }
                    }

                    public AnonymousClass2(FlowCollector flowCollector, BbposUsbAdapter.DiscoverUsbReadersOperation discoverUsbReadersOperation) {
                        this.$this_unsafeFlow = flowCollector;
                        this.$receiver$inlined = discoverUsbReadersOperation;
                    }

                    /* JADX WARN: Code restructure failed: missing block: B:21:0x0060, code lost:
                    
                        if (r7.emit(r8, r0) == r1) goto L22;
                     */
                    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final java.lang.Object emit(java.lang.Object r7, kotlin.coroutines.Continuation r8) {
                        /*
                            r6 = this;
                            boolean r0 = r8 instanceof com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$3$invokeSuspend$$inlined$map$1.AnonymousClass2.AnonymousClass1
                            if (r0 == 0) goto L14
                            r0 = r8
                            com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$3$invokeSuspend$$inlined$map$1$2$1 r0 = (com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$3$invokeSuspend$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                            int r1 = r0.label
                            r2 = -2147483648(0xffffffff80000000, float:-0.0)
                            r1 = r1 & r2
                            if (r1 == 0) goto L14
                            int r8 = r0.label
                            int r8 = r8 - r2
                            r0.label = r8
                            goto L19
                        L14:
                            com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$3$invokeSuspend$$inlined$map$1$2$1 r0 = new com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$3$invokeSuspend$$inlined$map$1$2$1
                            r0.<init>(r8)
                        L19:
                            java.lang.Object r8 = r0.result
                            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                            int r2 = r0.label
                            r3 = 2
                            r4 = 1
                            if (r2 == 0) goto L3d
                            if (r2 == r4) goto L35
                            if (r2 != r3) goto L2d
                            kotlin.ResultKt.throwOnFailure(r8)
                            goto L63
                        L2d:
                            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                            r7.<init>(r8)
                            throw r7
                        L35:
                            java.lang.Object r7 = r0.L$0
                            kotlinx.coroutines.flow.FlowCollector r7 = (kotlinx.coroutines.flow.FlowCollector) r7
                            kotlin.ResultKt.throwOnFailure(r8)
                            goto L57
                        L3d:
                            kotlin.ResultKt.throwOnFailure(r8)
                            kotlinx.coroutines.flow.FlowCollector r8 = r6.$this_unsafeFlow
                            r2 = r0
                            kotlin.coroutines.Continuation r2 = (kotlin.coroutines.Continuation) r2
                            android.hardware.usb.UsbDevice r7 = (android.hardware.usb.UsbDevice) r7
                            com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation r2 = r6.$receiver$inlined
                            r0.L$0 = r8
                            r0.label = r4
                            java.lang.Object r7 = com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter.DiscoverUsbReadersOperation.access$checkUsbPermission(r2, r7, r0)
                            if (r7 != r1) goto L54
                            goto L62
                        L54:
                            r5 = r8
                            r8 = r7
                            r7 = r5
                        L57:
                            r2 = 0
                            r0.L$0 = r2
                            r0.label = r3
                            java.lang.Object r7 = r7.emit(r8, r0)
                            if (r7 != r1) goto L63
                        L62:
                            return r1
                        L63:
                            kotlin.Unit r7 = kotlin.Unit.INSTANCE
                            return r7
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$3$invokeSuspend$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                    }
                }

                @Override // kotlinx.coroutines.flow.Flow
                public Object collect(FlowCollector<? super UsbDevice> flowCollector, Continuation continuation) {
                    Object objCollect = flowCancellable.collect(new AnonymousClass2(flowCollector, discoverUsbReadersOperation), continuation);
                    return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
                }
            };
            final BbposUsbAdapter.DiscoverUsbReadersOperation discoverUsbReadersOperation2 = this.this$0;
            this.label = 1;
            list$default = FlowKt__CollectionKt.toList$default(new Flow<Pair<? extends UsbDevice, ? extends ReaderInfo>>() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$3$invokeSuspend$$inlined$mapNotNull$1

                /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$3$invokeSuspend$$inlined$mapNotNull$1$2, reason: invalid class name */
                /* JADX INFO: compiled from: Emitters.kt */
                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", PrinterTextParser.TAGS_ALIGN_RIGHT, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
                public static final class AnonymousClass2<T> implements FlowCollector {
                    final /* synthetic */ BbposUsbAdapter.DiscoverUsbReadersOperation $receiver$inlined;
                    final /* synthetic */ FlowCollector $this_unsafeFlow;

                    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$3$invokeSuspend$$inlined$mapNotNull$1$2$1, reason: invalid class name */
                    /* JADX INFO: compiled from: Emitters.kt */
                    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$3$invokeSuspend$$inlined$mapNotNull$1$2", f = "BbposUsbAdapter.kt", i = {0}, l = {WinError.ERROR_FILE_CHECKED_OUT, WinError.ERROR_CHECKOUT_REQUIRED}, m = "emit", n = {"$this$mapNotNull_u24lambda_u246"}, s = {"L$0"})
                    public static final class AnonymousClass1 extends ContinuationImpl {
                        Object L$0;
                        int label;
                        /* synthetic */ Object result;

                        public AnonymousClass1(Continuation continuation) {
                            super(continuation);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            this.result = obj;
                            this.label |= Integer.MIN_VALUE;
                            return AnonymousClass2.this.emit(null, this);
                        }
                    }

                    public AnonymousClass2(FlowCollector flowCollector, BbposUsbAdapter.DiscoverUsbReadersOperation discoverUsbReadersOperation) {
                        this.$this_unsafeFlow = flowCollector;
                        this.$receiver$inlined = discoverUsbReadersOperation;
                    }

                    /* JADX WARN: Code restructure failed: missing block: B:22:0x0062, code lost:
                    
                        if (r7.emit(r8, r0) == r1) goto L23;
                     */
                    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final java.lang.Object emit(java.lang.Object r7, kotlin.coroutines.Continuation r8) throws com.stripe.stripeterminal.external.models.TerminalException {
                        /*
                            r6 = this;
                            boolean r0 = r8 instanceof com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$3$invokeSuspend$$inlined$mapNotNull$1.AnonymousClass2.AnonymousClass1
                            if (r0 == 0) goto L14
                            r0 = r8
                            com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$3$invokeSuspend$$inlined$mapNotNull$1$2$1 r0 = (com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$3$invokeSuspend$$inlined$mapNotNull$1.AnonymousClass2.AnonymousClass1) r0
                            int r1 = r0.label
                            r2 = -2147483648(0xffffffff80000000, float:-0.0)
                            r1 = r1 & r2
                            if (r1 == 0) goto L14
                            int r8 = r0.label
                            int r8 = r8 - r2
                            r0.label = r8
                            goto L19
                        L14:
                            com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$3$invokeSuspend$$inlined$mapNotNull$1$2$1 r0 = new com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$3$invokeSuspend$$inlined$mapNotNull$1$2$1
                            r0.<init>(r8)
                        L19:
                            java.lang.Object r8 = r0.result
                            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                            int r2 = r0.label
                            r3 = 2
                            r4 = 1
                            if (r2 == 0) goto L3d
                            if (r2 == r4) goto L35
                            if (r2 != r3) goto L2d
                            kotlin.ResultKt.throwOnFailure(r8)
                            goto L65
                        L2d:
                            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                            r7.<init>(r8)
                            throw r7
                        L35:
                            java.lang.Object r7 = r0.L$0
                            kotlinx.coroutines.flow.FlowCollector r7 = (kotlinx.coroutines.flow.FlowCollector) r7
                            kotlin.ResultKt.throwOnFailure(r8)
                            goto L57
                        L3d:
                            kotlin.ResultKt.throwOnFailure(r8)
                            kotlinx.coroutines.flow.FlowCollector r8 = r6.$this_unsafeFlow
                            r2 = r0
                            kotlin.coroutines.Continuation r2 = (kotlin.coroutines.Continuation) r2
                            android.hardware.usb.UsbDevice r7 = (android.hardware.usb.UsbDevice) r7
                            com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation r2 = r6.$receiver$inlined
                            r0.L$0 = r8
                            r0.label = r4
                            java.lang.Object r7 = com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter.DiscoverUsbReadersOperation.access$pairWithReaderInfo(r2, r7, r0)
                            if (r7 != r1) goto L54
                            goto L64
                        L54:
                            r5 = r8
                            r8 = r7
                            r7 = r5
                        L57:
                            if (r8 == 0) goto L65
                            r2 = 0
                            r0.L$0 = r2
                            r0.label = r3
                            java.lang.Object r7 = r7.emit(r8, r0)
                            if (r7 != r1) goto L65
                        L64:
                            return r1
                        L65:
                            kotlin.Unit r7 = kotlin.Unit.INSTANCE
                            return r7
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$3$invokeSuspend$$inlined$mapNotNull$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                    }
                }

                @Override // kotlinx.coroutines.flow.Flow
                public Object collect(FlowCollector<? super Pair<? extends UsbDevice, ? extends ReaderInfo>> flowCollector, Continuation continuation) {
                    Object objCollect = flow.collect(new AnonymousClass2(flowCollector, discoverUsbReadersOperation2), continuation);
                    return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
                }
            }, null, this, 1, null);
            if (list$default == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            list$default = obj;
        }
        BbposUsbAdapter bbposUsbAdapter = this.this$1;
        List list = (List) list$default;
        bbposUsbAdapter.getLogger().d("readersWithDeviceInfo = " + list, new Pair[0]);
        if (list.isEmpty()) {
            return CollectionsKt.emptyList();
        }
        List<Pair> list2 = list;
        ArrayList arrayList = new ArrayList();
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            String serial = ((ReaderInfo) ((Pair) it.next()).component2()).getSerial();
            if (serial != null) {
                arrayList.add(serial);
            }
        }
        Map<String, Location> locationsForDiscovery = bbposUsbAdapter.getLocationsForDiscovery(arrayList);
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
        for (Pair pair : list2) {
            UsbDevice usbDevice = (UsbDevice) pair.component1();
            ReaderInfo readerInfo = (ReaderInfo) pair.component2();
            Location location = locationsForDiscovery.get(readerInfo.getSerial());
            KmpReaderMaker kmpReaderMaker = KmpReaderMaker.INSTANCE;
            DeviceTypeMaker.Companion companion = DeviceTypeMaker.INSTANCE;
            String serial2 = readerInfo.getSerial();
            Intrinsics.checkNotNull(serial2);
            arrayList2.add(kmpReaderMaker.withReaderInfo(readerInfo, companion.fromSerial(serial2), (32812 & 4) != 0 ? null : null, (32812 & 8) != 0 ? null : usbDevice, (32812 & 16) != 0 ? LocationStatus.UNKNOWN : location == null ? LocationStatus.NOT_SET : LocationStatus.SET, (32812 & 32) != 0 ? null : location, (32812 & 64) != 0 ? null : null, (32812 & 128) != 0 ? null : null, (32812 & 256) != 0 ? null : null, (32812 & 512) != 0 ? null : null, (32812 & 1024) != 0 ? null : null, (32812 & 2048) != 0 ? null : null, (32812 & 4096) != 0 ? null : null, (32812 & 8192) != 0 ? null : null, (32812 & 16384) != 0 ? null : null, (32812 & 32768) != 0 ? false : false));
        }
        return arrayList2;
    }
}
