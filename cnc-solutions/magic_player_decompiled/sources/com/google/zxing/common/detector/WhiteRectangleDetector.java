package com.google.zxing.common.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;

/* JADX INFO: loaded from: classes2.dex */
public final class WhiteRectangleDetector {
    private static final int CORR = 1;
    private static final int INIT_SIZE = 10;
    private final int downInit;
    private final int height;
    private final BitMatrix image;
    private final int leftInit;
    private final int rightInit;
    private final int upInit;
    private final int width;

    public WhiteRectangleDetector(BitMatrix bitMatrix) {
        this(bitMatrix, 10, bitMatrix.getWidth() / 2, bitMatrix.getHeight() / 2);
    }

    private ResultPoint[] centerEdges(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4) {
        float x3 = resultPoint.getX();
        float y3 = resultPoint.getY();
        float x4 = resultPoint2.getX();
        float y4 = resultPoint2.getY();
        float x5 = resultPoint3.getX();
        float y5 = resultPoint3.getY();
        float x6 = resultPoint4.getX();
        float y6 = resultPoint4.getY();
        return x3 < ((float) this.width) / 2.0f ? new ResultPoint[]{new ResultPoint(x6 - 1.0f, y6 + 1.0f), new ResultPoint(x4 + 1.0f, y4 + 1.0f), new ResultPoint(x5 - 1.0f, y5 - 1.0f), new ResultPoint(x3 + 1.0f, y3 - 1.0f)} : new ResultPoint[]{new ResultPoint(x6 + 1.0f, y6 + 1.0f), new ResultPoint(x4 + 1.0f, y4 - 1.0f), new ResultPoint(x5 - 1.0f, y5 + 1.0f), new ResultPoint(x3 - 1.0f, y3 - 1.0f)};
    }

    private boolean containsBlackPoint(int i4, int i5, int i6, boolean z3) {
        if (z3) {
            while (i4 <= i5) {
                if (this.image.get(i4, i6)) {
                    return true;
                }
                i4++;
            }
            return false;
        }
        while (i4 <= i5) {
            if (this.image.get(i6, i4)) {
                return true;
            }
            i4++;
        }
        return false;
    }

    private ResultPoint getBlackPointOnSegment(float f4, float f5, float f6, float f7) {
        int iRound = MathUtils.round(MathUtils.distance(f4, f5, f6, f7));
        float f8 = iRound;
        float f9 = (f6 - f4) / f8;
        float f10 = (f7 - f5) / f8;
        for (int i4 = 0; i4 < iRound; i4++) {
            float f11 = i4;
            int iRound2 = MathUtils.round((f11 * f9) + f4);
            int iRound3 = MathUtils.round((f11 * f10) + f5);
            if (this.image.get(iRound2, iRound3)) {
                return new ResultPoint(iRound2, iRound3);
            }
        }
        return null;
    }

    public ResultPoint[] detect() throws NotFoundException {
        int i4 = this.leftInit;
        int i5 = this.rightInit;
        int i6 = this.upInit;
        int i7 = this.downInit;
        boolean z3 = false;
        boolean z4 = true;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = false;
        while (z4) {
            boolean zContainsBlackPoint = true;
            boolean z9 = false;
            while (true) {
                if ((!zContainsBlackPoint && z5) || i5 >= this.width) {
                    break;
                }
                zContainsBlackPoint = containsBlackPoint(i6, i7, i5, false);
                if (zContainsBlackPoint) {
                    i5++;
                    z5 = true;
                    z9 = true;
                } else if (!z5) {
                    i5++;
                }
            }
            if (i5 < this.width) {
                boolean zContainsBlackPoint2 = true;
                while (true) {
                    if ((!zContainsBlackPoint2 && z6) || i7 >= this.height) {
                        break;
                    }
                    zContainsBlackPoint2 = containsBlackPoint(i4, i5, i7, true);
                    if (zContainsBlackPoint2) {
                        i7++;
                        z6 = true;
                        z9 = true;
                    } else if (!z6) {
                        i7++;
                    }
                }
                if (i7 < this.height) {
                    boolean zContainsBlackPoint3 = true;
                    while (true) {
                        if ((!zContainsBlackPoint3 && z7) || i4 < 0) {
                            break;
                        }
                        zContainsBlackPoint3 = containsBlackPoint(i6, i7, i4, false);
                        if (zContainsBlackPoint3) {
                            i4--;
                            z7 = true;
                            z9 = true;
                        } else if (!z7) {
                            i4--;
                        }
                    }
                    if (i4 >= 0) {
                        z4 = z9;
                        boolean zContainsBlackPoint4 = true;
                        while (true) {
                            if ((!zContainsBlackPoint4 && z8) || i6 < 0) {
                                break;
                            }
                            zContainsBlackPoint4 = containsBlackPoint(i4, i5, i6, true);
                            if (zContainsBlackPoint4) {
                                i6--;
                                z4 = true;
                                z8 = true;
                            } else if (!z8) {
                                i6--;
                            }
                        }
                        if (i6 < 0) {
                        }
                    }
                }
            }
            z3 = true;
            break;
        }
        if (z3) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i8 = i5 - i4;
        ResultPoint blackPointOnSegment = null;
        ResultPoint blackPointOnSegment2 = null;
        for (int i9 = 1; blackPointOnSegment2 == null && i9 < i8; i9++) {
            blackPointOnSegment2 = getBlackPointOnSegment(i4, i7 - i9, i4 + i9, i7);
        }
        if (blackPointOnSegment2 == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        ResultPoint blackPointOnSegment3 = null;
        for (int i10 = 1; blackPointOnSegment3 == null && i10 < i8; i10++) {
            blackPointOnSegment3 = getBlackPointOnSegment(i4, i6 + i10, i4 + i10, i6);
        }
        if (blackPointOnSegment3 == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        ResultPoint blackPointOnSegment4 = null;
        for (int i11 = 1; blackPointOnSegment4 == null && i11 < i8; i11++) {
            blackPointOnSegment4 = getBlackPointOnSegment(i5, i6 + i11, i5 - i11, i6);
        }
        if (blackPointOnSegment4 == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        for (int i12 = 1; blackPointOnSegment == null && i12 < i8; i12++) {
            blackPointOnSegment = getBlackPointOnSegment(i5, i7 - i12, i5 - i12, i7);
        }
        if (blackPointOnSegment != null) {
            return centerEdges(blackPointOnSegment, blackPointOnSegment2, blackPointOnSegment4, blackPointOnSegment3);
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public WhiteRectangleDetector(BitMatrix bitMatrix, int i4, int i5, int i6) throws NotFoundException {
        this.image = bitMatrix;
        int height = bitMatrix.getHeight();
        this.height = height;
        int width = bitMatrix.getWidth();
        this.width = width;
        int i7 = i4 / 2;
        int i8 = i5 - i7;
        this.leftInit = i8;
        int i9 = i5 + i7;
        this.rightInit = i9;
        int i10 = i6 - i7;
        this.upInit = i10;
        int i11 = i6 + i7;
        this.downInit = i11;
        if (i10 < 0 || i8 < 0 || i11 >= height || i9 >= width) {
            throw NotFoundException.getNotFoundInstance();
        }
    }
}
