package org.fourthline.cling.support.model.dlna.message.header;

import android.support.v4.media.g;
import androidx.appcompat.view.a;
import androidx.appcompat.view.b;
import org.fourthline.cling.model.message.header.InvalidHeaderException;
import org.fourthline.cling.model.types.BytesRange;
import org.fourthline.cling.model.types.InvalidValueException;
import org.fourthline.cling.support.model.dlna.types.NormalPlayTimeRange;
import org.fourthline.cling.support.model.dlna.types.TimeSeekRangeType;

/* JADX INFO: loaded from: classes2.dex */
public class TimeSeekRangeHeader extends DLNAHeader<TimeSeekRangeType> {
    public TimeSeekRangeHeader() {
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public String getString() {
        TimeSeekRangeType value = getValue();
        String string = value.getNormalPlayTimeRange().getString();
        if (value.getBytesRange() == null) {
            return string;
        }
        StringBuilder sbA = g.a(string, " ");
        sbA.append(value.getBytesRange().getString(true));
        return sbA.toString();
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public void setString(String str) {
        if (str.length() != 0) {
            String[] strArrSplit = str.split(" ");
            if (strArrSplit.length > 0) {
                try {
                    TimeSeekRangeType timeSeekRangeType = new TimeSeekRangeType(NormalPlayTimeRange.valueOf(strArrSplit[0]));
                    if (strArrSplit.length > 1) {
                        timeSeekRangeType.setBytesRange(BytesRange.valueOf(strArrSplit[1]));
                    }
                    setValue(timeSeekRangeType);
                    return;
                } catch (InvalidValueException e4) {
                    StringBuilder sbA = b.a("Invalid TimeSeekRange header value: ", str, "; ");
                    sbA.append(e4.getMessage());
                    throw new InvalidHeaderException(sbA.toString());
                }
            }
        }
        throw new InvalidHeaderException(a.a("Invalid TimeSeekRange header value: ", str));
    }

    public TimeSeekRangeHeader(TimeSeekRangeType timeSeekRangeType) {
        setValue(timeSeekRangeType);
    }
}
