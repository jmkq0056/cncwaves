package org.fourthline.cling.support.model.dlna.types;

import android.support.v4.media.f;
import android.support.v4.media.g;
import androidx.appcompat.view.a;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.fourthline.cling.model.types.InvalidValueException;
import org.fourthline.cling.support.model.dlna.types.CodedDataBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class BufferInfoType {
    public static final Pattern pattern = Pattern.compile("^dejitter=(\\d{1,10})(;CDB=(\\d{1,10});BTM=(0|1|2))?(;TD=(\\d{1,10}))?(;BFR=(0|1))?$", 2);
    private CodedDataBuffer cdb;
    private Long dejitterSize;
    private Boolean fullnessReports;
    private Long targetDuration;

    public BufferInfoType(Long l4) {
        this.dejitterSize = l4;
    }

    public static BufferInfoType valueOf(String str) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.matches()) {
            try {
                return new BufferInfoType(Long.valueOf(Long.parseLong(matcher.group(1))), matcher.group(2) != null ? new CodedDataBuffer(Long.valueOf(Long.parseLong(matcher.group(3))), CodedDataBuffer.TransferMechanism.values()[Integer.parseInt(matcher.group(4))]) : null, matcher.group(5) != null ? Long.valueOf(Long.parseLong(matcher.group(6))) : null, matcher.group(7) != null ? Boolean.valueOf(matcher.group(8).equals("1")) : null);
            } catch (NumberFormatException unused) {
            }
        }
        throw new InvalidValueException(a.a("Can't parse BufferInfoType: ", str));
    }

    public CodedDataBuffer getCdb() {
        return this.cdb;
    }

    public Long getDejitterSize() {
        return this.dejitterSize;
    }

    public String getString() {
        StringBuilder sbA = f.a("dejitter=");
        sbA.append(this.dejitterSize.toString());
        String string = sbA.toString();
        if (this.cdb != null) {
            StringBuilder sbA2 = g.a(string, ";CDB=");
            sbA2.append(this.cdb.getSize().toString());
            sbA2.append(";BTM=");
            sbA2.append(this.cdb.getTranfer().ordinal());
            string = sbA2.toString();
        }
        if (this.targetDuration != null) {
            StringBuilder sbA3 = g.a(string, ";TD=");
            sbA3.append(this.targetDuration.toString());
            string = sbA3.toString();
        }
        if (this.fullnessReports == null) {
            return string;
        }
        StringBuilder sbA4 = g.a(string, ";BFR=");
        sbA4.append(this.fullnessReports.booleanValue() ? "1" : "0");
        return sbA4.toString();
    }

    public Long getTargetDuration() {
        return this.targetDuration;
    }

    public Boolean isFullnessReports() {
        return this.fullnessReports;
    }

    public BufferInfoType(Long l4, CodedDataBuffer codedDataBuffer, Long l5, Boolean bool) {
        this.dejitterSize = l4;
        this.cdb = codedDataBuffer;
        this.targetDuration = l5;
        this.fullnessReports = bool;
    }
}
