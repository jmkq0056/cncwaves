package com.stripe.core.transaction;

import com.stripe.jvmcore.storage.SharedPrefs;
import com.stripe.proto.model.config.MagstripeConfig;
import com.stripe.proto.terminal.terminal.pub.message.config.LpmConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.TippingConfigPb;
import com.stripe.transaction.Settings;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SettingsRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u0000 .2\u00020\u0001:\u0001.B\u000f\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R<\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u00062\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u00068F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR(\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0005\u001a\u0004\u0018\u00010\r8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R$\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u00138F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R$\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u00198F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR$\u0010\u001f\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\r8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b \u0010\u0010\"\u0004\b!\u0010\u0012R$\u0010#\u001a\u00020\"2\u0006\u0010\u0005\u001a\u00020\"8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010)\u001a\u00020(2\u0006\u0010\u0005\u001a\u00020(8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-¨\u0006/"}, d2 = {"Lcom/stripe/core/transaction/SettingsRepository;", "", "sharedPrefs", "Lcom/stripe/jvmcore/storage/SharedPrefs;", "(Lcom/stripe/jvmcore/storage/SharedPrefs;)V", "value", "Lkotlin/Pair;", "", "encryptedAccountOfflineConfig", "getEncryptedAccountOfflineConfig", "()Lkotlin/Pair;", "setEncryptedAccountOfflineConfig", "(Lkotlin/Pair;)V", "", "keyProfileName", "getKeyProfileName", "()Ljava/lang/String;", "setKeyProfileName", "(Ljava/lang/String;)V", "Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;", "lpmConfig", "getLpmConfig", "()Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;", "setLpmConfig", "(Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;)V", "Lcom/stripe/proto/model/config/MagstripeConfig;", "magstripeConfig", "getMagstripeConfig", "()Lcom/stripe/proto/model/config/MagstripeConfig;", "setMagstripeConfig", "(Lcom/stripe/proto/model/config/MagstripeConfig;)V", "merchantDetailsForEdgeHeadersOnly", "getMerchantDetailsForEdgeHeadersOnly", "setMerchantDetailsForEdgeHeadersOnly", "Lcom/stripe/transaction/Settings;", "settings", "getSettings", "()Lcom/stripe/transaction/Settings;", "setSettings", "(Lcom/stripe/transaction/Settings;)V", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;", "tippingConfig", "getTippingConfig", "()Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;", "setTippingConfig", "(Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;)V", "Companion", "transaction_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SettingsRepository {
    private static Settings _settings = Settings.INSTANCE.getDEFAULT();
    private final SharedPrefs sharedPrefs;

    @Inject
    public SettingsRepository(SharedPrefs sharedPrefs) {
        Intrinsics.checkNotNullParameter(sharedPrefs, "sharedPrefs");
        this.sharedPrefs = sharedPrefs;
    }

    public final TippingConfigPb getTippingConfig() {
        return this.sharedPrefs.getTippingConfig();
    }

    public final void setTippingConfig(TippingConfigPb value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.sharedPrefs.putTippingConfig(value);
    }

    public final LpmConfigPb getLpmConfig() {
        return this.sharedPrefs.getLpmConfig();
    }

    public final void setLpmConfig(LpmConfigPb value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.sharedPrefs.putLpmConfig(value);
    }

    public final Pair<byte[], byte[]> getEncryptedAccountOfflineConfig() {
        return this.sharedPrefs.getEncryptedAccountOfflineConfig();
    }

    public final void setEncryptedAccountOfflineConfig(Pair<byte[], byte[]> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.sharedPrefs.putEncryptedAccountOfflineConfig(value.getFirst(), value.getSecond());
    }

    public final MagstripeConfig getMagstripeConfig() {
        return this.sharedPrefs.getMagstripeConfig();
    }

    public final void setMagstripeConfig(MagstripeConfig value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.sharedPrefs.putMagstripeConfig(value);
    }

    public final String getKeyProfileName() {
        return this.sharedPrefs.getKeyProfileName();
    }

    public final void setKeyProfileName(String str) {
        SharedPrefs sharedPrefs = this.sharedPrefs;
        if (str == null) {
            str = "";
        }
        sharedPrefs.putKeyProfileName(str);
    }

    public final String getMerchantDetailsForEdgeHeadersOnly() {
        return this.sharedPrefs.getMerchantDetailsForEdgeHeadersOnly();
    }

    public final void setMerchantDetailsForEdgeHeadersOnly(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.sharedPrefs.setMerchantDetailsForEdgeHeadersOnly(value);
    }

    public final Settings getSettings() {
        return _settings;
    }

    public final void setSettings(Settings value) {
        Intrinsics.checkNotNullParameter(value, "value");
        _settings = value;
    }
}
