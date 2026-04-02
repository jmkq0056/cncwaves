package com.stripe.stripeterminal.internal.common.connectandupdate;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.stripe.core.hardware.reactive.ReaderInfoRepository;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ConnectAndUpdateStates.kt */
/* JADX INFO: loaded from: classes4.dex */
@Singleton
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u000f\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001c\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/connectandupdate/ReaderInfoHandler;", "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateHandler;", "readerInfoRepository", "Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;", "(Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;)V", "onEnter", "", "current", "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;", TypedValues.TransitionType.S_FROM, "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReaderInfoHandler extends ConnectAndUpdateStateHandler {
    private final ReaderInfoRepository readerInfoRepository;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public ReaderInfoHandler(ReaderInfoRepository readerInfoRepository) {
        super(ConnectAndUpdateState.READER_INFO);
        Intrinsics.checkNotNullParameter(readerInfoRepository, "readerInfoRepository");
        this.readerInfoRepository = readerInfoRepository;
    }

    @Override // com.stripe.statemachine.StateMachine.StateHandler
    public void onEnter(ConnectAndUpdateApplicationData current, ConnectAndUpdateState from) {
        if (from == ConnectAndUpdateState.CONNECT) {
            this.readerInfoRepository.refresh();
        }
    }
}
