package com.stripe.core.hardware.reactive.emv;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: ClientConfigDataSource.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/core/hardware/reactive/emv/ClientConfigDataSource;", "", "(Ljava/lang/String;I)V", "SHARED_PREFS", "EMV_TAG_MERCHANT_NAME", "EMV_TAG_CONFIG_HASH", "hardware-reactive_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ClientConfigDataSource {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ClientConfigDataSource[] $VALUES;
    public static final ClientConfigDataSource SHARED_PREFS = new ClientConfigDataSource("SHARED_PREFS", 0);
    public static final ClientConfigDataSource EMV_TAG_MERCHANT_NAME = new ClientConfigDataSource("EMV_TAG_MERCHANT_NAME", 1);
    public static final ClientConfigDataSource EMV_TAG_CONFIG_HASH = new ClientConfigDataSource("EMV_TAG_CONFIG_HASH", 2);

    private static final /* synthetic */ ClientConfigDataSource[] $values() {
        return new ClientConfigDataSource[]{SHARED_PREFS, EMV_TAG_MERCHANT_NAME, EMV_TAG_CONFIG_HASH};
    }

    public static EnumEntries<ClientConfigDataSource> getEntries() {
        return $ENTRIES;
    }

    public static ClientConfigDataSource valueOf(String str) {
        return (ClientConfigDataSource) Enum.valueOf(ClientConfigDataSource.class, str);
    }

    public static ClientConfigDataSource[] values() {
        return (ClientConfigDataSource[]) $VALUES.clone();
    }

    private ClientConfigDataSource(String str, int i) {
    }

    static {
        ClientConfigDataSource[] clientConfigDataSourceArr$values = $values();
        $VALUES = clientConfigDataSourceArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(clientConfigDataSourceArr$values);
    }
}
