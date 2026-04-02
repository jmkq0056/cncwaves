package com.stripe.discoverreaders;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.stripe.discoverreaders.DiscoverOperationState;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DefaultEnsureSingleDiscoverOperation.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\r"}, d2 = {"Lcom/stripe/discoverreaders/DefaultEnsureSingleDiscoverOperation;", "Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;", "()V", "_state", "Lcom/stripe/discoverreaders/DiscoverOperationState;", RemoteConfigConstants.ResponseFieldKey.STATE, "getState", "()Lcom/stripe/discoverreaders/DiscoverOperationState;", "onCompleteDiscoverOperation", "", "cancelableDiscoverReadersOperation", "Lcom/stripe/discoverreaders/CancelableDiscoverReadersOperation;", "onQueueDiscoverOperation", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultEnsureSingleDiscoverOperation implements EnsureSingleDiscoverOperation {
    private DiscoverOperationState _state = DiscoverOperationState.Idle.INSTANCE;

    /* JADX INFO: renamed from: getState, reason: from getter */
    public final DiscoverOperationState get_state() {
        return this._state;
    }

    @Override // com.stripe.discoverreaders.EnsureSingleDiscoverOperation
    public void onQueueDiscoverOperation(CancelableDiscoverReadersOperation cancelableDiscoverReadersOperation) {
        Intrinsics.checkNotNullParameter(cancelableDiscoverReadersOperation, "cancelableDiscoverReadersOperation");
        DiscoverOperationState discoverOperationState = this._state;
        if (discoverOperationState instanceof DiscoverOperationState.Idle) {
            this._state = new DiscoverOperationState.Ongoing(cancelableDiscoverReadersOperation);
        } else if (discoverOperationState instanceof DiscoverOperationState.Ongoing) {
            ((DiscoverOperationState.Ongoing) discoverOperationState).getDiscoverOperation().cancelBecauseMultipleDiscoveryOperations();
            this._state = new DiscoverOperationState.Ongoing(cancelableDiscoverReadersOperation);
        }
    }

    @Override // com.stripe.discoverreaders.EnsureSingleDiscoverOperation
    public void onCompleteDiscoverOperation(CancelableDiscoverReadersOperation cancelableDiscoverReadersOperation) {
        Intrinsics.checkNotNullParameter(cancelableDiscoverReadersOperation, "cancelableDiscoverReadersOperation");
        DiscoverOperationState discoverOperationState = this._state;
        if (discoverOperationState instanceof DiscoverOperationState.Ongoing) {
            if (((DiscoverOperationState.Ongoing) discoverOperationState).getDiscoverOperation() == cancelableDiscoverReadersOperation) {
                this._state = DiscoverOperationState.Idle.INSTANCE;
                return;
            }
            return;
        }
        Intrinsics.areEqual(discoverOperationState, DiscoverOperationState.Idle.INSTANCE);
    }
}
