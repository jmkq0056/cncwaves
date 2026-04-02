package com.stripe.spos.sentry.http.models;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: EnvironmentConfig.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\nJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\fJL\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010\u001cJ\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010 \u001a\u00020\u0006HÖ\u0001J\t\u0010!\u001a\u00020\u0003HÖ\u0001R\u0015\u0010\t\u001a\u0004\u0018\u00010\u0006¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000fR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000f¨\u0006\""}, d2 = {"Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;", "", "libraryPackageName", "", "libraryVersionName", "libraryVersionCode", "", "environment", "localeCountry", "androidOsVersion", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V", "getAndroidOsVersion", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getEnvironment", "()Ljava/lang/String;", "getLibraryPackageName", "getLibraryVersionCode", "()I", "getLibraryVersionName", "getLocaleCountry", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;", "equals", "", "other", "hashCode", "toString", "sentry-http"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class EnvironmentConfig {
    private final Integer androidOsVersion;
    private final String environment;
    private final String libraryPackageName;
    private final int libraryVersionCode;
    private final String libraryVersionName;
    private final String localeCountry;

    public static /* synthetic */ EnvironmentConfig copy$default(EnvironmentConfig environmentConfig, String str, String str2, int i, String str3, String str4, Integer num, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = environmentConfig.libraryPackageName;
        }
        if ((i2 & 2) != 0) {
            str2 = environmentConfig.libraryVersionName;
        }
        if ((i2 & 4) != 0) {
            i = environmentConfig.libraryVersionCode;
        }
        if ((i2 & 8) != 0) {
            str3 = environmentConfig.environment;
        }
        if ((i2 & 16) != 0) {
            str4 = environmentConfig.localeCountry;
        }
        if ((i2 & 32) != 0) {
            num = environmentConfig.androidOsVersion;
        }
        String str5 = str4;
        Integer num2 = num;
        return environmentConfig.copy(str, str2, i, str3, str5, num2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getLibraryPackageName() {
        return this.libraryPackageName;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getLibraryVersionName() {
        return this.libraryVersionName;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getLibraryVersionCode() {
        return this.libraryVersionCode;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getEnvironment() {
        return this.environment;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getLocaleCountry() {
        return this.localeCountry;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Integer getAndroidOsVersion() {
        return this.androidOsVersion;
    }

    public final EnvironmentConfig copy(String libraryPackageName, String libraryVersionName, int libraryVersionCode, String environment, String localeCountry, Integer androidOsVersion) {
        Intrinsics.checkNotNullParameter(libraryPackageName, "libraryPackageName");
        Intrinsics.checkNotNullParameter(libraryVersionName, "libraryVersionName");
        Intrinsics.checkNotNullParameter(environment, "environment");
        Intrinsics.checkNotNullParameter(localeCountry, "localeCountry");
        return new EnvironmentConfig(libraryPackageName, libraryVersionName, libraryVersionCode, environment, localeCountry, androidOsVersion);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof EnvironmentConfig)) {
            return false;
        }
        EnvironmentConfig environmentConfig = (EnvironmentConfig) other;
        return Intrinsics.areEqual(this.libraryPackageName, environmentConfig.libraryPackageName) && Intrinsics.areEqual(this.libraryVersionName, environmentConfig.libraryVersionName) && this.libraryVersionCode == environmentConfig.libraryVersionCode && Intrinsics.areEqual(this.environment, environmentConfig.environment) && Intrinsics.areEqual(this.localeCountry, environmentConfig.localeCountry) && Intrinsics.areEqual(this.androidOsVersion, environmentConfig.androidOsVersion);
    }

    public int hashCode() {
        int iHashCode = ((((((((this.libraryPackageName.hashCode() * 31) + this.libraryVersionName.hashCode()) * 31) + Integer.hashCode(this.libraryVersionCode)) * 31) + this.environment.hashCode()) * 31) + this.localeCountry.hashCode()) * 31;
        Integer num = this.androidOsVersion;
        return iHashCode + (num == null ? 0 : num.hashCode());
    }

    public String toString() {
        return "EnvironmentConfig(libraryPackageName=" + this.libraryPackageName + ", libraryVersionName=" + this.libraryVersionName + ", libraryVersionCode=" + this.libraryVersionCode + ", environment=" + this.environment + ", localeCountry=" + this.localeCountry + ", androidOsVersion=" + this.androidOsVersion + ')';
    }

    public EnvironmentConfig(String libraryPackageName, String libraryVersionName, int i, String environment, String localeCountry, Integer num) {
        Intrinsics.checkNotNullParameter(libraryPackageName, "libraryPackageName");
        Intrinsics.checkNotNullParameter(libraryVersionName, "libraryVersionName");
        Intrinsics.checkNotNullParameter(environment, "environment");
        Intrinsics.checkNotNullParameter(localeCountry, "localeCountry");
        this.libraryPackageName = libraryPackageName;
        this.libraryVersionName = libraryVersionName;
        this.libraryVersionCode = i;
        this.environment = environment;
        this.localeCountry = localeCountry;
        this.androidOsVersion = num;
    }

    public /* synthetic */ EnvironmentConfig(String str, String str2, int i, String str3, String str4, Integer num, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, i, str3, str4, (i2 & 32) != 0 ? null : num);
    }

    public final String getLibraryPackageName() {
        return this.libraryPackageName;
    }

    public final String getLibraryVersionName() {
        return this.libraryVersionName;
    }

    public final int getLibraryVersionCode() {
        return this.libraryVersionCode;
    }

    public final String getEnvironment() {
        return this.environment;
    }

    public final String getLocaleCountry() {
        return this.localeCountry;
    }

    public final Integer getAndroidOsVersion() {
        return this.androidOsVersion;
    }
}
