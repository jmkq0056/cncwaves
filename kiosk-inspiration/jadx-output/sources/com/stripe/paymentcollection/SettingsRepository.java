package com.stripe.paymentcollection;

import com.stripe.proto.model.config.MagstripeConfig;
import com.stripe.proto.terminal.terminal.pub.message.config.TippingConfigPb;
import com.stripe.transaction.Settings;
import kotlin.Metadata;

/* JADX INFO: compiled from: SettingsRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX¦\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000eÀ\u0006\u0001"}, d2 = {"Lcom/stripe/paymentcollection/SettingsRepository;", "", "magstripeConfig", "Lcom/stripe/proto/model/config/MagstripeConfig;", "getMagstripeConfig", "()Lcom/stripe/proto/model/config/MagstripeConfig;", "settings", "Lcom/stripe/transaction/Settings;", "getSettings", "()Lcom/stripe/transaction/Settings;", "tippingConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;", "getTippingConfig", "()Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface SettingsRepository {
    MagstripeConfig getMagstripeConfig();

    Settings getSettings();

    TippingConfigPb getTippingConfig();
}
