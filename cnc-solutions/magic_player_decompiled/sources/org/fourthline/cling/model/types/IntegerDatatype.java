package org.fourthline.cling.model.types;

import android.support.v4.media.f;
import androidx.appcompat.view.a;
import androidx.appcompat.widget.ActivityChooserView;
import org.xbill.DNS.WKSRecord;

/* JADX INFO: loaded from: classes2.dex */
public class IntegerDatatype extends AbstractDatatype<Integer> {
    private int byteSize;

    public IntegerDatatype(int i4) {
        this.byteSize = i4;
    }

    public int getByteSize() {
        return this.byteSize;
    }

    public int getMaxValue() {
        int byteSize = getByteSize();
        if (byteSize == 1) {
            return WKSRecord.Service.LOCUS_CON;
        }
        if (byteSize == 2) {
            return 32767;
        }
        if (byteSize == 4) {
            return ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        }
        StringBuilder sbA = f.a("Invalid integer byte size: ");
        sbA.append(getByteSize());
        throw new IllegalArgumentException(sbA.toString());
    }

    public int getMinValue() {
        int byteSize = getByteSize();
        if (byteSize == 1) {
            return -128;
        }
        if (byteSize == 2) {
            return -32768;
        }
        if (byteSize == 4) {
            return Integer.MIN_VALUE;
        }
        StringBuilder sbA = f.a("Invalid integer byte size: ");
        sbA.append(getByteSize());
        throw new IllegalArgumentException(sbA.toString());
    }

    @Override // org.fourthline.cling.model.types.AbstractDatatype, org.fourthline.cling.model.types.Datatype
    public boolean isHandlingJavaType(Class cls) {
        return cls == Integer.TYPE || Integer.class.isAssignableFrom(cls);
    }

    @Override // org.fourthline.cling.model.types.AbstractDatatype, org.fourthline.cling.model.types.Datatype
    public boolean isValid(Integer num) {
        return num == null || (num.intValue() >= getMinValue() && num.intValue() <= getMaxValue());
    }

    @Override // org.fourthline.cling.model.types.AbstractDatatype, org.fourthline.cling.model.types.Datatype
    public Integer valueOf(String str) {
        if (str.equals("")) {
            return null;
        }
        try {
            Integer numValueOf = Integer.valueOf(Integer.parseInt(str.trim()));
            if (isValid(numValueOf)) {
                return numValueOf;
            }
            throw new InvalidValueException("Not a " + getByteSize() + " byte(s) integer: " + str);
        } catch (NumberFormatException e4) {
            if (str.equals("NOT_IMPLEMENTED")) {
                return Integer.valueOf(getMaxValue());
            }
            throw new InvalidValueException(a.a("Can't convert string to number: ", str), e4);
        }
    }
}
