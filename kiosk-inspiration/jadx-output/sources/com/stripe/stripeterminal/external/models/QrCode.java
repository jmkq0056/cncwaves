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

/* JADX INFO: compiled from: QrCode.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0081\b\u0018\u0000 &2\u00060\u0001j\u0002`\u0002:\u0002%&B5\b\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\fB\u001f\b\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0002\u0010\rJ\t\u0010\u0013\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0014\u001a\u00020\bHÆ\u0003J\t\u0010\u0015\u001a\u00020\bHÆ\u0003J'\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\u0004HÖ\u0001J\t\u0010\u001c\u001a\u00020\bHÖ\u0001J&\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00002\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#HÁ\u0001¢\u0006\u0002\b$R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\t\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011¨\u0006'"}, d2 = {"Lcom/stripe/stripeterminal/external/models/QrCode;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "seen1", "", "expiresAt", "", "imageUrlPng", "", "imageUrlSvg", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(IJLjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(JLjava/lang/String;Ljava/lang/String;)V", "getExpiresAt", "()J", "getImageUrlPng", "()Ljava/lang/String;", "getImageUrlSvg", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$public_release", "$serializer", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final /* data */ class QrCode implements java.io.Serializable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final long expiresAt;
    private final String imageUrlPng;
    private final String imageUrlSvg;

    public static /* synthetic */ QrCode copy$default(QrCode qrCode, long j, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            j = qrCode.expiresAt;
        }
        if ((i & 2) != 0) {
            str = qrCode.imageUrlPng;
        }
        if ((i & 4) != 0) {
            str2 = qrCode.imageUrlSvg;
        }
        return qrCode.copy(j, str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getExpiresAt() {
        return this.expiresAt;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getImageUrlPng() {
        return this.imageUrlPng;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getImageUrlSvg() {
        return this.imageUrlSvg;
    }

    public final QrCode copy(long expiresAt, String imageUrlPng, String imageUrlSvg) {
        Intrinsics.checkNotNullParameter(imageUrlPng, "imageUrlPng");
        Intrinsics.checkNotNullParameter(imageUrlSvg, "imageUrlSvg");
        return new QrCode(expiresAt, imageUrlPng, imageUrlSvg);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof QrCode)) {
            return false;
        }
        QrCode qrCode = (QrCode) other;
        return this.expiresAt == qrCode.expiresAt && Intrinsics.areEqual(this.imageUrlPng, qrCode.imageUrlPng) && Intrinsics.areEqual(this.imageUrlSvg, qrCode.imageUrlSvg);
    }

    public int hashCode() {
        return (((Long.hashCode(this.expiresAt) * 31) + this.imageUrlPng.hashCode()) * 31) + this.imageUrlSvg.hashCode();
    }

    public String toString() {
        return "QrCode(expiresAt=" + this.expiresAt + ", imageUrlPng=" + this.imageUrlPng + ", imageUrlSvg=" + this.imageUrlSvg + ')';
    }

    /* JADX INFO: compiled from: QrCode.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/QrCode$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/QrCode;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<QrCode> serializer() {
            return QrCode$$serializer.INSTANCE;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ QrCode(int i, long j, String str, String str2, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, QrCode$$serializer.INSTANCE.getDescriptor());
        }
        this.expiresAt = j;
        this.imageUrlPng = str;
        this.imageUrlSvg = str2;
    }

    public QrCode(long j, String imageUrlPng, String imageUrlSvg) {
        Intrinsics.checkNotNullParameter(imageUrlPng, "imageUrlPng");
        Intrinsics.checkNotNullParameter(imageUrlSvg, "imageUrlSvg");
        this.expiresAt = j;
        this.imageUrlPng = imageUrlPng;
        this.imageUrlSvg = imageUrlSvg;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$public_release(QrCode self, CompositeEncoder output, SerialDescriptor serialDesc) {
        output.encodeLongElement(serialDesc, 0, self.expiresAt);
        output.encodeStringElement(serialDesc, 1, self.imageUrlPng);
        output.encodeStringElement(serialDesc, 2, self.imageUrlSvg);
    }

    public final long getExpiresAt() {
        return this.expiresAt;
    }

    public final String getImageUrlPng() {
        return this.imageUrlPng;
    }

    public final String getImageUrlSvg() {
        return this.imageUrlSvg;
    }
}
