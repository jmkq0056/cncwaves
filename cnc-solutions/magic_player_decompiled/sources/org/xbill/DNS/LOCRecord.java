package org.xbill.DNS;

import java.text.DecimalFormat;
import java.text.NumberFormat;
import org.fourthline.cling.support.messagebox.parser.MessageElement;
import org.xbill.DNS.Tokenizer;

/* JADX INFO: loaded from: classes2.dex */
public class LOCRecord extends Record {
    private static final long serialVersionUID = 9058224788126750409L;

    /* JADX INFO: renamed from: w2, reason: collision with root package name */
    private static NumberFormat f2912w2;
    private static NumberFormat w3;
    private long altitude;
    private long hPrecision;
    private long latitude;
    private long longitude;
    private long size;
    private long vPrecision;

    static {
        DecimalFormat decimalFormat = new DecimalFormat();
        f2912w2 = decimalFormat;
        decimalFormat.setMinimumIntegerDigits(2);
        DecimalFormat decimalFormat2 = new DecimalFormat();
        w3 = decimalFormat2;
        decimalFormat2.setMinimumIntegerDigits(3);
    }

    public LOCRecord() {
    }

    private long parseDouble(Tokenizer tokenizer, String str, boolean z3, long j4, long j5, long j6) throws TextParseException {
        Tokenizer.Token token = tokenizer.get();
        if (token.isEOL()) {
            if (z3) {
                throw a.a("Invalid LOC ", str, tokenizer);
            }
            tokenizer.unget();
            return j6;
        }
        String strSubstring = token.value;
        if (strSubstring.length() > 1 && strSubstring.charAt(strSubstring.length() - 1) == 'm') {
            strSubstring = strSubstring.substring(0, strSubstring.length() - 1);
        }
        try {
            long fixedPoint = (long) (parseFixedPoint(strSubstring) * 100.0d);
            if (fixedPoint >= j4 && fixedPoint <= j5) {
                return fixedPoint;
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Invalid LOC ");
            stringBuffer.append(str);
            throw tokenizer.exception(stringBuffer.toString());
        } catch (NumberFormatException unused) {
            throw a.a("Invalid LOC ", str, tokenizer);
        }
    }

    private double parseFixedPoint(String str) {
        if (str.matches("^-?\\d+$")) {
            return Integer.parseInt(str);
        }
        if (!str.matches("^-?\\d+\\.\\d*$")) {
            throw new NumberFormatException();
        }
        String[] strArrSplit = str.split("\\.");
        double d4 = Integer.parseInt(strArrSplit[0]);
        double d5 = Integer.parseInt(strArrSplit[1]);
        if (d4 < 0.0d) {
            Double.isNaN(d5);
            d5 *= -1.0d;
        }
        double dPow = d5 / Math.pow(10.0d, strArrSplit[1].length());
        Double.isNaN(d4);
        return dPow + d4;
    }

    private static long parseLOCformat(int i4) throws WireParseException {
        long j4 = i4 >> 4;
        int i5 = i4 & 15;
        if (j4 > 9 || i5 > 9) {
            throw new WireParseException("Invalid LOC Encoding");
        }
        while (true) {
            int i6 = i5 - 1;
            if (i5 <= 0) {
                return j4;
            }
            j4 *= 10;
            i5 = i6;
        }
    }

    private long parsePosition(Tokenizer tokenizer, String str) throws TextParseException {
        int i4;
        double fixedPoint;
        boolean zEquals = str.equals("latitude");
        int uInt16 = tokenizer.getUInt16();
        if (uInt16 > 180 || (uInt16 > 90 && zEquals)) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Invalid LOC ");
            stringBuffer.append(str);
            stringBuffer.append(" degrees");
            throw tokenizer.exception(stringBuffer.toString());
        }
        String string = tokenizer.getString();
        double d4 = 0.0d;
        try {
            i4 = Integer.parseInt(string);
        } catch (NumberFormatException unused) {
            i4 = 0;
        }
        if (i4 < 0 || i4 > 59) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("Invalid LOC ");
            stringBuffer2.append(str);
            stringBuffer2.append(" minutes");
            throw tokenizer.exception(stringBuffer2.toString());
        }
        try {
            string = tokenizer.getString();
            fixedPoint = parseFixedPoint(string);
        } catch (NumberFormatException unused2) {
        }
        try {
        } catch (NumberFormatException unused3) {
            d4 = fixedPoint;
            fixedPoint = d4;
        }
        if (fixedPoint < 0.0d || fixedPoint >= 60.0d) {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append("Invalid LOC ");
            stringBuffer3.append(str);
            stringBuffer3.append(" seconds");
            throw tokenizer.exception(stringBuffer3.toString());
        }
        string = tokenizer.getString();
        if (string.length() != 1) {
            throw a.a("Invalid LOC ", str, tokenizer);
        }
        double d5 = ((((long) uInt16) * 60) + ((long) i4)) * 60;
        Double.isNaN(d5);
        long j4 = (long) ((fixedPoint + d5) * 1000.0d);
        char upperCase = Character.toUpperCase(string.charAt(0));
        if ((zEquals && upperCase == 'S') || (!zEquals && upperCase == 'W')) {
            j4 = -j4;
        } else if ((zEquals && upperCase != 'N') || (!zEquals && upperCase != 'E')) {
            throw a.a("Invalid LOC ", str, tokenizer);
        }
        return j4 + 2147483648L;
    }

    private String positionToString(long j4, char c4, char c5) {
        StringBuffer stringBuffer = new StringBuffer();
        long j5 = j4 - 2147483648L;
        if (j5 < 0) {
            j5 = -j5;
            c4 = c5;
        }
        stringBuffer.append(j5 / 3600000);
        long j6 = j5 % 3600000;
        stringBuffer.append(" ");
        stringBuffer.append(j6 / 60000);
        stringBuffer.append(" ");
        renderFixedPoint(stringBuffer, w3, j6 % 60000, 1000L);
        stringBuffer.append(" ");
        stringBuffer.append(c4);
        return stringBuffer.toString();
    }

    private void renderFixedPoint(StringBuffer stringBuffer, NumberFormat numberFormat, long j4, long j5) {
        stringBuffer.append(j4 / j5);
        long j6 = j4 % j5;
        if (j6 != 0) {
            stringBuffer.append(".");
            stringBuffer.append(numberFormat.format(j6));
        }
    }

    private int toLOCformat(long j4) {
        byte b4 = 0;
        while (j4 > 9) {
            b4 = (byte) (b4 + 1);
            j4 /= 10;
        }
        return (int) ((j4 << 4) + ((long) b4));
    }

    public double getAltitude() {
        double d4 = this.altitude - 10000000;
        Double.isNaN(d4);
        return d4 / 100.0d;
    }

    public double getHPrecision() {
        double d4 = this.hPrecision;
        Double.isNaN(d4);
        return d4 / 100.0d;
    }

    public double getLatitude() {
        double d4 = this.latitude - 2147483648L;
        Double.isNaN(d4);
        return d4 / 3600000.0d;
    }

    public double getLongitude() {
        double d4 = this.longitude - 2147483648L;
        Double.isNaN(d4);
        return d4 / 3600000.0d;
    }

    @Override // org.xbill.DNS.Record
    public Record getObject() {
        return new LOCRecord();
    }

    public double getSize() {
        double d4 = this.size;
        Double.isNaN(d4);
        return d4 / 100.0d;
    }

    public double getVPrecision() {
        double d4 = this.vPrecision;
        Double.isNaN(d4);
        return d4 / 100.0d;
    }

    @Override // org.xbill.DNS.Record
    public void rdataFromString(Tokenizer tokenizer, Name name) {
        this.latitude = parsePosition(tokenizer, "latitude");
        this.longitude = parsePosition(tokenizer, "longitude");
        this.altitude = parseDouble(tokenizer, "altitude", true, -10000000L, 4284967295L, 0L) + 10000000;
        this.size = parseDouble(tokenizer, "size", false, 0L, 9000000000L, 100L);
        this.hPrecision = parseDouble(tokenizer, "horizontal precision", false, 0L, 9000000000L, 1000000L);
        this.vPrecision = parseDouble(tokenizer, "vertical precision", false, 0L, 9000000000L, 1000L);
    }

    @Override // org.xbill.DNS.Record
    public void rrFromWire(DNSInput dNSInput) throws WireParseException {
        if (dNSInput.readU8() != 0) {
            throw new WireParseException("Invalid LOC version");
        }
        this.size = parseLOCformat(dNSInput.readU8());
        this.hPrecision = parseLOCformat(dNSInput.readU8());
        this.vPrecision = parseLOCformat(dNSInput.readU8());
        this.latitude = dNSInput.readU32();
        this.longitude = dNSInput.readU32();
        this.altitude = dNSInput.readU32();
    }

    @Override // org.xbill.DNS.Record
    public String rrToString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(positionToString(this.latitude, 'N', 'S'));
        stringBuffer.append(" ");
        stringBuffer.append(positionToString(this.longitude, 'E', 'W'));
        stringBuffer.append(" ");
        renderFixedPoint(stringBuffer, f2912w2, this.altitude - 10000000, 100L);
        stringBuffer.append("m ");
        renderFixedPoint(stringBuffer, f2912w2, this.size, 100L);
        stringBuffer.append("m ");
        renderFixedPoint(stringBuffer, f2912w2, this.hPrecision, 100L);
        stringBuffer.append("m ");
        renderFixedPoint(stringBuffer, f2912w2, this.vPrecision, 100L);
        stringBuffer.append(MessageElement.XPATH_PREFIX);
        return stringBuffer.toString();
    }

    @Override // org.xbill.DNS.Record
    public void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z3) {
        dNSOutput.writeU8(0);
        dNSOutput.writeU8(toLOCformat(this.size));
        dNSOutput.writeU8(toLOCformat(this.hPrecision));
        dNSOutput.writeU8(toLOCformat(this.vPrecision));
        dNSOutput.writeU32(this.latitude);
        dNSOutput.writeU32(this.longitude);
        dNSOutput.writeU32(this.altitude);
    }

    public LOCRecord(Name name, int i4, long j4, double d4, double d5, double d6, double d7, double d8, double d9) {
        super(name, 29, i4, j4);
        this.latitude = (long) ((d4 * 3600.0d * 1000.0d) + 2.147483648E9d);
        this.longitude = (long) ((3600.0d * d5 * 1000.0d) + 2.147483648E9d);
        this.altitude = (long) ((d6 + 100000.0d) * 100.0d);
        this.size = (long) (d7 * 100.0d);
        this.hPrecision = (long) (d8 * 100.0d);
        this.vPrecision = (long) (d9 * 100.0d);
    }
}
