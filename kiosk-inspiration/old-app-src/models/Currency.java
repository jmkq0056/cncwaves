package com.example.digitalkiosk.models;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Currency.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J1\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\n¨\u0006\u0019"}, d2 = {"Lcom/example/digitalkiosk/models/Currency;", "", "code", "", "symbol", "position", "format", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getCode", "()Ljava/lang/String;", "getSymbol", "getPosition", "getFormat", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class Currency {
    private final String code;
    private final String format;
    private final String position;
    private final String symbol;

    public static /* synthetic */ Currency copy$default(Currency currency, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = currency.code;
        }
        if ((i & 2) != 0) {
            str2 = currency.symbol;
        }
        if ((i & 4) != 0) {
            str3 = currency.position;
        }
        if ((i & 8) != 0) {
            str4 = currency.format;
        }
        return currency.copy(str, str2, str3, str4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCode() {
        return this.code;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getSymbol() {
        return this.symbol;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getPosition() {
        return this.position;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getFormat() {
        return this.format;
    }

    public final Currency copy(String code, String symbol, String position, String format) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(symbol, "symbol");
        Intrinsics.checkNotNullParameter(position, "position");
        Intrinsics.checkNotNullParameter(format, "format");
        return new Currency(code, symbol, position, format);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Currency)) {
            return false;
        }
        Currency currency = (Currency) other;
        return Intrinsics.areEqual(this.code, currency.code) && Intrinsics.areEqual(this.symbol, currency.symbol) && Intrinsics.areEqual(this.position, currency.position) && Intrinsics.areEqual(this.format, currency.format);
    }

    public int hashCode() {
        return (((((this.code.hashCode() * 31) + this.symbol.hashCode()) * 31) + this.position.hashCode()) * 31) + this.format.hashCode();
    }

    public String toString() {
        return "Currency(code=" + this.code + ", symbol=" + this.symbol + ", position=" + this.position + ", format=" + this.format + ')';
    }

    public Currency(String code, String symbol, String position, String format) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(symbol, "symbol");
        Intrinsics.checkNotNullParameter(position, "position");
        Intrinsics.checkNotNullParameter(format, "format");
        this.code = code;
        this.symbol = symbol;
        this.position = position;
        this.format = format;
    }

    public final String getCode() {
        return this.code;
    }

    public final String getSymbol() {
        return this.symbol;
    }

    public final String getPosition() {
        return this.position;
    }

    public final String getFormat() {
        return this.format;
    }
}
