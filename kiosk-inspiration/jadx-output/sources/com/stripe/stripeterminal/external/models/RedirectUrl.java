package com.stripe.stripeterminal.external.models;

import com.google.android.gms.common.internal.ImagesContract;
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
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: RedirectUrl.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 '2\u00060\u0001j\u0002`\u0002:\u0002&'B7\b\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\fB'\b\u0000\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\rJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0010\u0010\u0015\u001a\u0004\u0018\u00010\tHÀ\u0003¢\u0006\u0002\b\u0016J-\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bHÖ\u0003J\t\u0010\u001c\u001a\u00020\u0004HÖ\u0001J\t\u0010\u001d\u001a\u00020\u0006HÖ\u0001J&\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00002\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$HÁ\u0001¢\u0006\u0002\b%R\u0016\u0010\b\u001a\u0004\u0018\u00010\tX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011¨\u0006("}, d2 = {"Lcom/stripe/stripeterminal/external/models/RedirectUrl;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "seen1", "", "returnUrl", "", ImagesContract.URL, "qrCode", "Lcom/stripe/stripeterminal/external/models/QrCode;", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/QrCode;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/QrCode;)V", "getQrCode$public_release", "()Lcom/stripe/stripeterminal/external/models/QrCode;", "getReturnUrl", "()Ljava/lang/String;", "getUrl", "component1", "component2", "component3", "component3$public_release", "copy", "equals", "", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$public_release", "$serializer", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final /* data */ class RedirectUrl implements java.io.Serializable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final QrCode qrCode;
    private final String returnUrl;
    private final String url;

    public static /* synthetic */ RedirectUrl copy$default(RedirectUrl redirectUrl, String str, String str2, QrCode qrCode, int i, Object obj) {
        if ((i & 1) != 0) {
            str = redirectUrl.returnUrl;
        }
        if ((i & 2) != 0) {
            str2 = redirectUrl.url;
        }
        if ((i & 4) != 0) {
            qrCode = redirectUrl.qrCode;
        }
        return redirectUrl.copy(str, str2, qrCode);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getReturnUrl() {
        return this.returnUrl;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    /* JADX INFO: renamed from: component3$public_release, reason: from getter */
    public final QrCode getQrCode() {
        return this.qrCode;
    }

    public final RedirectUrl copy(String returnUrl, String url, QrCode qrCode) {
        return new RedirectUrl(returnUrl, url, qrCode);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RedirectUrl)) {
            return false;
        }
        RedirectUrl redirectUrl = (RedirectUrl) other;
        return Intrinsics.areEqual(this.returnUrl, redirectUrl.returnUrl) && Intrinsics.areEqual(this.url, redirectUrl.url) && Intrinsics.areEqual(this.qrCode, redirectUrl.qrCode);
    }

    public int hashCode() {
        String str = this.returnUrl;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.url;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        QrCode qrCode = this.qrCode;
        return iHashCode2 + (qrCode != null ? qrCode.hashCode() : 0);
    }

    public String toString() {
        return "RedirectUrl(returnUrl=" + this.returnUrl + ", url=" + this.url + ", qrCode=" + this.qrCode + ')';
    }

    /* JADX INFO: compiled from: RedirectUrl.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/RedirectUrl$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/RedirectUrl;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<RedirectUrl> serializer() {
            return RedirectUrl$$serializer.INSTANCE;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ RedirectUrl(int i, String str, String str2, QrCode qrCode, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, RedirectUrl$$serializer.INSTANCE.getDescriptor());
        }
        this.returnUrl = str;
        this.url = str2;
        if ((i & 4) == 0) {
            this.qrCode = null;
        } else {
            this.qrCode = qrCode;
        }
    }

    public RedirectUrl(String str, String str2, QrCode qrCode) {
        this.returnUrl = str;
        this.url = str2;
        this.qrCode = qrCode;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$public_release(RedirectUrl self, CompositeEncoder output, SerialDescriptor serialDesc) {
        output.encodeNullableSerializableElement(serialDesc, 0, StringSerializer.INSTANCE, self.returnUrl);
        output.encodeNullableSerializableElement(serialDesc, 1, StringSerializer.INSTANCE, self.url);
        if (!output.shouldEncodeElementDefault(serialDesc, 2) && self.qrCode == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 2, QrCode$$serializer.INSTANCE, self.qrCode);
    }

    public /* synthetic */ RedirectUrl(String str, String str2, QrCode qrCode, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? null : qrCode);
    }

    public final String getReturnUrl() {
        return this.returnUrl;
    }

    public final String getUrl() {
        return this.url;
    }

    public final QrCode getQrCode$public_release() {
        return this.qrCode;
    }
}
