package org.xbill.DNS;

import org.xbill.DNS.utils.base16;
import v2.e;

/* JADX INFO: loaded from: classes2.dex */
public class GenericEDNSOption extends EDNSOption {
    private byte[] data;

    public GenericEDNSOption(int i4) {
        super(i4);
    }

    @Override // org.xbill.DNS.EDNSOption
    public void optionFromWire(DNSInput dNSInput) {
        this.data = dNSInput.readByteArray();
    }

    @Override // org.xbill.DNS.EDNSOption
    public String optionToString() {
        StringBuffer stringBufferA = e.a("<");
        stringBufferA.append(base16.toString(this.data));
        stringBufferA.append(">");
        return stringBufferA.toString();
    }

    @Override // org.xbill.DNS.EDNSOption
    public void optionToWire(DNSOutput dNSOutput) {
        dNSOutput.writeByteArray(this.data);
    }

    public GenericEDNSOption(int i4, byte[] bArr) {
        super(i4);
        this.data = Record.checkByteArrayLength("option data", bArr, 65535);
    }
}
