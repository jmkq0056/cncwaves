package org.xbill.DNS;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import v2.e;

/* JADX INFO: loaded from: classes2.dex */
public class Message implements Cloneable {
    public static final int MAXLENGTH = 65535;
    public static final int TSIG_FAILED = 4;
    public static final int TSIG_INTERMEDIATE = 2;
    public static final int TSIG_SIGNED = 3;
    public static final int TSIG_UNSIGNED = 0;
    public static final int TSIG_VERIFIED = 1;
    private Header header;
    private TSIGRecord querytsig;
    private List[] sections;
    public int sig0start;
    private int size;
    public int tsigState;
    private int tsigerror;
    private TSIG tsigkey;
    public int tsigstart;
    private static Record[] emptyRecordArray = new Record[0];
    private static RRset[] emptyRRsetArray = new RRset[0];

    private Message(Header header) {
        this.sections = new List[4];
        this.header = header;
    }

    public static Message newQuery(Record record) {
        Message message = new Message();
        message.header.setOpcode(0);
        message.header.setFlag(7);
        message.addRecord(record, 0);
        return message;
    }

    public static Message newUpdate(Name name) {
        return new Update(name);
    }

    private static boolean sameSet(Record record, Record record2) {
        return record.getRRsetType() == record2.getRRsetType() && record.getDClass() == record2.getDClass() && record.getName().equals(record2.getName());
    }

    private int sectionToWire(DNSOutput dNSOutput, int i4, Compression compression, int i5) {
        int size = this.sections[i4].size();
        int iCurrent = dNSOutput.current();
        Record record = null;
        int i6 = 0;
        int i7 = 0;
        for (int i8 = 0; i8 < size; i8++) {
            Record record2 = (Record) this.sections[i4].get(i8);
            if (i4 != 3 || !(record2 instanceof OPTRecord)) {
                if (record != null && !sameSet(record2, record)) {
                    iCurrent = dNSOutput.current();
                    i7 = i6;
                }
                record2.toWire(dNSOutput, i4, compression);
                if (dNSOutput.current() > i5) {
                    dNSOutput.jump(iCurrent);
                    return size - i7;
                }
                i6++;
                record = record2;
            }
        }
        return size - i6;
    }

    public void addRecord(Record record, int i4) {
        List[] listArr = this.sections;
        if (listArr[i4] == null) {
            listArr[i4] = new LinkedList();
        }
        this.header.incCount(i4);
        this.sections[i4].add(record);
    }

    public Object clone() {
        Message message = new Message();
        int i4 = 0;
        while (true) {
            List[] listArr = this.sections;
            if (i4 >= listArr.length) {
                message.header = (Header) this.header.clone();
                message.size = this.size;
                return message;
            }
            if (listArr[i4] != null) {
                message.sections[i4] = new LinkedList(this.sections[i4]);
            }
            i4++;
        }
    }

    public boolean findRRset(Name name, int i4, int i5) {
        if (this.sections[i5] == null) {
            return false;
        }
        for (int i6 = 0; i6 < this.sections[i5].size(); i6++) {
            Record record = (Record) this.sections[i5].get(i6);
            if (record.getType() == i4 && name.equals(record.getName())) {
                return true;
            }
        }
        return false;
    }

    public boolean findRecord(Record record, int i4) {
        List[] listArr = this.sections;
        return listArr[i4] != null && listArr[i4].contains(record);
    }

    public Header getHeader() {
        return this.header;
    }

    public OPTRecord getOPT() {
        Record[] sectionArray = getSectionArray(3);
        for (int i4 = 0; i4 < sectionArray.length; i4++) {
            if (sectionArray[i4] instanceof OPTRecord) {
                return (OPTRecord) sectionArray[i4];
            }
        }
        return null;
    }

    public Record getQuestion() {
        List list = this.sections[0];
        if (list == null || list.size() == 0) {
            return null;
        }
        return (Record) list.get(0);
    }

    public int getRcode() {
        int rcode = this.header.getRcode();
        OPTRecord opt = getOPT();
        return opt != null ? rcode + (opt.getExtendedRcode() << 4) : rcode;
    }

    public Record[] getSectionArray(int i4) {
        List[] listArr = this.sections;
        if (listArr[i4] == null) {
            return emptyRecordArray;
        }
        List list = listArr[i4];
        return (Record[]) list.toArray(new Record[list.size()]);
    }

    public RRset[] getSectionRRsets(int i4) {
        if (this.sections[i4] == null) {
            return emptyRRsetArray;
        }
        LinkedList linkedList = new LinkedList();
        Record[] sectionArray = getSectionArray(i4);
        HashSet hashSet = new HashSet();
        for (int i5 = 0; i5 < sectionArray.length; i5++) {
            Name name = sectionArray[i5].getName();
            boolean z3 = true;
            if (hashSet.contains(name)) {
                int size = linkedList.size() - 1;
                while (true) {
                    if (size < 0) {
                        break;
                    }
                    RRset rRset = (RRset) linkedList.get(size);
                    if (rRset.getType() == sectionArray[i5].getRRsetType() && rRset.getDClass() == sectionArray[i5].getDClass() && rRset.getName().equals(name)) {
                        rRset.addRR(sectionArray[i5]);
                        z3 = false;
                        break;
                    }
                    size--;
                }
            }
            if (z3) {
                linkedList.add(new RRset(sectionArray[i5]));
                hashSet.add(name);
            }
        }
        return (RRset[]) linkedList.toArray(new RRset[linkedList.size()]);
    }

    public TSIGRecord getTSIG() {
        int count = this.header.getCount(3);
        if (count == 0) {
            return null;
        }
        Record record = (Record) this.sections[3].get(count - 1);
        if (record.type != 250) {
            return null;
        }
        return (TSIGRecord) record;
    }

    public boolean isSigned() {
        int i4 = this.tsigState;
        return i4 == 3 || i4 == 1 || i4 == 4;
    }

    public boolean isVerified() {
        return this.tsigState == 1;
    }

    public int numBytes() {
        return this.size;
    }

    public void removeAllRecords(int i4) {
        this.sections[i4] = null;
        this.header.setCount(i4, 0);
    }

    public boolean removeRecord(Record record, int i4) {
        List[] listArr = this.sections;
        if (listArr[i4] == null || !listArr[i4].remove(record)) {
            return false;
        }
        this.header.decCount(i4);
        return true;
    }

    public String sectionToString(int i4) {
        if (i4 > 3) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (Record record : getSectionArray(i4)) {
            if (i4 == 0) {
                StringBuffer stringBufferA = e.a(";;\t");
                stringBufferA.append(record.name);
                stringBuffer.append(stringBufferA.toString());
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append(", type = ");
                stringBuffer2.append(Type.string(record.type));
                stringBuffer.append(stringBuffer2.toString());
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append(", class = ");
                stringBuffer3.append(DClass.string(record.dclass));
                stringBuffer.append(stringBuffer3.toString());
            } else {
                stringBuffer.append(record);
            }
            stringBuffer.append("\n");
        }
        return stringBuffer.toString();
    }

    public void setHeader(Header header) {
        this.header = header;
    }

    public void setTSIG(TSIG tsig, int i4, TSIGRecord tSIGRecord) {
        this.tsigkey = tsig;
        this.tsigerror = i4;
        this.querytsig = tSIGRecord;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        if (getOPT() != null) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(this.header.toStringWithRcode(getRcode()));
            stringBuffer2.append("\n");
            stringBuffer.append(stringBuffer2.toString());
        } else {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append(this.header);
            stringBuffer3.append("\n");
            stringBuffer.append(stringBuffer3.toString());
        }
        if (isSigned()) {
            stringBuffer.append(";; TSIG ");
            if (isVerified()) {
                stringBuffer.append("ok");
            } else {
                stringBuffer.append("invalid");
            }
            stringBuffer.append('\n');
        }
        for (int i4 = 0; i4 < 4; i4++) {
            if (this.header.getOpcode() != 5) {
                StringBuffer stringBufferA = e.a(";; ");
                stringBufferA.append(Section.longString(i4));
                stringBufferA.append(":\n");
                stringBuffer.append(stringBufferA.toString());
            } else {
                StringBuffer stringBufferA2 = e.a(";; ");
                stringBufferA2.append(Section.updString(i4));
                stringBufferA2.append(":\n");
                stringBuffer.append(stringBufferA2.toString());
            }
            StringBuffer stringBuffer4 = new StringBuffer();
            stringBuffer4.append(sectionToString(i4));
            stringBuffer4.append("\n");
            stringBuffer.append(stringBuffer4.toString());
        }
        StringBuffer stringBufferA3 = e.a(";; Message size: ");
        stringBufferA3.append(numBytes());
        stringBufferA3.append(" bytes");
        stringBuffer.append(stringBufferA3.toString());
        return stringBuffer.toString();
    }

    public void toWire(DNSOutput dNSOutput) {
        this.header.toWire(dNSOutput);
        Compression compression = new Compression();
        for (int i4 = 0; i4 < 4; i4++) {
            if (this.sections[i4] != null) {
                for (int i5 = 0; i5 < this.sections[i4].size(); i5++) {
                    ((Record) this.sections[i4].get(i5)).toWire(dNSOutput, i4, compression);
                }
            }
        }
    }

    public boolean findRecord(Record record) {
        for (int i4 = 1; i4 <= 3; i4++) {
            List[] listArr = this.sections;
            if (listArr[i4] != null && listArr[i4].contains(record)) {
                return true;
            }
        }
        return false;
    }

    public Message(int i4) {
        this(new Header(i4));
    }

    public Message() {
        this(new Header());
    }

    public boolean findRRset(Name name, int i4) {
        return findRRset(name, i4, 1) || findRRset(name, i4, 2) || findRRset(name, i4, 3);
    }

    public Message(DNSInput dNSInput) throws WireParseException {
        this(new Header(dNSInput));
        boolean z3 = this.header.getOpcode() == 5;
        boolean flag = this.header.getFlag(6);
        for (int i4 = 0; i4 < 4; i4++) {
            try {
                int count = this.header.getCount(i4);
                if (count > 0) {
                    this.sections[i4] = new ArrayList(count);
                }
                for (int i5 = 0; i5 < count; i5++) {
                    int iCurrent = dNSInput.current();
                    Record recordFromWire = Record.fromWire(dNSInput, i4, z3);
                    this.sections[i4].add(recordFromWire);
                    if (i4 == 3) {
                        if (recordFromWire.getType() == 250) {
                            this.tsigstart = iCurrent;
                        }
                        if (recordFromWire.getType() == 24 && ((SIGRecord) recordFromWire).getTypeCovered() == 0) {
                            this.sig0start = iCurrent;
                        }
                    }
                }
            } catch (WireParseException e4) {
                if (!flag) {
                    throw e4;
                }
            }
        }
        this.size = dNSInput.current();
    }

    private boolean toWire(DNSOutput dNSOutput, int i4) {
        if (i4 < 12) {
            return false;
        }
        TSIG tsig = this.tsigkey;
        if (tsig != null) {
            i4 -= tsig.recordLength();
        }
        OPTRecord opt = getOPT();
        byte[] wire = null;
        if (opt != null) {
            wire = opt.toWire(3);
            i4 -= wire.length;
        }
        int iCurrent = dNSOutput.current();
        this.header.toWire(dNSOutput);
        Compression compression = new Compression();
        int flagsByte = this.header.getFlagsByte();
        int i5 = 0;
        int count = 0;
        while (true) {
            if (i5 >= 4) {
                break;
            }
            if (this.sections[i5] != null) {
                int iSectionToWire = sectionToWire(dNSOutput, i5, compression, i4);
                if (iSectionToWire != 0 && i5 != 3) {
                    flagsByte = Header.setFlag(flagsByte, 6, true);
                    int count2 = this.header.getCount(i5) - iSectionToWire;
                    int i6 = iCurrent + 4;
                    dNSOutput.writeU16At(count2, (i5 * 2) + i6);
                    for (int i7 = i5 + 1; i7 < 3; i7++) {
                        dNSOutput.writeU16At(0, (i7 * 2) + i6);
                    }
                } else if (i5 == 3) {
                    count = this.header.getCount(i5) - iSectionToWire;
                }
            }
            i5++;
        }
        if (wire != null) {
            dNSOutput.writeByteArray(wire);
            count++;
        }
        if (flagsByte != this.header.getFlagsByte()) {
            dNSOutput.writeU16At(flagsByte, iCurrent + 2);
        }
        if (count != this.header.getCount(3)) {
            dNSOutput.writeU16At(count, iCurrent + 10);
        }
        TSIG tsig2 = this.tsigkey;
        if (tsig2 != null) {
            tsig2.generate(this, dNSOutput.toByteArray(), this.tsigerror, this.querytsig).toWire(dNSOutput, 3, compression);
            dNSOutput.writeU16At(count + 1, iCurrent + 10);
        }
        return true;
    }

    public Message(byte[] bArr) {
        this(new DNSInput(bArr));
    }

    public Message(ByteBuffer byteBuffer) {
        this(new DNSInput(byteBuffer));
    }

    public byte[] toWire() {
        DNSOutput dNSOutput = new DNSOutput();
        toWire(dNSOutput);
        this.size = dNSOutput.current();
        return dNSOutput.toByteArray();
    }

    public byte[] toWire(int i4) {
        DNSOutput dNSOutput = new DNSOutput();
        toWire(dNSOutput, i4);
        this.size = dNSOutput.current();
        return dNSOutput.toByteArray();
    }
}
