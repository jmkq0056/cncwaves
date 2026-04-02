package com.stripe.stripeterminal.external.models;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: NextAction.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 .2\u00060\u0001j\u0002`\u0002:\u0002-.BA\b\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010\u000fB1\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\u0010J\t\u0010\u0019\u001a\u00020\u0006HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\fHÆ\u0003J7\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\fHÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!HÖ\u0003J\n\u0010\"\u001a\u0004\u0018\u00010\u0006H\u0007J\t\u0010#\u001a\u00020\u0004HÖ\u0001J\t\u0010$\u001a\u00020\u0006HÖ\u0001J&\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u00002\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+HÁ\u0001¢\u0006\u0002\b,R\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018¨\u0006/"}, d2 = {"Lcom/stripe/stripeterminal/external/models/NextAction;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "seen1", "", "type", "", "wechatPayDisplayQrCode", "Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode;", "redirectToUrl", "Lcom/stripe/stripeterminal/external/models/RedirectUrl;", "useStripeSdk", "Lcom/stripe/stripeterminal/external/models/UseStripeSdk;", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode;Lcom/stripe/stripeterminal/external/models/RedirectUrl;Lcom/stripe/stripeterminal/external/models/UseStripeSdk;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode;Lcom/stripe/stripeterminal/external/models/RedirectUrl;Lcom/stripe/stripeterminal/external/models/UseStripeSdk;)V", "getRedirectToUrl", "()Lcom/stripe/stripeterminal/external/models/RedirectUrl;", "getType", "()Ljava/lang/String;", "getUseStripeSdk", "()Lcom/stripe/stripeterminal/external/models/UseStripeSdk;", "getWechatPayDisplayQrCode", "()Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "", "getNonCardPaymentMethodTypeAndImageUrl", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$public_release", "$serializer", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final /* data */ class NextAction implements java.io.Serializable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String REDIRECT_TO_URL = "redirect_to_url";
    public static final String USE_STRIPE_SDK = "use_stripe_sdk";
    private static final String WECHAT_PAY_DISPLAY_QR_CODE = "wechat_pay_display_qr_code";
    private final RedirectUrl redirectToUrl;
    private final String type;
    private final UseStripeSdk useStripeSdk;
    private final WechatPayDisplayQrCode wechatPayDisplayQrCode;

    public static /* synthetic */ NextAction copy$default(NextAction nextAction, String str, WechatPayDisplayQrCode wechatPayDisplayQrCode, RedirectUrl redirectUrl, UseStripeSdk useStripeSdk, int i, Object obj) {
        if ((i & 1) != 0) {
            str = nextAction.type;
        }
        if ((i & 2) != 0) {
            wechatPayDisplayQrCode = nextAction.wechatPayDisplayQrCode;
        }
        if ((i & 4) != 0) {
            redirectUrl = nextAction.redirectToUrl;
        }
        if ((i & 8) != 0) {
            useStripeSdk = nextAction.useStripeSdk;
        }
        return nextAction.copy(str, wechatPayDisplayQrCode, redirectUrl, useStripeSdk);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final WechatPayDisplayQrCode getWechatPayDisplayQrCode() {
        return this.wechatPayDisplayQrCode;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final RedirectUrl getRedirectToUrl() {
        return this.redirectToUrl;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final UseStripeSdk getUseStripeSdk() {
        return this.useStripeSdk;
    }

    public final NextAction copy(String type, WechatPayDisplayQrCode wechatPayDisplayQrCode, RedirectUrl redirectToUrl, UseStripeSdk useStripeSdk) {
        Intrinsics.checkNotNullParameter(type, "type");
        return new NextAction(type, wechatPayDisplayQrCode, redirectToUrl, useStripeSdk);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof NextAction)) {
            return false;
        }
        NextAction nextAction = (NextAction) other;
        return Intrinsics.areEqual(this.type, nextAction.type) && Intrinsics.areEqual(this.wechatPayDisplayQrCode, nextAction.wechatPayDisplayQrCode) && Intrinsics.areEqual(this.redirectToUrl, nextAction.redirectToUrl) && Intrinsics.areEqual(this.useStripeSdk, nextAction.useStripeSdk);
    }

    public int hashCode() {
        int iHashCode = this.type.hashCode() * 31;
        WechatPayDisplayQrCode wechatPayDisplayQrCode = this.wechatPayDisplayQrCode;
        int iHashCode2 = (iHashCode + (wechatPayDisplayQrCode == null ? 0 : wechatPayDisplayQrCode.hashCode())) * 31;
        RedirectUrl redirectUrl = this.redirectToUrl;
        int iHashCode3 = (iHashCode2 + (redirectUrl == null ? 0 : redirectUrl.hashCode())) * 31;
        UseStripeSdk useStripeSdk = this.useStripeSdk;
        return iHashCode3 + (useStripeSdk != null ? useStripeSdk.hashCode() : 0);
    }

    public String toString() {
        return "NextAction(type=" + this.type + ", wechatPayDisplayQrCode=" + this.wechatPayDisplayQrCode + ", redirectToUrl=" + this.redirectToUrl + ", useStripeSdk=" + this.useStripeSdk + ')';
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ NextAction(int i, String str, WechatPayDisplayQrCode wechatPayDisplayQrCode, RedirectUrl redirectUrl, UseStripeSdk useStripeSdk, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, NextAction$$serializer.INSTANCE.getDescriptor());
        }
        this.type = str;
        if ((i & 2) == 0) {
            this.wechatPayDisplayQrCode = null;
        } else {
            this.wechatPayDisplayQrCode = wechatPayDisplayQrCode;
        }
        if ((i & 4) == 0) {
            this.redirectToUrl = null;
        } else {
            this.redirectToUrl = redirectUrl;
        }
        if ((i & 8) == 0) {
            this.useStripeSdk = null;
        } else {
            this.useStripeSdk = useStripeSdk;
        }
    }

    public NextAction(String type, WechatPayDisplayQrCode wechatPayDisplayQrCode, RedirectUrl redirectUrl, UseStripeSdk useStripeSdk) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        this.wechatPayDisplayQrCode = wechatPayDisplayQrCode;
        this.redirectToUrl = redirectUrl;
        this.useStripeSdk = useStripeSdk;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$public_release(NextAction self, CompositeEncoder output, SerialDescriptor serialDesc) {
        output.encodeStringElement(serialDesc, 0, self.type);
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.wechatPayDisplayQrCode != null) {
            output.encodeNullableSerializableElement(serialDesc, 1, WechatPayDisplayQrCode$$serializer.INSTANCE, self.wechatPayDisplayQrCode);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self.redirectToUrl != null) {
            output.encodeNullableSerializableElement(serialDesc, 2, RedirectUrl$$serializer.INSTANCE, self.redirectToUrl);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 3) && self.useStripeSdk == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 3, UseStripeSdk$$serializer.INSTANCE, self.useStripeSdk);
    }

    public /* synthetic */ NextAction(String str, WechatPayDisplayQrCode wechatPayDisplayQrCode, RedirectUrl redirectUrl, UseStripeSdk useStripeSdk, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : wechatPayDisplayQrCode, (i & 4) != 0 ? null : redirectUrl, (i & 8) != 0 ? null : useStripeSdk);
    }

    public final String getType() {
        return this.type;
    }

    public final WechatPayDisplayQrCode getWechatPayDisplayQrCode() {
        return this.wechatPayDisplayQrCode;
    }

    public final RedirectUrl getRedirectToUrl() {
        return this.redirectToUrl;
    }

    public final UseStripeSdk getUseStripeSdk() {
        return this.useStripeSdk;
    }

    public final String getNonCardPaymentMethodTypeAndImageUrl() {
        QrCode qrCode$public_release;
        String str = this.type;
        if (Intrinsics.areEqual(str, WECHAT_PAY_DISPLAY_QR_CODE)) {
            WechatPayDisplayQrCode wechatPayDisplayQrCode = this.wechatPayDisplayQrCode;
            imageUrlPng = wechatPayDisplayQrCode != null ? wechatPayDisplayQrCode.getImageUrlPng() : null;
            if (imageUrlPng != null) {
                return imageUrlPng;
            }
            throw new IllegalStateException("WeChat Pay next action should never have null imageUrlPng.".toString());
        }
        if (!Intrinsics.areEqual(str, REDIRECT_TO_URL)) {
            return null;
        }
        RedirectUrl redirectUrl = this.redirectToUrl;
        if (redirectUrl != null && (qrCode$public_release = redirectUrl.getQrCode$public_release()) != null) {
            imageUrlPng = qrCode$public_release.getImageUrlPng();
        }
        if (imageUrlPng != null) {
            return imageUrlPng;
        }
        throw new IllegalStateException("redirect_url.qr_code should never have null imageUrlPng on terminal.".toString());
    }

    /* JADX INFO: compiled from: NextAction.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bHÆ\u0001R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/stripeterminal/external/models/NextAction$Companion;", "", "()V", "REDIRECT_TO_URL", "", "USE_STRIPE_SDK", "WECHAT_PAY_DISPLAY_QR_CODE", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/NextAction;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<NextAction> serializer() {
            return NextAction$$serializer.INSTANCE;
        }
    }
}
