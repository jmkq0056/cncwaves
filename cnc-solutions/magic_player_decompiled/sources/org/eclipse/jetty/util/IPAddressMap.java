package org.eclipse.jetty.util;

import android.support.v4.media.d;
import androidx.appcompat.view.a;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes2.dex */
public class IPAddressMap<TYPE> extends HashMap<String, TYPE> {
    private final HashMap<String, IPAddrPattern> _patterns;

    public static class IPAddrPattern {
        private final OctetPattern[] _octets = new OctetPattern[4];

        public IPAddrPattern(String str) {
            if (str == null || str.trim().length() == 0) {
                throw new IllegalArgumentException(a.a("Invalid IP address pattern: ", str));
            }
            try {
                StringTokenizer stringTokenizer = new StringTokenizer(str, ".");
                for (int i4 = 0; i4 < 4; i4++) {
                    String str2 = "0-255";
                    String strTrim = stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken().trim() : "0-255";
                    int length = strTrim.length();
                    if (length == 0 && stringTokenizer.hasMoreTokens()) {
                        throw new IllegalArgumentException("Invalid IP address pattern: " + str);
                    }
                    OctetPattern[] octetPatternArr = this._octets;
                    if (length != 0) {
                        str2 = strTrim;
                    }
                    octetPatternArr[i4] = new OctetPattern(str2);
                }
            } catch (IllegalArgumentException e4) {
                throw new IllegalArgumentException(a.a("Invalid IP address pattern: ", str), e4);
            }
        }

        public boolean match(String str) {
            if (str == null || str.trim().length() == 0) {
                throw new IllegalArgumentException(a.a("Invalid IP address: ", str));
            }
            try {
                StringTokenizer stringTokenizer = new StringTokenizer(str, ".");
                boolean zMatch = true;
                for (int i4 = 0; i4 < 4; i4++) {
                    if (!stringTokenizer.hasMoreTokens()) {
                        throw new IllegalArgumentException("Invalid IP address: " + str);
                    }
                    zMatch &= this._octets[i4].match(stringTokenizer.nextToken());
                    if (!zMatch) {
                        break;
                    }
                }
                return zMatch;
            } catch (IllegalArgumentException e4) {
                throw new IllegalArgumentException(a.a("Invalid IP address: ", str), e4);
            }
        }
    }

    public IPAddressMap() {
        super(11);
        this._patterns = new HashMap<>();
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public TYPE get(Object obj) {
        return (TYPE) super.get(obj);
    }

    public Object getLazyMatches(String str) {
        if (str == null) {
            return LazyList.getList(super.entrySet());
        }
        Object objAdd = null;
        for (Map.Entry entry : super.entrySet()) {
            if (this._patterns.get(entry.getKey()).match(str)) {
                objAdd = LazyList.add(objAdd, entry);
            }
        }
        return objAdd;
    }

    public Map.Entry<String, TYPE> getMatch(String str) {
        if (str == null) {
            return null;
        }
        for (Map.Entry<String, TYPE> entry : super.entrySet()) {
            if (this._patterns.get(entry.getKey()).match(str)) {
                return entry;
            }
        }
        return null;
    }

    public TYPE match(String str) {
        Map.Entry<String, TYPE> match = getMatch(str);
        if (match == null) {
            return null;
        }
        return match.getValue();
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public TYPE put(String str, TYPE type) {
        if (str == null || str.trim().length() == 0) {
            throw new IllegalArgumentException(a.a("Invalid IP address pattern: ", str));
        }
        String strTrim = str.trim();
        if (this._patterns.get(strTrim) == null) {
            this._patterns.put(strTrim, new IPAddrPattern(strTrim));
        }
        return (TYPE) super.put(strTrim, type);
    }

    public IPAddressMap(int i4) {
        super(i4);
        this._patterns = new HashMap<>();
    }

    public static class OctetPattern extends BitSet {
        private final BitSet _mask;

        public OctetPattern(String str) {
            BitSet bitSet = new BitSet(256);
            this._mask = bitSet;
            if (str != null) {
                try {
                    String strTrim = str.trim();
                    if (strTrim.length() == 0) {
                        bitSet.set(0, 255);
                        return;
                    }
                    StringTokenizer stringTokenizer = new StringTokenizer(strTrim, ",");
                    while (stringTokenizer.hasMoreTokens()) {
                        String strTrim2 = stringTokenizer.nextToken().trim();
                        if (strTrim2.length() > 0) {
                            if (strTrim2.indexOf(45) < 0) {
                                this._mask.set(Integer.valueOf(strTrim2).intValue());
                            } else {
                                String[] strArrSplit = strTrim2.split("-", -2);
                                if (strArrSplit.length != 2) {
                                    throw new IllegalArgumentException("Invalid octet spec: " + str);
                                }
                                int i4 = strArrSplit[0].length() > 0 ? Integer.parseInt(strArrSplit[0]) : 0;
                                int i5 = strArrSplit[1].length() > 0 ? Integer.parseInt(strArrSplit[1]) : 255;
                                if (i4 > i5) {
                                    throw new IllegalArgumentException("Invalid octet spec: " + str);
                                }
                                this._mask.set(i4, i5 + 1);
                            }
                        }
                    }
                } catch (NumberFormatException e4) {
                    throw new IllegalArgumentException(a.a("Invalid octet spec: ", str), e4);
                }
            }
        }

        public boolean match(String str) {
            if (str == null || str.trim().length() == 0) {
                throw new IllegalArgumentException(a.a("Invalid octet: ", str));
            }
            try {
                return match(Integer.parseInt(str));
            } catch (NumberFormatException unused) {
                throw new IllegalArgumentException(a.a("Invalid octet: ", str));
            }
        }

        public boolean match(int i4) {
            if (i4 >= 0 && i4 <= 255) {
                return this._mask.get(i4);
            }
            throw new IllegalArgumentException(d.a("Invalid octet: ", i4));
        }
    }
}
