package org.xbill.DNS;

import java.io.IOException;
import java.io.Serializable;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
public class Zone implements Serializable {
    public static final int PRIMARY = 1;
    public static final int SECONDARY = 2;
    private static final long serialVersionUID = -9220510891189510942L;
    private RRset NS;
    private SOARecord SOA;
    private Map data;
    private int dclass;
    private boolean hasWild;
    private Name origin;
    private Object originNode;

    public class ZoneIterator implements Iterator {
        private int count;
        private RRset[] current;
        private boolean wantLastSOA;
        private Iterator zentries;

        public ZoneIterator(boolean z3) {
            synchronized (Zone.this) {
                this.zentries = Zone.this.data.entrySet().iterator();
            }
            this.wantLastSOA = z3;
            RRset[] rRsetArrAllRRsets = Zone.this.allRRsets(Zone.this.originNode);
            this.current = new RRset[rRsetArrAllRRsets.length];
            int i4 = 2;
            for (int i5 = 0; i5 < rRsetArrAllRRsets.length; i5++) {
                int type = rRsetArrAllRRsets[i5].getType();
                if (type == 6) {
                    this.current[0] = rRsetArrAllRRsets[i5];
                } else if (type == 2) {
                    this.current[1] = rRsetArrAllRRsets[i5];
                } else {
                    this.current[i4] = rRsetArrAllRRsets[i5];
                    i4++;
                }
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.current != null || this.wantLastSOA;
        }

        @Override // java.util.Iterator
        public Object next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            RRset[] rRsetArr = this.current;
            if (rRsetArr == null) {
                this.wantLastSOA = false;
                Zone zone = Zone.this;
                return zone.oneRRset(zone.originNode, 6);
            }
            int i4 = this.count;
            int i5 = i4 + 1;
            this.count = i5;
            RRset rRset = rRsetArr[i4];
            if (i5 == rRsetArr.length) {
                this.current = null;
                while (true) {
                    if (!this.zentries.hasNext()) {
                        break;
                    }
                    Map.Entry entry = (Map.Entry) this.zentries.next();
                    if (!entry.getKey().equals(Zone.this.origin)) {
                        RRset[] rRsetArrAllRRsets = Zone.this.allRRsets(entry.getValue());
                        if (rRsetArrAllRRsets.length != 0) {
                            this.current = rRsetArrAllRRsets;
                            this.count = 0;
                            break;
                        }
                    }
                }
            }
            return rRset;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public Zone(Name name, String str) throws IOException {
        this.dclass = 1;
        this.data = new TreeMap();
        if (name == null) {
            throw new IllegalArgumentException("no zone name specified");
        }
        Master master = new Master(str, name);
        this.origin = name;
        while (true) {
            Record recordNextRecord = master.nextRecord();
            if (recordNextRecord == null) {
                validate();
                return;
            }
            maybeAddRecord(recordNextRecord);
        }
    }

    private synchronized void addRRset(Name name, RRset rRset) {
        if (!this.hasWild && name.isWild()) {
            this.hasWild = true;
        }
        Object obj = this.data.get(name);
        if (obj == null) {
            this.data.put(name, rRset);
            return;
        }
        int type = rRset.getType();
        if (obj instanceof List) {
            List list = (List) obj;
            for (int i4 = 0; i4 < list.size(); i4++) {
                if (((RRset) list.get(i4)).getType() == type) {
                    list.set(i4, rRset);
                    return;
                }
            }
            list.add(rRset);
        } else {
            RRset rRset2 = (RRset) obj;
            if (rRset2.getType() == type) {
                this.data.put(name, rRset);
            } else {
                LinkedList linkedList = new LinkedList();
                linkedList.add(rRset2);
                linkedList.add(rRset);
                this.data.put(name, linkedList);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized RRset[] allRRsets(Object obj) {
        if (!(obj instanceof List)) {
            return new RRset[]{(RRset) obj};
        }
        List list = (List) obj;
        return (RRset[]) list.toArray(new RRset[list.size()]);
    }

    private synchronized Object exactName(Name name) {
        return this.data.get(name);
    }

    private synchronized RRset findRRset(Name name, int i4) {
        Object objExactName = exactName(name);
        if (objExactName == null) {
            return null;
        }
        return oneRRset(objExactName, i4);
    }

    private void fromXFR(ZoneTransferIn zoneTransferIn) throws IOException {
        this.data = new TreeMap();
        this.origin = zoneTransferIn.getName();
        Iterator it = zoneTransferIn.run().iterator();
        while (it.hasNext()) {
            maybeAddRecord((Record) it.next());
        }
        if (!zoneTransferIn.isAXFR()) {
            throw new IllegalArgumentException("zones can only be created from AXFRs");
        }
        validate();
    }

    private synchronized SetResponse lookup(Name name, int i4) {
        RRset rRsetOneRRset;
        RRset rRsetOneRRset2;
        if (!name.subdomain(this.origin)) {
            return SetResponse.ofType(1);
        }
        int iLabels = name.labels();
        int iLabels2 = this.origin.labels();
        int i5 = iLabels2;
        while (true) {
            int i6 = 0;
            if (i5 > iLabels) {
                if (this.hasWild) {
                    while (i6 < iLabels - iLabels2) {
                        i6++;
                        Object objExactName = exactName(name.wild(i6));
                        if (objExactName != null && (rRsetOneRRset = oneRRset(objExactName, i4)) != null) {
                            SetResponse setResponse = new SetResponse(6);
                            setResponse.addRRset(rRsetOneRRset);
                            return setResponse;
                        }
                    }
                }
                return SetResponse.ofType(1);
            }
            boolean z3 = i5 == iLabels2;
            boolean z4 = i5 == iLabels;
            Object objExactName2 = exactName(z3 ? this.origin : z4 ? name : new Name(name, iLabels - i5));
            if (objExactName2 != null) {
                if (!z3 && (rRsetOneRRset2 = oneRRset(objExactName2, 2)) != null) {
                    return new SetResponse(3, rRsetOneRRset2);
                }
                if (z4 && i4 == 255) {
                    SetResponse setResponse2 = new SetResponse(6);
                    RRset[] rRsetArrAllRRsets = allRRsets(objExactName2);
                    while (i6 < rRsetArrAllRRsets.length) {
                        setResponse2.addRRset(rRsetArrAllRRsets[i6]);
                        i6++;
                    }
                    return setResponse2;
                }
                if (z4) {
                    RRset rRsetOneRRset3 = oneRRset(objExactName2, i4);
                    if (rRsetOneRRset3 != null) {
                        SetResponse setResponse3 = new SetResponse(6);
                        setResponse3.addRRset(rRsetOneRRset3);
                        return setResponse3;
                    }
                    RRset rRsetOneRRset4 = oneRRset(objExactName2, 5);
                    if (rRsetOneRRset4 != null) {
                        return new SetResponse(4, rRsetOneRRset4);
                    }
                } else {
                    RRset rRsetOneRRset5 = oneRRset(objExactName2, 39);
                    if (rRsetOneRRset5 != null) {
                        return new SetResponse(5, rRsetOneRRset5);
                    }
                }
                if (z4) {
                    return SetResponse.ofType(2);
                }
            }
            i5++;
        }
    }

    private final void maybeAddRecord(Record record) throws IOException {
        int type = record.getType();
        Name name = record.getName();
        if (type != 6 || name.equals(this.origin)) {
            if (name.subdomain(this.origin)) {
                addRecord(record);
            }
        } else {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("SOA owner ");
            stringBuffer.append(name);
            stringBuffer.append(" does not match zone origin ");
            stringBuffer.append(this.origin);
            throw new IOException(stringBuffer.toString());
        }
    }

    private void nodeToString(StringBuffer stringBuffer, Object obj) {
        for (RRset rRset : allRRsets(obj)) {
            Iterator itRrs = rRset.rrs();
            while (itRrs.hasNext()) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append(itRrs.next());
                stringBuffer2.append("\n");
                stringBuffer.append(stringBuffer2.toString());
            }
            Iterator itSigs = rRset.sigs();
            while (itSigs.hasNext()) {
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append(itSigs.next());
                stringBuffer3.append("\n");
                stringBuffer.append(stringBuffer3.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized RRset oneRRset(Object obj, int i4) {
        if (i4 == 255) {
            throw new IllegalArgumentException("oneRRset(ANY)");
        }
        if (obj instanceof List) {
            List list = (List) obj;
            for (int i5 = 0; i5 < list.size(); i5++) {
                RRset rRset = (RRset) list.get(i5);
                if (rRset.getType() == i4) {
                    return rRset;
                }
            }
        } else {
            RRset rRset2 = (RRset) obj;
            if (rRset2.getType() == i4) {
                return rRset2;
            }
        }
        return null;
    }

    private synchronized void removeRRset(Name name, int i4) {
        Object obj = this.data.get(name);
        if (obj == null) {
            return;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            for (int i5 = 0; i5 < list.size(); i5++) {
                if (((RRset) list.get(i5)).getType() == i4) {
                    list.remove(i5);
                    if (list.size() == 0) {
                        this.data.remove(name);
                    }
                    return;
                }
            }
        } else if (((RRset) obj).getType() == i4) {
            this.data.remove(name);
        }
    }

    private void validate() throws IOException {
        Object objExactName = exactName(this.origin);
        this.originNode = objExactName;
        if (objExactName == null) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(this.origin);
            stringBuffer.append(": no data specified");
            throw new IOException(stringBuffer.toString());
        }
        RRset rRsetOneRRset = oneRRset(objExactName, 6);
        if (rRsetOneRRset == null || rRsetOneRRset.size() != 1) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(this.origin);
            stringBuffer2.append(": exactly 1 SOA must be specified");
            throw new IOException(stringBuffer2.toString());
        }
        this.SOA = (SOARecord) rRsetOneRRset.rrs().next();
        RRset rRsetOneRRset2 = oneRRset(this.originNode, 2);
        this.NS = rRsetOneRRset2;
        if (rRsetOneRRset2 != null) {
            return;
        }
        StringBuffer stringBuffer3 = new StringBuffer();
        stringBuffer3.append(this.origin);
        stringBuffer3.append(": no NS set specified");
        throw new IOException(stringBuffer3.toString());
    }

    public Iterator AXFR() {
        return new ZoneIterator(true);
    }

    public void addRecord(Record record) {
        Name name = record.getName();
        int rRsetType = record.getRRsetType();
        synchronized (this) {
            RRset rRsetFindRRset = findRRset(name, rRsetType);
            if (rRsetFindRRset == null) {
                addRRset(name, new RRset(record));
            } else {
                rRsetFindRRset.addRR(record);
            }
        }
    }

    public RRset findExactMatch(Name name, int i4) {
        Object objExactName = exactName(name);
        if (objExactName == null) {
            return null;
        }
        return oneRRset(objExactName, i4);
    }

    public SetResponse findRecords(Name name, int i4) {
        return lookup(name, i4);
    }

    public int getDClass() {
        return this.dclass;
    }

    public RRset getNS() {
        return this.NS;
    }

    public Name getOrigin() {
        return this.origin;
    }

    public SOARecord getSOA() {
        return this.SOA;
    }

    public Iterator iterator() {
        return new ZoneIterator(false);
    }

    public void removeRecord(Record record) {
        Name name = record.getName();
        int rRsetType = record.getRRsetType();
        synchronized (this) {
            RRset rRsetFindRRset = findRRset(name, rRsetType);
            if (rRsetFindRRset == null) {
                return;
            }
            if (rRsetFindRRset.size() == 1 && rRsetFindRRset.first().equals(record)) {
                removeRRset(name, rRsetType);
            } else {
                rRsetFindRRset.deleteRR(record);
            }
        }
    }

    public synchronized String toMasterFile() {
        StringBuffer stringBuffer;
        stringBuffer = new StringBuffer();
        nodeToString(stringBuffer, this.originNode);
        for (Map.Entry entry : this.data.entrySet()) {
            if (!this.origin.equals(entry.getKey())) {
                nodeToString(stringBuffer, entry.getValue());
            }
        }
        return stringBuffer.toString();
    }

    public String toString() {
        return toMasterFile();
    }

    public Zone(Name name, Record[] recordArr) throws IOException {
        this.dclass = 1;
        this.data = new TreeMap();
        if (name != null) {
            this.origin = name;
            for (Record record : recordArr) {
                maybeAddRecord(record);
            }
            validate();
            return;
        }
        throw new IllegalArgumentException("no zone name specified");
    }

    public Zone(ZoneTransferIn zoneTransferIn) throws IOException {
        this.dclass = 1;
        fromXFR(zoneTransferIn);
    }

    public Zone(Name name, int i4, String str) throws IOException {
        this.dclass = 1;
        ZoneTransferIn zoneTransferInNewAXFR = ZoneTransferIn.newAXFR(name, str, (TSIG) null);
        zoneTransferInNewAXFR.setDClass(i4);
        fromXFR(zoneTransferInNewAXFR);
    }

    public void addRRset(RRset rRset) {
        addRRset(rRset.getName(), rRset);
    }
}
