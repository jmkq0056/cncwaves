package org.xbill.DNS;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.xbill.DNS.Tokenizer;

/* JADX INFO: loaded from: classes2.dex */
abstract class TXTBase extends Record {
    private static final long serialVersionUID = -4319510507246305931L;
    public List strings;

    public TXTBase() {
    }

    public List getStrings() {
        ArrayList arrayList = new ArrayList(this.strings.size());
        for (int i4 = 0; i4 < this.strings.size(); i4++) {
            arrayList.add(Record.byteArrayToString((byte[]) this.strings.get(i4), false));
        }
        return arrayList;
    }

    public List getStringsAsByteArrays() {
        return this.strings;
    }

    @Override // org.xbill.DNS.Record
    public void rdataFromString(Tokenizer tokenizer, Name name) throws TextParseException {
        this.strings = new ArrayList(2);
        while (true) {
            Tokenizer.Token token = tokenizer.get();
            if (!token.isString()) {
                tokenizer.unget();
                return;
            } else {
                try {
                    this.strings.add(Record.byteArrayFromString(token.value));
                } catch (TextParseException e4) {
                    throw tokenizer.exception(e4.getMessage());
                }
            }
        }
    }

    @Override // org.xbill.DNS.Record
    public void rrFromWire(DNSInput dNSInput) {
        this.strings = new ArrayList(2);
        while (dNSInput.remaining() > 0) {
            this.strings.add(dNSInput.readCountedString());
        }
    }

    @Override // org.xbill.DNS.Record
    public String rrToString() {
        StringBuffer stringBuffer = new StringBuffer();
        Iterator it = this.strings.iterator();
        while (it.hasNext()) {
            stringBuffer.append(Record.byteArrayToString((byte[]) it.next(), true));
            if (it.hasNext()) {
                stringBuffer.append(" ");
            }
        }
        return stringBuffer.toString();
    }

    @Override // org.xbill.DNS.Record
    public void rrToWire(DNSOutput dNSOutput, Compression compression, boolean z3) {
        Iterator it = this.strings.iterator();
        while (it.hasNext()) {
            dNSOutput.writeCountedString((byte[]) it.next());
        }
    }

    public TXTBase(Name name, int i4, int i5, long j4) {
        super(name, i4, i5, j4);
    }

    public TXTBase(Name name, int i4, int i5, long j4, List list) {
        super(name, i4, i5, j4);
        if (list != null) {
            this.strings = new ArrayList(list.size());
            Iterator it = list.iterator();
            while (it.hasNext()) {
                try {
                    this.strings.add(Record.byteArrayFromString((String) it.next()));
                } catch (TextParseException e4) {
                    throw new IllegalArgumentException(e4.getMessage());
                }
            }
            return;
        }
        throw new IllegalArgumentException("strings must not be null");
    }

    public TXTBase(Name name, int i4, int i5, long j4, String str) {
        this(name, i4, i5, j4, Collections.singletonList(str));
    }
}
