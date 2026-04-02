package androidx.vectordrawable.graphics.drawable;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.support.v4.media.f;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.animation.Interpolator;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.a;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.graphics.PathParser;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
public class PathInterpolatorCompat implements Interpolator {
    public static final double EPSILON = 1.0E-5d;
    public static final int MAX_NUM_POINTS = 3000;
    private static final float PRECISION = 0.002f;
    private float[] mX;
    private float[] mY;

    public PathInterpolatorCompat(Context context, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        this(context.getResources(), context.getTheme(), attributeSet, xmlPullParser);
    }

    private void initCubic(float f4, float f5, float f6, float f7) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(f4, f5, f6, f7, 1.0f, 1.0f);
        initPath(path);
    }

    private void initPath(Path path) {
        int i4 = 0;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int iMin = Math.min(MAX_NUM_POINTS, ((int) (length / 0.002f)) + 1);
        if (iMin <= 0) {
            throw new IllegalArgumentException("The Path has a invalid length " + length);
        }
        this.mX = new float[iMin];
        this.mY = new float[iMin];
        float[] fArr = new float[2];
        for (int i5 = 0; i5 < iMin; i5++) {
            pathMeasure.getPosTan((i5 * length) / (iMin - 1), fArr, null);
            this.mX[i5] = fArr[0];
            this.mY[i5] = fArr[1];
        }
        if (Math.abs(this.mX[0]) <= 1.0E-5d && Math.abs(this.mY[0]) <= 1.0E-5d) {
            int i6 = iMin - 1;
            if (Math.abs(this.mX[i6] - 1.0f) <= 1.0E-5d && Math.abs(this.mY[i6] - 1.0f) <= 1.0E-5d) {
                float f4 = 0.0f;
                int i7 = 0;
                while (i4 < iMin) {
                    float[] fArr2 = this.mX;
                    int i8 = i7 + 1;
                    float f5 = fArr2[i7];
                    if (f5 < f4) {
                        throw new IllegalArgumentException("The Path cannot loop back on itself, x :" + f5);
                    }
                    fArr2[i4] = f5;
                    i4++;
                    f4 = f5;
                    i7 = i8;
                }
                if (pathMeasure.nextContour()) {
                    throw new IllegalArgumentException("The Path should be continuous, can't have 2+ contours");
                }
                return;
            }
        }
        StringBuilder sbA = f.a("The Path must start at (0,0) and end at (1,1) start: ");
        sbA.append(this.mX[0]);
        sbA.append(",");
        sbA.append(this.mY[0]);
        sbA.append(" end:");
        int i9 = iMin - 1;
        sbA.append(this.mX[i9]);
        sbA.append(",");
        sbA.append(this.mY[i9]);
        throw new IllegalArgumentException(sbA.toString());
    }

    private void initQuad(float f4, float f5) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.quadTo(f4, f5, 1.0f, 1.0f);
        initPath(path);
    }

    private void parseInterpolatorFromTypeArray(TypedArray typedArray, XmlPullParser xmlPullParser) {
        if (TypedArrayUtils.hasAttribute(xmlPullParser, "pathData")) {
            String namedString = TypedArrayUtils.getNamedString(typedArray, xmlPullParser, "pathData", 4);
            Path pathCreatePathFromPathData = PathParser.createPathFromPathData(namedString);
            if (pathCreatePathFromPathData == null) {
                throw new InflateException(a.a("The path is null, which is created from ", namedString));
            }
            initPath(pathCreatePathFromPathData);
            return;
        }
        if (!TypedArrayUtils.hasAttribute(xmlPullParser, "controlX1")) {
            throw new InflateException("pathInterpolator requires the controlX1 attribute");
        }
        if (!TypedArrayUtils.hasAttribute(xmlPullParser, "controlY1")) {
            throw new InflateException("pathInterpolator requires the controlY1 attribute");
        }
        float namedFloat = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "controlX1", 0, 0.0f);
        float namedFloat2 = TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "controlY1", 1, 0.0f);
        boolean zHasAttribute = TypedArrayUtils.hasAttribute(xmlPullParser, "controlX2");
        if (zHasAttribute != TypedArrayUtils.hasAttribute(xmlPullParser, "controlY2")) {
            throw new InflateException("pathInterpolator requires both controlX2 and controlY2 for cubic Beziers.");
        }
        if (zHasAttribute) {
            initCubic(namedFloat, namedFloat2, TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "controlX2", 2, 0.0f), TypedArrayUtils.getNamedFloat(typedArray, xmlPullParser, "controlY2", 3, 0.0f));
        } else {
            initQuad(namedFloat, namedFloat2);
        }
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f4) {
        if (f4 <= 0.0f) {
            return 0.0f;
        }
        if (f4 >= 1.0f) {
            return 1.0f;
        }
        int i4 = 0;
        int length = this.mX.length - 1;
        while (length - i4 > 1) {
            int i5 = (i4 + length) / 2;
            if (f4 < this.mX[i5]) {
                length = i5;
            } else {
                i4 = i5;
            }
        }
        float[] fArr = this.mX;
        float f5 = fArr[length] - fArr[i4];
        if (f5 == 0.0f) {
            return this.mY[i4];
        }
        float f6 = (f4 - fArr[i4]) / f5;
        float[] fArr2 = this.mY;
        float f7 = fArr2[i4];
        return androidx.appcompat.graphics.drawable.a.a(fArr2[length], f7, f6, f7);
    }

    public PathInterpolatorCompat(Resources resources, Resources.Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        TypedArray typedArrayObtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, AndroidResources.STYLEABLE_PATH_INTERPOLATOR);
        parseInterpolatorFromTypeArray(typedArrayObtainAttributes, xmlPullParser);
        typedArrayObtainAttributes.recycle();
    }
}
