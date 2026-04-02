package com.stripe.core.hardware.reactive.emv;

import com.stripe.core.hardware.reactive.RxJavaHelper;
import com.stripe.core.hardware.updates.ReaderConfigurationUpdateController;
import com.stripe.hardware.emv.ReaderSettings;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: ConfigurationHandler.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.core.hardware.reactive.emv.ConfigurationHandler$getClientConfigDataFromEmvTag$2$1", f = "ConfigurationHandler.kt", i = {}, l = {388}, m = "invokeSuspend", n = {}, s = {})
final class ConfigurationHandler$getClientConfigDataFromEmvTag$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ClientConfigData>, Object> {
    final /* synthetic */ boolean $readConfigHashTag;
    final /* synthetic */ ConfigurationHandler $this_runCatching;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ConfigurationHandler$getClientConfigDataFromEmvTag$2$1(ConfigurationHandler configurationHandler, boolean z, Continuation<? super ConfigurationHandler$getClientConfigDataFromEmvTag$2$1> continuation) {
        super(2, continuation);
        this.$this_runCatching = configurationHandler;
        this.$readConfigHashTag = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ConfigurationHandler$getClientConfigDataFromEmvTag$2$1(this.$this_runCatching, this.$readConfigHashTag, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super ClientConfigData> continuation) {
        return ((ConfigurationHandler$getClientConfigDataFromEmvTag$2$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String merchantNameAndLocation;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            obj = RxJavaHelper.INSTANCE.awaitFirstWithBlock(this.$this_runCatching.configListener.getReaderSettingsObservable(), this.$this_runCatching.scheduler, new AnonymousClass1(this.$this_runCatching, this.$readConfigHashTag, null), this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        ReaderSettings readerSettings = (ReaderSettings) obj;
        if (this.$readConfigHashTag) {
            merchantNameAndLocation = readerSettings.getConfigHash();
        } else {
            merchantNameAndLocation = readerSettings.getMerchantNameAndLocation();
        }
        if (merchantNameAndLocation != null) {
            return ClientConfigData.INSTANCE.parseClientConfigData(merchantNameAndLocation);
        }
        return null;
    }

    /* JADX INFO: renamed from: com.stripe.core.hardware.reactive.emv.ConfigurationHandler$getClientConfigDataFromEmvTag$2$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: ConfigurationHandler.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.hardware.reactive.emv.ConfigurationHandler$getClientConfigDataFromEmvTag$2$1$1", f = "ConfigurationHandler.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ boolean $readConfigHashTag;
        final /* synthetic */ ConfigurationHandler $this_runCatching;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(ConfigurationHandler configurationHandler, boolean z, Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
            this.$this_runCatching = configurationHandler;
            this.$readConfigHashTag = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass1(this.$this_runCatching, this.$readConfigHashTag, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                ReaderConfigurationUpdateController readerConfigurationUpdateController = this.$this_runCatching.configurationUpdateController;
                boolean z = this.$readConfigHashTag;
                ReaderConfigurationUpdateController.readSettings$default(readerConfigurationUpdateController, !z, false, false, false, z, 14, null);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
