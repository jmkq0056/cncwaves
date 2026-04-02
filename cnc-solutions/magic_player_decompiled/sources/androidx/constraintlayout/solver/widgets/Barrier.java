package androidx.constraintlayout.solver.widgets;

import android.support.v4.media.f;
import androidx.appcompat.view.a;
import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class Barrier extends HelperWidget {
    public static final int BOTTOM = 3;
    public static final int LEFT = 0;
    public static final int RIGHT = 1;
    public static final int TOP = 2;
    private int mBarrierType = 0;
    private boolean mAllowsGoneWidget = true;
    private int mMargin = 0;

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public void addToSolver(LinearSystem linearSystem) {
        ConstraintAnchor[] constraintAnchorArr;
        boolean z3;
        int i4;
        int i5;
        int i6;
        ConstraintAnchor[] constraintAnchorArr2 = this.mListAnchors;
        constraintAnchorArr2[0] = this.mLeft;
        constraintAnchorArr2[2] = this.mTop;
        constraintAnchorArr2[1] = this.mRight;
        constraintAnchorArr2[3] = this.mBottom;
        int i7 = 0;
        while (true) {
            constraintAnchorArr = this.mListAnchors;
            if (i7 >= constraintAnchorArr.length) {
                break;
            }
            constraintAnchorArr[i7].mSolverVariable = linearSystem.createObjectVariable(constraintAnchorArr[i7]);
            i7++;
        }
        int i8 = this.mBarrierType;
        if (i8 < 0 || i8 >= 4) {
            return;
        }
        ConstraintAnchor constraintAnchor = constraintAnchorArr[i8];
        for (int i9 = 0; i9 < this.mWidgetsCount; i9++) {
            ConstraintWidget constraintWidget = this.mWidgets[i9];
            if ((this.mAllowsGoneWidget || constraintWidget.allowedInBarrier()) && ((((i5 = this.mBarrierType) == 0 || i5 == 1) && constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mLeft.mTarget != null && constraintWidget.mRight.mTarget != null) || (((i6 = this.mBarrierType) == 2 || i6 == 3) && constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mTop.mTarget != null && constraintWidget.mBottom.mTarget != null))) {
                z3 = true;
                break;
            }
        }
        z3 = false;
        boolean z4 = this.mLeft.hasCenteredDependents() || this.mRight.hasCenteredDependents();
        boolean z5 = this.mTop.hasCenteredDependents() || this.mBottom.hasCenteredDependents();
        int i10 = !z3 && (((i4 = this.mBarrierType) == 0 && z4) || ((i4 == 2 && z5) || ((i4 == 1 && z4) || (i4 == 3 && z5)))) ? 5 : 4;
        for (int i11 = 0; i11 < this.mWidgetsCount; i11++) {
            ConstraintWidget constraintWidget2 = this.mWidgets[i11];
            if (this.mAllowsGoneWidget || constraintWidget2.allowedInBarrier()) {
                SolverVariable solverVariableCreateObjectVariable = linearSystem.createObjectVariable(constraintWidget2.mListAnchors[this.mBarrierType]);
                ConstraintAnchor[] constraintAnchorArr3 = constraintWidget2.mListAnchors;
                int i12 = this.mBarrierType;
                constraintAnchorArr3[i12].mSolverVariable = solverVariableCreateObjectVariable;
                int i13 = (constraintAnchorArr3[i12].mTarget == null || constraintAnchorArr3[i12].mTarget.mOwner != this) ? 0 : constraintAnchorArr3[i12].mMargin + 0;
                if (i12 == 0 || i12 == 2) {
                    linearSystem.addLowerBarrier(constraintAnchor.mSolverVariable, solverVariableCreateObjectVariable, this.mMargin - i13, z3);
                } else {
                    linearSystem.addGreaterBarrier(constraintAnchor.mSolverVariable, solverVariableCreateObjectVariable, this.mMargin + i13, z3);
                }
                linearSystem.addEquality(constraintAnchor.mSolverVariable, solverVariableCreateObjectVariable, this.mMargin + i13, i10);
            }
        }
        int i14 = this.mBarrierType;
        if (i14 == 0) {
            linearSystem.addEquality(this.mRight.mSolverVariable, this.mLeft.mSolverVariable, 0, 8);
            linearSystem.addEquality(this.mLeft.mSolverVariable, this.mParent.mRight.mSolverVariable, 0, 4);
            linearSystem.addEquality(this.mLeft.mSolverVariable, this.mParent.mLeft.mSolverVariable, 0, 0);
            return;
        }
        if (i14 == 1) {
            linearSystem.addEquality(this.mLeft.mSolverVariable, this.mRight.mSolverVariable, 0, 8);
            linearSystem.addEquality(this.mLeft.mSolverVariable, this.mParent.mLeft.mSolverVariable, 0, 4);
            linearSystem.addEquality(this.mLeft.mSolverVariable, this.mParent.mRight.mSolverVariable, 0, 0);
        } else if (i14 == 2) {
            linearSystem.addEquality(this.mBottom.mSolverVariable, this.mTop.mSolverVariable, 0, 8);
            linearSystem.addEquality(this.mTop.mSolverVariable, this.mParent.mBottom.mSolverVariable, 0, 4);
            linearSystem.addEquality(this.mTop.mSolverVariable, this.mParent.mTop.mSolverVariable, 0, 0);
        } else if (i14 == 3) {
            linearSystem.addEquality(this.mTop.mSolverVariable, this.mBottom.mSolverVariable, 0, 8);
            linearSystem.addEquality(this.mTop.mSolverVariable, this.mParent.mTop.mSolverVariable, 0, 4);
            linearSystem.addEquality(this.mTop.mSolverVariable, this.mParent.mBottom.mSolverVariable, 0, 0);
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public boolean allowedInBarrier() {
        return true;
    }

    public boolean allowsGoneWidget() {
        return this.mAllowsGoneWidget;
    }

    @Override // androidx.constraintlayout.solver.widgets.HelperWidget, androidx.constraintlayout.solver.widgets.ConstraintWidget
    public void copy(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> map) {
        super.copy(constraintWidget, map);
        Barrier barrier = (Barrier) constraintWidget;
        this.mBarrierType = barrier.mBarrierType;
        this.mAllowsGoneWidget = barrier.mAllowsGoneWidget;
        this.mMargin = barrier.mMargin;
    }

    public int getBarrierType() {
        return this.mBarrierType;
    }

    public int getMargin() {
        return this.mMargin;
    }

    public void markWidgets() {
        for (int i4 = 0; i4 < this.mWidgetsCount; i4++) {
            ConstraintWidget constraintWidget = this.mWidgets[i4];
            int i5 = this.mBarrierType;
            if (i5 == 0 || i5 == 1) {
                constraintWidget.setInBarrier(0, true);
            } else if (i5 == 2 || i5 == 3) {
                constraintWidget.setInBarrier(1, true);
            }
        }
    }

    public void setAllowsGoneWidget(boolean z3) {
        this.mAllowsGoneWidget = z3;
    }

    public void setBarrierType(int i4) {
        this.mBarrierType = i4;
    }

    public void setMargin(int i4) {
        this.mMargin = i4;
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public String toString() {
        StringBuilder sbA = f.a("[Barrier] ");
        sbA.append(getDebugName());
        sbA.append(" {");
        String string = sbA.toString();
        for (int i4 = 0; i4 < this.mWidgetsCount; i4++) {
            ConstraintWidget constraintWidget = this.mWidgets[i4];
            if (i4 > 0) {
                string = a.a(string, ", ");
            }
            StringBuilder sbA2 = f.a(string);
            sbA2.append(constraintWidget.getDebugName());
            string = sbA2.toString();
        }
        return a.a(string, "}");
    }
}
