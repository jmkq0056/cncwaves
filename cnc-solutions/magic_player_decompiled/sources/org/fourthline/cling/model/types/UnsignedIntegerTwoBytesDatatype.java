package org.fourthline.cling.model.types;

import androidx.appcompat.view.a;

/* JADX INFO: loaded from: classes2.dex */
public class UnsignedIntegerTwoBytesDatatype extends AbstractDatatype<UnsignedIntegerTwoBytes> {
    @Override // org.fourthline.cling.model.types.AbstractDatatype, org.fourthline.cling.model.types.Datatype
    public UnsignedIntegerTwoBytes valueOf(String str) {
        if (str.equals("")) {
            return null;
        }
        try {
            return new UnsignedIntegerTwoBytes(str);
        } catch (NumberFormatException e4) {
            throw new InvalidValueException(a.a("Can't convert string to number or not in range: ", str), e4);
        }
    }
}
