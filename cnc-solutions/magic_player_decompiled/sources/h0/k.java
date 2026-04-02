package h0;

import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import cn.huidu.lcd.render.model.extra.FontStyleNode;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<Object> f1840a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f1841b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f1842c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1843d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1844e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f1845f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f1846g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public FontStyleNode f1847h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public FontStyleNode f1848i;

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f1849a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1850b;

        public b() {
        }

        public b(a aVar) {
        }
    }

    public final String a(long j4, int i4) {
        StringBuilder sb = new StringBuilder(i4);
        String strValueOf = String.valueOf(j4);
        while (strValueOf.length() + sb.length() < i4) {
            sb.append("0");
        }
        sb.append(strValueOf);
        return sb.toString();
    }

    public final void b(SpannableStringBuilder spannableStringBuilder, int i4, int i5, FontStyleNode fontStyleNode) {
        spannableStringBuilder.setSpan(new AbsoluteSizeSpan(fontStyleNode.getFontSize()), i4, i5, 33);
        spannableStringBuilder.setSpan(new ForegroundColorSpan(fontStyleNode.getColor()), i4, i5, 33);
        if (fontStyleNode.getBgColor() != 0) {
            spannableStringBuilder.setSpan(new BackgroundColorSpan(fontStyleNode.getBgColor()), i4, i5, 33);
        }
        if (fontStyleNode.isBold() && fontStyleNode.isItalic()) {
            spannableStringBuilder.setSpan(new StyleSpan(3), i4, i5, 33);
        } else if (fontStyleNode.isBold()) {
            spannableStringBuilder.setSpan(new StyleSpan(1), i4, i5, 33);
        } else if (fontStyleNode.isItalic()) {
            spannableStringBuilder.setSpan(new StyleSpan(2), i4, i5, 33);
        }
        if (fontStyleNode.isUnderline()) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i4, i5, 33);
        }
    }
}
