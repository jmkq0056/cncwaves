package com.stripe.core.hardware.reactive.emv;

import com.stripe.hardware.emv.ReaderSettings;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: compiled from: ReaderSettingsRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\bH¦@ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\t\u0010\nJ\b\u0010\u000b\u001a\u00020\fH&R\u001a\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006ø\u0001\u0002\u0082\u0002\u0011\n\u0002\b!\n\u0005\b¡\u001e0\u0001\n\u0004\b!0\u0001¨\u0006\rÀ\u0006\u0001"}, d2 = {"Lcom/stripe/core/hardware/reactive/emv/ReaderSettingsRepository;", "", "readerSettings", "Lkotlinx/coroutines/flow/StateFlow;", "Lcom/stripe/hardware/emv/ReaderSettings;", "getReaderSettings", "()Lkotlinx/coroutines/flow/StateFlow;", "awaitRefresh", "Lkotlin/Result;", "awaitRefresh-IoAF18A", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "refresh", "", "hardware-reactive_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface ReaderSettingsRepository {
    /* JADX INFO: renamed from: awaitRefresh-IoAF18A */
    Object mo468awaitRefreshIoAF18A(Continuation<? super Result<ReaderSettings>> continuation);

    StateFlow<ReaderSettings> getReaderSettings();

    void refresh();
}
