package com.stripe.stripeterminal.internal.common.adapter;

import android.hardware.usb.UsbDevice;
import com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper;
import com.stripe.core.hardware.Optional;
import com.stripe.core.hardware.Reader;
import com.stripe.hardware.status.DisconnectCause;
import com.sun.jna.platform.win32.WinError;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.ChannelsKt;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.SendChannel;

/* JADX INFO: compiled from: BbposUsbAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;", "Landroid/hardware/usb/UsbDevice;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$connect$2", f = "BbposUsbAdapter.kt", i = {}, l = {WinError.ERROR_NO_PAGEFILE}, m = "invokeSuspend", n = {}, s = {})
final class BbposUsbAdapter$DiscoverUsbReadersOperation$connect$2 extends SuspendLambda implements Function2<ProducerScope<? super UsbDevice>, Continuation<? super Unit>, Object> {
    final /* synthetic */ UsbDevice $usbDevice;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ BbposUsbAdapter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BbposUsbAdapter$DiscoverUsbReadersOperation$connect$2(BbposUsbAdapter bbposUsbAdapter, UsbDevice usbDevice, Continuation<? super BbposUsbAdapter$DiscoverUsbReadersOperation$connect$2> continuation) {
        super(2, continuation);
        this.this$0 = bbposUsbAdapter;
        this.$usbDevice = usbDevice;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        BbposUsbAdapter$DiscoverUsbReadersOperation$connect$2 bbposUsbAdapter$DiscoverUsbReadersOperation$connect$2 = new BbposUsbAdapter$DiscoverUsbReadersOperation$connect$2(this.this$0, this.$usbDevice, continuation);
        bbposUsbAdapter$DiscoverUsbReadersOperation$connect$2.L$0 = obj;
        return bbposUsbAdapter$DiscoverUsbReadersOperation$connect$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(ProducerScope<? super UsbDevice> producerScope, Continuation<? super Unit> continuation) {
        return ((BbposUsbAdapter$DiscoverUsbReadersOperation$connect$2) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            final ProducerScope producerScope = (ProducerScope) this.L$0;
            Observable<Reader> readerConnectObservable = this.this$0.readerStatusListener.getReaderConnectObservable();
            final UsbDevice usbDevice = this.$usbDevice;
            final Disposable disposableSubscribe = Observable.ambArray(readerConnectObservable.map(new Function() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$connect$2$subscription$1
                @Override // io.reactivex.rxjava3.functions.Function
                public final Optional.Present<UsbDevice> apply(Reader it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Optional.INSTANCE.of(usbDevice);
                }
            }), this.this$0.readerStatusListener.getReaderDisconnectObservable().map(new Function() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$connect$2$subscription$2
                @Override // io.reactivex.rxjava3.functions.Function
                public final Optional.Absent<UsbDevice> apply(DisconnectCause it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Optional.INSTANCE.absent();
                }
            })).subscribe(new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$connect$2$subscription$3
                @Override // io.reactivex.rxjava3.functions.Consumer
                public final void accept(Optional<UsbDevice> it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    ChannelsKt.trySendBlocking(producerScope, it.getOrNull());
                    SendChannel.DefaultImpls.close$default(producerScope, null, 1, null);
                }
            });
            Intrinsics.checkNotNullExpressionValue(disposableSubscribe, "subscribe(...)");
            DeviceControllerWrapper deviceControllerWrapper = this.this$0.deviceController;
            String deviceName = this.$usbDevice.getDeviceName();
            Intrinsics.checkNotNullExpressionValue(deviceName, "getDeviceName(...)");
            deviceControllerWrapper.startUsbWithDeviceName(deviceName);
            this.label = 1;
            if (ProduceKt.awaitClose(producerScope, new Function0<Unit>() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$connect$2.1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    disposableSubscribe.dispose();
                }
            }, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
