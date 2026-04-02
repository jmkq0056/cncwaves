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

/* JADX INFO: compiled from: WechatPayDisplayQrCode.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 *2\u00060\u0001j\u0002`\u0002:\u0002)*BK\b\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\rB-\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u0006¢\u0006\u0002\u0010\u000eJ\t\u0010\u0015\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0006HÆ\u0003J;\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\u00062\b\b\u0002\u0010\n\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eHÖ\u0003J\t\u0010\u001f\u001a\u00020\u0004HÖ\u0001J\t\u0010 \u001a\u00020\u0006HÖ\u0001J&\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u00002\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'HÁ\u0001¢\u0006\u0002\b(R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u0011\u0010\b\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0010R\u0011\u0010\t\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0010R\u0011\u0010\n\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0010¨\u0006+"}, d2 = {"Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "seen1", "", "data", "", "hostedInstructionsUrl", "imageDataUrl", "imageUrlPng", "imageUrlSvg", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getData", "()Ljava/lang/String;", "getHostedInstructionsUrl", "getImageDataUrl", "getImageUrlPng", "getImageUrlSvg", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$public_release", "$serializer", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final /* data */ class WechatPayDisplayQrCode implements java.io.Serializable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String data;
    private final String hostedInstructionsUrl;
    private final String imageDataUrl;
    private final String imageUrlPng;
    private final String imageUrlSvg;

    public static /* synthetic */ WechatPayDisplayQrCode copy$default(WechatPayDisplayQrCode wechatPayDisplayQrCode, String str, String str2, String str3, String str4, String str5, int i, Object obj) {
        if ((i & 1) != 0) {
            str = wechatPayDisplayQrCode.data;
        }
        if ((i & 2) != 0) {
            str2 = wechatPayDisplayQrCode.hostedInstructionsUrl;
        }
        if ((i & 4) != 0) {
            str3 = wechatPayDisplayQrCode.imageDataUrl;
        }
        if ((i & 8) != 0) {
            str4 = wechatPayDisplayQrCode.imageUrlPng;
        }
        if ((i & 16) != 0) {
            str5 = wechatPayDisplayQrCode.imageUrlSvg;
        }
        String str6 = str5;
        String str7 = str3;
        return wechatPayDisplayQrCode.copy(str, str2, str7, str4, str6);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getData() {
        return this.data;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getHostedInstructionsUrl() {
        return this.hostedInstructionsUrl;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getImageDataUrl() {
        return this.imageDataUrl;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getImageUrlPng() {
        return this.imageUrlPng;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getImageUrlSvg() {
        return this.imageUrlSvg;
    }

    public final WechatPayDisplayQrCode copy(String data, String hostedInstructionsUrl, String imageDataUrl, String imageUrlPng, String imageUrlSvg) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(hostedInstructionsUrl, "hostedInstructionsUrl");
        Intrinsics.checkNotNullParameter(imageDataUrl, "imageDataUrl");
        Intrinsics.checkNotNullParameter(imageUrlPng, "imageUrlPng");
        Intrinsics.checkNotNullParameter(imageUrlSvg, "imageUrlSvg");
        return new WechatPayDisplayQrCode(data, hostedInstructionsUrl, imageDataUrl, imageUrlPng, imageUrlSvg);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof WechatPayDisplayQrCode)) {
            return false;
        }
        WechatPayDisplayQrCode wechatPayDisplayQrCode = (WechatPayDisplayQrCode) other;
        return Intrinsics.areEqual(this.data, wechatPayDisplayQrCode.data) && Intrinsics.areEqual(this.hostedInstructionsUrl, wechatPayDisplayQrCode.hostedInstructionsUrl) && Intrinsics.areEqual(this.imageDataUrl, wechatPayDisplayQrCode.imageDataUrl) && Intrinsics.areEqual(this.imageUrlPng, wechatPayDisplayQrCode.imageUrlPng) && Intrinsics.areEqual(this.imageUrlSvg, wechatPayDisplayQrCode.imageUrlSvg);
    }

    public int hashCode() {
        return (((((((this.data.hashCode() * 31) + this.hostedInstructionsUrl.hashCode()) * 31) + this.imageDataUrl.hashCode()) * 31) + this.imageUrlPng.hashCode()) * 31) + this.imageUrlSvg.hashCode();
    }

    public String toString() {
        return "WechatPayDisplayQrCode(data=" + this.data + ", hostedInstructionsUrl=" + this.hostedInstructionsUrl + ", imageDataUrl=" + this.imageDataUrl + ", imageUrlPng=" + this.imageUrlPng + ", imageUrlSvg=" + this.imageUrlSvg + ')';
    }

    /* JADX INFO: compiled from: WechatPayDisplayQrCode.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<WechatPayDisplayQrCode> serializer() {
            return WechatPayDisplayQrCode$$serializer.INSTANCE;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ WechatPayDisplayQrCode(int i, String str, String str2, String str3, String str4, String str5, SerializationConstructorMarker serializationConstructorMarker) {
        if (31 != (i & 31)) {
            PluginExceptionsKt.throwMissingFieldException(i, 31, WechatPayDisplayQrCode$$serializer.INSTANCE.getDescriptor());
        }
        this.data = str;
        this.hostedInstructionsUrl = str2;
        this.imageDataUrl = str3;
        this.imageUrlPng = str4;
        this.imageUrlSvg = str5;
    }

    public WechatPayDisplayQrCode(String data, String hostedInstructionsUrl, String imageDataUrl, String imageUrlPng, String imageUrlSvg) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(hostedInstructionsUrl, "hostedInstructionsUrl");
        Intrinsics.checkNotNullParameter(imageDataUrl, "imageDataUrl");
        Intrinsics.checkNotNullParameter(imageUrlPng, "imageUrlPng");
        Intrinsics.checkNotNullParameter(imageUrlSvg, "imageUrlSvg");
        this.data = data;
        this.hostedInstructionsUrl = hostedInstructionsUrl;
        this.imageDataUrl = imageDataUrl;
        this.imageUrlPng = imageUrlPng;
        this.imageUrlSvg = imageUrlSvg;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$public_release(WechatPayDisplayQrCode self, CompositeEncoder output, SerialDescriptor serialDesc) {
        output.encodeStringElement(serialDesc, 0, self.data);
        output.encodeStringElement(serialDesc, 1, self.hostedInstructionsUrl);
        output.encodeStringElement(serialDesc, 2, self.imageDataUrl);
        output.encodeStringElement(serialDesc, 3, self.imageUrlPng);
        output.encodeStringElement(serialDesc, 4, self.imageUrlSvg);
    }

    public final String getData() {
        return this.data;
    }

    public final String getHostedInstructionsUrl() {
        return this.hostedInstructionsUrl;
    }

    public final String getImageDataUrl() {
        return this.imageDataUrl;
    }

    public final String getImageUrlPng() {
        return this.imageUrlPng;
    }

    public final String getImageUrlSvg() {
        return this.imageUrlSvg;
    }
}
