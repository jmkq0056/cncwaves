package androidx.constraintlayout.solver;

import android.support.v4.media.f;
import android.support.v4.media.g;
import androidx.constraintlayout.solver.ArrayRow;
import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public class PriorityGoalRow extends ArrayRow {
    private static final boolean DEBUG = false;
    public static final int NOT_FOUND = -1;
    private static final float epsilon = 1.0E-4f;
    private int TABLE_SIZE;
    public GoalVariableAccessor accessor;
    private SolverVariable[] arrayGoals;
    public Cache mCache;
    private int numGoals;
    private SolverVariable[] sortArray;

    public class GoalVariableAccessor implements Comparable {
        public PriorityGoalRow row;
        public SolverVariable variable;

        public GoalVariableAccessor(PriorityGoalRow priorityGoalRow) {
            this.row = priorityGoalRow;
        }

        public void add(SolverVariable solverVariable) {
            for (int i4 = 0; i4 < 9; i4++) {
                float[] fArr = this.variable.goalStrengthVector;
                fArr[i4] = fArr[i4] + solverVariable.goalStrengthVector[i4];
                if (Math.abs(fArr[i4]) < 1.0E-4f) {
                    this.variable.goalStrengthVector[i4] = 0.0f;
                }
            }
        }

        public boolean addToGoal(SolverVariable solverVariable, float f4) {
            boolean z3 = true;
            if (!this.variable.inGoal) {
                for (int i4 = 0; i4 < 9; i4++) {
                    float f5 = solverVariable.goalStrengthVector[i4];
                    if (f5 != 0.0f) {
                        float f6 = f5 * f4;
                        if (Math.abs(f6) < 1.0E-4f) {
                            f6 = 0.0f;
                        }
                        this.variable.goalStrengthVector[i4] = f6;
                    } else {
                        this.variable.goalStrengthVector[i4] = 0.0f;
                    }
                }
                return true;
            }
            for (int i5 = 0; i5 < 9; i5++) {
                float[] fArr = this.variable.goalStrengthVector;
                fArr[i5] = (solverVariable.goalStrengthVector[i5] * f4) + fArr[i5];
                if (Math.abs(fArr[i5]) < 1.0E-4f) {
                    this.variable.goalStrengthVector[i5] = 0.0f;
                } else {
                    z3 = false;
                }
            }
            if (z3) {
                PriorityGoalRow.this.removeGoal(this.variable);
            }
            return false;
        }

        @Override // java.lang.Comparable
        public int compareTo(Object obj) {
            return this.variable.id - ((SolverVariable) obj).id;
        }

        public void init(SolverVariable solverVariable) {
            this.variable = solverVariable;
        }

        public final boolean isNegative() {
            for (int i4 = 8; i4 >= 0; i4--) {
                float f4 = this.variable.goalStrengthVector[i4];
                if (f4 > 0.0f) {
                    return false;
                }
                if (f4 < 0.0f) {
                    return true;
                }
            }
            return false;
        }

        public final boolean isNull() {
            for (int i4 = 0; i4 < 9; i4++) {
                if (this.variable.goalStrengthVector[i4] != 0.0f) {
                    return false;
                }
            }
            return true;
        }

        public final boolean isSmallerThan(SolverVariable solverVariable) {
            int i4 = 8;
            while (true) {
                if (i4 < 0) {
                    break;
                }
                float f4 = solverVariable.goalStrengthVector[i4];
                float f5 = this.variable.goalStrengthVector[i4];
                if (f5 == f4) {
                    i4--;
                } else if (f5 < f4) {
                    return true;
                }
            }
            return false;
        }

        public void reset() {
            Arrays.fill(this.variable.goalStrengthVector, 0.0f);
        }

        public String toString() {
            String string = "[ ";
            if (this.variable != null) {
                for (int i4 = 0; i4 < 9; i4++) {
                    StringBuilder sbA = f.a(string);
                    sbA.append(this.variable.goalStrengthVector[i4]);
                    sbA.append(" ");
                    string = sbA.toString();
                }
            }
            StringBuilder sbA2 = g.a(string, "] ");
            sbA2.append(this.variable);
            return sbA2.toString();
        }
    }

    public PriorityGoalRow(Cache cache) {
        super(cache);
        this.TABLE_SIZE = 128;
        this.arrayGoals = new SolverVariable[128];
        this.sortArray = new SolverVariable[128];
        this.numGoals = 0;
        this.accessor = new GoalVariableAccessor(this);
        this.mCache = cache;
    }

    private final void addToGoal(SolverVariable solverVariable) {
        int i4;
        int i5 = this.numGoals + 1;
        SolverVariable[] solverVariableArr = this.arrayGoals;
        if (i5 > solverVariableArr.length) {
            SolverVariable[] solverVariableArr2 = (SolverVariable[]) Arrays.copyOf(solverVariableArr, solverVariableArr.length * 2);
            this.arrayGoals = solverVariableArr2;
            this.sortArray = (SolverVariable[]) Arrays.copyOf(solverVariableArr2, solverVariableArr2.length * 2);
        }
        SolverVariable[] solverVariableArr3 = this.arrayGoals;
        int i6 = this.numGoals;
        solverVariableArr3[i6] = solverVariable;
        int i7 = i6 + 1;
        this.numGoals = i7;
        if (i7 > 1 && solverVariableArr3[i7 - 1].id > solverVariable.id) {
            int i8 = 0;
            while (true) {
                i4 = this.numGoals;
                if (i8 >= i4) {
                    break;
                }
                this.sortArray[i8] = this.arrayGoals[i8];
                i8++;
            }
            Arrays.sort(this.sortArray, 0, i4, new Comparator<SolverVariable>() { // from class: androidx.constraintlayout.solver.PriorityGoalRow.1
                @Override // java.util.Comparator
                public int compare(SolverVariable solverVariable2, SolverVariable solverVariable3) {
                    return solverVariable2.id - solverVariable3.id;
                }
            });
            for (int i9 = 0; i9 < this.numGoals; i9++) {
                this.arrayGoals[i9] = this.sortArray[i9];
            }
        }
        solverVariable.inGoal = true;
        solverVariable.addToRow(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removeGoal(SolverVariable solverVariable) {
        int i4 = 0;
        while (i4 < this.numGoals) {
            if (this.arrayGoals[i4] == solverVariable) {
                while (true) {
                    int i5 = this.numGoals;
                    if (i4 >= i5 - 1) {
                        this.numGoals = i5 - 1;
                        solverVariable.inGoal = false;
                        return;
                    } else {
                        SolverVariable[] solverVariableArr = this.arrayGoals;
                        int i6 = i4 + 1;
                        solverVariableArr[i4] = solverVariableArr[i6];
                        i4 = i6;
                    }
                }
            } else {
                i4++;
            }
        }
    }

    @Override // androidx.constraintlayout.solver.ArrayRow, androidx.constraintlayout.solver.LinearSystem.Row
    public void addError(SolverVariable solverVariable) {
        this.accessor.init(solverVariable);
        this.accessor.reset();
        solverVariable.goalStrengthVector[solverVariable.strength] = 1.0f;
        addToGoal(solverVariable);
    }

    @Override // androidx.constraintlayout.solver.ArrayRow, androidx.constraintlayout.solver.LinearSystem.Row
    public void clear() {
        this.numGoals = 0;
        this.constantValue = 0.0f;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    @Override // androidx.constraintlayout.solver.ArrayRow, androidx.constraintlayout.solver.LinearSystem.Row
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.constraintlayout.solver.SolverVariable getPivotCandidate(androidx.constraintlayout.solver.LinearSystem r5, boolean[] r6) {
        /*
            r4 = this;
            r5 = -1
            r0 = 0
            r1 = -1
        L3:
            int r2 = r4.numGoals
            if (r0 >= r2) goto L32
            androidx.constraintlayout.solver.SolverVariable[] r2 = r4.arrayGoals
            r2 = r2[r0]
            int r3 = r2.id
            boolean r3 = r6[r3]
            if (r3 == 0) goto L12
            goto L2f
        L12:
            androidx.constraintlayout.solver.PriorityGoalRow$GoalVariableAccessor r3 = r4.accessor
            r3.init(r2)
            if (r1 != r5) goto L22
            androidx.constraintlayout.solver.PriorityGoalRow$GoalVariableAccessor r2 = r4.accessor
            boolean r2 = r2.isNegative()
            if (r2 == 0) goto L2f
            goto L2e
        L22:
            androidx.constraintlayout.solver.PriorityGoalRow$GoalVariableAccessor r2 = r4.accessor
            androidx.constraintlayout.solver.SolverVariable[] r3 = r4.arrayGoals
            r3 = r3[r1]
            boolean r2 = r2.isSmallerThan(r3)
            if (r2 == 0) goto L2f
        L2e:
            r1 = r0
        L2f:
            int r0 = r0 + 1
            goto L3
        L32:
            if (r1 != r5) goto L36
            r5 = 0
            return r5
        L36:
            androidx.constraintlayout.solver.SolverVariable[] r5 = r4.arrayGoals
            r5 = r5[r1]
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.PriorityGoalRow.getPivotCandidate(androidx.constraintlayout.solver.LinearSystem, boolean[]):androidx.constraintlayout.solver.SolverVariable");
    }

    @Override // androidx.constraintlayout.solver.ArrayRow
    public String toString() {
        StringBuilder sbA = g.a("", " goal -> (");
        sbA.append(this.constantValue);
        sbA.append(") : ");
        String string = sbA.toString();
        for (int i4 = 0; i4 < this.numGoals; i4++) {
            this.accessor.init(this.arrayGoals[i4]);
            StringBuilder sbA2 = f.a(string);
            sbA2.append(this.accessor);
            sbA2.append(" ");
            string = sbA2.toString();
        }
        return string;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow, androidx.constraintlayout.solver.LinearSystem.Row
    public void updateFromRow(ArrayRow arrayRow, boolean z3) {
        SolverVariable solverVariable = arrayRow.variable;
        if (solverVariable == null) {
            return;
        }
        ArrayRow.ArrayRowVariables arrayRowVariables = arrayRow.variables;
        int currentSize = arrayRowVariables.getCurrentSize();
        for (int i4 = 0; i4 < currentSize; i4++) {
            SolverVariable variable = arrayRowVariables.getVariable(i4);
            float variableValue = arrayRowVariables.getVariableValue(i4);
            this.accessor.init(variable);
            if (this.accessor.addToGoal(solverVariable, variableValue)) {
                addToGoal(variable);
            }
            this.constantValue = (arrayRow.constantValue * variableValue) + this.constantValue;
        }
        removeGoal(solverVariable);
    }
}
