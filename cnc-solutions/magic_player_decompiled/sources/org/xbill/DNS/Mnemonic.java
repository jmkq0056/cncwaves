package org.xbill.DNS;

import androidx.appcompat.widget.ActivityChooserView;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
class Mnemonic {
    public static final int CASE_LOWER = 3;
    public static final int CASE_SENSITIVE = 1;
    public static final int CASE_UPPER = 2;
    private static Integer[] cachedInts = new Integer[64];
    private String description;
    private boolean numericok;
    private String prefix;
    private int wordcase;
    private HashMap strings = new HashMap();
    private HashMap values = new HashMap();
    private int max = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;

    static {
        int i4 = 0;
        while (true) {
            Integer[] numArr = cachedInts;
            if (i4 >= numArr.length) {
                return;
            }
            numArr[i4] = new Integer(i4);
            i4++;
        }
    }

    public Mnemonic(String str, int i4) {
        this.description = str;
        this.wordcase = i4;
    }

    private int parseNumeric(String str) {
        try {
            int i4 = Integer.parseInt(str);
            if (i4 < 0) {
                return -1;
            }
            if (i4 <= this.max) {
                return i4;
            }
            return -1;
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    private String sanitize(String str) {
        int i4 = this.wordcase;
        return i4 == 2 ? str.toUpperCase() : i4 == 3 ? str.toLowerCase() : str;
    }

    public static Integer toInteger(int i4) {
        if (i4 >= 0) {
            Integer[] numArr = cachedInts;
            if (i4 < numArr.length) {
                return numArr[i4];
            }
        }
        return new Integer(i4);
    }

    public void add(int i4, String str) {
        check(i4);
        Integer integer = toInteger(i4);
        String strSanitize = sanitize(str);
        this.strings.put(strSanitize, integer);
        this.values.put(integer, strSanitize);
    }

    public void addAlias(int i4, String str) {
        check(i4);
        Integer integer = toInteger(i4);
        this.strings.put(sanitize(str), integer);
    }

    public void addAll(Mnemonic mnemonic) {
        if (this.wordcase == mnemonic.wordcase) {
            this.strings.putAll(mnemonic.strings);
            this.values.putAll(mnemonic.values);
        } else {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(mnemonic.description);
            stringBuffer.append(": wordcases do not match");
            throw new IllegalArgumentException(stringBuffer.toString());
        }
    }

    public void check(int i4) {
        if (i4 < 0 || i4 > this.max) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(this.description);
            stringBuffer.append(" ");
            stringBuffer.append(i4);
            stringBuffer.append("is out of range");
            throw new IllegalArgumentException(stringBuffer.toString());
        }
    }

    public String getText(int i4) {
        check(i4);
        String str = (String) this.values.get(toInteger(i4));
        if (str != null) {
            return str;
        }
        String string = Integer.toString(i4);
        if (this.prefix == null) {
            return string;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.prefix);
        stringBuffer.append(string);
        return stringBuffer.toString();
    }

    public int getValue(String str) {
        int numeric;
        String strSanitize = sanitize(str);
        Integer num = (Integer) this.strings.get(strSanitize);
        if (num != null) {
            return num.intValue();
        }
        String str2 = this.prefix;
        if (str2 != null && strSanitize.startsWith(str2) && (numeric = parseNumeric(strSanitize.substring(this.prefix.length()))) >= 0) {
            return numeric;
        }
        if (this.numericok) {
            return parseNumeric(strSanitize);
        }
        return -1;
    }

    public void setMaximum(int i4) {
        this.max = i4;
    }

    public void setNumericAllowed(boolean z3) {
        this.numericok = z3;
    }

    public void setPrefix(String str) {
        this.prefix = sanitize(str);
    }
}
