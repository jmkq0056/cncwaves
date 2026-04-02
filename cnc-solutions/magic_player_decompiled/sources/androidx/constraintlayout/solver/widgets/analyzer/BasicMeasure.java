package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.Metrics;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.solver.widgets.Guideline;
import androidx.constraintlayout.solver.widgets.Helper;
import androidx.constraintlayout.solver.widgets.Optimizer;
import androidx.constraintlayout.solver.widgets.VirtualLayout;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class BasicMeasure {
    public static final int AT_MOST = Integer.MIN_VALUE;
    private static final boolean DEBUG = false;
    public static final int EXACTLY = 1073741824;
    public static final int FIXED = -3;
    public static final int MATCH_PARENT = -1;
    private static final int MODE_SHIFT = 30;
    public static final int UNSPECIFIED = 0;
    public static final int WRAP_CONTENT = -2;
    private ConstraintWidgetContainer constraintWidgetContainer;
    private final ArrayList<ConstraintWidget> mVariableDimensionsWidgets = new ArrayList<>();
    private Measure mMeasure = new Measure();

    public static class Measure {
        public ConstraintWidget.DimensionBehaviour horizontalBehavior;
        public int horizontalDimension;
        public int measuredBaseline;
        public boolean measuredHasBaseline;
        public int measuredHeight;
        public boolean measuredNeedsSolverPass;
        public int measuredWidth;
        public boolean useCurrentDimensions;
        public ConstraintWidget.DimensionBehaviour verticalBehavior;
        public int verticalDimension;
    }

    public enum MeasureType {
    }

    public interface Measurer {
        void didMeasures();

        void measure(ConstraintWidget constraintWidget, Measure measure);
    }

    public BasicMeasure(ConstraintWidgetContainer constraintWidgetContainer) {
        this.constraintWidgetContainer = constraintWidgetContainer;
    }

    private boolean measure(Measurer measurer, ConstraintWidget constraintWidget, boolean z3) {
        this.mMeasure.horizontalBehavior = constraintWidget.getHorizontalDimensionBehaviour();
        this.mMeasure.verticalBehavior = constraintWidget.getVerticalDimensionBehaviour();
        this.mMeasure.horizontalDimension = constraintWidget.getWidth();
        this.mMeasure.verticalDimension = constraintWidget.getHeight();
        Measure measure = this.mMeasure;
        measure.measuredNeedsSolverPass = false;
        measure.useCurrentDimensions = z3;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = measure.horizontalBehavior;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z4 = dimensionBehaviour == dimensionBehaviour2;
        boolean z5 = measure.verticalBehavior == dimensionBehaviour2;
        boolean z6 = z4 && constraintWidget.mDimensionRatio > 0.0f;
        boolean z7 = z5 && constraintWidget.mDimensionRatio > 0.0f;
        if (z6 && constraintWidget.mResolvedMatchConstraintDefault[0] == 4) {
            measure.horizontalBehavior = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        if (z7 && constraintWidget.mResolvedMatchConstraintDefault[1] == 4) {
            measure.verticalBehavior = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        measurer.measure(constraintWidget, measure);
        constraintWidget.setWidth(this.mMeasure.measuredWidth);
        constraintWidget.setHeight(this.mMeasure.measuredHeight);
        constraintWidget.setHasBaseline(this.mMeasure.measuredHasBaseline);
        constraintWidget.setBaselineDistance(this.mMeasure.measuredBaseline);
        Measure measure2 = this.mMeasure;
        measure2.useCurrentDimensions = false;
        return measure2.measuredNeedsSolverPass;
    }

    private void measureChildren(ConstraintWidgetContainer constraintWidgetContainer) {
        int size = constraintWidgetContainer.mChildren.size();
        Measurer measurer = constraintWidgetContainer.getMeasurer();
        for (int i4 = 0; i4 < size; i4++) {
            ConstraintWidget constraintWidget = constraintWidgetContainer.mChildren.get(i4);
            if (!(constraintWidget instanceof Guideline) && (!constraintWidget.horizontalRun.dimension.resolved || !constraintWidget.verticalRun.dimension.resolved)) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = constraintWidget.getDimensionBehaviour(0);
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = constraintWidget.getDimensionBehaviour(1);
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (!(dimensionBehaviour == dimensionBehaviour3 && constraintWidget.mMatchConstraintDefaultWidth != 1 && dimensionBehaviour2 == dimensionBehaviour3 && constraintWidget.mMatchConstraintDefaultHeight != 1)) {
                    measure(measurer, constraintWidget, false);
                    Metrics metrics = constraintWidgetContainer.mMetrics;
                    if (metrics != null) {
                        metrics.measuredWidgets++;
                    }
                }
            }
        }
        measurer.didMeasures();
    }

    private void solveLinearSystem(ConstraintWidgetContainer constraintWidgetContainer, String str, int i4, int i5) {
        int minWidth = constraintWidgetContainer.getMinWidth();
        int minHeight = constraintWidgetContainer.getMinHeight();
        constraintWidgetContainer.setMinWidth(0);
        constraintWidgetContainer.setMinHeight(0);
        constraintWidgetContainer.setWidth(i4);
        constraintWidgetContainer.setHeight(i5);
        constraintWidgetContainer.setMinWidth(minWidth);
        constraintWidgetContainer.setMinHeight(minHeight);
        this.constraintWidgetContainer.layout();
    }

    public long solverMeasure(ConstraintWidgetContainer constraintWidgetContainer, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12) {
        boolean zDirectMeasure;
        int i13;
        boolean z3;
        boolean z4;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        boolean zDirectMeasureWithOrientation;
        int i21;
        Metrics metrics;
        Measurer measurer = constraintWidgetContainer.getMeasurer();
        int size = constraintWidgetContainer.mChildren.size();
        int width = constraintWidgetContainer.getWidth();
        int height = constraintWidgetContainer.getHeight();
        boolean zEnabled = Optimizer.enabled(i4, 128);
        boolean z5 = zEnabled || Optimizer.enabled(i4, 64);
        if (z5) {
            for (int i22 = 0; i22 < size; i22++) {
                ConstraintWidget constraintWidget = constraintWidgetContainer.mChildren.get(i22);
                ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = constraintWidget.getHorizontalDimensionBehaviour();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                boolean z6 = (horizontalDimensionBehaviour == dimensionBehaviour) && (constraintWidget.getVerticalDimensionBehaviour() == dimensionBehaviour) && constraintWidget.getDimensionRatio() > 0.0f;
                if ((constraintWidget.isInHorizontalChain() && z6) || ((constraintWidget.isInVerticalChain() && z6) || (constraintWidget instanceof VirtualLayout) || constraintWidget.isInHorizontalChain() || constraintWidget.isInVerticalChain())) {
                    z5 = false;
                    break;
                }
            }
        }
        if (z5 && (metrics = LinearSystem.sMetrics) != null) {
            metrics.measures++;
        }
        if (z5 && ((i7 == 1073741824 && i9 == 1073741824) || zEnabled)) {
            int iMin = Math.min(constraintWidgetContainer.getMaxWidth(), i8);
            int iMin2 = Math.min(constraintWidgetContainer.getMaxHeight(), i10);
            if (i7 == 1073741824 && constraintWidgetContainer.getWidth() != iMin) {
                constraintWidgetContainer.setWidth(iMin);
                constraintWidgetContainer.invalidateGraph();
            }
            if (i9 == 1073741824 && constraintWidgetContainer.getHeight() != iMin2) {
                constraintWidgetContainer.setHeight(iMin2);
                constraintWidgetContainer.invalidateGraph();
            }
            if (i7 == 1073741824 && i9 == 1073741824) {
                zDirectMeasure = constraintWidgetContainer.directMeasure(zEnabled);
                i13 = 2;
            } else {
                boolean zDirectMeasureSetup = constraintWidgetContainer.directMeasureSetup(zEnabled);
                if (i7 == 1073741824) {
                    zDirectMeasureWithOrientation = zDirectMeasureSetup & constraintWidgetContainer.directMeasureWithOrientation(zEnabled, 0);
                    i21 = 1;
                } else {
                    zDirectMeasureWithOrientation = zDirectMeasureSetup;
                    i21 = 0;
                }
                if (i9 == 1073741824) {
                    boolean zDirectMeasureWithOrientation2 = constraintWidgetContainer.directMeasureWithOrientation(zEnabled, 1) & zDirectMeasureWithOrientation;
                    i13 = i21 + 1;
                    zDirectMeasure = zDirectMeasureWithOrientation2;
                } else {
                    i13 = i21;
                    zDirectMeasure = zDirectMeasureWithOrientation;
                }
            }
            if (zDirectMeasure) {
                constraintWidgetContainer.updateFromRuns(i7 == 1073741824, i9 == 1073741824);
            }
        } else {
            zDirectMeasure = false;
            i13 = 0;
        }
        if (zDirectMeasure && i13 == 2) {
            return 0L;
        }
        if (size > 0) {
            measureChildren(constraintWidgetContainer);
        }
        int optimizationLevel = constraintWidgetContainer.getOptimizationLevel();
        int size2 = this.mVariableDimensionsWidgets.size();
        if (size > 0) {
            solveLinearSystem(constraintWidgetContainer, "First pass", width, height);
        }
        if (size2 > 0) {
            ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour2 = constraintWidgetContainer.getHorizontalDimensionBehaviour();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            boolean z7 = horizontalDimensionBehaviour2 == dimensionBehaviour2;
            boolean z8 = constraintWidgetContainer.getVerticalDimensionBehaviour() == dimensionBehaviour2;
            int iMax = Math.max(constraintWidgetContainer.getWidth(), this.constraintWidgetContainer.getMinWidth());
            int iMax2 = Math.max(constraintWidgetContainer.getHeight(), this.constraintWidgetContainer.getMinHeight());
            int i23 = 0;
            boolean zMeasure = false;
            while (i23 < size2) {
                ConstraintWidget constraintWidget2 = this.mVariableDimensionsWidgets.get(i23);
                if (constraintWidget2 instanceof VirtualLayout) {
                    int width2 = constraintWidget2.getWidth();
                    int height2 = constraintWidget2.getHeight();
                    i18 = optimizationLevel;
                    boolean zMeasure2 = zMeasure | measure(measurer, constraintWidget2, true);
                    Metrics metrics2 = constraintWidgetContainer.mMetrics;
                    i19 = width;
                    i20 = height;
                    if (metrics2 != null) {
                        metrics2.measuredMatchWidgets++;
                    }
                    int width3 = constraintWidget2.getWidth();
                    int height3 = constraintWidget2.getHeight();
                    if (width3 != width2) {
                        constraintWidget2.setWidth(width3);
                        if (z7 && constraintWidget2.getRight() > iMax) {
                            iMax = Math.max(iMax, constraintWidget2.getAnchor(ConstraintAnchor.Type.RIGHT).getMargin() + constraintWidget2.getRight());
                        }
                        zMeasure2 = true;
                    }
                    if (height3 != height2) {
                        constraintWidget2.setHeight(height3);
                        if (z8 && constraintWidget2.getBottom() > iMax2) {
                            iMax2 = Math.max(iMax2, constraintWidget2.getAnchor(ConstraintAnchor.Type.BOTTOM).getMargin() + constraintWidget2.getBottom());
                        }
                        zMeasure2 = true;
                    }
                    zMeasure = zMeasure2 | ((VirtualLayout) constraintWidget2).needSolverPass();
                } else {
                    i18 = optimizationLevel;
                    i19 = width;
                    i20 = height;
                }
                i23++;
                optimizationLevel = i18;
                width = i19;
                height = i20;
            }
            int i24 = optimizationLevel;
            int i25 = width;
            int i26 = height;
            int i27 = 0;
            int i28 = 2;
            while (i27 < i28) {
                int i29 = 0;
                while (i29 < size2) {
                    ConstraintWidget constraintWidget3 = this.mVariableDimensionsWidgets.get(i29);
                    if (((constraintWidget3 instanceof Helper) && !(constraintWidget3 instanceof VirtualLayout)) || (constraintWidget3 instanceof Guideline) || constraintWidget3.getVisibility() == 8 || ((constraintWidget3.horizontalRun.dimension.resolved && constraintWidget3.verticalRun.dimension.resolved) || (constraintWidget3 instanceof VirtualLayout))) {
                        i16 = i27;
                        i17 = size2;
                    } else {
                        int width4 = constraintWidget3.getWidth();
                        int height4 = constraintWidget3.getHeight();
                        int baselineDistance = constraintWidget3.getBaselineDistance();
                        zMeasure |= measure(measurer, constraintWidget3, true);
                        Metrics metrics3 = constraintWidgetContainer.mMetrics;
                        i16 = i27;
                        i17 = size2;
                        if (metrics3 != null) {
                            metrics3.measuredMatchWidgets++;
                        }
                        int width5 = constraintWidget3.getWidth();
                        int height5 = constraintWidget3.getHeight();
                        if (width5 != width4) {
                            constraintWidget3.setWidth(width5);
                            if (z7 && constraintWidget3.getRight() > iMax) {
                                iMax = Math.max(iMax, constraintWidget3.getAnchor(ConstraintAnchor.Type.RIGHT).getMargin() + constraintWidget3.getRight());
                            }
                            zMeasure = true;
                        }
                        if (height5 != height4) {
                            constraintWidget3.setHeight(height5);
                            if (z8 && constraintWidget3.getBottom() > iMax2) {
                                iMax2 = Math.max(iMax2, constraintWidget3.getAnchor(ConstraintAnchor.Type.BOTTOM).getMargin() + constraintWidget3.getBottom());
                            }
                            zMeasure = true;
                        }
                        if (constraintWidget3.hasBaseline() && baselineDistance != constraintWidget3.getBaselineDistance()) {
                            zMeasure = true;
                        }
                    }
                    i29++;
                    size2 = i17;
                    i27 = i16;
                }
                int i30 = i27;
                int i31 = size2;
                if (zMeasure) {
                    i14 = i25;
                    i15 = i26;
                    solveLinearSystem(constraintWidgetContainer, "intermediate pass", i14, i15);
                    zMeasure = false;
                } else {
                    i14 = i25;
                    i15 = i26;
                }
                i27 = i30 + 1;
                i25 = i14;
                i26 = i15;
                i28 = 2;
                size2 = i31;
            }
            int i32 = i25;
            int i33 = i26;
            if (zMeasure) {
                solveLinearSystem(constraintWidgetContainer, "2nd pass", i32, i33);
                if (constraintWidgetContainer.getWidth() < iMax) {
                    constraintWidgetContainer.setWidth(iMax);
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (constraintWidgetContainer.getHeight() < iMax2) {
                    constraintWidgetContainer.setHeight(iMax2);
                    z4 = true;
                } else {
                    z4 = z3;
                }
                if (z4) {
                    solveLinearSystem(constraintWidgetContainer, "3rd pass", i32, i33);
                }
            }
            optimizationLevel = i24;
        }
        constraintWidgetContainer.setOptimizationLevel(optimizationLevel);
        return 0L;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateHierarchy(androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer r7) {
        /*
            r6 = this;
            java.util.ArrayList<androidx.constraintlayout.solver.widgets.ConstraintWidget> r0 = r6.mVariableDimensionsWidgets
            r0.clear()
            java.util.ArrayList<androidx.constraintlayout.solver.widgets.ConstraintWidget> r0 = r7.mChildren
            int r0 = r0.size()
            r1 = 0
        Lc:
            if (r1 >= r0) goto L3a
            java.util.ArrayList<androidx.constraintlayout.solver.widgets.ConstraintWidget> r2 = r7.mChildren
            java.lang.Object r2 = r2.get(r1)
            androidx.constraintlayout.solver.widgets.ConstraintWidget r2 = (androidx.constraintlayout.solver.widgets.ConstraintWidget) r2
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r3 = r2.getHorizontalDimensionBehaviour()
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r4 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT
            if (r3 == r4) goto L32
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r3 = r2.getHorizontalDimensionBehaviour()
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r5 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_PARENT
            if (r3 == r5) goto L32
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r3 = r2.getVerticalDimensionBehaviour()
            if (r3 == r4) goto L32
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r3 = r2.getVerticalDimensionBehaviour()
            if (r3 != r5) goto L37
        L32:
            java.util.ArrayList<androidx.constraintlayout.solver.widgets.ConstraintWidget> r3 = r6.mVariableDimensionsWidgets
            r3.add(r2)
        L37:
            int r1 = r1 + 1
            goto Lc
        L3a:
            r7.invalidateGraph()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure.updateHierarchy(androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer):void");
    }
}
