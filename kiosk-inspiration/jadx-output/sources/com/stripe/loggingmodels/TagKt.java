package com.stripe.loggingmodels;

import com.stripe.loggingmodels.Tag;
import com.stripe.proto.model.rest.ErrorResponse;
import com.stripe.proto.model.rest.ErrorWrapper;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Tag.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003¨\u0006\u0004"}, d2 = {"toTags", "", "Lcom/stripe/loggingmodels/Tag;", "Lcom/stripe/proto/model/rest/ErrorWrapper;", "public_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class TagKt {
    public static final List<Tag> toTags(ErrorWrapper errorWrapper) {
        Intrinsics.checkNotNullParameter(errorWrapper, "<this>");
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        ErrorResponse errorResponse = errorWrapper.error;
        if (errorResponse != null) {
            Tag.StripeErrorType stripeErrorType = Tag.StripeErrorType.INSTANCE.toStripeErrorType(errorResponse);
            if (stripeErrorType != null) {
                listCreateListBuilder.add(stripeErrorType);
            }
            Tag.StripeErrorCode stripeErrorCode = Tag.StripeErrorCode.INSTANCE.toStripeErrorCode(errorResponse);
            if (stripeErrorCode != null) {
                listCreateListBuilder.add(stripeErrorCode);
            }
            Tag.StripeDeclineCode stripeDeclineCode = Tag.StripeDeclineCode.INSTANCE.toStripeDeclineCode(errorResponse);
            if (stripeDeclineCode != null) {
                listCreateListBuilder.add(stripeDeclineCode);
            }
        }
        return CollectionsKt.build(listCreateListBuilder);
    }
}
