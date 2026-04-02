package com.stripe.core.encoder;

import android.util.Base64;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: compiled from: EncoderModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, d2 = {"Lcom/stripe/core/encoder/EncoderModule;", "", "()V", "provideBase64Encoder", "Lcom/stripe/core/encoder/Base64Encoder;", "encoder_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class EncoderModule {
    @Provides
    @Singleton
    public final Base64Encoder provideBase64Encoder() {
        return new Base64Encoder() { // from class: com.stripe.core.encoder.EncoderModule.provideBase64Encoder.1
            @Override // com.stripe.core.encoder.Base64Encoder
            public String encode(String payload) {
                Intrinsics.checkNotNullParameter(payload, "payload");
                byte[] bytes = payload.getBytes(Charsets.UTF_8);
                Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                String strEncodeToString = Base64.encodeToString(bytes, 2);
                Intrinsics.checkNotNullExpressionValue(strEncodeToString, "encodeToString(...)");
                return strEncodeToString;
            }
        };
    }
}
