package org.eclipse.jetty.server;

import java.util.Enumeration;
import java.util.List;
import java.util.StringTokenizer;
import org.eclipse.jetty.http.HttpHeaderValues;
import org.eclipse.jetty.util.LazyList;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.fourthline.cling.model.message.header.ContentRangeHeader;

/* JADX INFO: loaded from: classes2.dex */
public class InclusiveByteRange {
    private static final Logger LOG = Log.getLogger((Class<?>) InclusiveByteRange.class);
    public long first;
    public long last;

    public InclusiveByteRange(long j4, long j5) {
        this.first = 0L;
        this.last = 0L;
        this.first = j4;
        this.last = j5;
    }

    public static List satisfiableRanges(Enumeration enumeration, long j4) {
        int iIndexOf;
        long j5;
        long j6;
        Object obj = null;
        while (enumeration.hasMoreElements()) {
            StringTokenizer stringTokenizer = new StringTokenizer((String) enumeration.nextElement(), "=,", false);
            Object objAdd = obj;
            String strTrim = null;
            while (true) {
                try {
                    if (stringTokenizer.hasMoreTokens()) {
                        try {
                            strTrim = stringTokenizer.nextToken().trim();
                            iIndexOf = strTrim.indexOf(45);
                        } catch (NumberFormatException e4) {
                            Logger logger = LOG;
                            logger.warn("Bad range format: {}", strTrim);
                            logger.ignore(e4);
                        }
                        if (iIndexOf >= 0) {
                            int i4 = iIndexOf + 1;
                            if (strTrim.indexOf("-", i4) < 0) {
                                if (iIndexOf == 0) {
                                    if (i4 < strTrim.length()) {
                                        j6 = Long.parseLong(strTrim.substring(i4).trim());
                                        j5 = -1;
                                    } else {
                                        LOG.warn("Bad range format: {}", strTrim);
                                    }
                                } else if (i4 < strTrim.length()) {
                                    j5 = Long.parseLong(strTrim.substring(0, iIndexOf).trim());
                                    j6 = Long.parseLong(strTrim.substring(i4).trim());
                                } else {
                                    j5 = Long.parseLong(strTrim.substring(0, iIndexOf).trim());
                                    j6 = -1;
                                }
                                if ((j5 != -1 || j6 != -1) && (j5 == -1 || j6 == -1 || j5 <= j6)) {
                                    if (j5 < j4) {
                                        objAdd = LazyList.add(objAdd, new InclusiveByteRange(j5, j6));
                                    }
                                }
                            }
                        }
                        if (!HttpHeaderValues.BYTES.equals(strTrim)) {
                            LOG.warn("Bad range format: {}", strTrim);
                            break;
                        }
                    }
                } catch (Exception e5) {
                    Logger logger2 = LOG;
                    logger2.warn("Bad range format: {}", strTrim);
                    logger2.ignore(e5);
                }
            }
            obj = objAdd;
        }
        return LazyList.getList(obj, true);
    }

    public static String to416HeaderRangeString(long j4) {
        StringBuilder sb = new StringBuilder(40);
        sb.append("bytes */");
        sb.append(j4);
        return sb.toString();
    }

    public long getFirst() {
        return this.first;
    }

    public long getLast() {
        return this.last;
    }

    public long getSize(long j4) {
        return (getLast(j4) - getFirst(j4)) + 1;
    }

    public String toHeaderRangeString(long j4) {
        StringBuilder sb = new StringBuilder(40);
        sb.append(ContentRangeHeader.PREFIX);
        sb.append(getFirst(j4));
        sb.append('-');
        sb.append(getLast(j4));
        sb.append("/");
        sb.append(j4);
        return sb.toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(60);
        sb.append(Long.toString(this.first));
        sb.append(":");
        sb.append(Long.toString(this.last));
        return sb.toString();
    }

    public long getFirst(long j4) {
        long j5 = this.first;
        if (j5 >= 0) {
            return j5;
        }
        long j6 = j4 - this.last;
        if (j6 < 0) {
            return 0L;
        }
        return j6;
    }

    public long getLast(long j4) {
        if (this.first < 0) {
            return j4 - 1;
        }
        long j5 = this.last;
        return (j5 < 0 || j5 >= j4) ? j4 - 1 : j5;
    }
}
