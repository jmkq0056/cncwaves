package com.stripe.spos.sentry.http.models;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: compiled from: BuildConfigData.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0081\b\u0018\u0000 \u00162\u00020\u0001:\u0002\u0016\u0017B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0006HÆ\u0003J'\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0006HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u0018"}, d2 = {"Lcom/stripe/spos/sentry/http/models/BuildConfigData;", "", "libraryPackageName", "", "versionName", "versionCode", "", "(Ljava/lang/String;Ljava/lang/String;I)V", "getLibraryPackageName", "()Ljava/lang/String;", "getVersionCode", "()I", "getVersionName", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "Companion", "Serializer", "sentry-http"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable(with = Serializer.class)
public final /* data */ class BuildConfigData {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String libraryPackageName;
    private final int versionCode;
    private final String versionName;

    public static /* synthetic */ BuildConfigData copy$default(BuildConfigData buildConfigData, String str, String str2, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = buildConfigData.libraryPackageName;
        }
        if ((i2 & 2) != 0) {
            str2 = buildConfigData.versionName;
        }
        if ((i2 & 4) != 0) {
            i = buildConfigData.versionCode;
        }
        return buildConfigData.copy(str, str2, i);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getLibraryPackageName() {
        return this.libraryPackageName;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getVersionName() {
        return this.versionName;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getVersionCode() {
        return this.versionCode;
    }

    public final BuildConfigData copy(String libraryPackageName, String versionName, int versionCode) {
        Intrinsics.checkNotNullParameter(libraryPackageName, "libraryPackageName");
        Intrinsics.checkNotNullParameter(versionName, "versionName");
        return new BuildConfigData(libraryPackageName, versionName, versionCode);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BuildConfigData)) {
            return false;
        }
        BuildConfigData buildConfigData = (BuildConfigData) other;
        return Intrinsics.areEqual(this.libraryPackageName, buildConfigData.libraryPackageName) && Intrinsics.areEqual(this.versionName, buildConfigData.versionName) && this.versionCode == buildConfigData.versionCode;
    }

    public int hashCode() {
        return (((this.libraryPackageName.hashCode() * 31) + this.versionName.hashCode()) * 31) + Integer.hashCode(this.versionCode);
    }

    public String toString() {
        return "BuildConfigData(libraryPackageName=" + this.libraryPackageName + ", versionName=" + this.versionName + ", versionCode=" + this.versionCode + ')';
    }

    /* JADX INFO: compiled from: BuildConfigData.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/spos/sentry/http/models/BuildConfigData$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/spos/sentry/http/models/BuildConfigData;", "sentry-http"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<BuildConfigData> serializer() {
            return Serializer.INSTANCE;
        }
    }

    public BuildConfigData(String libraryPackageName, String versionName, int i) {
        Intrinsics.checkNotNullParameter(libraryPackageName, "libraryPackageName");
        Intrinsics.checkNotNullParameter(versionName, "versionName");
        this.libraryPackageName = libraryPackageName;
        this.versionName = versionName;
        this.versionCode = i;
    }

    public final String getLibraryPackageName() {
        return this.libraryPackageName;
    }

    public final String getVersionName() {
        return this.versionName;
    }

    public final int getVersionCode() {
        return this.versionCode;
    }

    /* JADX INFO: compiled from: BuildConfigData.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0002H\u0016R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00050\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0012"}, d2 = {"Lcom/stripe/spos/sentry/http/models/BuildConfigData$Serializer;", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/spos/sentry/http/models/BuildConfigData;", "()V", "backingSerializer", "", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "sentry-http"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Serializer implements KSerializer<BuildConfigData> {
        public static final Serializer INSTANCE = new Serializer();
        private static final KSerializer<String> backingSerializer;
        private static final SerialDescriptor descriptor;

        private Serializer() {
        }

        static {
            KSerializer<String> kSerializerSerializer = BuiltinSerializersKt.serializer(StringCompanionObject.INSTANCE);
            backingSerializer = kSerializerSerializer;
            descriptor = kSerializerSerializer.getDescriptor();
        }

        @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
        public SerialDescriptor getDescriptor() {
            return descriptor;
        }

        @Override // kotlinx.serialization.DeserializationStrategy
        public BuildConfigData deserialize(Decoder decoder) {
            Intrinsics.checkNotNullParameter(decoder, "decoder");
            throw new UnsupportedOperationException("Not implemented");
        }

        @Override // kotlinx.serialization.SerializationStrategy
        public void serialize(Encoder encoder, BuildConfigData value) {
            Intrinsics.checkNotNullParameter(encoder, "encoder");
            Intrinsics.checkNotNullParameter(value, "value");
            backingSerializer.serialize(encoder, value.getLibraryPackageName() + '@' + value.getVersionName() + '+' + value.getVersionCode());
        }
    }
}
