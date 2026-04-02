package com.stripe.stripeterminal.internal.common.extensions;

import com.stripe.proto.api.sdk.CollectDataRequest;
import com.stripe.stripeterminal.external.models.CollectDataType;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CollectDataTypeExtensions.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"toSdkCollectDataType", "Lcom/stripe/stripeterminal/external/models/CollectDataType;", "Lcom/stripe/proto/api/sdk/CollectDataRequest$CollectDataType;", "public_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class CollectDataTypeExtensionsKt {

    /* JADX INFO: compiled from: CollectDataTypeExtensions.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CollectDataRequest.CollectDataType.values().length];
            try {
                iArr[CollectDataRequest.CollectDataType.MAGSTRIPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CollectDataRequest.CollectDataType.DATA_TYPE_INVALID.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final CollectDataType toSdkCollectDataType(CollectDataRequest.CollectDataType collectDataType) {
        Intrinsics.checkNotNullParameter(collectDataType, "<this>");
        int i = WhenMappings.$EnumSwitchMapping$0[collectDataType.ordinal()];
        if (i == 1) {
            return CollectDataType.MAGSTRIPE;
        }
        if (i == 2) {
            return null;
        }
        throw new NoWhenBranchMatchedException();
    }
}
