package org.xbill.DNS;

import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class Update extends Message {
    private int dclass;
    private Name origin;

    public Update(Name name, int i4) {
        if (!name.isAbsolute()) {
            throw new RelativeNameException(name);
        }
        DClass.check(i4);
        getHeader().setOpcode(5);
        addRecord(Record.newRecord(name, 6, 1), 0);
        this.origin = name;
        this.dclass = i4;
    }

    private void newPrereq(Record record) {
        addRecord(record, 1);
    }

    private void newUpdate(Record record) {
        addRecord(record, 2);
    }

    public void absent(Name name) {
        newPrereq(Record.newRecord(name, 255, 254, 0L));
    }

    public void add(Name name, int i4, long j4, String str) {
        newUpdate(Record.fromString(name, i4, this.dclass, j4, str, this.origin));
    }

    public void delete(Name name) {
        newUpdate(Record.newRecord(name, 255, 255, 0L));
    }

    public void present(Name name) {
        newPrereq(Record.newRecord(name, 255, 255, 0L));
    }

    public void replace(Name name, int i4, long j4, String str) {
        delete(name, i4);
        add(name, i4, j4, str);
    }

    public void absent(Name name, int i4) {
        newPrereq(Record.newRecord(name, i4, 254, 0L));
    }

    public void add(Name name, int i4, long j4, Tokenizer tokenizer) {
        newUpdate(Record.fromString(name, i4, this.dclass, j4, tokenizer, this.origin));
    }

    public void delete(Name name, int i4) {
        newUpdate(Record.newRecord(name, i4, 255, 0L));
    }

    public void present(Name name, int i4) {
        newPrereq(Record.newRecord(name, i4, 255, 0L));
    }

    public void add(Record record) {
        newUpdate(record);
    }

    public void delete(Name name, int i4, String str) {
        newUpdate(Record.fromString(name, i4, 254, 0L, str, this.origin));
    }

    public void present(Name name, int i4, String str) {
        newPrereq(Record.fromString(name, i4, this.dclass, 0L, str, this.origin));
    }

    public void replace(Name name, int i4, long j4, Tokenizer tokenizer) {
        delete(name, i4);
        add(name, i4, j4, tokenizer);
    }

    public void add(Record[] recordArr) {
        for (Record record : recordArr) {
            add(record);
        }
    }

    public void delete(Name name, int i4, Tokenizer tokenizer) {
        newUpdate(Record.fromString(name, i4, 254, 0L, tokenizer, this.origin));
    }

    public void present(Name name, int i4, Tokenizer tokenizer) {
        newPrereq(Record.fromString(name, i4, this.dclass, 0L, tokenizer, this.origin));
    }

    public void delete(Record record) {
        newUpdate(record.withDClass(254, 0L));
    }

    public void present(Record record) {
        newPrereq(record);
    }

    public void replace(Record record) {
        delete(record.getName(), record.getType());
        add(record);
    }

    public void add(RRset rRset) {
        Iterator itRrs = rRset.rrs();
        while (itRrs.hasNext()) {
            add((Record) itRrs.next());
        }
    }

    public void delete(Record[] recordArr) {
        for (Record record : recordArr) {
            delete(record);
        }
    }

    public void replace(Record[] recordArr) {
        for (Record record : recordArr) {
            replace(record);
        }
    }

    public void delete(RRset rRset) {
        Iterator itRrs = rRset.rrs();
        while (itRrs.hasNext()) {
            delete((Record) itRrs.next());
        }
    }

    public void replace(RRset rRset) {
        delete(rRset.getName(), rRset.getType());
        Iterator itRrs = rRset.rrs();
        while (itRrs.hasNext()) {
            add((Record) itRrs.next());
        }
    }

    public Update(Name name) {
        this(name, 1);
    }
}
