package org.xbill.DNS;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class OPTRecord extends Record {
    private static final long serialVersionUID = -6254521894809367938L;
    private List options;

    public OPTRecord() {
    }

    @Override // org.xbill.DNS.Record
    public boolean equals(Object obj) {
        return super.equals(obj) && this.ttl == ((OPTRecord) obj).ttl;
    }

    public int getExtendedRcode() {
        return (int) (this.ttl >>> 24);
    }

    public int getFlags() {
        return (int) (this.ttl & 65535);
    }

    @Override // org.xbill.DNS.Record
    public Record getObject() {
        return new OPTRecord();
    }

    public List getOptions() {
        List list = this.options;
        return list == null ? Collections.EMPTY_LIST : Collections.unmodifiableList(list);
    }

    public int getPayloadSize() {
        return this.dclass;
    }

    public int getVersion() {
        return (int) ((this.ttl >>> 16) & 255);
    }

    @Override // org.xbill.DNS.Record
    public void rdataFromString(Tokenizer tokenizer, Name name) throws TextParseException {
        throw tokenizer.exception("no text format defined for OPT");
    }

    @Override // org.xbill.DNS.Record
    public void rrFromWire(DNSInput dNSInput) throws WireParseException {
        if (dNSInput.remaining() > 0) {
            this.options = new ArrayList();
        }
        while (dNSInput.remaining() > 0) {
            this.options.add(EDNSOption.fromWire(dNSInput));
        }
    }

    @Override // org.xbill.DNS.Record
    public String rrToString() {
        StringBuffer stringBuffer = new StringBuffer();
        List list = this.options;
        if (list != null) {
            stringBuffer.append(list);
            stringBuffer.append(" ");
        }
        stringBuffer.append(" ; payload ");
        stringBuffer.append(getPayloadSize());
        stringBuffer.append(", xrcode ");
        stringBuffer.append(getExtendedRcode());
        stringBuffer.append(", version ");
        stringBuffer.append(getVersion());
        stringBuffer.append(", flags ");
        stringBuffer.append(getFlags());
        return stringBuffer.toString();
    }

    @Override // org.xbill.DNS.Record
    public void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z3) {
        List list = this.options;
        if (list == null) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((EDNSOption) it.next()).toWire(dNSOutput);
        }
    }

    public OPTRecord(int i4, int i5, int i6, int i7, List list) {
        super(Name.root, 41, i4, 0L);
        Record.checkU16("payloadSize", i4);
        Record.checkU8("xrcode", i5);
        Record.checkU8("version", i6);
        Record.checkU16("flags", i7);
        this.ttl = (((long) i5) << 24) + (((long) i6) << 16) + ((long) i7);
        if (list != null) {
            this.options = new ArrayList(list);
        }
    }

    public List getOptions(int i4) {
        List<EDNSOption> list = this.options;
        if (list == null) {
            return Collections.EMPTY_LIST;
        }
        List arrayList = Collections.EMPTY_LIST;
        for (EDNSOption eDNSOption : list) {
            if (eDNSOption.getCode() == i4) {
                if (arrayList == Collections.EMPTY_LIST) {
                    arrayList = new ArrayList();
                }
                arrayList.add(eDNSOption);
            }
        }
        return arrayList;
    }

    public OPTRecord(int i4, int i5, int i6, int i7) {
        this(i4, i5, i6, i7, null);
    }

    public OPTRecord(int i4, int i5, int i6) {
        this(i4, i5, i6, 0, null);
    }
}
