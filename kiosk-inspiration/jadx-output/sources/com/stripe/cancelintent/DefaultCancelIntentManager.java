package com.stripe.cancelintent;

import com.stripe.stripeterminal.internal.common.p000enum.AdapterType;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DefaultCancelIntentManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005H\u0016J\u0018\u0010\u000b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u0007H\u0016J \u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0016R \u0010\u0003\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/stripe/cancelintent/DefaultCancelIntentManager;", "Lcom/stripe/cancelintent/CancelIntentManager;", "()V", "activeIntentOperations", "", "", "", "Lcom/stripe/cancelintent/CancelableIntentOperation;", "cancelIntent", "", "intentId", "onCompleteIntentOperation", "intentOperation", "onQueueIntentOperation", "adapterType", "Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultCancelIntentManager implements CancelIntentManager {
    private final Map<String, Set<CancelableIntentOperation>> activeIntentOperations = new LinkedHashMap();

    /* JADX INFO: compiled from: DefaultCancelIntentManager.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AdapterType.values().length];
            try {
                iArr[AdapterType.EMBEDDED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AdapterType.BBPOS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AdapterType.COTS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[AdapterType.REMOTE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[AdapterType.SIMULATED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[AdapterType.TEST.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // com.stripe.cancelintent.CancelIntentManager
    public void onQueueIntentOperation(String intentId, CancelableIntentOperation intentOperation, AdapterType adapterType) {
        Intrinsics.checkNotNullParameter(intentId, "intentId");
        Intrinsics.checkNotNullParameter(intentOperation, "intentOperation");
        Intrinsics.checkNotNullParameter(adapterType, "adapterType");
        switch (WhenMappings.$EnumSwitchMapping$0[adapterType.ordinal()]) {
            case 1:
                this.activeIntentOperations.clear();
                return;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                Map<String, Set<CancelableIntentOperation>> map = this.activeIntentOperations;
                LinkedHashSet linkedHashSet = map.get(intentId);
                if (linkedHashSet == null) {
                    linkedHashSet = new LinkedHashSet();
                    map.put(intentId, linkedHashSet);
                }
                linkedHashSet.add(intentOperation);
                return;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    @Override // com.stripe.cancelintent.CancelIntentManager
    public void onCompleteIntentOperation(String intentId, CancelableIntentOperation intentOperation) {
        Intrinsics.checkNotNullParameter(intentId, "intentId");
        Intrinsics.checkNotNullParameter(intentOperation, "intentOperation");
        Set<CancelableIntentOperation> set = this.activeIntentOperations.get(intentId);
        if (set != null) {
            set.clear();
        }
    }

    @Override // com.stripe.cancelintent.CancelIntentManager
    public void cancelIntent(String intentId) {
        Intrinsics.checkNotNullParameter(intentId, "intentId");
        Set<CancelableIntentOperation> set = this.activeIntentOperations.get(intentId);
        if (set != null) {
            Iterator<T> it = set.iterator();
            while (it.hasNext()) {
                ((CancelableIntentOperation) it.next()).cancelIntent();
            }
        }
    }
}
