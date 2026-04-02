package com.stripe.jvmcore.forms.transform;

import com.stripe.kmpcore.jackrabbitclient.models.CollectInputsSingleResult;
import com.stripe.kmpcore.jackrabbitclient.models.EmailResult;
import com.stripe.kmpcore.jackrabbitclient.models.KmpCollectInputsResultSuccess;
import com.stripe.kmpcore.jackrabbitclient.models.NumericResult;
import com.stripe.kmpcore.jackrabbitclient.models.PhoneResult;
import com.stripe.kmpcore.jackrabbitclient.models.SelectionResult;
import com.stripe.kmpcore.jackrabbitclient.models.SignatureResult;
import com.stripe.kmpcore.jackrabbitclient.models.TextResult;
import com.stripe.kmpcore.jackrabbitclient.models.ToggleResult;
import com.stripe.stripeterminal.external.models.CollectInputsResult;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CollectInputsExternalModelTransformer.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007J \u0010\b\u001a\f\u0012\b\u0012\u00060\tj\u0002`\n0\u00042\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u0004H\u0002¨\u0006\r"}, d2 = {"Lcom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer;", "", "()V", "transform", "", "Lcom/stripe/stripeterminal/external/models/CollectInputsResult;", "kmpCollectInputsResultSuccess", "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResultSuccess;", "transformToggles", "Lcom/stripe/stripeterminal/external/models/ToggleResult;", "Lcom/stripe/jvmcore/forms/transform/ExternalToggleResult;", "toggles", "Lcom/stripe/kmpcore/jackrabbitclient/models/ToggleResult;", "forms"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CollectInputsExternalModelTransformer {

    /* JADX INFO: compiled from: CollectInputsExternalModelTransformer.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ToggleResult.values().length];
            try {
                iArr[ToggleResult.ENABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ToggleResult.DISABLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ToggleResult.SKIPPED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public final List<CollectInputsResult> transform(KmpCollectInputsResultSuccess kmpCollectInputsResultSuccess) {
        CollectInputsResult textResult;
        Intrinsics.checkNotNullParameter(kmpCollectInputsResultSuccess, "kmpCollectInputsResultSuccess");
        List<CollectInputsSingleResult> results = kmpCollectInputsResultSuccess.getResults();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(results, 10));
        for (CollectInputsSingleResult collectInputsSingleResult : results) {
            if (collectInputsSingleResult instanceof EmailResult) {
                textResult = new com.stripe.stripeterminal.external.models.EmailResult(collectInputsSingleResult.getSkipped(), collectInputsSingleResult.getEmail(), transformToggles(collectInputsSingleResult.getToggles()));
            } else if (collectInputsSingleResult instanceof NumericResult) {
                textResult = new com.stripe.stripeterminal.external.models.NumericResult(collectInputsSingleResult.getSkipped(), collectInputsSingleResult.getNumericString(), transformToggles(collectInputsSingleResult.getToggles()));
            } else if (collectInputsSingleResult instanceof PhoneResult) {
                textResult = new com.stripe.stripeterminal.external.models.PhoneResult(collectInputsSingleResult.getSkipped(), collectInputsSingleResult.getPhone(), transformToggles(collectInputsSingleResult.getToggles()));
            } else if (collectInputsSingleResult instanceof SelectionResult) {
                textResult = new com.stripe.stripeterminal.external.models.SelectionResult(collectInputsSingleResult.getSkipped(), collectInputsSingleResult.getSelection(), transformToggles(collectInputsSingleResult.getToggles()));
            } else if (collectInputsSingleResult instanceof SignatureResult) {
                textResult = new com.stripe.stripeterminal.external.models.SignatureResult(collectInputsSingleResult.getSkipped(), collectInputsSingleResult.getSignatureSvg(), transformToggles(collectInputsSingleResult.getToggles()));
            } else if (collectInputsSingleResult instanceof TextResult) {
                textResult = new com.stripe.stripeterminal.external.models.TextResult(collectInputsSingleResult.getSkipped(), collectInputsSingleResult.getText(), transformToggles(collectInputsSingleResult.getToggles()));
            } else {
                throw new NoWhenBranchMatchedException();
            }
            arrayList.add(textResult);
        }
        return arrayList;
    }

    private final List<com.stripe.stripeterminal.external.models.ToggleResult> transformToggles(List<? extends ToggleResult> toggles) {
        com.stripe.stripeterminal.external.models.ToggleResult toggleResult;
        List<? extends ToggleResult> list = toggles;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            int i = WhenMappings.$EnumSwitchMapping$0[((ToggleResult) it.next()).ordinal()];
            if (i == 1) {
                toggleResult = com.stripe.stripeterminal.external.models.ToggleResult.ENABLED;
            } else if (i == 2) {
                toggleResult = com.stripe.stripeterminal.external.models.ToggleResult.DISABLED;
            } else {
                if (i != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                toggleResult = com.stripe.stripeterminal.external.models.ToggleResult.SKIPPED;
            }
            arrayList.add(toggleResult);
        }
        return arrayList;
    }
}
