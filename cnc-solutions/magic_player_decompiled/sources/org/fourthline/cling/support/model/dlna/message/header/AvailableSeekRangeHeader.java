package org.fourthline.cling.support.model.dlna.message.header;

import android.support.v4.media.g;
import androidx.appcompat.view.a;
import androidx.appcompat.view.b;
import org.fourthline.cling.model.message.header.InvalidHeaderException;
import org.fourthline.cling.model.types.BytesRange;
import org.fourthline.cling.model.types.InvalidValueException;
import org.fourthline.cling.support.model.dlna.types.AvailableSeekRangeType;
import org.fourthline.cling.support.model.dlna.types.NormalPlayTimeRange;

/* JADX INFO: loaded from: classes2.dex */
public class AvailableSeekRangeHeader extends DLNAHeader<AvailableSeekRangeType> {
    public AvailableSeekRangeHeader() {
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public String getString() {
        AvailableSeekRangeType value = getValue();
        String string = Integer.toString(value.getModeFlag().ordinal());
        if (value.getNormalPlayTimeRange() != null) {
            StringBuilder sbA = g.a(string, " ");
            sbA.append(value.getNormalPlayTimeRange().getString(false));
            string = sbA.toString();
        }
        if (value.getBytesRange() == null) {
            return string;
        }
        StringBuilder sbA2 = g.a(string, " ");
        sbA2.append(value.getBytesRange().getString(false));
        return sbA2.toString();
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public void setString(String str) {
        NormalPlayTimeRange normalPlayTimeRangeValueOf;
        if (str.length() != 0) {
            String[] strArrSplit = str.split(" ");
            boolean z3 = true;
            try {
                if (strArrSplit.length > 1) {
                    try {
                        AvailableSeekRangeType.Mode modeValueOf = AvailableSeekRangeType.Mode.valueOf("MODE_" + strArrSplit[0]);
                        BytesRange bytesRangeValueOf = null;
                        try {
                            try {
                                normalPlayTimeRangeValueOf = NormalPlayTimeRange.valueOf(strArrSplit[1], true);
                            } catch (InvalidValueException unused) {
                                throw new InvalidValueException("Invalid AvailableSeekRange Range");
                            }
                        } catch (InvalidValueException unused2) {
                            normalPlayTimeRangeValueOf = null;
                            bytesRangeValueOf = BytesRange.valueOf(strArrSplit[1]);
                            z3 = false;
                        }
                        if (!z3) {
                            setValue(new AvailableSeekRangeType(modeValueOf, bytesRangeValueOf));
                            return;
                        } else if (strArrSplit.length > 2) {
                            setValue(new AvailableSeekRangeType(modeValueOf, normalPlayTimeRangeValueOf, BytesRange.valueOf(strArrSplit[2])));
                            return;
                        } else {
                            setValue(new AvailableSeekRangeType(modeValueOf, normalPlayTimeRangeValueOf));
                            return;
                        }
                    } catch (IllegalArgumentException unused3) {
                        throw new InvalidValueException("Invalid AvailableSeekRange Mode");
                    }
                }
            } catch (InvalidValueException e4) {
                StringBuilder sbA = b.a("Invalid AvailableSeekRange header value: ", str, "; ");
                sbA.append(e4.getMessage());
                throw new InvalidHeaderException(sbA.toString());
            }
        }
        throw new InvalidHeaderException(a.a("Invalid AvailableSeekRange header value: ", str));
    }

    public AvailableSeekRangeHeader(AvailableSeekRangeType availableSeekRangeType) {
        setValue(availableSeekRangeType);
    }
}
