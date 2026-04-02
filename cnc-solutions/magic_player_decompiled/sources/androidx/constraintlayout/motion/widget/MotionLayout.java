package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.media.d;
import android.support.v4.media.f;
import android.support.v4.media.g;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.view.b;
import androidx.constraintlayout.motion.utils.StopLogic;
import androidx.constraintlayout.motion.widget.MotionScene;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.solver.widgets.Flow;
import androidx.constraintlayout.solver.widgets.Guideline;
import androidx.constraintlayout.solver.widgets.Helper;
import androidx.constraintlayout.solver.widgets.HelperWidget;
import androidx.constraintlayout.solver.widgets.VirtualLayout;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintLayoutStates;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.Constraints;
import androidx.constraintlayout.widget.R;
import androidx.constraintlayout.widget.StateSet;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class MotionLayout extends ConstraintLayout implements NestedScrollingParent3 {
    private static final boolean DEBUG = false;
    public static final int DEBUG_SHOW_NONE = 0;
    public static final int DEBUG_SHOW_PATH = 2;
    public static final int DEBUG_SHOW_PROGRESS = 1;
    private static final float EPSILON = 1.0E-5f;
    public static boolean IS_IN_EDIT_MODE = false;
    public static final int MAX_KEY_FRAMES = 50;
    public static final String TAG = "MotionLayout";
    public static final int TOUCH_UP_COMPLETE = 0;
    public static final int TOUCH_UP_COMPLETE_TO_END = 2;
    public static final int TOUCH_UP_COMPLETE_TO_START = 1;
    public static final int TOUCH_UP_DECELERATE = 4;
    public static final int TOUCH_UP_DECELERATE_AND_COMPLETE = 5;
    public static final int TOUCH_UP_STOP = 3;
    public static final int VELOCITY_LAYOUT = 1;
    public static final int VELOCITY_POST_LAYOUT = 0;
    public static final int VELOCITY_STATIC_LAYOUT = 3;
    public static final int VELOCITY_STATIC_POST_LAYOUT = 2;
    public boolean firstDown;
    private float lastPos;
    private float lastY;
    private long mAnimationStartTime;
    private int mBeginState;
    private RectF mBoundsCheck;
    public int mCurrentState;
    public int mDebugPath;
    private DecelerateInterpolator mDecelerateLogic;
    private DesignTool mDesignTool;
    public DevModeDraw mDevModeDraw;
    private int mEndState;
    public int mEndWrapHeight;
    public int mEndWrapWidth;
    public HashMap<View, MotionController> mFrameArrayList;
    private int mFrames;
    public int mHeightMeasureMode;
    private boolean mInLayout;
    public boolean mInTransition;
    public boolean mIndirectTransition;
    private boolean mInteractionEnabled;
    public Interpolator mInterpolator;
    public boolean mIsAnimating;
    private boolean mKeepAnimating;
    private KeyCache mKeyCache;
    private long mLastDrawTime;
    private float mLastFps;
    private int mLastHeightMeasureSpec;
    public int mLastLayoutHeight;
    public int mLastLayoutWidth;
    public float mLastVelocity;
    private int mLastWidthMeasureSpec;
    private float mListenerPosition;
    private int mListenerState;
    public boolean mMeasureDuringTransition;
    public Model mModel;
    private boolean mNeedsFireTransitionCompleted;
    public int mOldHeight;
    public int mOldWidth;
    private ArrayList<MotionHelper> mOnHideHelpers;
    private ArrayList<MotionHelper> mOnShowHelpers;
    public float mPostInterpolationPosition;
    private View mRegionView;
    public MotionScene mScene;
    public float mScrollTargetDT;
    public float mScrollTargetDX;
    public float mScrollTargetDY;
    public long mScrollTargetTime;
    public int mStartWrapHeight;
    public int mStartWrapWidth;
    private StateCache mStateCache;
    private StopLogic mStopLogic;
    private boolean mTemporalInterpolator;
    public ArrayList<Integer> mTransitionCompleted;
    private float mTransitionDuration;
    public float mTransitionGoalPosition;
    private boolean mTransitionInstantly;
    public float mTransitionLastPosition;
    private long mTransitionLastTime;
    private TransitionListener mTransitionListener;
    private ArrayList<TransitionListener> mTransitionListeners;
    public float mTransitionPosition;
    public TransitionState mTransitionState;
    public boolean mUndergoingMotion;
    public int mWidthMeasureMode;

    /* JADX INFO: renamed from: androidx.constraintlayout.motion.widget.MotionLayout$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        public static final /* synthetic */ int[] $SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState;

        static {
            int[] iArr = new int[TransitionState.values().length];
            $SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState = iArr;
            try {
                iArr[TransitionState.UNDEFINED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState[TransitionState.SETUP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState[TransitionState.MOVING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState[TransitionState.FINISHED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public class DecelerateInterpolator extends MotionInterpolator {
        public float maxA;
        public float initalV = 0.0f;
        public float currentP = 0.0f;

        public DecelerateInterpolator() {
        }

        public void config(float f4, float f5, float f6) {
            this.initalV = f4;
            this.currentP = f5;
            this.maxA = f6;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionInterpolator, android.animation.TimeInterpolator
        public float getInterpolation(float f4) {
            float f5 = this.initalV;
            if (f5 > 0.0f) {
                float f6 = this.maxA;
                if (f5 / f6 < f4) {
                    f4 = f5 / f6;
                }
                MotionLayout.this.mLastVelocity = f5 - (f6 * f4);
                return ((f5 * f4) - (((f6 * f4) * f4) / 2.0f)) + this.currentP;
            }
            float f7 = this.maxA;
            if ((-f5) / f7 < f4) {
                f4 = (-f5) / f7;
            }
            MotionLayout.this.mLastVelocity = (f7 * f4) + f5;
            return (((f7 * f4) * f4) / 2.0f) + (f5 * f4) + this.currentP;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionInterpolator
        public float getVelocity() {
            return MotionLayout.this.mLastVelocity;
        }
    }

    public class DevModeDraw {
        private static final int DEBUG_PATH_TICKS_PER_MS = 16;
        public DashPathEffect mDashPathEffect;
        public Paint mFillPaint;
        public int mKeyFrameCount;
        public float[] mKeyFramePoints;
        public Paint mPaint;
        public Paint mPaintGraph;
        public Paint mPaintKeyframes;
        public Path mPath;
        public int[] mPathMode;
        public float[] mPoints;
        private float[] mRectangle;
        public int mShadowTranslate;
        public Paint mTextPaint;
        public final int RED_COLOR = -21965;
        public final int KEYFRAME_COLOR = -2067046;
        public final int GRAPH_COLOR = -13391360;
        public final int SHADOW_COLOR = 1996488704;
        public final int DIAMOND_SIZE = 10;
        public Rect mBounds = new Rect();
        public boolean mPresentationMode = false;

        public DevModeDraw() {
            this.mShadowTranslate = 1;
            Paint paint = new Paint();
            this.mPaint = paint;
            paint.setAntiAlias(true);
            this.mPaint.setColor(-21965);
            this.mPaint.setStrokeWidth(2.0f);
            this.mPaint.setStyle(Paint.Style.STROKE);
            Paint paint2 = new Paint();
            this.mPaintKeyframes = paint2;
            paint2.setAntiAlias(true);
            this.mPaintKeyframes.setColor(-2067046);
            this.mPaintKeyframes.setStrokeWidth(2.0f);
            this.mPaintKeyframes.setStyle(Paint.Style.STROKE);
            Paint paint3 = new Paint();
            this.mPaintGraph = paint3;
            paint3.setAntiAlias(true);
            this.mPaintGraph.setColor(-13391360);
            this.mPaintGraph.setStrokeWidth(2.0f);
            this.mPaintGraph.setStyle(Paint.Style.STROKE);
            Paint paint4 = new Paint();
            this.mTextPaint = paint4;
            paint4.setAntiAlias(true);
            this.mTextPaint.setColor(-13391360);
            this.mTextPaint.setTextSize(MotionLayout.this.getContext().getResources().getDisplayMetrics().density * 12.0f);
            this.mRectangle = new float[8];
            Paint paint5 = new Paint();
            this.mFillPaint = paint5;
            paint5.setAntiAlias(true);
            DashPathEffect dashPathEffect = new DashPathEffect(new float[]{4.0f, 8.0f}, 0.0f);
            this.mDashPathEffect = dashPathEffect;
            this.mPaintGraph.setPathEffect(dashPathEffect);
            this.mKeyFramePoints = new float[100];
            this.mPathMode = new int[50];
            if (this.mPresentationMode) {
                this.mPaint.setStrokeWidth(8.0f);
                this.mFillPaint.setStrokeWidth(8.0f);
                this.mPaintKeyframes.setStrokeWidth(8.0f);
                this.mShadowTranslate = 4;
            }
        }

        private void drawBasicPath(Canvas canvas) {
            canvas.drawLines(this.mPoints, this.mPaint);
        }

        private void drawPathAsConfigured(Canvas canvas) {
            boolean z3 = false;
            boolean z4 = false;
            for (int i4 = 0; i4 < this.mKeyFrameCount; i4++) {
                int[] iArr = this.mPathMode;
                if (iArr[i4] == 1) {
                    z3 = true;
                }
                if (iArr[i4] == 2) {
                    z4 = true;
                }
            }
            if (z3) {
                drawPathRelative(canvas);
            }
            if (z4) {
                drawPathCartesian(canvas);
            }
        }

        private void drawPathCartesian(Canvas canvas) {
            float[] fArr = this.mPoints;
            float f4 = fArr[0];
            float f5 = fArr[1];
            float f6 = fArr[fArr.length - 2];
            float f7 = fArr[fArr.length - 1];
            canvas.drawLine(Math.min(f4, f6), Math.max(f5, f7), Math.max(f4, f6), Math.max(f5, f7), this.mPaintGraph);
            canvas.drawLine(Math.min(f4, f6), Math.min(f5, f7), Math.min(f4, f6), Math.max(f5, f7), this.mPaintGraph);
        }

        private void drawPathCartesianTicks(Canvas canvas, float f4, float f5) {
            float[] fArr = this.mPoints;
            float f6 = fArr[0];
            float f7 = fArr[1];
            float f8 = fArr[fArr.length - 2];
            float f9 = fArr[fArr.length - 1];
            float fMin = Math.min(f6, f8);
            float fMax = Math.max(f7, f9);
            float fMin2 = f4 - Math.min(f6, f8);
            float fMax2 = Math.max(f7, f9) - f5;
            StringBuilder sbA = f.a("");
            Double.isNaN((fMin2 * 100.0f) / Math.abs(f8 - f6));
            sbA.append(((int) (r14 + 0.5d)) / 100.0f);
            String string = sbA.toString();
            getTextBounds(string, this.mTextPaint);
            canvas.drawText(string, ((fMin2 / 2.0f) - (this.mBounds.width() / 2)) + fMin, f5 - 20.0f, this.mTextPaint);
            canvas.drawLine(f4, f5, Math.min(f6, f8), f5, this.mPaintGraph);
            StringBuilder sbA2 = f.a("");
            Double.isNaN((fMax2 * 100.0f) / Math.abs(f9 - f7));
            sbA2.append(((int) (r2 + 0.5d)) / 100.0f);
            String string2 = sbA2.toString();
            getTextBounds(string2, this.mTextPaint);
            canvas.drawText(string2, f4 + 5.0f, fMax - ((fMax2 / 2.0f) - (this.mBounds.height() / 2)), this.mTextPaint);
            canvas.drawLine(f4, f5, f4, Math.max(f7, f9), this.mPaintGraph);
        }

        private void drawPathRelative(Canvas canvas) {
            float[] fArr = this.mPoints;
            canvas.drawLine(fArr[0], fArr[1], fArr[fArr.length - 2], fArr[fArr.length - 1], this.mPaintGraph);
        }

        private void drawPathRelativeTicks(Canvas canvas, float f4, float f5) {
            float[] fArr = this.mPoints;
            float f6 = fArr[0];
            float f7 = fArr[1];
            float f8 = fArr[fArr.length - 2];
            float f9 = fArr[fArr.length - 1];
            float fHypot = (float) Math.hypot(f6 - f8, f7 - f9);
            float f10 = f8 - f6;
            float f11 = f9 - f7;
            float f12 = (((f5 - f7) * f11) + ((f4 - f6) * f10)) / (fHypot * fHypot);
            float f13 = f6 + (f10 * f12);
            float f14 = f7 + (f12 * f11);
            Path path = new Path();
            path.moveTo(f4, f5);
            path.lineTo(f13, f14);
            float fHypot2 = (float) Math.hypot(f13 - f4, f14 - f5);
            StringBuilder sbA = f.a("");
            sbA.append(((int) ((fHypot2 * 100.0f) / fHypot)) / 100.0f);
            String string = sbA.toString();
            getTextBounds(string, this.mTextPaint);
            canvas.drawTextOnPath(string, path, (fHypot2 / 2.0f) - (this.mBounds.width() / 2), -20.0f, this.mTextPaint);
            canvas.drawLine(f4, f5, f13, f14, this.mPaintGraph);
        }

        private void drawPathScreenTicks(Canvas canvas, float f4, float f5, int i4, int i5) {
            StringBuilder sbA = f.a("");
            Double.isNaN(((f4 - (i4 / 2)) * 100.0f) / (MotionLayout.this.getWidth() - i4));
            sbA.append(((int) (r2 + 0.5d)) / 100.0f);
            String string = sbA.toString();
            getTextBounds(string, this.mTextPaint);
            canvas.drawText(string, ((f4 / 2.0f) - (this.mBounds.width() / 2)) + 0.0f, f5 - 20.0f, this.mTextPaint);
            canvas.drawLine(f4, f5, Math.min(0.0f, 1.0f), f5, this.mPaintGraph);
            StringBuilder sbA2 = f.a("");
            Double.isNaN(((f5 - (i5 / 2)) * 100.0f) / (MotionLayout.this.getHeight() - i5));
            sbA2.append(((int) (r2 + 0.5d)) / 100.0f);
            String string2 = sbA2.toString();
            getTextBounds(string2, this.mTextPaint);
            canvas.drawText(string2, f4 + 5.0f, 0.0f - ((f5 / 2.0f) - (this.mBounds.height() / 2)), this.mTextPaint);
            canvas.drawLine(f4, f5, f4, Math.max(0.0f, 1.0f), this.mPaintGraph);
        }

        private void drawRectangle(Canvas canvas, MotionController motionController) {
            this.mPath.reset();
            for (int i4 = 0; i4 <= 50; i4++) {
                motionController.buildRect(i4 / 50, this.mRectangle, 0);
                Path path = this.mPath;
                float[] fArr = this.mRectangle;
                path.moveTo(fArr[0], fArr[1]);
                Path path2 = this.mPath;
                float[] fArr2 = this.mRectangle;
                path2.lineTo(fArr2[2], fArr2[3]);
                Path path3 = this.mPath;
                float[] fArr3 = this.mRectangle;
                path3.lineTo(fArr3[4], fArr3[5]);
                Path path4 = this.mPath;
                float[] fArr4 = this.mRectangle;
                path4.lineTo(fArr4[6], fArr4[7]);
                this.mPath.close();
            }
            this.mPaint.setColor(1140850688);
            canvas.translate(2.0f, 2.0f);
            canvas.drawPath(this.mPath, this.mPaint);
            canvas.translate(-2.0f, -2.0f);
            this.mPaint.setColor(SupportMenu.CATEGORY_MASK);
            canvas.drawPath(this.mPath, this.mPaint);
        }

        private void drawTicks(Canvas canvas, int i4, int i5, MotionController motionController) {
            int width;
            int height;
            float f4;
            float f5;
            int i6;
            View view = motionController.mView;
            if (view != null) {
                width = view.getWidth();
                height = motionController.mView.getHeight();
            } else {
                width = 0;
                height = 0;
            }
            for (int i7 = 1; i7 < i5 - 1; i7++) {
                if (i4 != 4 || this.mPathMode[i7 - 1] != 0) {
                    float[] fArr = this.mKeyFramePoints;
                    int i8 = i7 * 2;
                    float f6 = fArr[i8];
                    float f7 = fArr[i8 + 1];
                    this.mPath.reset();
                    this.mPath.moveTo(f6, f7 + 10.0f);
                    this.mPath.lineTo(f6 + 10.0f, f7);
                    this.mPath.lineTo(f6, f7 - 10.0f);
                    this.mPath.lineTo(f6 - 10.0f, f7);
                    this.mPath.close();
                    int i9 = i7 - 1;
                    motionController.getKeyFrame(i9);
                    if (i4 == 4) {
                        int[] iArr = this.mPathMode;
                        if (iArr[i9] == 1) {
                            drawPathRelativeTicks(canvas, f6 - 0.0f, f7 - 0.0f);
                        } else if (iArr[i9] == 2) {
                            drawPathCartesianTicks(canvas, f6 - 0.0f, f7 - 0.0f);
                        } else {
                            if (iArr[i9] == 3) {
                                i6 = 3;
                                f4 = f7;
                                f5 = f6;
                                drawPathScreenTicks(canvas, f6 - 0.0f, f7 - 0.0f, width, height);
                            }
                            canvas.drawPath(this.mPath, this.mFillPaint);
                        }
                        f4 = f7;
                        f5 = f6;
                        i6 = 3;
                        canvas.drawPath(this.mPath, this.mFillPaint);
                    } else {
                        f4 = f7;
                        f5 = f6;
                        i6 = 3;
                    }
                    if (i4 == 2) {
                        drawPathRelativeTicks(canvas, f5 - 0.0f, f4 - 0.0f);
                    }
                    if (i4 == i6) {
                        drawPathCartesianTicks(canvas, f5 - 0.0f, f4 - 0.0f);
                    }
                    if (i4 == 6) {
                        drawPathScreenTicks(canvas, f5 - 0.0f, f4 - 0.0f, width, height);
                    }
                    canvas.drawPath(this.mPath, this.mFillPaint);
                }
            }
            float[] fArr2 = this.mPoints;
            if (fArr2.length > 1) {
                canvas.drawCircle(fArr2[0], fArr2[1], 8.0f, this.mPaintKeyframes);
                float[] fArr3 = this.mPoints;
                canvas.drawCircle(fArr3[fArr3.length - 2], fArr3[fArr3.length - 1], 8.0f, this.mPaintKeyframes);
            }
        }

        private void drawTranslation(Canvas canvas, float f4, float f5, float f6, float f7) {
            canvas.drawRect(f4, f5, f6, f7, this.mPaintGraph);
            canvas.drawLine(f4, f5, f6, f7, this.mPaintGraph);
        }

        public void draw(Canvas canvas, HashMap<View, MotionController> map, int i4, int i5) {
            if (map == null || map.size() == 0) {
                return;
            }
            canvas.save();
            if (!MotionLayout.this.isInEditMode() && (i5 & 1) == 2) {
                String str = MotionLayout.this.getContext().getResources().getResourceName(MotionLayout.this.mEndState) + ":" + MotionLayout.this.getProgress();
                canvas.drawText(str, 10.0f, MotionLayout.this.getHeight() - 30, this.mTextPaint);
                canvas.drawText(str, 11.0f, MotionLayout.this.getHeight() - 29, this.mPaint);
            }
            for (MotionController motionController : map.values()) {
                int drawPath = motionController.getDrawPath();
                if (i5 > 0 && drawPath == 0) {
                    drawPath = 1;
                }
                if (drawPath != 0) {
                    this.mKeyFrameCount = motionController.buildKeyFrames(this.mKeyFramePoints, this.mPathMode);
                    if (drawPath >= 1) {
                        int i6 = i4 / 16;
                        float[] fArr = this.mPoints;
                        if (fArr == null || fArr.length != i6 * 2) {
                            this.mPoints = new float[i6 * 2];
                            this.mPath = new Path();
                        }
                        int i7 = this.mShadowTranslate;
                        canvas.translate(i7, i7);
                        this.mPaint.setColor(1996488704);
                        this.mFillPaint.setColor(1996488704);
                        this.mPaintKeyframes.setColor(1996488704);
                        this.mPaintGraph.setColor(1996488704);
                        motionController.buildPath(this.mPoints, i6);
                        drawAll(canvas, drawPath, this.mKeyFrameCount, motionController);
                        this.mPaint.setColor(-21965);
                        this.mPaintKeyframes.setColor(-2067046);
                        this.mFillPaint.setColor(-2067046);
                        this.mPaintGraph.setColor(-13391360);
                        int i8 = this.mShadowTranslate;
                        canvas.translate(-i8, -i8);
                        drawAll(canvas, drawPath, this.mKeyFrameCount, motionController);
                        if (drawPath == 5) {
                            drawRectangle(canvas, motionController);
                        }
                    }
                }
            }
            canvas.restore();
        }

        public void drawAll(Canvas canvas, int i4, int i5, MotionController motionController) {
            if (i4 == 4) {
                drawPathAsConfigured(canvas);
            }
            if (i4 == 2) {
                drawPathRelative(canvas);
            }
            if (i4 == 3) {
                drawPathCartesian(canvas);
            }
            drawBasicPath(canvas);
            drawTicks(canvas, i4, i5, motionController);
        }

        public void getTextBounds(String str, Paint paint) {
            paint.getTextBounds(str, 0, str.length(), this.mBounds);
        }
    }

    public class Model {
        public int mEndId;
        public int mStartId;
        public ConstraintWidgetContainer mLayoutStart = new ConstraintWidgetContainer();
        public ConstraintWidgetContainer mLayoutEnd = new ConstraintWidgetContainer();
        public ConstraintSet mStart = null;
        public ConstraintSet mEnd = null;

        public Model() {
        }

        private void debugLayout(String str, ConstraintWidgetContainer constraintWidgetContainer) {
            View view = (View) constraintWidgetContainer.getCompanionWidget();
            StringBuilder sbA = g.a(str, " ");
            sbA.append(Debug.getName(view));
            String string = sbA.toString();
            Log.v(MotionLayout.TAG, string + "  ========= " + constraintWidgetContainer);
            int size = constraintWidgetContainer.getChildren().size();
            for (int i4 = 0; i4 < size; i4++) {
                String str2 = string + "[" + i4 + "] ";
                ConstraintWidget constraintWidget = constraintWidgetContainer.getChildren().get(i4);
                StringBuilder sbA2 = f.a("");
                sbA2.append(constraintWidget.mTop.mTarget != null ? "T" : "_");
                StringBuilder sbA3 = f.a(sbA2.toString());
                sbA3.append(constraintWidget.mBottom.mTarget != null ? "B" : "_");
                StringBuilder sbA4 = f.a(sbA3.toString());
                sbA4.append(constraintWidget.mLeft.mTarget != null ? "L" : "_");
                StringBuilder sbA5 = f.a(sbA4.toString());
                sbA5.append(constraintWidget.mRight.mTarget != null ? "R" : "_");
                String string2 = sbA5.toString();
                View view2 = (View) constraintWidget.getCompanionWidget();
                String name = Debug.getName(view2);
                if (view2 instanceof TextView) {
                    StringBuilder sbA6 = g.a(name, "(");
                    sbA6.append((Object) ((TextView) view2).getText());
                    sbA6.append(")");
                    name = sbA6.toString();
                }
                Log.v(MotionLayout.TAG, str2 + "  " + name + " " + constraintWidget + " " + string2);
            }
            Log.v(MotionLayout.TAG, string + " done. ");
        }

        private void debugLayoutParam(String str, ConstraintLayout.LayoutParams layoutParams) {
            StringBuilder sbA = f.a(" ");
            sbA.append(layoutParams.startToStart != -1 ? "SS" : "__");
            StringBuilder sbA2 = f.a(sbA.toString());
            sbA2.append(layoutParams.startToEnd != -1 ? "|SE" : "|__");
            StringBuilder sbA3 = f.a(sbA2.toString());
            sbA3.append(layoutParams.endToStart != -1 ? "|ES" : "|__");
            StringBuilder sbA4 = f.a(sbA3.toString());
            sbA4.append(layoutParams.endToEnd != -1 ? "|EE" : "|__");
            StringBuilder sbA5 = f.a(sbA4.toString());
            sbA5.append(layoutParams.leftToLeft != -1 ? "|LL" : "|__");
            StringBuilder sbA6 = f.a(sbA5.toString());
            sbA6.append(layoutParams.leftToRight != -1 ? "|LR" : "|__");
            StringBuilder sbA7 = f.a(sbA6.toString());
            sbA7.append(layoutParams.rightToLeft != -1 ? "|RL" : "|__");
            StringBuilder sbA8 = f.a(sbA7.toString());
            sbA8.append(layoutParams.rightToRight != -1 ? "|RR" : "|__");
            StringBuilder sbA9 = f.a(sbA8.toString());
            sbA9.append(layoutParams.topToTop != -1 ? "|TT" : "|__");
            StringBuilder sbA10 = f.a(sbA9.toString());
            sbA10.append(layoutParams.topToBottom != -1 ? "|TB" : "|__");
            StringBuilder sbA11 = f.a(sbA10.toString());
            sbA11.append(layoutParams.bottomToTop != -1 ? "|BT" : "|__");
            StringBuilder sbA12 = f.a(sbA11.toString());
            sbA12.append(layoutParams.bottomToBottom != -1 ? "|BB" : "|__");
            Log.v(MotionLayout.TAG, str + sbA12.toString());
        }

        private void debugWidget(String str, ConstraintWidget constraintWidget) {
            String string;
            String string2;
            String string3;
            StringBuilder sbA = f.a(" ");
            String string4 = "__";
            if (constraintWidget.mTop.mTarget != null) {
                StringBuilder sbA2 = f.a("T");
                sbA2.append(constraintWidget.mTop.mTarget.mType == ConstraintAnchor.Type.TOP ? "T" : "B");
                string = sbA2.toString();
            } else {
                string = "__";
            }
            sbA.append(string);
            StringBuilder sbA3 = f.a(sbA.toString());
            if (constraintWidget.mBottom.mTarget != null) {
                StringBuilder sbA4 = f.a("B");
                sbA4.append(constraintWidget.mBottom.mTarget.mType == ConstraintAnchor.Type.TOP ? "T" : "B");
                string2 = sbA4.toString();
            } else {
                string2 = "__";
            }
            sbA3.append(string2);
            StringBuilder sbA5 = f.a(sbA3.toString());
            if (constraintWidget.mLeft.mTarget != null) {
                StringBuilder sbA6 = f.a("L");
                sbA6.append(constraintWidget.mLeft.mTarget.mType == ConstraintAnchor.Type.LEFT ? "L" : "R");
                string3 = sbA6.toString();
            } else {
                string3 = "__";
            }
            sbA5.append(string3);
            StringBuilder sbA7 = f.a(sbA5.toString());
            if (constraintWidget.mRight.mTarget != null) {
                StringBuilder sbA8 = f.a("R");
                sbA8.append(constraintWidget.mRight.mTarget.mType == ConstraintAnchor.Type.LEFT ? "L" : "R");
                string4 = sbA8.toString();
            }
            sbA7.append(string4);
            Log.v(MotionLayout.TAG, str + sbA7.toString() + " ---  " + constraintWidget);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void setupConstraintWidget(ConstraintWidgetContainer constraintWidgetContainer, ConstraintSet constraintSet) {
            SparseArray<ConstraintWidget> sparseArray = new SparseArray<>();
            Constraints.LayoutParams layoutParams = new Constraints.LayoutParams(-2, -2);
            sparseArray.clear();
            sparseArray.put(0, constraintWidgetContainer);
            sparseArray.put(MotionLayout.this.getId(), constraintWidgetContainer);
            for (ConstraintWidget constraintWidget : constraintWidgetContainer.getChildren()) {
                sparseArray.put(((View) constraintWidget.getCompanionWidget()).getId(), constraintWidget);
            }
            for (ConstraintWidget constraintWidget2 : constraintWidgetContainer.getChildren()) {
                View view = (View) constraintWidget2.getCompanionWidget();
                constraintSet.applyToLayoutParams(view.getId(), layoutParams);
                constraintWidget2.setWidth(constraintSet.getWidth(view.getId()));
                constraintWidget2.setHeight(constraintSet.getHeight(view.getId()));
                if (view instanceof ConstraintHelper) {
                    constraintSet.applyToHelper((ConstraintHelper) view, constraintWidget2, layoutParams, sparseArray);
                    if (view instanceof Barrier) {
                        ((Barrier) view).validateParams();
                    }
                }
                layoutParams.resolveLayoutDirection(MotionLayout.this.getLayoutDirection());
                MotionLayout.this.applyConstraintsFromLayoutParams(false, view, constraintWidget2, layoutParams, sparseArray);
                if (constraintSet.getVisibilityMode(view.getId()) == 1) {
                    constraintWidget2.setVisibility(view.getVisibility());
                } else {
                    constraintWidget2.setVisibility(constraintSet.getVisibility(view.getId()));
                }
            }
            for (ConstraintWidget constraintWidget3 : constraintWidgetContainer.getChildren()) {
                if (constraintWidget3 instanceof VirtualLayout) {
                    ConstraintHelper constraintHelper = (ConstraintHelper) constraintWidget3.getCompanionWidget();
                    Helper helper = (Helper) constraintWidget3;
                    constraintHelper.updatePreLayout(constraintWidgetContainer, helper, sparseArray);
                    ((VirtualLayout) helper).captureWidgets();
                }
            }
        }

        public void build() {
            int childCount = MotionLayout.this.getChildCount();
            MotionLayout.this.mFrameArrayList.clear();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = MotionLayout.this.getChildAt(i4);
                MotionLayout.this.mFrameArrayList.put(childAt, new MotionController(childAt));
            }
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt2 = MotionLayout.this.getChildAt(i5);
                MotionController motionController = MotionLayout.this.mFrameArrayList.get(childAt2);
                if (motionController != null) {
                    if (this.mStart != null) {
                        ConstraintWidget widget = getWidget(this.mLayoutStart, childAt2);
                        if (widget != null) {
                            motionController.setStartState(widget, this.mStart);
                        } else if (MotionLayout.this.mDebugPath != 0) {
                            Log.e(MotionLayout.TAG, Debug.getLocation() + "no widget for  " + Debug.getName(childAt2) + " (" + childAt2.getClass().getName() + ")");
                        }
                    }
                    if (this.mEnd != null) {
                        ConstraintWidget widget2 = getWidget(this.mLayoutEnd, childAt2);
                        if (widget2 != null) {
                            motionController.setEndState(widget2, this.mEnd);
                        } else if (MotionLayout.this.mDebugPath != 0) {
                            Log.e(MotionLayout.TAG, Debug.getLocation() + "no widget for  " + Debug.getName(childAt2) + " (" + childAt2.getClass().getName() + ")");
                        }
                    }
                }
            }
        }

        public void copy(ConstraintWidgetContainer constraintWidgetContainer, ConstraintWidgetContainer constraintWidgetContainer2) {
            ArrayList<ConstraintWidget> children = constraintWidgetContainer.getChildren();
            HashMap<ConstraintWidget, ConstraintWidget> map = new HashMap<>();
            map.put(constraintWidgetContainer, constraintWidgetContainer2);
            constraintWidgetContainer2.getChildren().clear();
            constraintWidgetContainer2.copy(constraintWidgetContainer, map);
            for (ConstraintWidget constraintWidget : children) {
                ConstraintWidget barrier = constraintWidget instanceof androidx.constraintlayout.solver.widgets.Barrier ? new androidx.constraintlayout.solver.widgets.Barrier() : constraintWidget instanceof Guideline ? new Guideline() : constraintWidget instanceof Flow ? new Flow() : constraintWidget instanceof Helper ? new HelperWidget() : new ConstraintWidget();
                constraintWidgetContainer2.add(barrier);
                map.put(constraintWidget, barrier);
            }
            for (ConstraintWidget constraintWidget2 : children) {
                map.get(constraintWidget2).copy(constraintWidget2, map);
            }
        }

        public ConstraintWidget getWidget(ConstraintWidgetContainer constraintWidgetContainer, View view) {
            if (constraintWidgetContainer.getCompanionWidget() == view) {
                return constraintWidgetContainer;
            }
            ArrayList<ConstraintWidget> children = constraintWidgetContainer.getChildren();
            int size = children.size();
            for (int i4 = 0; i4 < size; i4++) {
                ConstraintWidget constraintWidget = children.get(i4);
                if (constraintWidget.getCompanionWidget() == view) {
                    return constraintWidget;
                }
            }
            return null;
        }

        public void initFrom(ConstraintWidgetContainer constraintWidgetContainer, ConstraintSet constraintSet, ConstraintSet constraintSet2) {
            this.mStart = constraintSet;
            this.mEnd = constraintSet2;
            this.mLayoutStart = new ConstraintWidgetContainer();
            this.mLayoutEnd = new ConstraintWidgetContainer();
            this.mLayoutStart.setMeasurer(MotionLayout.this.mLayoutWidget.getMeasurer());
            this.mLayoutEnd.setMeasurer(MotionLayout.this.mLayoutWidget.getMeasurer());
            this.mLayoutStart.removeAllChildren();
            this.mLayoutEnd.removeAllChildren();
            copy(MotionLayout.this.mLayoutWidget, this.mLayoutStart);
            copy(MotionLayout.this.mLayoutWidget, this.mLayoutEnd);
            if (MotionLayout.this.mTransitionLastPosition > 0.5d) {
                if (constraintSet != null) {
                    setupConstraintWidget(this.mLayoutStart, constraintSet);
                }
                setupConstraintWidget(this.mLayoutEnd, constraintSet2);
            } else {
                setupConstraintWidget(this.mLayoutEnd, constraintSet2);
                if (constraintSet != null) {
                    setupConstraintWidget(this.mLayoutStart, constraintSet);
                }
            }
            this.mLayoutStart.setRtl(MotionLayout.this.isRtl());
            this.mLayoutStart.updateHierarchy();
            this.mLayoutEnd.setRtl(MotionLayout.this.isRtl());
            this.mLayoutEnd.updateHierarchy();
            ViewGroup.LayoutParams layoutParams = MotionLayout.this.getLayoutParams();
            if (layoutParams != null) {
                if (layoutParams.width == -2) {
                    ConstraintWidgetContainer constraintWidgetContainer2 = this.mLayoutStart;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    constraintWidgetContainer2.setHorizontalDimensionBehaviour(dimensionBehaviour);
                    this.mLayoutEnd.setHorizontalDimensionBehaviour(dimensionBehaviour);
                }
                if (layoutParams.height == -2) {
                    ConstraintWidgetContainer constraintWidgetContainer3 = this.mLayoutStart;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    constraintWidgetContainer3.setVerticalDimensionBehaviour(dimensionBehaviour2);
                    this.mLayoutEnd.setVerticalDimensionBehaviour(dimensionBehaviour2);
                }
            }
        }

        public boolean isNotConfiguredWith(int i4, int i5) {
            return (i4 == this.mStartId && i5 == this.mEndId) ? false : true;
        }

        public void measure(int i4, int i5) {
            int mode = View.MeasureSpec.getMode(i4);
            int mode2 = View.MeasureSpec.getMode(i5);
            MotionLayout motionLayout = MotionLayout.this;
            motionLayout.mWidthMeasureMode = mode;
            motionLayout.mHeightMeasureMode = mode2;
            int optimizationLevel = motionLayout.getOptimizationLevel();
            MotionLayout motionLayout2 = MotionLayout.this;
            if (motionLayout2.mCurrentState == motionLayout2.getStartState()) {
                MotionLayout.this.resolveSystem(this.mLayoutEnd, optimizationLevel, i4, i5);
                if (this.mStart != null) {
                    MotionLayout.this.resolveSystem(this.mLayoutStart, optimizationLevel, i4, i5);
                }
            } else {
                if (this.mStart != null) {
                    MotionLayout.this.resolveSystem(this.mLayoutStart, optimizationLevel, i4, i5);
                }
                MotionLayout.this.resolveSystem(this.mLayoutEnd, optimizationLevel, i4, i5);
            }
            if (((MotionLayout.this.getParent() instanceof MotionLayout) && mode == 1073741824 && mode2 == 1073741824) ? false : true) {
                MotionLayout motionLayout3 = MotionLayout.this;
                motionLayout3.mWidthMeasureMode = mode;
                motionLayout3.mHeightMeasureMode = mode2;
                if (motionLayout3.mCurrentState == motionLayout3.getStartState()) {
                    MotionLayout.this.resolveSystem(this.mLayoutEnd, optimizationLevel, i4, i5);
                    if (this.mStart != null) {
                        MotionLayout.this.resolveSystem(this.mLayoutStart, optimizationLevel, i4, i5);
                    }
                } else {
                    if (this.mStart != null) {
                        MotionLayout.this.resolveSystem(this.mLayoutStart, optimizationLevel, i4, i5);
                    }
                    MotionLayout.this.resolveSystem(this.mLayoutEnd, optimizationLevel, i4, i5);
                }
                MotionLayout.this.mStartWrapWidth = this.mLayoutStart.getWidth();
                MotionLayout.this.mStartWrapHeight = this.mLayoutStart.getHeight();
                MotionLayout.this.mEndWrapWidth = this.mLayoutEnd.getWidth();
                MotionLayout.this.mEndWrapHeight = this.mLayoutEnd.getHeight();
                MotionLayout motionLayout4 = MotionLayout.this;
                motionLayout4.mMeasureDuringTransition = (motionLayout4.mStartWrapWidth == motionLayout4.mEndWrapWidth && motionLayout4.mStartWrapHeight == motionLayout4.mEndWrapHeight) ? false : true;
            }
            MotionLayout motionLayout5 = MotionLayout.this;
            int i6 = motionLayout5.mStartWrapWidth;
            int i7 = motionLayout5.mStartWrapHeight;
            int i8 = motionLayout5.mWidthMeasureMode;
            if (i8 == Integer.MIN_VALUE || i8 == 0) {
                i6 = (int) ((motionLayout5.mPostInterpolationPosition * (motionLayout5.mEndWrapWidth - i6)) + i6);
            }
            int i9 = motionLayout5.mHeightMeasureMode;
            if (i9 == Integer.MIN_VALUE || i9 == 0) {
                i7 = (int) ((motionLayout5.mPostInterpolationPosition * (motionLayout5.mEndWrapHeight - i7)) + i7);
            }
            MotionLayout.this.resolveMeasuredDimension(i4, i5, i6, i7, this.mLayoutStart.isWidthMeasuredTooSmall() || this.mLayoutEnd.isWidthMeasuredTooSmall(), this.mLayoutStart.isHeightMeasuredTooSmall() || this.mLayoutEnd.isHeightMeasuredTooSmall());
        }

        public void reEvaluateState() {
            measure(MotionLayout.this.mLastWidthMeasureSpec, MotionLayout.this.mLastHeightMeasureSpec);
            MotionLayout.this.setupMotionViews();
        }

        public void setMeasuredId(int i4, int i5) {
            this.mStartId = i4;
            this.mEndId = i5;
        }
    }

    public interface MotionTracker {
        void addMovement(MotionEvent motionEvent);

        void clear();

        void computeCurrentVelocity(int i4);

        void computeCurrentVelocity(int i4, float f4);

        float getXVelocity();

        float getXVelocity(int i4);

        float getYVelocity();

        float getYVelocity(int i4);

        void recycle();
    }

    public static class MyTracker implements MotionTracker {
        private static MyTracker me = new MyTracker();
        public VelocityTracker tracker;

        private MyTracker() {
        }

        public static MyTracker obtain() {
            me.tracker = VelocityTracker.obtain();
            return me;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void addMovement(MotionEvent motionEvent) {
            VelocityTracker velocityTracker = this.tracker;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void clear() {
            this.tracker.clear();
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void computeCurrentVelocity(int i4) {
            this.tracker.computeCurrentVelocity(i4);
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public float getXVelocity() {
            return this.tracker.getXVelocity();
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public float getYVelocity() {
            return this.tracker.getYVelocity();
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void recycle() {
            this.tracker.recycle();
            this.tracker = null;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void computeCurrentVelocity(int i4, float f4) {
            this.tracker.computeCurrentVelocity(i4, f4);
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public float getXVelocity(int i4) {
            return this.tracker.getXVelocity(i4);
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public float getYVelocity(int i4) {
            return getYVelocity(i4);
        }
    }

    public class StateCache {
        public float mProgress = Float.NaN;
        public float mVelocity = Float.NaN;
        public int startState = -1;
        public int endState = -1;
        public final String KeyProgress = "motion.progress";
        public final String KeyVelocity = "motion.velocity";
        public final String KeyStartState = "motion.StartState";
        public final String KeyEndState = "motion.EndState";

        public StateCache() {
        }

        public void apply() {
            int i4 = this.startState;
            if (i4 != -1 || this.endState != -1) {
                if (i4 == -1) {
                    MotionLayout.this.transitionToState(this.endState);
                } else {
                    int i5 = this.endState;
                    if (i5 == -1) {
                        MotionLayout.this.setState(i4, -1, -1);
                    } else {
                        MotionLayout.this.setTransition(i4, i5);
                    }
                }
                MotionLayout.this.setState(TransitionState.SETUP);
            }
            if (Float.isNaN(this.mVelocity)) {
                if (Float.isNaN(this.mProgress)) {
                    return;
                }
                MotionLayout.this.setProgress(this.mProgress);
            } else {
                MotionLayout.this.setProgress(this.mProgress, this.mVelocity);
                this.mProgress = Float.NaN;
                this.mVelocity = Float.NaN;
                this.startState = -1;
                this.endState = -1;
            }
        }

        public Bundle getTransitionState() {
            Bundle bundle = new Bundle();
            bundle.putFloat("motion.progress", this.mProgress);
            bundle.putFloat("motion.velocity", this.mVelocity);
            bundle.putInt("motion.StartState", this.startState);
            bundle.putInt("motion.EndState", this.endState);
            return bundle;
        }

        public void recordState() {
            this.endState = MotionLayout.this.mEndState;
            this.startState = MotionLayout.this.mBeginState;
            this.mVelocity = MotionLayout.this.getVelocity();
            this.mProgress = MotionLayout.this.getProgress();
        }

        public void setEndState(int i4) {
            this.endState = i4;
        }

        public void setProgress(float f4) {
            this.mProgress = f4;
        }

        public void setStartState(int i4) {
            this.startState = i4;
        }

        public void setTransitionState(Bundle bundle) {
            this.mProgress = bundle.getFloat("motion.progress");
            this.mVelocity = bundle.getFloat("motion.velocity");
            this.startState = bundle.getInt("motion.StartState");
            this.endState = bundle.getInt("motion.EndState");
        }

        public void setVelocity(float f4) {
            this.mVelocity = f4;
        }
    }

    public interface TransitionListener {
        void onTransitionChange(MotionLayout motionLayout, int i4, int i5, float f4);

        void onTransitionCompleted(MotionLayout motionLayout, int i4);

        void onTransitionStarted(MotionLayout motionLayout, int i4, int i5);

        void onTransitionTrigger(MotionLayout motionLayout, int i4, boolean z3, float f4);
    }

    public enum TransitionState {
        UNDEFINED,
        SETUP,
        MOVING,
        FINISHED
    }

    public MotionLayout(@NonNull Context context) {
        super(context);
        this.mLastVelocity = 0.0f;
        this.mBeginState = -1;
        this.mCurrentState = -1;
        this.mEndState = -1;
        this.mLastWidthMeasureSpec = 0;
        this.mLastHeightMeasureSpec = 0;
        this.mInteractionEnabled = true;
        this.mFrameArrayList = new HashMap<>();
        this.mAnimationStartTime = 0L;
        this.mTransitionDuration = 1.0f;
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        this.mTransitionGoalPosition = 0.0f;
        this.mInTransition = false;
        this.mIndirectTransition = false;
        this.mDebugPath = 0;
        this.mTemporalInterpolator = false;
        this.mStopLogic = new StopLogic();
        this.mDecelerateLogic = new DecelerateInterpolator();
        this.firstDown = true;
        this.mUndergoingMotion = false;
        this.mKeepAnimating = false;
        this.mOnShowHelpers = null;
        this.mOnHideHelpers = null;
        this.mTransitionListeners = null;
        this.mFrames = 0;
        this.mLastDrawTime = -1L;
        this.mLastFps = 0.0f;
        this.mListenerState = 0;
        this.mListenerPosition = 0.0f;
        this.mIsAnimating = false;
        this.mMeasureDuringTransition = false;
        this.mKeyCache = new KeyCache();
        this.mInLayout = false;
        this.mTransitionState = TransitionState.UNDEFINED;
        this.mModel = new Model();
        this.mNeedsFireTransitionCompleted = false;
        this.mBoundsCheck = new RectF();
        this.mRegionView = null;
        this.mTransitionCompleted = new ArrayList<>();
        init(null);
    }

    private void checkStructure() {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            Log.e(TAG, "CHECK: motion scene not set! set \"app:layoutDescription=\"@xml/file\"");
            return;
        }
        int startId = motionScene.getStartId();
        MotionScene motionScene2 = this.mScene;
        checkStructure(startId, motionScene2.getConstraintSet(motionScene2.getStartId()));
        SparseIntArray sparseIntArray = new SparseIntArray();
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        for (MotionScene.Transition transition : this.mScene.getDefinedTransitions()) {
            if (transition == this.mScene.mCurrentTransition) {
                Log.v(TAG, "CHECK: CURRENT");
            }
            checkStructure(transition);
            int startConstraintSetId = transition.getStartConstraintSetId();
            int endConstraintSetId = transition.getEndConstraintSetId();
            String name = Debug.getName(getContext(), startConstraintSetId);
            String name2 = Debug.getName(getContext(), endConstraintSetId);
            if (sparseIntArray.get(startConstraintSetId) == endConstraintSetId) {
                Log.e(TAG, "CHECK: two transitions with the same start and end " + name + "->" + name2);
            }
            if (sparseIntArray2.get(endConstraintSetId) == startConstraintSetId) {
                Log.e(TAG, "CHECK: you can't have reverse transitions" + name + "->" + name2);
            }
            sparseIntArray.put(startConstraintSetId, endConstraintSetId);
            sparseIntArray2.put(endConstraintSetId, startConstraintSetId);
            if (this.mScene.getConstraintSet(startConstraintSetId) == null) {
                Log.e(TAG, " no such constraintSetStart " + name);
            }
            if (this.mScene.getConstraintSet(endConstraintSetId) == null) {
                Log.e(TAG, " no such constraintSetEnd " + name);
            }
        }
    }

    private void computeCurrentPositions() {
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            MotionController motionController = this.mFrameArrayList.get(childAt);
            if (motionController != null) {
                motionController.setStartCurrentState(childAt);
            }
        }
    }

    private void debugPos() {
        for (int i4 = 0; i4 < getChildCount(); i4++) {
            View childAt = getChildAt(i4);
            StringBuilder sbA = f.a(" ");
            sbA.append(Debug.getLocation());
            sbA.append(" ");
            sbA.append(Debug.getName(this));
            sbA.append(" ");
            sbA.append(Debug.getName(getContext(), this.mCurrentState));
            sbA.append(" ");
            sbA.append(Debug.getName(childAt));
            sbA.append(childAt.getLeft());
            sbA.append(" ");
            sbA.append(childAt.getTop());
            Log.v(TAG, sbA.toString());
        }
    }

    private void evaluateLayout() {
        boolean z3;
        float fSignum = Math.signum(this.mTransitionGoalPosition - this.mTransitionLastPosition);
        long nanoTime = getNanoTime();
        Interpolator interpolator = this.mInterpolator;
        float interpolation = this.mTransitionLastPosition + (!(interpolator instanceof StopLogic) ? (((nanoTime - this.mTransitionLastTime) * fSignum) * 1.0E-9f) / this.mTransitionDuration : 0.0f);
        if (this.mTransitionInstantly) {
            interpolation = this.mTransitionGoalPosition;
        }
        if ((fSignum <= 0.0f || interpolation < this.mTransitionGoalPosition) && (fSignum > 0.0f || interpolation > this.mTransitionGoalPosition)) {
            z3 = false;
        } else {
            interpolation = this.mTransitionGoalPosition;
            z3 = true;
        }
        if (interpolator != null && !z3) {
            interpolation = this.mTemporalInterpolator ? interpolator.getInterpolation((nanoTime - this.mAnimationStartTime) * 1.0E-9f) : interpolator.getInterpolation(interpolation);
        }
        if ((fSignum > 0.0f && interpolation >= this.mTransitionGoalPosition) || (fSignum <= 0.0f && interpolation <= this.mTransitionGoalPosition)) {
            interpolation = this.mTransitionGoalPosition;
        }
        this.mPostInterpolationPosition = interpolation;
        int childCount = getChildCount();
        long nanoTime2 = getNanoTime();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            MotionController motionController = this.mFrameArrayList.get(childAt);
            if (motionController != null) {
                motionController.interpolate(childAt, interpolation, nanoTime2, this.mKeyCache);
            }
        }
        if (this.mMeasureDuringTransition) {
            requestLayout();
        }
    }

    private void fireTransitionChange() {
        ArrayList<TransitionListener> arrayList;
        if ((this.mTransitionListener == null && ((arrayList = this.mTransitionListeners) == null || arrayList.isEmpty())) || this.mListenerPosition == this.mTransitionPosition) {
            return;
        }
        if (this.mListenerState != -1) {
            TransitionListener transitionListener = this.mTransitionListener;
            if (transitionListener != null) {
                transitionListener.onTransitionStarted(this, this.mBeginState, this.mEndState);
            }
            ArrayList<TransitionListener> arrayList2 = this.mTransitionListeners;
            if (arrayList2 != null) {
                Iterator<TransitionListener> it = arrayList2.iterator();
                while (it.hasNext()) {
                    it.next().onTransitionStarted(this, this.mBeginState, this.mEndState);
                }
            }
            this.mIsAnimating = true;
        }
        this.mListenerState = -1;
        float f4 = this.mTransitionPosition;
        this.mListenerPosition = f4;
        TransitionListener transitionListener2 = this.mTransitionListener;
        if (transitionListener2 != null) {
            transitionListener2.onTransitionChange(this, this.mBeginState, this.mEndState, f4);
        }
        ArrayList<TransitionListener> arrayList3 = this.mTransitionListeners;
        if (arrayList3 != null) {
            Iterator<TransitionListener> it2 = arrayList3.iterator();
            while (it2.hasNext()) {
                it2.next().onTransitionChange(this, this.mBeginState, this.mEndState, this.mTransitionPosition);
            }
        }
        this.mIsAnimating = true;
    }

    private void fireTransitionStarted(MotionLayout motionLayout, int i4, int i5) {
        TransitionListener transitionListener = this.mTransitionListener;
        if (transitionListener != null) {
            transitionListener.onTransitionStarted(this, i4, i5);
        }
        ArrayList<TransitionListener> arrayList = this.mTransitionListeners;
        if (arrayList != null) {
            Iterator<TransitionListener> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().onTransitionStarted(motionLayout, i4, i5);
            }
        }
    }

    private boolean handlesTouchEvent(float f4, float f5, View view, MotionEvent motionEvent) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                if (handlesTouchEvent(view.getLeft() + f4, view.getTop() + f5, viewGroup.getChildAt(i4), motionEvent)) {
                    return true;
                }
            }
        }
        this.mBoundsCheck.set(view.getLeft() + f4, view.getTop() + f5, f4 + view.getRight(), f5 + view.getBottom());
        if (motionEvent.getAction() == 0) {
            if (this.mBoundsCheck.contains(motionEvent.getX(), motionEvent.getY()) && view.onTouchEvent(motionEvent)) {
                return true;
            }
        } else if (view.onTouchEvent(motionEvent)) {
            return true;
        }
        return false;
    }

    private void init(AttributeSet attributeSet) {
        MotionScene motionScene;
        IS_IN_EDIT_MODE = isInEditMode();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.MotionLayout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            boolean z3 = true;
            for (int i4 = 0; i4 < indexCount; i4++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i4);
                if (index == R.styleable.MotionLayout_layoutDescription) {
                    this.mScene = new MotionScene(getContext(), this, typedArrayObtainStyledAttributes.getResourceId(index, -1));
                } else if (index == R.styleable.MotionLayout_currentState) {
                    this.mCurrentState = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                } else if (index == R.styleable.MotionLayout_motionProgress) {
                    this.mTransitionGoalPosition = typedArrayObtainStyledAttributes.getFloat(index, 0.0f);
                    this.mInTransition = true;
                } else if (index == R.styleable.MotionLayout_applyMotionScene) {
                    z3 = typedArrayObtainStyledAttributes.getBoolean(index, z3);
                } else if (index == R.styleable.MotionLayout_showPaths) {
                    if (this.mDebugPath == 0) {
                        this.mDebugPath = typedArrayObtainStyledAttributes.getBoolean(index, false) ? 2 : 0;
                    }
                } else if (index == R.styleable.MotionLayout_motionDebug) {
                    this.mDebugPath = typedArrayObtainStyledAttributes.getInt(index, 0);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            if (this.mScene == null) {
                Log.e(TAG, "WARNING NO app:layoutDescription tag");
            }
            if (!z3) {
                this.mScene = null;
            }
        }
        if (this.mDebugPath != 0) {
            checkStructure();
        }
        if (this.mCurrentState != -1 || (motionScene = this.mScene) == null) {
            return;
        }
        this.mCurrentState = motionScene.getStartId();
        this.mBeginState = this.mScene.getStartId();
        this.mEndState = this.mScene.getEndId();
    }

    private void onNewStateAttachHandlers() {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return;
        }
        if (motionScene.autoTransition(this, this.mCurrentState)) {
            requestLayout();
            return;
        }
        int i4 = this.mCurrentState;
        if (i4 != -1) {
            this.mScene.addOnClickListeners(this, i4);
        }
        if (this.mScene.supportTouch()) {
            this.mScene.setupTouch();
        }
    }

    private void processTransitionCompleted() {
        ArrayList<TransitionListener> arrayList;
        if (this.mTransitionListener == null && ((arrayList = this.mTransitionListeners) == null || arrayList.isEmpty())) {
            return;
        }
        this.mIsAnimating = false;
        for (Integer num : this.mTransitionCompleted) {
            TransitionListener transitionListener = this.mTransitionListener;
            if (transitionListener != null) {
                transitionListener.onTransitionCompleted(this, num.intValue());
            }
            ArrayList<TransitionListener> arrayList2 = this.mTransitionListeners;
            if (arrayList2 != null) {
                Iterator<TransitionListener> it = arrayList2.iterator();
                while (it.hasNext()) {
                    it.next().onTransitionCompleted(this, num.intValue());
                }
            }
        }
        this.mTransitionCompleted.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupMotionViews() {
        int childCount = getChildCount();
        this.mModel.build();
        boolean z3 = true;
        this.mInTransition = true;
        int width = getWidth();
        int height = getHeight();
        int iGatPathMotionArc = this.mScene.gatPathMotionArc();
        int i4 = 0;
        if (iGatPathMotionArc != -1) {
            for (int i5 = 0; i5 < childCount; i5++) {
                MotionController motionController = this.mFrameArrayList.get(getChildAt(i5));
                if (motionController != null) {
                    motionController.setPathMotionArc(iGatPathMotionArc);
                }
            }
        }
        for (int i6 = 0; i6 < childCount; i6++) {
            MotionController motionController2 = this.mFrameArrayList.get(getChildAt(i6));
            if (motionController2 != null) {
                this.mScene.getKeyFrames(motionController2);
                motionController2.setup(width, height, this.mTransitionDuration, getNanoTime());
            }
        }
        float staggered = this.mScene.getStaggered();
        if (staggered != 0.0f) {
            boolean z4 = ((double) staggered) < 0.0d;
            float fAbs = Math.abs(staggered);
            float fMax = -3.4028235E38f;
            float fMin = Float.MAX_VALUE;
            int i7 = 0;
            float fMin2 = Float.MAX_VALUE;
            float fMax2 = -3.4028235E38f;
            while (true) {
                if (i7 >= childCount) {
                    z3 = false;
                    break;
                }
                MotionController motionController3 = this.mFrameArrayList.get(getChildAt(i7));
                if (!Float.isNaN(motionController3.mMotionStagger)) {
                    break;
                }
                float finalX = motionController3.getFinalX();
                float finalY = motionController3.getFinalY();
                float f4 = z4 ? finalY - finalX : finalY + finalX;
                fMin2 = Math.min(fMin2, f4);
                fMax2 = Math.max(fMax2, f4);
                i7++;
            }
            if (!z3) {
                while (i4 < childCount) {
                    MotionController motionController4 = this.mFrameArrayList.get(getChildAt(i4));
                    float finalX2 = motionController4.getFinalX();
                    float finalY2 = motionController4.getFinalY();
                    float f5 = z4 ? finalY2 - finalX2 : finalY2 + finalX2;
                    motionController4.mStaggerScale = 1.0f / (1.0f - fAbs);
                    motionController4.mStaggerOffset = fAbs - (((f5 - fMin2) * fAbs) / (fMax2 - fMin2));
                    i4++;
                }
                return;
            }
            for (int i8 = 0; i8 < childCount; i8++) {
                MotionController motionController5 = this.mFrameArrayList.get(getChildAt(i8));
                if (!Float.isNaN(motionController5.mMotionStagger)) {
                    fMin = Math.min(fMin, motionController5.mMotionStagger);
                    fMax = Math.max(fMax, motionController5.mMotionStagger);
                }
            }
            while (i4 < childCount) {
                MotionController motionController6 = this.mFrameArrayList.get(getChildAt(i4));
                if (!Float.isNaN(motionController6.mMotionStagger)) {
                    motionController6.mStaggerScale = 1.0f / (1.0f - fAbs);
                    if (z4) {
                        motionController6.mStaggerOffset = fAbs - (((fMax - motionController6.mMotionStagger) / (fMax - fMin)) * fAbs);
                    } else {
                        motionController6.mStaggerOffset = fAbs - (((motionController6.mMotionStagger - fMin) * fAbs) / (fMax - fMin));
                    }
                }
                i4++;
            }
        }
    }

    private static boolean willJump(float f4, float f5, float f6) {
        if (f4 > 0.0f) {
            float f7 = f4 / f6;
            return ((f4 * f7) - (((f6 * f7) * f7) / 2.0f)) + f5 > 1.0f;
        }
        float f8 = (-f4) / f6;
        return ((((f6 * f8) * f8) / 2.0f) + (f4 * f8)) + f5 < 0.0f;
    }

    public void addTransitionListener(TransitionListener transitionListener) {
        if (this.mTransitionListeners == null) {
            this.mTransitionListeners = new ArrayList<>();
        }
        this.mTransitionListeners.add(transitionListener);
    }

    public void animateTo(float f4) {
        if (this.mScene == null) {
            return;
        }
        float f5 = this.mTransitionLastPosition;
        float f6 = this.mTransitionPosition;
        if (f5 != f6 && this.mTransitionInstantly) {
            this.mTransitionLastPosition = f6;
        }
        float f7 = this.mTransitionLastPosition;
        if (f7 == f4) {
            return;
        }
        this.mTemporalInterpolator = false;
        this.mTransitionGoalPosition = f4;
        this.mTransitionDuration = r0.getDuration() / 1000.0f;
        setProgress(this.mTransitionGoalPosition);
        this.mInterpolator = this.mScene.getInterpolator();
        this.mTransitionInstantly = false;
        this.mAnimationStartTime = getNanoTime();
        this.mInTransition = true;
        this.mTransitionPosition = f7;
        this.mTransitionLastPosition = f7;
        invalidate();
    }

    public void disableAutoTransition(boolean z3) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return;
        }
        motionScene.disableAutoTransition(z3);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        evaluate(false);
        super.dispatchDraw(canvas);
        if (this.mScene == null) {
            return;
        }
        if ((this.mDebugPath & 1) == 1 && !isInEditMode()) {
            this.mFrames++;
            long nanoTime = getNanoTime();
            long j4 = this.mLastDrawTime;
            if (j4 != -1) {
                if (nanoTime - j4 > 200000000) {
                    this.mLastFps = ((int) ((this.mFrames / (r5 * 1.0E-9f)) * 100.0f)) / 100.0f;
                    this.mFrames = 0;
                    this.mLastDrawTime = nanoTime;
                }
            } else {
                this.mLastDrawTime = nanoTime;
            }
            Paint paint = new Paint();
            paint.setTextSize(42.0f);
            StringBuilder sbA = f.a(this.mLastFps + " fps " + Debug.getState(this, this.mBeginState) + " -> ");
            sbA.append(Debug.getState(this, this.mEndState));
            sbA.append(" (progress: ");
            sbA.append(((int) (getProgress() * 1000.0f)) / 10.0f);
            sbA.append(" ) state=");
            int i4 = this.mCurrentState;
            sbA.append(i4 == -1 ? "undefined" : Debug.getState(this, i4));
            String string = sbA.toString();
            paint.setColor(ViewCompat.MEASURED_STATE_MASK);
            canvas.drawText(string, 11.0f, getHeight() - 29, paint);
            paint.setColor(-7864184);
            canvas.drawText(string, 10.0f, getHeight() - 30, paint);
        }
        if (this.mDebugPath > 1) {
            if (this.mDevModeDraw == null) {
                this.mDevModeDraw = new DevModeDraw();
            }
            this.mDevModeDraw.draw(canvas, this.mFrameArrayList, this.mScene.getDuration(), this.mDebugPath);
        }
    }

    public void enableTransition(int i4, boolean z3) {
        MotionScene.Transition transition = getTransition(i4);
        if (z3) {
            transition.setEnable(true);
            return;
        }
        MotionScene motionScene = this.mScene;
        if (transition == motionScene.mCurrentTransition) {
            Iterator<MotionScene.Transition> it = motionScene.getTransitionsWithState(this.mCurrentState).iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                MotionScene.Transition next = it.next();
                if (next.isEnabled()) {
                    this.mScene.mCurrentTransition = next;
                    break;
                }
            }
        }
        transition.setEnable(false);
    }

    public void evaluate(boolean z3) {
        float f4;
        boolean z4;
        int i4;
        float interpolation;
        boolean z5;
        if (this.mTransitionLastTime == -1) {
            this.mTransitionLastTime = getNanoTime();
        }
        float f5 = this.mTransitionLastPosition;
        if (f5 > 0.0f && f5 < 1.0f) {
            this.mCurrentState = -1;
        }
        boolean z6 = false;
        if (this.mKeepAnimating || (this.mInTransition && (z3 || this.mTransitionGoalPosition != f5))) {
            float fSignum = Math.signum(this.mTransitionGoalPosition - f5);
            long nanoTime = getNanoTime();
            Interpolator interpolator = this.mInterpolator;
            if (interpolator instanceof MotionInterpolator) {
                f4 = 0.0f;
            } else {
                f4 = (((nanoTime - this.mTransitionLastTime) * fSignum) * 1.0E-9f) / this.mTransitionDuration;
                this.mLastVelocity = f4;
            }
            float f6 = this.mTransitionLastPosition + f4;
            if (this.mTransitionInstantly) {
                f6 = this.mTransitionGoalPosition;
            }
            if ((fSignum <= 0.0f || f6 < this.mTransitionGoalPosition) && (fSignum > 0.0f || f6 > this.mTransitionGoalPosition)) {
                z4 = false;
            } else {
                f6 = this.mTransitionGoalPosition;
                this.mInTransition = false;
                z4 = true;
            }
            this.mTransitionLastPosition = f6;
            this.mTransitionPosition = f6;
            this.mTransitionLastTime = nanoTime;
            if (interpolator != null && !z4) {
                if (this.mTemporalInterpolator) {
                    interpolation = interpolator.getInterpolation((nanoTime - this.mAnimationStartTime) * 1.0E-9f);
                    this.mTransitionLastPosition = interpolation;
                    this.mTransitionLastTime = nanoTime;
                    Interpolator interpolator2 = this.mInterpolator;
                    if (interpolator2 instanceof MotionInterpolator) {
                        float velocity = ((MotionInterpolator) interpolator2).getVelocity();
                        this.mLastVelocity = velocity;
                        if (Math.abs(velocity) * this.mTransitionDuration <= EPSILON) {
                            this.mInTransition = false;
                        }
                        if (velocity > 0.0f && interpolation >= 1.0f) {
                            this.mTransitionLastPosition = 1.0f;
                            this.mInTransition = false;
                            interpolation = 1.0f;
                        }
                        if (velocity < 0.0f && interpolation <= 0.0f) {
                            this.mTransitionLastPosition = 0.0f;
                            this.mInTransition = false;
                            f6 = 0.0f;
                        }
                    }
                } else {
                    interpolation = interpolator.getInterpolation(f6);
                    Interpolator interpolator3 = this.mInterpolator;
                    if (interpolator3 instanceof MotionInterpolator) {
                        this.mLastVelocity = ((MotionInterpolator) interpolator3).getVelocity();
                    } else {
                        this.mLastVelocity = ((interpolator3.getInterpolation(f6 + f4) - interpolation) * fSignum) / f4;
                    }
                }
                f6 = interpolation;
            }
            if (Math.abs(this.mLastVelocity) > EPSILON) {
                setState(TransitionState.MOVING);
            }
            if ((fSignum > 0.0f && f6 >= this.mTransitionGoalPosition) || (fSignum <= 0.0f && f6 <= this.mTransitionGoalPosition)) {
                f6 = this.mTransitionGoalPosition;
                this.mInTransition = false;
            }
            if (f6 >= 1.0f || f6 <= 0.0f) {
                this.mInTransition = false;
                setState(TransitionState.FINISHED);
            }
            int childCount = getChildCount();
            this.mKeepAnimating = false;
            long nanoTime2 = getNanoTime();
            this.mPostInterpolationPosition = f6;
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                MotionController motionController = this.mFrameArrayList.get(childAt);
                if (motionController != null) {
                    this.mKeepAnimating |= motionController.interpolate(childAt, f6, nanoTime2, this.mKeyCache);
                }
            }
            boolean z7 = (fSignum > 0.0f && f6 >= this.mTransitionGoalPosition) || (fSignum <= 0.0f && f6 <= this.mTransitionGoalPosition);
            if (!this.mKeepAnimating && !this.mInTransition && z7) {
                setState(TransitionState.FINISHED);
            }
            if (this.mMeasureDuringTransition) {
                requestLayout();
            }
            this.mKeepAnimating = (!z7) | this.mKeepAnimating;
            if (f6 <= 0.0f && (i4 = this.mBeginState) != -1 && this.mCurrentState != i4) {
                this.mCurrentState = i4;
                this.mScene.getConstraintSet(i4).applyCustomAttributes(this);
                setState(TransitionState.FINISHED);
                z6 = true;
            }
            if (f6 >= 1.0d) {
                int i6 = this.mCurrentState;
                int i7 = this.mEndState;
                if (i6 != i7) {
                    this.mCurrentState = i7;
                    this.mScene.getConstraintSet(i7).applyCustomAttributes(this);
                    setState(TransitionState.FINISHED);
                    z6 = true;
                }
            }
            if (this.mKeepAnimating || this.mInTransition) {
                invalidate();
            } else if ((fSignum > 0.0f && f6 == 1.0f) || (fSignum < 0.0f && f6 == 0.0f)) {
                setState(TransitionState.FINISHED);
            }
            if ((!this.mKeepAnimating && this.mInTransition && fSignum > 0.0f && f6 == 1.0f) || (fSignum < 0.0f && f6 == 0.0f)) {
                onNewStateAttachHandlers();
            }
        }
        float f7 = this.mTransitionLastPosition;
        if (f7 < 1.0f) {
            if (f7 <= 0.0f) {
                int i8 = this.mCurrentState;
                int i9 = this.mBeginState;
                z5 = i8 == i9 ? z6 : true;
                this.mCurrentState = i9;
            }
            this.mNeedsFireTransitionCompleted |= z6;
            if (z6 && !this.mInLayout) {
                requestLayout();
            }
            this.mTransitionPosition = this.mTransitionLastPosition;
        }
        int i10 = this.mCurrentState;
        int i11 = this.mEndState;
        z5 = i10 == i11 ? z6 : true;
        this.mCurrentState = i11;
        z6 = z5;
        this.mNeedsFireTransitionCompleted |= z6;
        if (z6) {
            requestLayout();
        }
        this.mTransitionPosition = this.mTransitionLastPosition;
    }

    public void fireTransitionCompleted() {
        int iIntValue;
        ArrayList<TransitionListener> arrayList;
        if ((this.mTransitionListener != null || ((arrayList = this.mTransitionListeners) != null && !arrayList.isEmpty())) && this.mListenerState == -1) {
            this.mListenerState = this.mCurrentState;
            if (this.mTransitionCompleted.isEmpty()) {
                iIntValue = -1;
            } else {
                iIntValue = this.mTransitionCompleted.get(r0.size() - 1).intValue();
            }
            int i4 = this.mCurrentState;
            if (iIntValue != i4 && i4 != -1) {
                this.mTransitionCompleted.add(Integer.valueOf(i4));
            }
        }
        processTransitionCompleted();
    }

    public void fireTrigger(int i4, boolean z3, float f4) {
        TransitionListener transitionListener = this.mTransitionListener;
        if (transitionListener != null) {
            transitionListener.onTransitionTrigger(this, i4, z3, f4);
        }
        ArrayList<TransitionListener> arrayList = this.mTransitionListeners;
        if (arrayList != null) {
            Iterator<TransitionListener> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().onTransitionTrigger(this, i4, z3, f4);
            }
        }
    }

    public void getAnchorDpDt(int i4, float f4, float f5, float f6, float[] fArr) {
        HashMap<View, MotionController> map = this.mFrameArrayList;
        View viewById = getViewById(i4);
        MotionController motionController = map.get(viewById);
        if (motionController != null) {
            motionController.getDpDt(f4, f5, f6, fArr);
            float y3 = viewById.getY();
            this.lastPos = f4;
            this.lastY = y3;
            return;
        }
        Log.w(TAG, "WARNING could not find view id " + (viewById == null ? d.a("", i4) : viewById.getContext().getResources().getResourceName(i4)));
    }

    public ConstraintSet getConstraintSet(int i4) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return null;
        }
        return motionScene.getConstraintSet(i4);
    }

    public int[] getConstraintSetIds() {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return null;
        }
        return motionScene.getConstraintSetIds();
    }

    public String getConstraintSetNames(int i4) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return null;
        }
        return motionScene.lookUpConstraintName(i4);
    }

    public int getCurrentState() {
        return this.mCurrentState;
    }

    public void getDebugMode(boolean z3) {
        this.mDebugPath = z3 ? 2 : 1;
        invalidate();
    }

    public ArrayList<MotionScene.Transition> getDefinedTransitions() {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return null;
        }
        return motionScene.getDefinedTransitions();
    }

    public DesignTool getDesignTool() {
        if (this.mDesignTool == null) {
            this.mDesignTool = new DesignTool(this);
        }
        return this.mDesignTool;
    }

    public int getEndState() {
        return this.mEndState;
    }

    public long getNanoTime() {
        return System.nanoTime();
    }

    public float getProgress() {
        return this.mTransitionLastPosition;
    }

    public int getStartState() {
        return this.mBeginState;
    }

    public float getTargetPosition() {
        return this.mTransitionGoalPosition;
    }

    public MotionScene.Transition getTransition(int i4) {
        return this.mScene.getTransitionById(i4);
    }

    public Bundle getTransitionState() {
        if (this.mStateCache == null) {
            this.mStateCache = new StateCache();
        }
        this.mStateCache.recordState();
        return this.mStateCache.getTransitionState();
    }

    public long getTransitionTimeMs() {
        if (this.mScene != null) {
            this.mTransitionDuration = r0.getDuration() / 1000.0f;
        }
        return (long) (this.mTransitionDuration * 1000.0f);
    }

    public float getVelocity() {
        return this.mLastVelocity;
    }

    public void getViewVelocity(View view, float f4, float f5, float[] fArr, int i4) {
        float f6;
        float velocity = this.mLastVelocity;
        float f7 = this.mTransitionLastPosition;
        if (this.mInterpolator != null) {
            float fSignum = Math.signum(this.mTransitionGoalPosition - f7);
            float interpolation = this.mInterpolator.getInterpolation(this.mTransitionLastPosition + EPSILON);
            float interpolation2 = this.mInterpolator.getInterpolation(this.mTransitionLastPosition);
            velocity = (((interpolation - interpolation2) / EPSILON) * fSignum) / this.mTransitionDuration;
            f6 = interpolation2;
        } else {
            f6 = f7;
        }
        Interpolator interpolator = this.mInterpolator;
        if (interpolator instanceof MotionInterpolator) {
            velocity = ((MotionInterpolator) interpolator).getVelocity();
        }
        MotionController motionController = this.mFrameArrayList.get(view);
        if ((i4 & 1) == 0) {
            motionController.getPostLayoutDvDp(f6, view.getWidth(), view.getHeight(), f4, f5, fArr);
        } else {
            motionController.getDpDt(f6, f4, f5, fArr);
        }
        if (i4 < 2) {
            fArr[0] = fArr[0] * velocity;
            fArr[1] = fArr[1] * velocity;
        }
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return super.isAttachedToWindow();
    }

    public boolean isInteractionEnabled() {
        return this.mInteractionEnabled;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void loadLayoutDescription(int i4) {
        if (i4 == 0) {
            this.mScene = null;
            return;
        }
        try {
            this.mScene = new MotionScene(getContext(), this, i4);
            if (isAttachedToWindow()) {
                this.mScene.readFallback(this);
                this.mModel.initFrom(this.mLayoutWidget, this.mScene.getConstraintSet(this.mBeginState), this.mScene.getConstraintSet(this.mEndState));
                rebuildScene();
                this.mScene.setRtl(isRtl());
            }
        } catch (Exception e4) {
            throw new IllegalArgumentException("unable to parse MotionScene file", e4);
        }
    }

    public int lookUpConstraintId(String str) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return 0;
        }
        return motionScene.lookUpConstraintId(str);
    }

    public MotionTracker obtainVelocityTracker() {
        return MyTracker.obtain();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        int i4;
        super.onAttachedToWindow();
        MotionScene motionScene = this.mScene;
        if (motionScene != null && (i4 = this.mCurrentState) != -1) {
            ConstraintSet constraintSet = motionScene.getConstraintSet(i4);
            this.mScene.readFallback(this);
            if (constraintSet != null) {
                constraintSet.applyTo(this);
            }
            this.mBeginState = this.mCurrentState;
        }
        onNewStateAttachHandlers();
        StateCache stateCache = this.mStateCache;
        if (stateCache != null) {
            stateCache.apply();
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        MotionScene.Transition transition;
        TouchResponse touchResponse;
        int touchRegionId;
        RectF touchRegion;
        MotionScene motionScene = this.mScene;
        if (motionScene != null && this.mInteractionEnabled && (transition = motionScene.mCurrentTransition) != null && transition.isEnabled() && (touchResponse = transition.getTouchResponse()) != null && ((motionEvent.getAction() != 0 || (touchRegion = touchResponse.getTouchRegion(this, new RectF())) == null || touchRegion.contains(motionEvent.getX(), motionEvent.getY())) && (touchRegionId = touchResponse.getTouchRegionId()) != -1)) {
            View view = this.mRegionView;
            if (view == null || view.getId() != touchRegionId) {
                this.mRegionView = findViewById(touchRegionId);
            }
            if (this.mRegionView != null) {
                this.mBoundsCheck.set(r0.getLeft(), this.mRegionView.getTop(), this.mRegionView.getRight(), this.mRegionView.getBottom());
                if (this.mBoundsCheck.contains(motionEvent.getX(), motionEvent.getY()) && !handlesTouchEvent(0.0f, 0.0f, this.mRegionView, motionEvent)) {
                    return onTouchEvent(motionEvent);
                }
            }
        }
        return false;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z3, int i4, int i5, int i6, int i7) {
        this.mInLayout = true;
        try {
            if (this.mScene == null) {
                super.onLayout(z3, i4, i5, i6, i7);
                return;
            }
            int i8 = i6 - i4;
            int i9 = i7 - i5;
            if (this.mLastLayoutWidth != i8 || this.mLastLayoutHeight != i9) {
                rebuildScene();
                evaluate(true);
            }
            this.mLastLayoutWidth = i8;
            this.mLastLayoutHeight = i9;
            this.mOldWidth = i8;
            this.mOldHeight = i9;
        } finally {
            this.mInLayout = false;
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public void onMeasure(int i4, int i5) {
        if (this.mScene == null) {
            super.onMeasure(i4, i5);
            return;
        }
        boolean z3 = false;
        boolean z4 = (this.mLastWidthMeasureSpec == i4 && this.mLastHeightMeasureSpec == i5) ? false : true;
        if (this.mNeedsFireTransitionCompleted) {
            this.mNeedsFireTransitionCompleted = false;
            onNewStateAttachHandlers();
            processTransitionCompleted();
            z4 = true;
        }
        if (this.mDirtyHierarchy) {
            z4 = true;
        }
        this.mLastWidthMeasureSpec = i4;
        this.mLastHeightMeasureSpec = i5;
        int startId = this.mScene.getStartId();
        int endId = this.mScene.getEndId();
        if ((z4 || this.mModel.isNotConfiguredWith(startId, endId)) && this.mBeginState != -1) {
            super.onMeasure(i4, i5);
            this.mModel.initFrom(this.mLayoutWidget, this.mScene.getConstraintSet(startId), this.mScene.getConstraintSet(endId));
            this.mModel.reEvaluateState();
            this.mModel.setMeasuredId(startId, endId);
        } else {
            z3 = true;
        }
        if (this.mMeasureDuringTransition || z3) {
            int paddingBottom = getPaddingBottom() + getPaddingTop();
            int width = this.mLayoutWidget.getWidth() + getPaddingRight() + getPaddingLeft();
            int height = this.mLayoutWidget.getHeight() + paddingBottom;
            int i6 = this.mWidthMeasureMode;
            if (i6 == Integer.MIN_VALUE || i6 == 0) {
                width = (int) ((this.mPostInterpolationPosition * (this.mEndWrapWidth - r7)) + this.mStartWrapWidth);
                requestLayout();
            }
            int i7 = this.mHeightMeasureMode;
            if (i7 == Integer.MIN_VALUE || i7 == 0) {
                height = (int) ((this.mPostInterpolationPosition * (this.mEndWrapHeight - r8)) + this.mStartWrapHeight);
                requestLayout();
            }
            setMeasuredDimension(width, height);
        }
        evaluateLayout();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(View view, float f4, float f5, boolean z3) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(View view, float f4, float f5) {
        return false;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedPreScroll(final View view, int i4, int i5, int[] iArr, int i6) {
        MotionScene.Transition transition;
        TouchResponse touchResponse;
        int touchRegionId;
        MotionScene motionScene = this.mScene;
        if (motionScene == null || (transition = motionScene.mCurrentTransition) == null || !transition.isEnabled()) {
            return;
        }
        MotionScene.Transition transition2 = this.mScene.mCurrentTransition;
        if (transition2 == null || !transition2.isEnabled() || (touchResponse = transition2.getTouchResponse()) == null || (touchRegionId = touchResponse.getTouchRegionId()) == -1 || view.getId() == touchRegionId) {
            MotionScene motionScene2 = this.mScene;
            if (motionScene2 != null && motionScene2.getMoveWhenScrollAtTop()) {
                float f4 = this.mTransitionPosition;
                if ((f4 == 1.0f || f4 == 0.0f) && view.canScrollVertically(-1)) {
                    return;
                }
            }
            if (transition2.getTouchResponse() != null && (this.mScene.mCurrentTransition.getTouchResponse().getFlags() & 1) != 0) {
                float progressDirection = this.mScene.getProgressDirection(i4, i5);
                float f5 = this.mTransitionLastPosition;
                if ((f5 <= 0.0f && progressDirection < 0.0f) || (f5 >= 1.0f && progressDirection > 0.0f)) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        view.setNestedScrollingEnabled(false);
                        view.post(new Runnable() { // from class: androidx.constraintlayout.motion.widget.MotionLayout.1
                            @Override // java.lang.Runnable
                            public void run() {
                                view.setNestedScrollingEnabled(true);
                            }
                        });
                        return;
                    }
                    return;
                }
            }
            float f6 = this.mTransitionPosition;
            long nanoTime = getNanoTime();
            float f7 = i4;
            this.mScrollTargetDX = f7;
            float f8 = i5;
            this.mScrollTargetDY = f8;
            double d4 = nanoTime - this.mScrollTargetTime;
            Double.isNaN(d4);
            this.mScrollTargetDT = (float) (d4 * 1.0E-9d);
            this.mScrollTargetTime = nanoTime;
            this.mScene.processScrollMove(f7, f8);
            if (f6 != this.mTransitionPosition) {
                iArr[0] = i4;
                iArr[1] = i5;
            }
            evaluate(false);
            if (iArr[0] == 0 && iArr[1] == 0) {
                return;
            }
            this.mUndergoingMotion = true;
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScroll(View view, int i4, int i5, int i6, int i7, int i8) {
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public void onNestedScroll(View view, int i4, int i5, int i6, int i7, int i8, int[] iArr) {
        if (this.mUndergoingMotion || i4 != 0 || i5 != 0) {
            iArr[0] = iArr[0] + i6;
            iArr[1] = iArr[1] + i7;
        }
        this.mUndergoingMotion = false;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScrollAccepted(View view, View view2, int i4, int i5) {
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i4) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            motionScene.setRtl(isRtl());
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public boolean onStartNestedScroll(View view, View view2, int i4, int i5) {
        MotionScene.Transition transition;
        MotionScene motionScene = this.mScene;
        return (motionScene == null || (transition = motionScene.mCurrentTransition) == null || transition.getTouchResponse() == null || (this.mScene.mCurrentTransition.getTouchResponse().getFlags() & 2) != 0) ? false : true;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onStopNestedScroll(View view, int i4) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return;
        }
        float f4 = this.mScrollTargetDX;
        float f5 = this.mScrollTargetDT;
        motionScene.processScrollUp(f4 / f5, this.mScrollTargetDY / f5);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null || !this.mInteractionEnabled || !motionScene.supportTouch()) {
            return super.onTouchEvent(motionEvent);
        }
        MotionScene.Transition transition = this.mScene.mCurrentTransition;
        if (transition != null && !transition.isEnabled()) {
            return super.onTouchEvent(motionEvent);
        }
        this.mScene.processTouchEvent(motionEvent, getCurrentState(), this);
        return true;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        if (view instanceof MotionHelper) {
            MotionHelper motionHelper = (MotionHelper) view;
            if (this.mTransitionListeners == null) {
                this.mTransitionListeners = new ArrayList<>();
            }
            this.mTransitionListeners.add(motionHelper);
            if (motionHelper.isUsedOnShow()) {
                if (this.mOnShowHelpers == null) {
                    this.mOnShowHelpers = new ArrayList<>();
                }
                this.mOnShowHelpers.add(motionHelper);
            }
            if (motionHelper.isUseOnHide()) {
                if (this.mOnHideHelpers == null) {
                    this.mOnHideHelpers = new ArrayList<>();
                }
                this.mOnHideHelpers.add(motionHelper);
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        ArrayList<MotionHelper> arrayList = this.mOnShowHelpers;
        if (arrayList != null) {
            arrayList.remove(view);
        }
        ArrayList<MotionHelper> arrayList2 = this.mOnHideHelpers;
        if (arrayList2 != null) {
            arrayList2.remove(view);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void parseLayoutDescription(int i4) {
        this.mConstraintLayoutSpec = null;
    }

    @Deprecated
    public void rebuildMotion() {
        Log.e(TAG, "This method is deprecated. Please call rebuildScene() instead.");
        rebuildScene();
    }

    public void rebuildScene() {
        this.mModel.reEvaluateState();
        invalidate();
    }

    public boolean removeTransitionListener(TransitionListener transitionListener) {
        ArrayList<TransitionListener> arrayList = this.mTransitionListeners;
        if (arrayList == null) {
            return false;
        }
        return arrayList.remove(transitionListener);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View, android.view.ViewParent
    public void requestLayout() {
        MotionScene motionScene;
        MotionScene.Transition transition;
        if (this.mMeasureDuringTransition || this.mCurrentState != -1 || (motionScene = this.mScene) == null || (transition = motionScene.mCurrentTransition) == null || transition.getLayoutDuringTransition() != 0) {
            super.requestLayout();
        }
    }

    public void setDebugMode(int i4) {
        this.mDebugPath = i4;
        invalidate();
    }

    public void setInteractionEnabled(boolean z3) {
        this.mInteractionEnabled = z3;
    }

    public void setInterpolatedProgress(float f4) {
        if (this.mScene != null) {
            setState(TransitionState.MOVING);
            Interpolator interpolator = this.mScene.getInterpolator();
            if (interpolator != null) {
                setProgress(interpolator.getInterpolation(f4));
                return;
            }
        }
        setProgress(f4);
    }

    public void setOnHide(float f4) {
        ArrayList<MotionHelper> arrayList = this.mOnHideHelpers;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i4 = 0; i4 < size; i4++) {
                this.mOnHideHelpers.get(i4).setProgress(f4);
            }
        }
    }

    public void setOnShow(float f4) {
        ArrayList<MotionHelper> arrayList = this.mOnShowHelpers;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i4 = 0; i4 < size; i4++) {
                this.mOnShowHelpers.get(i4).setProgress(f4);
            }
        }
    }

    public void setProgress(float f4, float f5) {
        if (isAttachedToWindow()) {
            setProgress(f4);
            setState(TransitionState.MOVING);
            this.mLastVelocity = f5;
            animateTo(1.0f);
            return;
        }
        if (this.mStateCache == null) {
            this.mStateCache = new StateCache();
        }
        this.mStateCache.setProgress(f4);
        this.mStateCache.setVelocity(f5);
    }

    public void setScene(MotionScene motionScene) {
        this.mScene = motionScene;
        motionScene.setRtl(isRtl());
        rebuildScene();
    }

    public void setState(TransitionState transitionState) {
        TransitionState transitionState2 = TransitionState.FINISHED;
        if (transitionState == transitionState2 && this.mCurrentState == -1) {
            return;
        }
        TransitionState transitionState3 = this.mTransitionState;
        this.mTransitionState = transitionState;
        TransitionState transitionState4 = TransitionState.MOVING;
        if (transitionState3 == transitionState4 && transitionState == transitionState4) {
            fireTransitionChange();
        }
        int i4 = AnonymousClass2.$SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState[transitionState3.ordinal()];
        if (i4 != 1 && i4 != 2) {
            if (i4 == 3 && transitionState == transitionState2) {
                fireTransitionCompleted();
                return;
            }
            return;
        }
        if (transitionState == transitionState4) {
            fireTransitionChange();
        }
        if (transitionState == transitionState2) {
            fireTransitionCompleted();
        }
    }

    public void setTransition(int i4, int i5) {
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new StateCache();
            }
            this.mStateCache.setStartState(i4);
            this.mStateCache.setEndState(i5);
            return;
        }
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            this.mBeginState = i4;
            this.mEndState = i5;
            motionScene.setTransition(i4, i5);
            this.mModel.initFrom(this.mLayoutWidget, this.mScene.getConstraintSet(i4), this.mScene.getConstraintSet(i5));
            rebuildScene();
            this.mTransitionLastPosition = 0.0f;
            transitionToStart();
        }
    }

    public void setTransitionDuration(int i4) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            Log.e(TAG, "MotionScene not defined");
        } else {
            motionScene.setDuration(i4);
        }
    }

    public void setTransitionListener(TransitionListener transitionListener) {
        this.mTransitionListener = transitionListener;
    }

    public void setTransitionState(Bundle bundle) {
        if (this.mStateCache == null) {
            this.mStateCache = new StateCache();
        }
        this.mStateCache.setTransitionState(bundle);
        if (isAttachedToWindow()) {
            this.mStateCache.apply();
        }
    }

    @Override // android.view.View
    public String toString() {
        Context context = getContext();
        return Debug.getName(context, this.mBeginState) + "->" + Debug.getName(context, this.mEndState) + " (pos:" + this.mTransitionLastPosition + " Dpos/Dt:" + this.mLastVelocity;
    }

    public void touchAnimateTo(int i4, float f4, float f5) {
        if (this.mScene == null || this.mTransitionLastPosition == f4) {
            return;
        }
        this.mTemporalInterpolator = true;
        this.mAnimationStartTime = getNanoTime();
        float duration = this.mScene.getDuration() / 1000.0f;
        this.mTransitionDuration = duration;
        this.mTransitionGoalPosition = f4;
        this.mInTransition = true;
        if (i4 == 0 || i4 == 1 || i4 == 2) {
            if (i4 == 1) {
                f4 = 0.0f;
            } else if (i4 == 2) {
                f4 = 1.0f;
            }
            this.mStopLogic.config(this.mTransitionLastPosition, f4, f5, duration, this.mScene.getMaxAcceleration(), this.mScene.getMaxVelocity());
            int i5 = this.mCurrentState;
            this.mTransitionGoalPosition = f4;
            this.mCurrentState = i5;
            this.mInterpolator = this.mStopLogic;
        } else if (i4 == 4) {
            this.mDecelerateLogic.config(f5, this.mTransitionLastPosition, this.mScene.getMaxAcceleration());
            this.mInterpolator = this.mDecelerateLogic;
        } else if (i4 == 5) {
            if (willJump(f5, this.mTransitionLastPosition, this.mScene.getMaxAcceleration())) {
                this.mDecelerateLogic.config(f5, this.mTransitionLastPosition, this.mScene.getMaxAcceleration());
                this.mInterpolator = this.mDecelerateLogic;
            } else {
                this.mStopLogic.config(this.mTransitionLastPosition, f4, f5, this.mTransitionDuration, this.mScene.getMaxAcceleration(), this.mScene.getMaxVelocity());
                this.mLastVelocity = 0.0f;
                int i6 = this.mCurrentState;
                this.mTransitionGoalPosition = f4;
                this.mCurrentState = i6;
                this.mInterpolator = this.mStopLogic;
            }
        }
        this.mTransitionInstantly = false;
        this.mAnimationStartTime = getNanoTime();
        invalidate();
    }

    public void transitionToEnd() {
        animateTo(1.0f);
    }

    public void transitionToStart() {
        animateTo(0.0f);
    }

    public void transitionToState(int i4) {
        if (isAttachedToWindow()) {
            transitionToState(i4, -1, -1);
            return;
        }
        if (this.mStateCache == null) {
            this.mStateCache = new StateCache();
        }
        this.mStateCache.setEndState(i4);
    }

    public void updateState(int i4, ConstraintSet constraintSet) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            motionScene.setConstraintSet(i4, constraintSet);
        }
        updateState();
        if (this.mCurrentState == i4) {
            constraintSet.applyTo(this);
        }
    }

    public void transitionToState(int i4, int i5, int i6) {
        StateSet stateSet;
        int iConvertToConstraintSet;
        MotionScene motionScene = this.mScene;
        if (motionScene != null && (stateSet = motionScene.mStateSet) != null && (iConvertToConstraintSet = stateSet.convertToConstraintSet(this.mCurrentState, i4, i5, i6)) != -1) {
            i4 = iConvertToConstraintSet;
        }
        int i7 = this.mCurrentState;
        if (i7 == i4) {
            return;
        }
        if (this.mBeginState == i4) {
            animateTo(0.0f);
            return;
        }
        if (this.mEndState == i4) {
            animateTo(1.0f);
            return;
        }
        this.mEndState = i4;
        if (i7 != -1) {
            setTransition(i7, i4);
            animateTo(1.0f);
            this.mTransitionLastPosition = 0.0f;
            transitionToEnd();
            return;
        }
        this.mTemporalInterpolator = false;
        this.mTransitionGoalPosition = 1.0f;
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        this.mTransitionLastTime = getNanoTime();
        this.mAnimationStartTime = getNanoTime();
        this.mTransitionInstantly = false;
        this.mInterpolator = null;
        this.mTransitionDuration = this.mScene.getDuration() / 1000.0f;
        this.mBeginState = -1;
        this.mScene.setTransition(-1, this.mEndState);
        this.mScene.getStartId();
        int childCount = getChildCount();
        this.mFrameArrayList.clear();
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            this.mFrameArrayList.put(childAt, new MotionController(childAt));
        }
        this.mInTransition = true;
        this.mModel.initFrom(this.mLayoutWidget, null, this.mScene.getConstraintSet(i4));
        rebuildScene();
        this.mModel.build();
        computeCurrentPositions();
        int width = getWidth();
        int height = getHeight();
        for (int i9 = 0; i9 < childCount; i9++) {
            MotionController motionController = this.mFrameArrayList.get(getChildAt(i9));
            this.mScene.getKeyFrames(motionController);
            motionController.setup(width, height, this.mTransitionDuration, getNanoTime());
        }
        float staggered = this.mScene.getStaggered();
        if (staggered != 0.0f) {
            float fMin = Float.MAX_VALUE;
            float fMax = -3.4028235E38f;
            for (int i10 = 0; i10 < childCount; i10++) {
                MotionController motionController2 = this.mFrameArrayList.get(getChildAt(i10));
                float finalY = motionController2.getFinalY() + motionController2.getFinalX();
                fMin = Math.min(fMin, finalY);
                fMax = Math.max(fMax, finalY);
            }
            for (int i11 = 0; i11 < childCount; i11++) {
                MotionController motionController3 = this.mFrameArrayList.get(getChildAt(i11));
                float finalX = motionController3.getFinalX();
                float finalY2 = motionController3.getFinalY();
                motionController3.mStaggerScale = 1.0f / (1.0f - staggered);
                motionController3.mStaggerOffset = staggered - ((((finalX + finalY2) - fMin) * staggered) / (fMax - fMin));
            }
        }
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        this.mInTransition = true;
        invalidate();
    }

    public void updateState() {
        this.mModel.initFrom(this.mLayoutWidget, this.mScene.getConstraintSet(this.mBeginState), this.mScene.getConstraintSet(this.mEndState));
        rebuildScene();
    }

    public void setProgress(float f4) {
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new StateCache();
            }
            this.mStateCache.setProgress(f4);
            return;
        }
        if (f4 <= 0.0f) {
            this.mCurrentState = this.mBeginState;
            if (this.mTransitionLastPosition == 0.0f) {
                setState(TransitionState.FINISHED);
            }
        } else if (f4 >= 1.0f) {
            this.mCurrentState = this.mEndState;
            if (this.mTransitionLastPosition == 1.0f) {
                setState(TransitionState.FINISHED);
            }
        } else {
            this.mCurrentState = -1;
            setState(TransitionState.MOVING);
        }
        if (this.mScene == null) {
            return;
        }
        this.mTransitionInstantly = true;
        this.mTransitionGoalPosition = f4;
        this.mTransitionPosition = f4;
        this.mTransitionLastTime = -1L;
        this.mAnimationStartTime = -1L;
        this.mInterpolator = null;
        this.mInTransition = true;
        invalidate();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void setState(int i4, int i5, int i6) {
        setState(TransitionState.SETUP);
        this.mCurrentState = i4;
        this.mBeginState = -1;
        this.mEndState = -1;
        ConstraintLayoutStates constraintLayoutStates = this.mConstraintLayoutSpec;
        if (constraintLayoutStates != null) {
            constraintLayoutStates.updateConstraints(i4, i5, i6);
            return;
        }
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            motionScene.getConstraintSet(i4).applyTo(this);
        }
    }

    public void setTransition(int i4) {
        if (this.mScene != null) {
            MotionScene.Transition transition = getTransition(i4);
            this.mBeginState = transition.getStartConstraintSetId();
            this.mEndState = transition.getEndConstraintSetId();
            if (!isAttachedToWindow()) {
                if (this.mStateCache == null) {
                    this.mStateCache = new StateCache();
                }
                this.mStateCache.setStartState(this.mBeginState);
                this.mStateCache.setEndState(this.mEndState);
                return;
            }
            float f4 = Float.NaN;
            int i5 = this.mCurrentState;
            if (i5 == this.mBeginState) {
                f4 = 0.0f;
            } else if (i5 == this.mEndState) {
                f4 = 1.0f;
            }
            this.mScene.setTransition(transition);
            this.mModel.initFrom(this.mLayoutWidget, this.mScene.getConstraintSet(this.mBeginState), this.mScene.getConstraintSet(this.mEndState));
            rebuildScene();
            this.mTransitionLastPosition = Float.isNaN(f4) ? 0.0f : f4;
            if (Float.isNaN(f4)) {
                Log.v(TAG, Debug.getLocation() + " transitionToStart ");
                transitionToStart();
                return;
            }
            setProgress(f4);
        }
    }

    private void checkStructure(int i4, ConstraintSet constraintSet) {
        String name = Debug.getName(getContext(), i4);
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            int id = childAt.getId();
            if (id == -1) {
                StringBuilder sbA = b.a("CHECK: ", name, " ALL VIEWS SHOULD HAVE ID's ");
                sbA.append(childAt.getClass().getName());
                sbA.append(" does not!");
                Log.w(TAG, sbA.toString());
            }
            if (constraintSet.getConstraint(id) == null) {
                StringBuilder sbA2 = b.a("CHECK: ", name, " NO CONSTRAINTS for ");
                sbA2.append(Debug.getName(childAt));
                Log.w(TAG, sbA2.toString());
            }
        }
        int[] knownIds = constraintSet.getKnownIds();
        for (int i6 = 0; i6 < knownIds.length; i6++) {
            int i7 = knownIds[i6];
            String name2 = Debug.getName(getContext(), i7);
            if (findViewById(knownIds[i6]) == null) {
                Log.w(TAG, "CHECK: " + name + " NO View matches id " + name2);
            }
            if (constraintSet.getHeight(i7) == -1) {
                Log.w(TAG, "CHECK: " + name + "(" + name2 + ") no LAYOUT_HEIGHT");
            }
            if (constraintSet.getWidth(i7) == -1) {
                Log.w(TAG, "CHECK: " + name + "(" + name2 + ") no LAYOUT_HEIGHT");
            }
        }
    }

    public void setTransition(MotionScene.Transition transition) {
        this.mScene.setTransition(transition);
        setState(TransitionState.SETUP);
        if (this.mCurrentState == this.mScene.getEndId()) {
            this.mTransitionLastPosition = 1.0f;
            this.mTransitionPosition = 1.0f;
            this.mTransitionGoalPosition = 1.0f;
        } else {
            this.mTransitionLastPosition = 0.0f;
            this.mTransitionPosition = 0.0f;
            this.mTransitionGoalPosition = 0.0f;
        }
        this.mTransitionLastTime = transition.isTransitionFlag(1) ? -1L : getNanoTime();
        int startId = this.mScene.getStartId();
        int endId = this.mScene.getEndId();
        if (startId == this.mBeginState && endId == this.mEndState) {
            return;
        }
        this.mBeginState = startId;
        this.mEndState = endId;
        this.mScene.setTransition(startId, endId);
        this.mModel.initFrom(this.mLayoutWidget, this.mScene.getConstraintSet(this.mBeginState), this.mScene.getConstraintSet(this.mEndState));
        this.mModel.setMeasuredId(this.mBeginState, this.mEndState);
        this.mModel.reEvaluateState();
        rebuildScene();
    }

    public MotionLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mLastVelocity = 0.0f;
        this.mBeginState = -1;
        this.mCurrentState = -1;
        this.mEndState = -1;
        this.mLastWidthMeasureSpec = 0;
        this.mLastHeightMeasureSpec = 0;
        this.mInteractionEnabled = true;
        this.mFrameArrayList = new HashMap<>();
        this.mAnimationStartTime = 0L;
        this.mTransitionDuration = 1.0f;
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        this.mTransitionGoalPosition = 0.0f;
        this.mInTransition = false;
        this.mIndirectTransition = false;
        this.mDebugPath = 0;
        this.mTemporalInterpolator = false;
        this.mStopLogic = new StopLogic();
        this.mDecelerateLogic = new DecelerateInterpolator();
        this.firstDown = true;
        this.mUndergoingMotion = false;
        this.mKeepAnimating = false;
        this.mOnShowHelpers = null;
        this.mOnHideHelpers = null;
        this.mTransitionListeners = null;
        this.mFrames = 0;
        this.mLastDrawTime = -1L;
        this.mLastFps = 0.0f;
        this.mListenerState = 0;
        this.mListenerPosition = 0.0f;
        this.mIsAnimating = false;
        this.mMeasureDuringTransition = false;
        this.mKeyCache = new KeyCache();
        this.mInLayout = false;
        this.mTransitionState = TransitionState.UNDEFINED;
        this.mModel = new Model();
        this.mNeedsFireTransitionCompleted = false;
        this.mBoundsCheck = new RectF();
        this.mRegionView = null;
        this.mTransitionCompleted = new ArrayList<>();
        init(attributeSet);
    }

    private void checkStructure(MotionScene.Transition transition) {
        StringBuilder sbA = f.a("CHECK: transition = ");
        sbA.append(transition.debugString(getContext()));
        Log.v(TAG, sbA.toString());
        Log.v(TAG, "CHECK: transition.setDuration = " + transition.getDuration());
        if (transition.getStartConstraintSetId() == transition.getEndConstraintSetId()) {
            Log.e(TAG, "CHECK: start and end constraint set should not be the same!");
        }
    }

    public MotionLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mLastVelocity = 0.0f;
        this.mBeginState = -1;
        this.mCurrentState = -1;
        this.mEndState = -1;
        this.mLastWidthMeasureSpec = 0;
        this.mLastHeightMeasureSpec = 0;
        this.mInteractionEnabled = true;
        this.mFrameArrayList = new HashMap<>();
        this.mAnimationStartTime = 0L;
        this.mTransitionDuration = 1.0f;
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        this.mTransitionGoalPosition = 0.0f;
        this.mInTransition = false;
        this.mIndirectTransition = false;
        this.mDebugPath = 0;
        this.mTemporalInterpolator = false;
        this.mStopLogic = new StopLogic();
        this.mDecelerateLogic = new DecelerateInterpolator();
        this.firstDown = true;
        this.mUndergoingMotion = false;
        this.mKeepAnimating = false;
        this.mOnShowHelpers = null;
        this.mOnHideHelpers = null;
        this.mTransitionListeners = null;
        this.mFrames = 0;
        this.mLastDrawTime = -1L;
        this.mLastFps = 0.0f;
        this.mListenerState = 0;
        this.mListenerPosition = 0.0f;
        this.mIsAnimating = false;
        this.mMeasureDuringTransition = false;
        this.mKeyCache = new KeyCache();
        this.mInLayout = false;
        this.mTransitionState = TransitionState.UNDEFINED;
        this.mModel = new Model();
        this.mNeedsFireTransitionCompleted = false;
        this.mBoundsCheck = new RectF();
        this.mRegionView = null;
        this.mTransitionCompleted = new ArrayList<>();
        init(attributeSet);
    }
}
