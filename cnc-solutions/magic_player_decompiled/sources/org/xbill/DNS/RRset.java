package org.xbill.DNS;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import v2.e;

/* JADX INFO: loaded from: classes2.dex */
public class RRset implements Serializable {
    private static final long serialVersionUID = -3270249290171239695L;
    private short nsigs;
    private short position;
    private List rrs;

    public RRset() {
        this.rrs = new ArrayList(1);
        this.nsigs = (short) 0;
        this.position = (short) 0;
    }

    private synchronized Iterator iterator(boolean z3, boolean z4) {
        int i4;
        int size = this.rrs.size();
        int i5 = z3 ? size - this.nsigs : this.nsigs;
        if (i5 == 0) {
            return Collections.EMPTY_LIST.iterator();
        }
        if (!z3) {
            i4 = size - this.nsigs;
        } else if (z4) {
            if (this.position >= i5) {
                this.position = (short) 0;
            }
            i4 = this.position;
            this.position = (short) (i4 + 1);
        } else {
            i4 = 0;
        }
        ArrayList arrayList = new ArrayList(i5);
        if (z3) {
            arrayList.addAll(this.rrs.subList(i4, i5));
            if (i4 != 0) {
                arrayList.addAll(this.rrs.subList(0, i4));
            }
        } else {
            arrayList.addAll(this.rrs.subList(i4, size));
        }
        return arrayList.iterator();
    }

    private String iteratorToString(Iterator it) {
        StringBuffer stringBuffer = new StringBuffer();
        while (it.hasNext()) {
            Record record = (Record) it.next();
            stringBuffer.append("[");
            stringBuffer.append(record.rdataToString());
            stringBuffer.append("]");
            if (it.hasNext()) {
                stringBuffer.append(" ");
            }
        }
        return stringBuffer.toString();
    }

    private void safeAddRR(Record record) {
        if (record instanceof RRSIGRecord) {
            this.rrs.add(record);
            this.nsigs = (short) (this.nsigs + 1);
        } else if (this.nsigs == 0) {
            this.rrs.add(record);
        } else {
            List list = this.rrs;
            list.add(list.size() - this.nsigs, record);
        }
    }

    public synchronized void addRR(Record record) {
        if (this.rrs.size() == 0) {
            safeAddRR(record);
            return;
        }
        Record recordFirst = first();
        if (!record.sameRRset(recordFirst)) {
            throw new IllegalArgumentException("record does not match rrset");
        }
        if (record.getTTL() != recordFirst.getTTL()) {
            if (record.getTTL() > recordFirst.getTTL()) {
                record = record.cloneRecord();
                record.setTTL(recordFirst.getTTL());
            } else {
                for (int i4 = 0; i4 < this.rrs.size(); i4++) {
                    Record recordCloneRecord = ((Record) this.rrs.get(i4)).cloneRecord();
                    recordCloneRecord.setTTL(record.getTTL());
                    this.rrs.set(i4, recordCloneRecord);
                }
            }
        }
        if (!this.rrs.contains(record)) {
            safeAddRR(record);
        }
    }

    public synchronized void clear() {
        this.rrs.clear();
        this.position = (short) 0;
        this.nsigs = (short) 0;
    }

    public synchronized void deleteRR(Record record) {
        if (this.rrs.remove(record) && (record instanceof RRSIGRecord)) {
            this.nsigs = (short) (this.nsigs - 1);
        }
    }

    public synchronized Record first() {
        if (this.rrs.size() == 0) {
            throw new IllegalStateException("rrset is empty");
        }
        return (Record) this.rrs.get(0);
    }

    public int getDClass() {
        return first().getDClass();
    }

    public Name getName() {
        return first().getName();
    }

    public synchronized long getTTL() {
        return first().getTTL();
    }

    public int getType() {
        return first().getRRsetType();
    }

    public synchronized Iterator rrs(boolean z3) {
        return iterator(true, z3);
    }

    public synchronized Iterator sigs() {
        return iterator(false, false);
    }

    public synchronized int size() {
        return this.rrs.size() - this.nsigs;
    }

    public String toString() {
        if (this.rrs.size() == 0) {
            return "{empty}";
        }
        StringBuffer stringBufferA = e.a("{ ");
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(getName());
        stringBuffer.append(" ");
        stringBufferA.append(stringBuffer.toString());
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append(getTTL());
        stringBuffer2.append(" ");
        stringBufferA.append(stringBuffer2.toString());
        StringBuffer stringBuffer3 = new StringBuffer();
        stringBuffer3.append(DClass.string(getDClass()));
        stringBuffer3.append(" ");
        stringBufferA.append(stringBuffer3.toString());
        StringBuffer stringBuffer4 = new StringBuffer();
        stringBuffer4.append(Type.string(getType()));
        stringBuffer4.append(" ");
        stringBufferA.append(stringBuffer4.toString());
        stringBufferA.append(iteratorToString(iterator(true, false)));
        if (this.nsigs > 0) {
            stringBufferA.append(" sigs: ");
            stringBufferA.append(iteratorToString(iterator(false, false)));
        }
        stringBufferA.append(" }");
        return stringBufferA.toString();
    }

    public synchronized Iterator rrs() {
        return iterator(true, true);
    }

    public RRset(Record record) {
        this();
        safeAddRR(record);
    }

    public RRset(RRset rRset) {
        synchronized (rRset) {
            this.rrs = (List) ((ArrayList) rRset.rrs).clone();
            this.nsigs = rRset.nsigs;
            this.position = rRset.position;
        }
    }
}
