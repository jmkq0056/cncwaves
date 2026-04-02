package androidx.core.content.res;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.Log;
import android.util.StateSet;
import android.util.Xml;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.XmlRes;
import androidx.core.R;
import androidx.core.view.ViewCompat;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
public final class ColorStateListInflaterCompat {
    private ColorStateListInflaterCompat() {
    }

    @NonNull
    public static ColorStateList createFromXml(@NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @Nullable Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return createFromXmlInner(resources, xmlPullParser, attributeSetAsAttributeSet, theme);
        }
        throw new XmlPullParserException("No start tag found");
    }

    @NonNull
    public static ColorStateList createFromXmlInner(@NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) throws XmlPullParserException {
        String name = xmlPullParser.getName();
        if (name.equals("selector")) {
            return inflate(resources, xmlPullParser, attributeSet, theme);
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid color state list tag " + name);
    }

    @Nullable
    public static ColorStateList inflate(@NonNull Resources resources, @XmlRes int i4, @Nullable Resources.Theme theme) {
        try {
            return createFromXml(resources, resources.getXml(i4), theme);
        } catch (Exception e4) {
            Log.e("CSLCompat", "Failed to inflate ColorStateList.", e4);
            return null;
        }
    }

    @ColorInt
    private static int modulateColorAlpha(@ColorInt int i4, @FloatRange(from = 0.0d, to = 1.0d) float f4) {
        return (i4 & ViewCompat.MEASURED_SIZE_MASK) | (Math.round(Color.alpha(i4) * f4) << 24);
    }

    private static TypedArray obtainAttributes(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    private static ColorStateList inflate(@NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) throws XmlPullParserException, IOException {
        int depth;
        int i4 = 1;
        int depth2 = xmlPullParser.getDepth() + 1;
        int[][] iArr = new int[20][];
        int[] iArrAppend = new int[20];
        int i5 = 0;
        while (true) {
            int next = xmlPullParser.next();
            if (next == i4 || ((depth = xmlPullParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (next == 2 && depth <= depth2 && xmlPullParser.getName().equals("item")) {
                TypedArray typedArrayObtainAttributes = obtainAttributes(resources, theme, attributeSet, R.styleable.ColorStateListItem);
                int color = typedArrayObtainAttributes.getColor(R.styleable.ColorStateListItem_android_color, -65281);
                float f4 = 1.0f;
                int i6 = R.styleable.ColorStateListItem_android_alpha;
                if (typedArrayObtainAttributes.hasValue(i6)) {
                    f4 = typedArrayObtainAttributes.getFloat(i6, 1.0f);
                } else {
                    int i7 = R.styleable.ColorStateListItem_alpha;
                    if (typedArrayObtainAttributes.hasValue(i7)) {
                        f4 = typedArrayObtainAttributes.getFloat(i7, 1.0f);
                    }
                }
                typedArrayObtainAttributes.recycle();
                int attributeCount = attributeSet.getAttributeCount();
                int[] iArr2 = new int[attributeCount];
                int i8 = 0;
                for (int i9 = 0; i9 < attributeCount; i9++) {
                    int attributeNameResource = attributeSet.getAttributeNameResource(i9);
                    if (attributeNameResource != 16843173 && attributeNameResource != 16843551 && attributeNameResource != R.attr.alpha) {
                        int i10 = i8 + 1;
                        if (!attributeSet.getAttributeBooleanValue(i9, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        iArr2[i8] = attributeNameResource;
                        i8 = i10;
                    }
                }
                int[] iArrTrimStateSet = StateSet.trimStateSet(iArr2, i8);
                iArrAppend = GrowingArrayUtils.append(iArrAppend, i5, modulateColorAlpha(color, f4));
                iArr = (int[][]) GrowingArrayUtils.append(iArr, i5, iArrTrimStateSet);
                i5++;
            }
            i4 = 1;
        }
        int[] iArr3 = new int[i5];
        int[][] iArr4 = new int[i5][];
        System.arraycopy(iArrAppend, 0, iArr3, 0, i5);
        System.arraycopy(iArr, 0, iArr4, 0, i5);
        return new ColorStateList(iArr4, iArr3);
    }
}
