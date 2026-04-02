package org.fourthline.cling.model.types;

import android.support.v4.media.f;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
public abstract class UnsignedVariableInteger {
    private static final Logger log = Logger.getLogger(UnsignedVariableInteger.class.getName());
    public long value;

    public enum Bits {
        EIGHT(255),
        SIXTEEN(65535),
        TWENTYFOUR(16777215),
        THIRTYTWO(4294967295L);

        private long maxValue;

        Bits(long j4) {
            this.maxValue = j4;
        }

        public long getMaxValue() {
            return this.maxValue;
        }
    }

    public UnsignedVariableInteger() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.value == ((UnsignedVariableInteger) obj).value;
    }

    public abstract Bits getBits();

    public int getMinValue() {
        return 0;
    }

    public Long getValue() {
        return Long.valueOf(this.value);
    }

    public int hashCode() {
        long j4 = this.value;
        return (int) (j4 ^ (j4 >>> 32));
    }

    public UnsignedVariableInteger increment(boolean z3) {
        if (this.value + 1 > getBits().getMaxValue()) {
            this.value = z3 ? 1L : 0L;
        } else {
            this.value++;
        }
        return this;
    }

    public void isInRange(long j4) {
        if (j4 < getMinValue() || j4 > getBits().getMaxValue()) {
            StringBuilder sbA = f.a("Value must be between ");
            sbA.append(getMinValue());
            sbA.append(" and ");
            sbA.append(getBits().getMaxValue());
            sbA.append(": ");
            sbA.append(j4);
            throw new NumberFormatException(sbA.toString());
        }
    }

    public UnsignedVariableInteger setValue(long j4) {
        isInRange(j4);
        this.value = j4;
        return this;
    }

    public String toString() {
        return Long.toString(this.value);
    }

    public UnsignedVariableInteger(long j4) {
        setValue(j4);
    }

    public UnsignedVariableInteger(String str) {
        if (str.startsWith("-")) {
            log.warning("Invalid negative integer value '" + str + "', assuming value 0!");
            str = "0";
        }
        setValue(Long.parseLong(str.trim()));
    }
}
