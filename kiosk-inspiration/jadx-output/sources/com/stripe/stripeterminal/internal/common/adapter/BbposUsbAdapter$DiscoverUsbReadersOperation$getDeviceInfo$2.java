package com.stripe.stripeterminal.internal.common.adapter;

import android.hardware.usb.UsbDevice;
import com.stripe.core.hardware.Optional;
import com.stripe.hardware.status.DisconnectCause;
import com.stripe.hardware.status.ReaderInfo;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Pair;
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
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;", "Lkotlin/Pair;", "Landroid/hardware/usb/UsbDevice;", "Lcom/stripe/hardware/status/ReaderInfo;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceInfo$2", f = "BbposUsbAdapter.kt", i = {}, l = {612}, m = "invokeSuspend", n = {}, s = {})
final class BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceInfo$2 extends SuspendLambda implements Function2<ProducerScope<? super Pair<? extends UsbDevice, ? extends ReaderInfo>>, Continuation<? super Unit>, Object> {
    final /* synthetic */ UsbDevice $usbDevice;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ BbposUsbAdapter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceInfo$2(BbposUsbAdapter bbposUsbAdapter, UsbDevice usbDevice, Continuation<? super BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceInfo$2> continuation) {
        super(2, continuation);
        this.this$0 = bbposUsbAdapter;
        this.$usbDevice = usbDevice;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceInfo$2 bbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceInfo$2 = new BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceInfo$2(this.this$0, this.$usbDevice, continuation);
        bbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceInfo$2.L$0 = obj;
        return bbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceInfo$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(ProducerScope<? super Pair<? extends UsbDevice, ? extends ReaderInfo>> producerScope, Continuation<? super Unit> continuation) {
        return invoke2((ProducerScope<? super Pair<? extends UsbDevice, ReaderInfo>>) producerScope, continuation);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(ProducerScope<? super Pair<? extends UsbDevice, ReaderInfo>> producerScope, Continuation<? super Unit> continuation) {
        return ((BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceInfo$2) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            final ProducerScope producerScope = (ProducerScope) this.L$0;
            Observable<ReaderInfo> readerInfoObservable = this.this$0.readerStatusListener.getReaderInfoObservable();
            final UsbDevice usbDevice = this.$usbDevice;
            final Disposable disposableSubscribe = Observable.ambArray(readerInfoObservable.map(new Function() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceInfo$2$subscription$1
                @Override // io.reactivex.rxjava3.functions.Function
                public final Optional.Present<Pair<UsbDevice, ReaderInfo>> apply(ReaderInfo it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Optional.INSTANCE.of(new Pair(usbDevice, it));
                }
            }), this.this$0.readerStatusListener.getReaderDisconnectObservable().map(new Function() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceInfo$2$subscription$2
                @Override // io.reactivex.rxjava3.functions.Function
                public final Optional.Absent<Pair<UsbDevice, ReaderInfo>> apply(DisconnectCause it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Optional.INSTANCE.absent();
                }
            })).subscribe(new Consumer() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceInfo$2$subscription$3
                @Override // io.reactivex.rxjava3.functions.Consumer
                public final void accept(Optional<Pair<UsbDevice, ReaderInfo>> it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    ChannelsKt.trySendBlocking(producerScope, it.getOrNull());
                    SendChannel.DefaultImpls.close$default(producerScope, null, 1, null);
                }
            });
            Intrinsics.checkNotNullExpressionValue(disposableSubscribe, "subscribe(...)");
            this.this$0.deviceController.getDeviceInfo();
            this.label = 1;
            if (ProduceKt.awaitClose(producerScope, new Function0<Unit>() { // from class: com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceInfo$2.1
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
