package com.stripe.core.hardware.reactive.emv;

import com.stripe.hardware.emv.ReaderSettings;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: DefaultReaderSettingsRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/stripe/hardware/emv/ReaderSettings;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.core.hardware.reactive.emv.DefaultReaderSettingsRepository$awaitRefresh$2", f = "DefaultReaderSettingsRepository.kt", i = {}, l = {24}, m = "invokeSuspend", n = {}, s = {})
final class DefaultReaderSettingsRepository$awaitRefresh$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends ReaderSettings>>, Object> {
    int label;
    final /* synthetic */ DefaultReaderSettingsRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DefaultReaderSettingsRepository$awaitRefresh$2(DefaultReaderSettingsRepository defaultReaderSettingsRepository, Continuation<? super DefaultReaderSettingsRepository$awaitRefresh$2> continuation) {
        super(2, continuation);
        this.this$0 = defaultReaderSettingsRepository;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DefaultReaderSettingsRepository$awaitRefresh$2(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends ReaderSettings>> continuation) {
        return invoke2(coroutineScope, (Continuation<? super Result<ReaderSettings>>) continuation);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super Result<ReaderSettings>> continuation) {
        return ((DefaultReaderSettingsRepository$awaitRefresh$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM817constructorimpl;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            obj = this.this$0.configurationHandler.readTerminalSetting(true, true, true, true, true, this);
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
        if (readerSettings != null) {
            this.this$0.getReaderSettings().setValue(readerSettings);
            Result.Companion companion = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(readerSettings);
        } else {
            Result.Companion companion2 = Result.INSTANCE;
            objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(new Exception("Failed to fetch reader settings")));
        }
        return Result.m816boximpl(objM817constructorimpl);
    }
}
