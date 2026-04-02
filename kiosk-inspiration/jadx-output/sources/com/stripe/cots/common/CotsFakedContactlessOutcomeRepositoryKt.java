package com.stripe.cots.common;

import com.stripe.cots.aidlservice.CotsSetFakedContactlessOutcomeRequest;
import com.stripe.cots.contactless.util.FakedContactlessOutcomeType;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CotsFakedContactlessOutcomeRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003¨\u0006\u0004"}, d2 = {"getFakedContactlessProtoFromJvmType", "Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;", "jvmType", "Lcom/stripe/cots/contactless/util/FakedContactlessOutcomeType;", "common_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class CotsFakedContactlessOutcomeRepositoryKt {

    /* JADX INFO: compiled from: CotsFakedContactlessOutcomeRepository.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class EntriesMappings {
        public static final /* synthetic */ EnumEntries<CotsSetFakedContactlessOutcomeRequest.FakedContactlessOutcomeType> entries$0 = EnumEntriesKt.enumEntries(CotsSetFakedContactlessOutcomeRequest.FakedContactlessOutcomeType.values());
    }

    public static final CotsSetFakedContactlessOutcomeRequest.FakedContactlessOutcomeType getFakedContactlessProtoFromJvmType(FakedContactlessOutcomeType jvmType) {
        CotsSetFakedContactlessOutcomeRequest.FakedContactlessOutcomeType next;
        Intrinsics.checkNotNullParameter(jvmType, "jvmType");
        Iterator<CotsSetFakedContactlessOutcomeRequest.FakedContactlessOutcomeType> it = EntriesMappings.entries$0.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (Intrinsics.areEqual(next.name(), jvmType.name())) {
                break;
            }
        }
        CotsSetFakedContactlessOutcomeRequest.FakedContactlessOutcomeType fakedContactlessOutcomeType = next;
        if (fakedContactlessOutcomeType != null) {
            return fakedContactlessOutcomeType;
        }
        throw new IllegalArgumentException("No matching proto type for " + jvmType);
    }
}
