package com.stripe.device;

import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.stripe.proto.terminal.terminal.pub.message.config.BluetoothAutoReconnectConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.TippingConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.UsbAutoReconnectConfigPb;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: DefaultActiveLocationConfigRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00050\tH\u0016J8\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00062\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016R \u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/device/DefaultActiveLocationConfigRepository;", "Lcom/stripe/device/ActiveLocationConfigRepository;", "()V", "_currentActiveOfflineLocationConfig", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lkotlin/Pair;", "", "Lcom/stripe/device/OfflineLocationConfigs;", "getActiveLocationConfigFlow", "Lkotlinx/coroutines/flow/Flow;", "setActiveLocationConfigs", "", "locationId", "offlineConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;", "tippingConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;", "bluetoothAutoReconnectConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;", "usbAutoReconnectConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultActiveLocationConfigRepository implements ActiveLocationConfigRepository {
    private final MutableStateFlow<Pair<String, OfflineLocationConfigs>> _currentActiveOfflineLocationConfig = StateFlowKt.MutableStateFlow(TuplesKt.to("", new OfflineLocationConfigs(null, null, null, null, 15, null)));

    @Override // com.stripe.device.ActiveLocationConfigRepository
    public Flow<Pair<String, OfflineLocationConfigs>> getActiveLocationConfigFlow() {
        final MutableStateFlow<Pair<String, OfflineLocationConfigs>> mutableStateFlow = this._currentActiveOfflineLocationConfig;
        return (Flow) new Flow<Pair<? extends String, ? extends OfflineLocationConfigs>>() { // from class: com.stripe.device.DefaultActiveLocationConfigRepository$getActiveLocationConfigFlow$$inlined$filter$1

            /* JADX INFO: renamed from: com.stripe.device.DefaultActiveLocationConfigRepository$getActiveLocationConfigFlow$$inlined$filter$1$2, reason: invalid class name */
            /* JADX INFO: compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", PrinterTextParser.TAGS_ALIGN_RIGHT, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$filter$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* JADX INFO: renamed from: com.stripe.device.DefaultActiveLocationConfigRepository$getActiveLocationConfigFlow$$inlined$filter$1$2$1, reason: invalid class name */
                /* JADX INFO: compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "com.stripe.device.DefaultActiveLocationConfigRepository$getActiveLocationConfigFlow$$inlined$filter$1$2", f = "DefaultActiveLocationConfigRepository.kt", i = {}, l = {219}, m = "emit", n = {}, s = {})
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    Object L$1;
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

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.$this_unsafeFlow = flowCollector;
                }

                /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r5, kotlin.coroutines.Continuation r6) {
                    /*
                        r4 = this;
                        boolean r0 = r6 instanceof com.stripe.device.DefaultActiveLocationConfigRepository$getActiveLocationConfigFlow$$inlined$filter$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L14
                        r0 = r6
                        com.stripe.device.DefaultActiveLocationConfigRepository$getActiveLocationConfigFlow$$inlined$filter$1$2$1 r0 = (com.stripe.device.DefaultActiveLocationConfigRepository$getActiveLocationConfigFlow$$inlined$filter$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r1 = r1 & r2
                        if (r1 == 0) goto L14
                        int r6 = r0.label
                        int r6 = r6 - r2
                        r0.label = r6
                        goto L19
                    L14:
                        com.stripe.device.DefaultActiveLocationConfigRepository$getActiveLocationConfigFlow$$inlined$filter$1$2$1 r0 = new com.stripe.device.DefaultActiveLocationConfigRepository$getActiveLocationConfigFlow$$inlined$filter$1$2$1
                        r0.<init>(r6)
                    L19:
                        java.lang.Object r6 = r0.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L32
                        if (r2 != r3) goto L2a
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L52
                    L2a:
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        r5.<init>(r6)
                        throw r5
                    L32:
                        kotlin.ResultKt.throwOnFailure(r6)
                        kotlinx.coroutines.flow.FlowCollector r6 = r4.$this_unsafeFlow
                        r2 = r0
                        kotlin.coroutines.Continuation r2 = (kotlin.coroutines.Continuation) r2
                        r2 = r5
                        kotlin.Pair r2 = (kotlin.Pair) r2
                        java.lang.Object r2 = r2.getFirst()
                        java.lang.CharSequence r2 = (java.lang.CharSequence) r2
                        int r2 = r2.length()
                        if (r2 <= 0) goto L52
                        r0.label = r3
                        java.lang.Object r5 = r6.emit(r5, r0)
                        if (r5 != r1) goto L52
                        return r1
                    L52:
                        kotlin.Unit r5 = kotlin.Unit.INSTANCE
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.device.DefaultActiveLocationConfigRepository$getActiveLocationConfigFlow$$inlined$filter$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super Pair<? extends String, ? extends OfflineLocationConfigs>> flowCollector, Continuation continuation) {
                Object objCollect = mutableStateFlow.collect(new AnonymousClass2(flowCollector), continuation);
                return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
            }
        };
    }

    @Override // com.stripe.device.ActiveLocationConfigRepository
    public void setActiveLocationConfigs(String locationId, OfflineConfigPb offlineConfig, TippingConfigPb tippingConfig, BluetoothAutoReconnectConfigPb bluetoothAutoReconnectConfig, UsbAutoReconnectConfigPb usbAutoReconnectConfig) {
        Intrinsics.checkNotNullParameter(locationId, "locationId");
        this._currentActiveOfflineLocationConfig.setValue(TuplesKt.to(locationId, new OfflineLocationConfigs(offlineConfig, tippingConfig, bluetoothAutoReconnectConfig, usbAutoReconnectConfig)));
    }
}
