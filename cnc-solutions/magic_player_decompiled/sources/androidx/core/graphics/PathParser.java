package androidx.core.graphics;

import android.graphics.Path;
import android.support.v4.media.h;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.appcompat.view.a;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class PathParser {
    private static final String LOGTAG = "PathParser";

    public static class ExtractFloatResult {
        public int mEndPosition;
        public boolean mEndWithNegOrDot;
    }

    private PathParser() {
    }

    private static void addNode(ArrayList<PathDataNode> arrayList, char c4, float[] fArr) {
        arrayList.add(new PathDataNode(c4, fArr));
    }

    public static boolean canMorph(@Nullable PathDataNode[] pathDataNodeArr, @Nullable PathDataNode[] pathDataNodeArr2) {
        if (pathDataNodeArr == null || pathDataNodeArr2 == null || pathDataNodeArr.length != pathDataNodeArr2.length) {
            return false;
        }
        for (int i4 = 0; i4 < pathDataNodeArr.length; i4++) {
            if (pathDataNodeArr[i4].mType != pathDataNodeArr2[i4].mType || pathDataNodeArr[i4].mParams.length != pathDataNodeArr2[i4].mParams.length) {
                return false;
            }
        }
        return true;
    }

    public static float[] copyOfRange(float[] fArr, int i4, int i5) {
        if (i4 > i5) {
            throw new IllegalArgumentException();
        }
        int length = fArr.length;
        if (i4 < 0 || i4 > length) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i6 = i5 - i4;
        int iMin = Math.min(i6, length - i4);
        float[] fArr2 = new float[i6];
        System.arraycopy(fArr, i4, fArr2, 0, iMin);
        return fArr2;
    }

    public static PathDataNode[] createNodesFromPathData(String str) {
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i4 = 1;
        int i5 = 0;
        while (i4 < str.length()) {
            int iNextStart = nextStart(str, i4);
            String strTrim = str.substring(i5, iNextStart).trim();
            if (strTrim.length() > 0) {
                addNode(arrayList, strTrim.charAt(0), getFloats(strTrim));
            }
            i5 = iNextStart;
            i4 = iNextStart + 1;
        }
        if (i4 - i5 == 1 && i5 < str.length()) {
            addNode(arrayList, str.charAt(i5), new float[0]);
        }
        return (PathDataNode[]) arrayList.toArray(new PathDataNode[arrayList.size()]);
    }

    public static Path createPathFromPathData(String str) {
        Path path = new Path();
        PathDataNode[] pathDataNodeArrCreateNodesFromPathData = createNodesFromPathData(str);
        if (pathDataNodeArrCreateNodesFromPathData == null) {
            return null;
        }
        try {
            PathDataNode.nodesToPath(pathDataNodeArrCreateNodesFromPathData, path);
            return path;
        } catch (RuntimeException e4) {
            throw new RuntimeException(a.a("Error in parsing ", str), e4);
        }
    }

    public static PathDataNode[] deepCopyNodes(PathDataNode[] pathDataNodeArr) {
        if (pathDataNodeArr == null) {
            return null;
        }
        PathDataNode[] pathDataNodeArr2 = new PathDataNode[pathDataNodeArr.length];
        for (int i4 = 0; i4 < pathDataNodeArr.length; i4++) {
            pathDataNodeArr2[i4] = new PathDataNode(pathDataNodeArr[i4]);
        }
        return pathDataNodeArr2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003a A[LOOP:0: B:3:0x0007->B:24:0x003a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x003d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void extract(java.lang.String r8, int r9, androidx.core.graphics.PathParser.ExtractFloatResult r10) {
        /*
            r0 = 0
            r10.mEndWithNegOrDot = r0
            r1 = r9
            r2 = 0
            r3 = 0
            r4 = 0
        L7:
            int r5 = r8.length()
            if (r1 >= r5) goto L3d
            char r5 = r8.charAt(r1)
            r6 = 32
            r7 = 1
            if (r5 == r6) goto L35
            r6 = 69
            if (r5 == r6) goto L33
            r6 = 101(0x65, float:1.42E-43)
            if (r5 == r6) goto L33
            switch(r5) {
                case 44: goto L35;
                case 45: goto L2a;
                case 46: goto L22;
                default: goto L21;
            }
        L21:
            goto L31
        L22:
            if (r3 != 0) goto L27
            r2 = 0
            r3 = 1
            goto L37
        L27:
            r10.mEndWithNegOrDot = r7
            goto L35
        L2a:
            if (r1 == r9) goto L31
            if (r2 != 0) goto L31
            r10.mEndWithNegOrDot = r7
            goto L35
        L31:
            r2 = 0
            goto L37
        L33:
            r2 = 1
            goto L37
        L35:
            r2 = 0
            r4 = 1
        L37:
            if (r4 == 0) goto L3a
            goto L3d
        L3a:
            int r1 = r1 + 1
            goto L7
        L3d:
            r10.mEndPosition = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.PathParser.extract(java.lang.String, int, androidx.core.graphics.PathParser$ExtractFloatResult):void");
    }

    private static float[] getFloats(String str) {
        if (str.charAt(0) == 'z' || str.charAt(0) == 'Z') {
            return new float[0];
        }
        try {
            float[] fArr = new float[str.length()];
            ExtractFloatResult extractFloatResult = new ExtractFloatResult();
            int length = str.length();
            int i4 = 1;
            int i5 = 0;
            while (i4 < length) {
                extract(str, i4, extractFloatResult);
                int i6 = extractFloatResult.mEndPosition;
                if (i4 < i6) {
                    fArr[i5] = Float.parseFloat(str.substring(i4, i6));
                    i5++;
                }
                i4 = extractFloatResult.mEndWithNegOrDot ? i6 : i6 + 1;
            }
            return copyOfRange(fArr, 0, i5);
        } catch (NumberFormatException e4) {
            throw new RuntimeException(h.a("error in parsing \"", str, "\""), e4);
        }
    }

    public static boolean interpolatePathDataNodes(PathDataNode[] pathDataNodeArr, PathDataNode[] pathDataNodeArr2, PathDataNode[] pathDataNodeArr3, float f4) {
        if (pathDataNodeArr == null || pathDataNodeArr2 == null || pathDataNodeArr3 == null) {
            throw new IllegalArgumentException("The nodes to be interpolated and resulting nodes cannot be null");
        }
        if (pathDataNodeArr.length != pathDataNodeArr2.length || pathDataNodeArr2.length != pathDataNodeArr3.length) {
            throw new IllegalArgumentException("The nodes to be interpolated and resulting nodes must have the same length");
        }
        if (!canMorph(pathDataNodeArr2, pathDataNodeArr3)) {
            return false;
        }
        for (int i4 = 0; i4 < pathDataNodeArr.length; i4++) {
            pathDataNodeArr[i4].interpolatePathDataNode(pathDataNodeArr2[i4], pathDataNodeArr3[i4], f4);
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int nextStart(java.lang.String r3, int r4) {
        /*
        L0:
            int r0 = r3.length()
            if (r4 >= r0) goto L26
            char r0 = r3.charAt(r4)
            int r1 = r0 + (-65)
            int r2 = r0 + (-90)
            int r2 = r2 * r1
            if (r2 <= 0) goto L1a
            int r1 = r0 + (-97)
            int r2 = r0 + (-122)
            int r2 = r2 * r1
            if (r2 > 0) goto L23
        L1a:
            r1 = 101(0x65, float:1.42E-43)
            if (r0 == r1) goto L23
            r1 = 69
            if (r0 == r1) goto L23
            return r4
        L23:
            int r4 = r4 + 1
            goto L0
        L26:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.PathParser.nextStart(java.lang.String, int):int");
    }

    public static void updateNodes(PathDataNode[] pathDataNodeArr, PathDataNode[] pathDataNodeArr2) {
        for (int i4 = 0; i4 < pathDataNodeArr2.length; i4++) {
            pathDataNodeArr[i4].mType = pathDataNodeArr2[i4].mType;
            for (int i5 = 0; i5 < pathDataNodeArr2[i4].mParams.length; i5++) {
                pathDataNodeArr[i4].mParams[i5] = pathDataNodeArr2[i4].mParams[i5];
            }
        }
    }

    public static class PathDataNode {
        public float[] mParams;
        public char mType;

        public PathDataNode(char c4, float[] fArr) {
            this.mType = c4;
            this.mParams = fArr;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        private static void addCommand(Path path, float[] fArr, char c4, char c5, float[] fArr2) {
            int i4;
            int i5;
            float f4;
            float f5;
            float f6;
            float f7;
            float f8;
            float f9;
            float f10;
            float f11;
            char c6 = c5;
            float f12 = fArr[0];
            float f13 = fArr[1];
            float f14 = fArr[2];
            float f15 = fArr[3];
            float f16 = fArr[4];
            float f17 = fArr[5];
            switch (c6) {
                case 'A':
                case 'a':
                    i4 = 7;
                    break;
                case 'C':
                case 'c':
                    i4 = 6;
                    break;
                case 'H':
                case 'V':
                case 'h':
                case 'v':
                    i4 = 1;
                    break;
                case 'L':
                case 'M':
                case 'T':
                case 'l':
                case 'm':
                case 't':
                default:
                    i4 = 2;
                    break;
                case 'Q':
                case 'S':
                case 'q':
                case 's':
                    i4 = 4;
                    break;
                case 'Z':
                case 'z':
                    path.close();
                    path.moveTo(f16, f17);
                    f12 = f16;
                    f14 = f12;
                    f13 = f17;
                    f15 = f13;
                    i4 = 2;
                    break;
            }
            float f18 = f12;
            float f19 = f13;
            float f20 = f16;
            float f21 = f17;
            int i6 = 0;
            char c7 = c4;
            while (i6 < fArr2.length) {
                if (c6 != 'A') {
                    if (c6 == 'C') {
                        i5 = i6;
                        int i7 = i5 + 2;
                        int i8 = i5 + 3;
                        int i9 = i5 + 4;
                        int i10 = i5 + 5;
                        path.cubicTo(fArr2[i5 + 0], fArr2[i5 + 1], fArr2[i7], fArr2[i8], fArr2[i9], fArr2[i10]);
                        f18 = fArr2[i9];
                        float f22 = fArr2[i10];
                        float f23 = fArr2[i7];
                        float f24 = fArr2[i8];
                        f19 = f22;
                        f15 = f24;
                        f14 = f23;
                    } else if (c6 == 'H') {
                        i5 = i6;
                        int i11 = i5 + 0;
                        path.lineTo(fArr2[i11], f19);
                        f18 = fArr2[i11];
                    } else if (c6 == 'Q') {
                        i5 = i6;
                        int i12 = i5 + 0;
                        int i13 = i5 + 1;
                        int i14 = i5 + 2;
                        int i15 = i5 + 3;
                        path.quadTo(fArr2[i12], fArr2[i13], fArr2[i14], fArr2[i15]);
                        float f25 = fArr2[i12];
                        float f26 = fArr2[i13];
                        f18 = fArr2[i14];
                        f19 = fArr2[i15];
                        f14 = f25;
                        f15 = f26;
                    } else if (c6 == 'V') {
                        i5 = i6;
                        int i16 = i5 + 0;
                        path.lineTo(f18, fArr2[i16]);
                        f19 = fArr2[i16];
                    } else if (c6 != 'a') {
                        if (c6 != 'c') {
                            if (c6 == 'h') {
                                int i17 = i6 + 0;
                                path.rLineTo(fArr2[i17], 0.0f);
                                f18 += fArr2[i17];
                            } else if (c6 != 'q') {
                                if (c6 == 'v') {
                                    int i18 = i6 + 0;
                                    path.rLineTo(0.0f, fArr2[i18]);
                                    f7 = fArr2[i18];
                                } else if (c6 == 'L') {
                                    int i19 = i6 + 0;
                                    int i20 = i6 + 1;
                                    path.lineTo(fArr2[i19], fArr2[i20]);
                                    f18 = fArr2[i19];
                                    f19 = fArr2[i20];
                                } else if (c6 == 'M') {
                                    int i21 = i6 + 0;
                                    f18 = fArr2[i21];
                                    int i22 = i6 + 1;
                                    f19 = fArr2[i22];
                                    if (i6 > 0) {
                                        path.lineTo(fArr2[i21], fArr2[i22]);
                                    } else {
                                        path.moveTo(fArr2[i21], fArr2[i22]);
                                        i5 = i6;
                                        f21 = f19;
                                        f20 = f18;
                                    }
                                } else if (c6 == 'S') {
                                    if (c7 == 'c' || c7 == 's' || c7 == 'C' || c7 == 'S') {
                                        f18 = (f18 * 2.0f) - f14;
                                        f19 = (f19 * 2.0f) - f15;
                                    }
                                    float f27 = f19;
                                    int i23 = i6 + 0;
                                    int i24 = i6 + 1;
                                    int i25 = i6 + 2;
                                    int i26 = i6 + 3;
                                    path.cubicTo(f18, f27, fArr2[i23], fArr2[i24], fArr2[i25], fArr2[i26]);
                                    f4 = fArr2[i23];
                                    f5 = fArr2[i24];
                                    f18 = fArr2[i25];
                                    f19 = fArr2[i26];
                                    f14 = f4;
                                    f15 = f5;
                                } else if (c6 == 'T') {
                                    if (c7 == 'q' || c7 == 't' || c7 == 'Q' || c7 == 'T') {
                                        f18 = (f18 * 2.0f) - f14;
                                        f19 = (f19 * 2.0f) - f15;
                                    }
                                    int i27 = i6 + 0;
                                    int i28 = i6 + 1;
                                    path.quadTo(f18, f19, fArr2[i27], fArr2[i28]);
                                    float f28 = fArr2[i27];
                                    float f29 = fArr2[i28];
                                    i5 = i6;
                                    f15 = f19;
                                    f14 = f18;
                                    f18 = f28;
                                    f19 = f29;
                                } else if (c6 == 'l') {
                                    int i29 = i6 + 0;
                                    int i30 = i6 + 1;
                                    path.rLineTo(fArr2[i29], fArr2[i30]);
                                    f18 += fArr2[i29];
                                    f7 = fArr2[i30];
                                } else if (c6 == 'm') {
                                    int i31 = i6 + 0;
                                    f18 += fArr2[i31];
                                    int i32 = i6 + 1;
                                    f19 += fArr2[i32];
                                    if (i6 > 0) {
                                        path.rLineTo(fArr2[i31], fArr2[i32]);
                                    } else {
                                        path.rMoveTo(fArr2[i31], fArr2[i32]);
                                        i5 = i6;
                                        f21 = f19;
                                        f20 = f18;
                                    }
                                } else if (c6 == 's') {
                                    if (c7 == 'c' || c7 == 's' || c7 == 'C' || c7 == 'S') {
                                        float f30 = f18 - f14;
                                        f8 = f19 - f15;
                                        f9 = f30;
                                    } else {
                                        f9 = 0.0f;
                                        f8 = 0.0f;
                                    }
                                    int i33 = i6 + 0;
                                    int i34 = i6 + 1;
                                    int i35 = i6 + 2;
                                    int i36 = i6 + 3;
                                    path.rCubicTo(f9, f8, fArr2[i33], fArr2[i34], fArr2[i35], fArr2[i36]);
                                    f4 = fArr2[i33] + f18;
                                    f5 = fArr2[i34] + f19;
                                    f18 += fArr2[i35];
                                    f6 = fArr2[i36];
                                } else if (c6 == 't') {
                                    if (c7 == 'q' || c7 == 't' || c7 == 'Q' || c7 == 'T') {
                                        f10 = f18 - f14;
                                        f11 = f19 - f15;
                                    } else {
                                        f11 = 0.0f;
                                        f10 = 0.0f;
                                    }
                                    int i37 = i6 + 0;
                                    int i38 = i6 + 1;
                                    path.rQuadTo(f10, f11, fArr2[i37], fArr2[i38]);
                                    float f31 = f10 + f18;
                                    float f32 = f11 + f19;
                                    f18 += fArr2[i37];
                                    f19 += fArr2[i38];
                                    f15 = f32;
                                    f14 = f31;
                                }
                                f19 += f7;
                            } else {
                                int i39 = i6 + 0;
                                int i40 = i6 + 1;
                                int i41 = i6 + 2;
                                int i42 = i6 + 3;
                                path.rQuadTo(fArr2[i39], fArr2[i40], fArr2[i41], fArr2[i42]);
                                f4 = fArr2[i39] + f18;
                                f5 = fArr2[i40] + f19;
                                f18 += fArr2[i41];
                                f6 = fArr2[i42];
                            }
                            i5 = i6;
                        } else {
                            int i43 = i6 + 2;
                            int i44 = i6 + 3;
                            int i45 = i6 + 4;
                            int i46 = i6 + 5;
                            path.rCubicTo(fArr2[i6 + 0], fArr2[i6 + 1], fArr2[i43], fArr2[i44], fArr2[i45], fArr2[i46]);
                            f4 = fArr2[i43] + f18;
                            f5 = fArr2[i44] + f19;
                            f18 += fArr2[i45];
                            f6 = fArr2[i46];
                        }
                        f19 += f6;
                        f14 = f4;
                        f15 = f5;
                        i5 = i6;
                    } else {
                        int i47 = i6 + 5;
                        int i48 = i6 + 6;
                        i5 = i6;
                        drawArc(path, f18, f19, fArr2[i47] + f18, fArr2[i48] + f19, fArr2[i6 + 0], fArr2[i6 + 1], fArr2[i6 + 2], fArr2[i6 + 3] != 0.0f, fArr2[i6 + 4] != 0.0f);
                        f18 += fArr2[i47];
                        f19 += fArr2[i48];
                    }
                    i6 = i5 + i4;
                    c7 = c5;
                    c6 = c7;
                } else {
                    i5 = i6;
                    int i49 = i5 + 5;
                    int i50 = i5 + 6;
                    drawArc(path, f18, f19, fArr2[i49], fArr2[i50], fArr2[i5 + 0], fArr2[i5 + 1], fArr2[i5 + 2], fArr2[i5 + 3] != 0.0f, fArr2[i5 + 4] != 0.0f);
                    f18 = fArr2[i49];
                    f19 = fArr2[i50];
                }
                f15 = f19;
                f14 = f18;
                i6 = i5 + i4;
                c7 = c5;
                c6 = c7;
            }
            fArr[0] = f18;
            fArr[1] = f19;
            fArr[2] = f14;
            fArr[3] = f15;
            fArr[4] = f20;
            fArr[5] = f21;
        }

        private static void arcToBezier(Path path, double d4, double d5, double d6, double d7, double d8, double d9, double d10, double d11, double d12) {
            double d13 = d6;
            int iCeil = (int) Math.ceil(Math.abs((d12 * 4.0d) / 3.141592653589793d));
            double dCos = Math.cos(d10);
            double dSin = Math.sin(d10);
            double dCos2 = Math.cos(d11);
            double dSin2 = Math.sin(d11);
            double d14 = -d13;
            double d15 = d14 * dCos;
            double d16 = d7 * dSin;
            double d17 = (d15 * dSin2) - (d16 * dCos2);
            double d18 = d14 * dSin;
            double d19 = d7 * dCos;
            double d20 = (dCos2 * d19) + (dSin2 * d18);
            double d21 = iCeil;
            Double.isNaN(d21);
            double d22 = d12 / d21;
            double d23 = d11;
            double d24 = d20;
            double d25 = d17;
            int i4 = 0;
            double d26 = d8;
            double d27 = d9;
            while (i4 < iCeil) {
                double d28 = d23 + d22;
                double dSin3 = Math.sin(d28);
                double dCos3 = Math.cos(d28);
                double d29 = (((d13 * dCos) * dCos3) + d4) - (d16 * dSin3);
                double d30 = (d19 * dSin3) + (d13 * dSin * dCos3) + d5;
                double d31 = (d15 * dSin3) - (d16 * dCos3);
                double d32 = (dCos3 * d19) + (dSin3 * d18);
                double d33 = d28 - d23;
                double dTan = Math.tan(d33 / 2.0d);
                double dSqrt = ((Math.sqrt(((dTan * 3.0d) * dTan) + 4.0d) - 1.0d) * Math.sin(d33)) / 3.0d;
                path.rLineTo(0.0f, 0.0f);
                path.cubicTo((float) ((d25 * dSqrt) + d26), (float) ((d24 * dSqrt) + d27), (float) (d29 - (dSqrt * d31)), (float) (d30 - (dSqrt * d32)), (float) d29, (float) d30);
                i4++;
                d22 = d22;
                dSin = dSin;
                d26 = d29;
                d18 = d18;
                dCos = dCos;
                d23 = d28;
                d24 = d32;
                d25 = d31;
                iCeil = iCeil;
                d27 = d30;
                d13 = d6;
            }
        }

        private static void drawArc(Path path, float f4, float f5, float f6, float f7, float f8, float f9, float f10, boolean z3, boolean z4) {
            double d4;
            double d5;
            double radians = Math.toRadians(f10);
            double dCos = Math.cos(radians);
            double dSin = Math.sin(radians);
            double d6 = f4;
            Double.isNaN(d6);
            double d7 = d6 * dCos;
            double d8 = f5;
            Double.isNaN(d8);
            double d9 = f8;
            Double.isNaN(d9);
            double d10 = ((d8 * dSin) + d7) / d9;
            double d11 = -f4;
            Double.isNaN(d11);
            Double.isNaN(d8);
            double d12 = (d8 * dCos) + (d11 * dSin);
            double d13 = f9;
            Double.isNaN(d13);
            double d14 = d12 / d13;
            double d15 = f6;
            Double.isNaN(d15);
            double d16 = f7;
            Double.isNaN(d16);
            Double.isNaN(d9);
            double d17 = ((d16 * dSin) + (d15 * dCos)) / d9;
            double d18 = -f6;
            Double.isNaN(d18);
            Double.isNaN(d16);
            Double.isNaN(d13);
            double d19 = ((d16 * dCos) + (d18 * dSin)) / d13;
            double d20 = d10 - d17;
            double d21 = d14 - d19;
            double d22 = (d10 + d17) / 2.0d;
            double d23 = (d14 + d19) / 2.0d;
            double d24 = (d21 * d21) + (d20 * d20);
            if (d24 == 0.0d) {
                Log.w(PathParser.LOGTAG, " Points are coincident");
                return;
            }
            double d25 = (1.0d / d24) - 0.25d;
            if (d25 < 0.0d) {
                Log.w(PathParser.LOGTAG, "Points are too far apart " + d24);
                float fSqrt = (float) (Math.sqrt(d24) / 1.99999d);
                drawArc(path, f4, f5, f6, f7, f8 * fSqrt, f9 * fSqrt, f10, z3, z4);
                return;
            }
            double dSqrt = Math.sqrt(d25);
            double d26 = d20 * dSqrt;
            double d27 = dSqrt * d21;
            if (z3 == z4) {
                d4 = d22 - d27;
                d5 = d23 + d26;
            } else {
                d4 = d22 + d27;
                d5 = d23 - d26;
            }
            double dAtan2 = Math.atan2(d14 - d5, d10 - d4);
            double dAtan22 = Math.atan2(d19 - d5, d17 - d4) - dAtan2;
            if (z4 != (dAtan22 >= 0.0d)) {
                dAtan22 = dAtan22 > 0.0d ? dAtan22 - 6.283185307179586d : dAtan22 + 6.283185307179586d;
            }
            Double.isNaN(d9);
            double d28 = d4 * d9;
            Double.isNaN(d13);
            double d29 = d5 * d13;
            arcToBezier(path, (d28 * dCos) - (d29 * dSin), (d29 * dCos) + (d28 * dSin), d9, d13, d6, d8, radians, dAtan2, dAtan22);
        }

        public static void nodesToPath(PathDataNode[] pathDataNodeArr, Path path) {
            float[] fArr = new float[6];
            char c4 = 'm';
            for (int i4 = 0; i4 < pathDataNodeArr.length; i4++) {
                addCommand(path, fArr, c4, pathDataNodeArr[i4].mType, pathDataNodeArr[i4].mParams);
                c4 = pathDataNodeArr[i4].mType;
            }
        }

        public void interpolatePathDataNode(PathDataNode pathDataNode, PathDataNode pathDataNode2, float f4) {
            this.mType = pathDataNode.mType;
            int i4 = 0;
            while (true) {
                float[] fArr = pathDataNode.mParams;
                if (i4 >= fArr.length) {
                    return;
                }
                this.mParams[i4] = (pathDataNode2.mParams[i4] * f4) + ((1.0f - f4) * fArr[i4]);
                i4++;
            }
        }

        public PathDataNode(PathDataNode pathDataNode) {
            this.mType = pathDataNode.mType;
            float[] fArr = pathDataNode.mParams;
            this.mParams = PathParser.copyOfRange(fArr, 0, fArr.length);
        }
    }
}
