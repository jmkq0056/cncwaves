package com.stripe.offlinemode.log;

import kotlin.Metadata;

/* JADX INFO: compiled from: OfflineDeclineReasons.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/offlinemode/log/OfflineDeclineReasons;", "", "()V", "CARD_EXPIRED", "", "CARD_SWIPE_NOT_AVAILABLE", "INSERT_ERROR", "INTERAC_NOT_SUPPORTED", "MISSING_AID", "MOBILE_WALLET_ON_SETUP_INTENT", "ONLINE_PIN_NOT_SUPPORTED", "STARTED_ONLINE_NOW_OFFLINE", "TEST_CARD_IN_LIVEMODE", "TVR_MASK_FAILED", "TVR_MISSING", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OfflineDeclineReasons {
    public static final String CARD_EXPIRED = "card_is_expired";
    public static final String CARD_SWIPE_NOT_AVAILABLE = "swipe_not_available";
    public static final String INSERT_ERROR = "insert_error";
    public static final OfflineDeclineReasons INSTANCE = new OfflineDeclineReasons();
    public static final String INTERAC_NOT_SUPPORTED = "interac_not_supported";
    public static final String MISSING_AID = "missing_aid";
    public static final String MOBILE_WALLET_ON_SETUP_INTENT = "mobile_wallet_on_setup_intent";
    public static final String ONLINE_PIN_NOT_SUPPORTED = "online_pin_not_supported";
    public static final String STARTED_ONLINE_NOW_OFFLINE = "started_online_and_is_now_offline";
    public static final String TEST_CARD_IN_LIVEMODE = "test_card_in_livemode";
    public static final String TVR_MASK_FAILED = "tvr_mask_failed";
    public static final String TVR_MISSING = "tvr_is_missing";

    private OfflineDeclineReasons() {
    }
}
