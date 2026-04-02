package com.stripe.core.aidlrpc.handoff;

import com.stripe.core.aidlrpc.AidlMethods;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: HandoffMethods.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\b \b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u0007\b\u0002¢\u0006\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!¨\u0006\""}, d2 = {"Lcom/stripe/core/aidlrpc/handoff/HandoffMethods;", "", "Lcom/stripe/core/aidlrpc/AidlMethods;", "(Ljava/lang/String;I)V", "ACTIVATE_TERMINAL", "CANCEL_COLLECT", "CANCEL_PAYMENT_INTENT", "CANCEL_SETUP_INTENT", "CANCEL_REFUND_COLLECT", "CANCEL_SETUP_INTENT_COLLECT", "COLLECT_PAYMENT_METHOD", "COLLECT_REFUND_PAYMENT_METHOD", "COLLECT_SETUP_INTENT_PAYMENT_METHOD", "CONFIRM_PAYMENT", "CONFIRM_REFUND", "CONFIRM_SETUP_INTENT", "CREATE_PAYMENT_INTENT", "HANDLE_PAYMENT_INTENT_NEXT_ACTIONS", "CANCEL_CONFIRM_SETUP_INTENT", "CANCEL_CONFIRM_PAYMENT_INTENT", "CANCEL_CONFIRM_REFUND", "CREATE_JACK_RABBIT_PAYMENT_INTENT", "CREATE_SETUP_INTENT", "CREATE_JACK_RABBIT_SETUP_INTENT", "DISCOVER_READERS", "RESUME_COLLECT_PAYMENT_METHOD", "SET_READER_SETTINGS", "GET_READER_SETTINGS", "CREATE_CONNECTION_TOKEN", "TERMINAL_HEARTBEAT", "FETCH_READER_CONFIG", "ON_PAYMENT_INTENT_UPDATED", "COLLECT_DATA", "CANCEL_COLLECT_DATA", "aidlrpc_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class HandoffMethods implements AidlMethods {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ HandoffMethods[] $VALUES;
    public static final HandoffMethods ACTIVATE_TERMINAL = new HandoffMethods("ACTIVATE_TERMINAL", 0);
    public static final HandoffMethods CANCEL_COLLECT = new HandoffMethods("CANCEL_COLLECT", 1);
    public static final HandoffMethods CANCEL_PAYMENT_INTENT = new HandoffMethods("CANCEL_PAYMENT_INTENT", 2);
    public static final HandoffMethods CANCEL_SETUP_INTENT = new HandoffMethods("CANCEL_SETUP_INTENT", 3);
    public static final HandoffMethods CANCEL_REFUND_COLLECT = new HandoffMethods("CANCEL_REFUND_COLLECT", 4);
    public static final HandoffMethods CANCEL_SETUP_INTENT_COLLECT = new HandoffMethods("CANCEL_SETUP_INTENT_COLLECT", 5);
    public static final HandoffMethods COLLECT_PAYMENT_METHOD = new HandoffMethods("COLLECT_PAYMENT_METHOD", 6);
    public static final HandoffMethods COLLECT_REFUND_PAYMENT_METHOD = new HandoffMethods("COLLECT_REFUND_PAYMENT_METHOD", 7);
    public static final HandoffMethods COLLECT_SETUP_INTENT_PAYMENT_METHOD = new HandoffMethods("COLLECT_SETUP_INTENT_PAYMENT_METHOD", 8);
    public static final HandoffMethods CONFIRM_PAYMENT = new HandoffMethods("CONFIRM_PAYMENT", 9);
    public static final HandoffMethods CONFIRM_REFUND = new HandoffMethods("CONFIRM_REFUND", 10);
    public static final HandoffMethods CONFIRM_SETUP_INTENT = new HandoffMethods("CONFIRM_SETUP_INTENT", 11);
    public static final HandoffMethods CREATE_PAYMENT_INTENT = new HandoffMethods("CREATE_PAYMENT_INTENT", 12);
    public static final HandoffMethods HANDLE_PAYMENT_INTENT_NEXT_ACTIONS = new HandoffMethods("HANDLE_PAYMENT_INTENT_NEXT_ACTIONS", 13);
    public static final HandoffMethods CANCEL_CONFIRM_SETUP_INTENT = new HandoffMethods("CANCEL_CONFIRM_SETUP_INTENT", 14);
    public static final HandoffMethods CANCEL_CONFIRM_PAYMENT_INTENT = new HandoffMethods("CANCEL_CONFIRM_PAYMENT_INTENT", 15);
    public static final HandoffMethods CANCEL_CONFIRM_REFUND = new HandoffMethods("CANCEL_CONFIRM_REFUND", 16);
    public static final HandoffMethods CREATE_JACK_RABBIT_PAYMENT_INTENT = new HandoffMethods("CREATE_JACK_RABBIT_PAYMENT_INTENT", 17);
    public static final HandoffMethods CREATE_SETUP_INTENT = new HandoffMethods("CREATE_SETUP_INTENT", 18);
    public static final HandoffMethods CREATE_JACK_RABBIT_SETUP_INTENT = new HandoffMethods("CREATE_JACK_RABBIT_SETUP_INTENT", 19);
    public static final HandoffMethods DISCOVER_READERS = new HandoffMethods("DISCOVER_READERS", 20);
    public static final HandoffMethods RESUME_COLLECT_PAYMENT_METHOD = new HandoffMethods("RESUME_COLLECT_PAYMENT_METHOD", 21);
    public static final HandoffMethods SET_READER_SETTINGS = new HandoffMethods("SET_READER_SETTINGS", 22);
    public static final HandoffMethods GET_READER_SETTINGS = new HandoffMethods("GET_READER_SETTINGS", 23);
    public static final HandoffMethods CREATE_CONNECTION_TOKEN = new HandoffMethods("CREATE_CONNECTION_TOKEN", 24);
    public static final HandoffMethods TERMINAL_HEARTBEAT = new HandoffMethods("TERMINAL_HEARTBEAT", 25);
    public static final HandoffMethods FETCH_READER_CONFIG = new HandoffMethods("FETCH_READER_CONFIG", 26);
    public static final HandoffMethods ON_PAYMENT_INTENT_UPDATED = new HandoffMethods("ON_PAYMENT_INTENT_UPDATED", 27);
    public static final HandoffMethods COLLECT_DATA = new HandoffMethods("COLLECT_DATA", 28);
    public static final HandoffMethods CANCEL_COLLECT_DATA = new HandoffMethods("CANCEL_COLLECT_DATA", 29);

    private static final /* synthetic */ HandoffMethods[] $values() {
        return new HandoffMethods[]{ACTIVATE_TERMINAL, CANCEL_COLLECT, CANCEL_PAYMENT_INTENT, CANCEL_SETUP_INTENT, CANCEL_REFUND_COLLECT, CANCEL_SETUP_INTENT_COLLECT, COLLECT_PAYMENT_METHOD, COLLECT_REFUND_PAYMENT_METHOD, COLLECT_SETUP_INTENT_PAYMENT_METHOD, CONFIRM_PAYMENT, CONFIRM_REFUND, CONFIRM_SETUP_INTENT, CREATE_PAYMENT_INTENT, HANDLE_PAYMENT_INTENT_NEXT_ACTIONS, CANCEL_CONFIRM_SETUP_INTENT, CANCEL_CONFIRM_PAYMENT_INTENT, CANCEL_CONFIRM_REFUND, CREATE_JACK_RABBIT_PAYMENT_INTENT, CREATE_SETUP_INTENT, CREATE_JACK_RABBIT_SETUP_INTENT, DISCOVER_READERS, RESUME_COLLECT_PAYMENT_METHOD, SET_READER_SETTINGS, GET_READER_SETTINGS, CREATE_CONNECTION_TOKEN, TERMINAL_HEARTBEAT, FETCH_READER_CONFIG, ON_PAYMENT_INTENT_UPDATED, COLLECT_DATA, CANCEL_COLLECT_DATA};
    }

    public static EnumEntries<HandoffMethods> getEntries() {
        return $ENTRIES;
    }

    public static HandoffMethods valueOf(String str) {
        return (HandoffMethods) Enum.valueOf(HandoffMethods.class, str);
    }

    public static HandoffMethods[] values() {
        return (HandoffMethods[]) $VALUES.clone();
    }

    private HandoffMethods(String str, int i) {
    }

    static {
        HandoffMethods[] handoffMethodsArr$values = $values();
        $VALUES = handoffMethodsArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(handoffMethodsArr$values);
    }
}
