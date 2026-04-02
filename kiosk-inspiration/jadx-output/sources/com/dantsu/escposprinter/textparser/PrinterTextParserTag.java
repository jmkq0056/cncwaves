package com.dantsu.escposprinter.textparser;

import com.google.firebase.sessions.settings.RemoteSettings;
import java.util.Hashtable;

/* JADX INFO: loaded from: classes.dex */
public class PrinterTextParserTag {
    private Hashtable<String, String> attributes = new Hashtable<>();
    private boolean isCloseTag;
    private int length;
    private String tagName;

    public PrinterTextParserTag(String str) {
        this.tagName = "";
        this.length = 0;
        this.isCloseTag = false;
        String strTrim = str.trim();
        if (strTrim.substring(0, 1).equals("<") && strTrim.substring(strTrim.length() - 1).equals(">")) {
            this.length = strTrim.length();
            int iIndexOf = strTrim.indexOf("<");
            int iIndexOf2 = strTrim.indexOf(">");
            int iIndexOf3 = strTrim.indexOf(" ");
            if (iIndexOf3 != -1 && iIndexOf3 < iIndexOf2) {
                this.tagName = strTrim.substring(iIndexOf + 1, iIndexOf3).toLowerCase();
                String strTrim2 = strTrim.substring(iIndexOf3, iIndexOf2).trim();
                while (strTrim2.contains("='")) {
                    int iIndexOf4 = strTrim2.indexOf("='");
                    int i = iIndexOf4 + 2;
                    int iIndexOf5 = strTrim2.indexOf("'", i);
                    String strSubstring = strTrim2.substring(0, iIndexOf4);
                    String strSubstring2 = strTrim2.substring(i, iIndexOf5);
                    if (!strSubstring.equals("")) {
                        this.attributes.put(strSubstring, strSubstring2);
                    }
                    strTrim2 = strTrim2.substring(iIndexOf5 + 1).trim();
                }
            } else {
                this.tagName = strTrim.substring(iIndexOf + 1, iIndexOf2).toLowerCase();
            }
            if (this.tagName.substring(0, 1).equals(RemoteSettings.FORWARD_SLASH_STRING)) {
                this.tagName = this.tagName.substring(1);
                this.isCloseTag = true;
            }
        }
    }

    public String getTagName() {
        return this.tagName;
    }

    public Hashtable<String, String> getAttributes() {
        return this.attributes;
    }

    public String getAttribute(String str) {
        return this.attributes.get(str);
    }

    public boolean hasAttribute(String str) {
        return this.attributes.containsKey(str);
    }

    public int getLength() {
        return this.length;
    }

    public boolean isCloseTag() {
        return this.isCloseTag;
    }
}
