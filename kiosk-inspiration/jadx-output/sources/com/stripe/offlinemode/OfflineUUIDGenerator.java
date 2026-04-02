package com.stripe.offlinemode;

import com.stripe.proto.model.offline_mode.OfflineApiRequest;
import java.util.UUID;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: OfflineUUIDGenerator.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \b2\u00020\u0001:\u0001\bB\u0007\b\u0007¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0002¨\u0006\t"}, d2 = {"Lcom/stripe/offlinemode/OfflineUUIDGenerator;", "Lcom/stripe/offlinemode/OfflineIdGenerator;", "()V", "generateOfflineId", "", "type", "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;", "prefix", "Companion", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OfflineUUIDGenerator implements OfflineIdGenerator {
    private static final String DASH = "-";
    private static final String PAYMENT_INTENT_PREFIX = "pio_";
    private static final String SETUP_INTENT_PREFIX = "setio_";

    @Inject
    public OfflineUUIDGenerator() {
    }

    @Override // com.stripe.offlinemode.OfflineIdGenerator
    public String generateOfflineId(OfflineApiRequest.ApiRequestType type) {
        String str;
        Intrinsics.checkNotNullParameter(type, "type");
        if (type == OfflineApiRequest.ApiRequestType.CREATE_PAYMENT_INTENT) {
            str = PAYMENT_INTENT_PREFIX;
        } else {
            str = SETUP_INTENT_PREFIX;
        }
        return generateOfflineId(str);
    }

    private final String generateOfflineId(String prefix) {
        StringBuilder sbAppend = new StringBuilder().append(prefix);
        String string = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return sbAppend.append(StringsKt.replace$default(string, DASH, "", false, 4, (Object) null)).toString();
    }
}
