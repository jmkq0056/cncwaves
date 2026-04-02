package org.xbill.DNS;

/* JADX INFO: loaded from: classes2.dex */
public class GPOSRecord extends Record {
    private static final long serialVersionUID = -6349714958085750705L;
    private byte[] altitude;
    private byte[] latitude;
    private byte[] longitude;

    public GPOSRecord() {
    }

    private void validate(double d4, double d5) {
        if (d4 < -90.0d || d4 > 90.0d) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("illegal longitude ");
            stringBuffer.append(d4);
            throw new IllegalArgumentException(stringBuffer.toString());
        }
        if (d5 < -180.0d || d5 > 180.0d) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("illegal latitude ");
            stringBuffer2.append(d5);
            throw new IllegalArgumentException(stringBuffer2.toString());
        }
    }

    public double getAltitude() {
        return Double.parseDouble(getAltitudeString());
    }

    public String getAltitudeString() {
        return Record.byteArrayToString(this.altitude, false);
    }

    public double getLatitude() {
        return Double.parseDouble(getLatitudeString());
    }

    public String getLatitudeString() {
        return Record.byteArrayToString(this.latitude, false);
    }

    public double getLongitude() {
        return Double.parseDouble(getLongitudeString());
    }

    public String getLongitudeString() {
        return Record.byteArrayToString(this.longitude, false);
    }

    @Override // org.xbill.DNS.Record
    public Record getObject() {
        return new GPOSRecord();
    }

    @Override // org.xbill.DNS.Record
    public void rdataFromString(Tokenizer tokenizer, Name name) throws TextParseException, WireParseException {
        try {
            this.longitude = Record.byteArrayFromString(tokenizer.getString());
            this.latitude = Record.byteArrayFromString(tokenizer.getString());
            this.altitude = Record.byteArrayFromString(tokenizer.getString());
            try {
                validate(getLongitude(), getLatitude());
            } catch (IllegalArgumentException e4) {
                throw new WireParseException(e4.getMessage());
            }
        } catch (TextParseException e5) {
            throw tokenizer.exception(e5.getMessage());
        }
    }

    @Override // org.xbill.DNS.Record
    public void rrFromWire(DNSInput dNSInput) throws WireParseException {
        this.longitude = dNSInput.readCountedString();
        this.latitude = dNSInput.readCountedString();
        this.altitude = dNSInput.readCountedString();
        try {
            validate(getLongitude(), getLatitude());
        } catch (IllegalArgumentException e4) {
            throw new WireParseException(e4.getMessage());
        }
    }

    @Override // org.xbill.DNS.Record
    public String rrToString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(Record.byteArrayToString(this.longitude, true));
        stringBuffer.append(" ");
        stringBuffer.append(Record.byteArrayToString(this.latitude, true));
        stringBuffer.append(" ");
        stringBuffer.append(Record.byteArrayToString(this.altitude, true));
        return stringBuffer.toString();
    }

    @Override // org.xbill.DNS.Record
    public void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z3) {
        dNSOutput.writeCountedString(this.longitude);
        dNSOutput.writeCountedString(this.latitude);
        dNSOutput.writeCountedString(this.altitude);
    }

    public GPOSRecord(Name name, int i4, long j4, double d4, double d5, double d6) {
        super(name, 27, i4, j4);
        validate(d4, d5);
        this.longitude = Double.toString(d4).getBytes();
        this.latitude = Double.toString(d5).getBytes();
        this.altitude = Double.toString(d6).getBytes();
    }

    public GPOSRecord(Name name, int i4, long j4, String str, String str2, String str3) {
        super(name, 27, i4, j4);
        try {
            this.longitude = Record.byteArrayFromString(str);
            this.latitude = Record.byteArrayFromString(str2);
            validate(getLongitude(), getLatitude());
            this.altitude = Record.byteArrayFromString(str3);
        } catch (TextParseException e4) {
            throw new IllegalArgumentException(e4.getMessage());
        }
    }
}
