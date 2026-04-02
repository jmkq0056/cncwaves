package org.eclipse.jetty.util;

import java.net.URI;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public abstract class PatternMatcher {
    public void match(Pattern pattern, URI[] uriArr, boolean z3) {
        if (uriArr != null) {
            String[] strArrSplit = pattern == null ? null : pattern.pattern().split(",");
            ArrayList arrayList = new ArrayList();
            for (int i4 = 0; strArrSplit != null && i4 < strArrSplit.length; i4++) {
                arrayList.add(Pattern.compile(strArrSplit[i4]));
            }
            if (arrayList.isEmpty()) {
                arrayList.add(pattern);
            }
            if (arrayList.isEmpty()) {
                matchPatterns(null, uriArr, z3);
                return;
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                matchPatterns((Pattern) it.next(), uriArr, z3);
            }
        }
    }

    public void matchPatterns(Pattern pattern, URI[] uriArr, boolean z3) {
        for (int i4 = 0; i4 < uriArr.length; i4++) {
            String string = uriArr[i4].toString();
            if ((pattern == null && z3) || (pattern != null && pattern.matcher(string).matches())) {
                matched(uriArr[i4]);
            }
        }
    }

    public abstract void matched(URI uri);
}
