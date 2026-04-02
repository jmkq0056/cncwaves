package org.xbill.DNS;

/* JADX INFO: loaded from: classes2.dex */
public class RPRecord extends Record {
    private static final long serialVersionUID = 8124584364211337460L;
    private Name mailbox;
    private Name textDomain;

    public RPRecord() {
    }

    public Name getMailbox() {
        return this.mailbox;
    }

    @Override // org.xbill.DNS.Record
    public Record getObject() {
        return new RPRecord();
    }

    public Name getTextDomain() {
        return this.textDomain;
    }

    @Override // org.xbill.DNS.Record
    public void rdataFromString(Tokenizer tokenizer, Name name) {
        this.mailbox = tokenizer.getName(name);
        this.textDomain = tokenizer.getName(name);
    }

    @Override // org.xbill.DNS.Record
    public void rrFromWire(DNSInput dNSInput) {
        this.mailbox = new Name(dNSInput);
        this.textDomain = new Name(dNSInput);
    }

    @Override // org.xbill.DNS.Record
    public String rrToString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.mailbox);
        stringBuffer.append(" ");
        stringBuffer.append(this.textDomain);
        return stringBuffer.toString();
    }

    @Override // org.xbill.DNS.Record
    public void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z3) {
        this.mailbox.toWire(dNSOutput, null, z3);
        this.textDomain.toWire(dNSOutput, null, z3);
    }

    public RPRecord(Name name, int i4, long j4, Name name2, Name name3) {
        super(name, 17, i4, j4);
        this.mailbox = Record.checkName("mailbox", name2);
        this.textDomain = Record.checkName("textDomain", name3);
    }
}
