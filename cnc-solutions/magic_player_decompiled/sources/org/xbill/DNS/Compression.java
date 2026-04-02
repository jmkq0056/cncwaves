package org.xbill.DNS;

import androidx.appcompat.widget.ActivityChooserView;
import java.io.PrintStream;

/* JADX INFO: loaded from: classes2.dex */
public class Compression {
    private static final int MAX_POINTER = 16383;
    private static final int TABLE_SIZE = 17;
    private boolean verbose = Options.check("verbosecompression");
    private Entry[] table = new Entry[17];

    public static class Entry {
        public Name name;
        public Entry next;
        public int pos;

        private Entry() {
        }
    }

    public void add(int i4, Name name) {
        if (i4 > MAX_POINTER) {
            return;
        }
        int iHashCode = (name.hashCode() & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) % 17;
        Entry entry = new Entry();
        entry.name = name;
        entry.pos = i4;
        Entry[] entryArr = this.table;
        entry.next = entryArr[iHashCode];
        entryArr[iHashCode] = entry;
        if (this.verbose) {
            PrintStream printStream = System.err;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Adding ");
            stringBuffer.append(name);
            stringBuffer.append(" at ");
            stringBuffer.append(i4);
            printStream.println(stringBuffer.toString());
        }
    }

    public int get(Name name) {
        int i4 = -1;
        for (Entry entry = this.table[(name.hashCode() & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) % 17]; entry != null; entry = entry.next) {
            if (entry.name.equals(name)) {
                i4 = entry.pos;
            }
        }
        if (this.verbose) {
            PrintStream printStream = System.err;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Looking for ");
            stringBuffer.append(name);
            stringBuffer.append(", found ");
            stringBuffer.append(i4);
            printStream.println(stringBuffer.toString());
        }
        return i4;
    }
}
