package com.google.android.exoplayer2.ui;

import android.text.Html;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Pattern f1329a = Pattern.compile("(&#13;)?&#10;");

    /* JADX INFO: renamed from: com.google.android.exoplayer2.ui.b$b, reason: collision with other inner class name */
    public static class C0012b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f1330a;

        public C0012b(String str, Map map, a aVar) {
            this.f1330a = str;
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final Comparator<c> f1331e = p.a.f2918g;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final Comparator<c> f1332f = p.a.f2919h;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f1333a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f1334b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f1335c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final String f1336d;

        public c(int i4, int i5, String str, String str2, a aVar) {
            this.f1333a = i4;
            this.f1334b = i5;
            this.f1335c = str;
            this.f1336d = str2;
        }
    }

    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List<c> f1337a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List<c> f1338b = new ArrayList();
    }

    public static String a(CharSequence charSequence) {
        return f1329a.matcher(Html.escapeHtml(charSequence)).replaceAll("<br>");
    }
}
