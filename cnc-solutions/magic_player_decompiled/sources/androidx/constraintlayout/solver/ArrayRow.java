package androidx.constraintlayout.solver;

import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.SolverVariable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ArrayRow implements LinearSystem.Row {
    private static final boolean DEBUG = false;
    private static final boolean FULL_NEW_CHECK = false;
    public ArrayRowVariables variables;
    public SolverVariable variable = null;
    public float constantValue = 0.0f;
    public boolean used = false;
    public ArrayList<SolverVariable> variablesToUpdate = new ArrayList<>();
    public boolean isSimpleDefinition = false;

    public interface ArrayRowVariables {
        void add(SolverVariable solverVariable, float f4, boolean z3);

        void clear();

        boolean contains(SolverVariable solverVariable);

        void display();

        void divideByAmount(float f4);

        float get(SolverVariable solverVariable);

        int getCurrentSize();

        SolverVariable getVariable(int i4);

        float getVariableValue(int i4);

        int indexOf(SolverVariable solverVariable);

        void invert();

        void put(SolverVariable solverVariable, float f4);

        float remove(SolverVariable solverVariable, boolean z3);

        int sizeInBytes();

        float use(ArrayRow arrayRow, boolean z3);
    }

    public ArrayRow() {
    }

    private boolean isNew(SolverVariable solverVariable, LinearSystem linearSystem) {
        return solverVariable.usageInRowCount <= 1;
    }

    private SolverVariable pickPivotInVariables(boolean[] zArr, SolverVariable solverVariable) {
        SolverVariable.Type type;
        int currentSize = this.variables.getCurrentSize();
        SolverVariable solverVariable2 = null;
        float f4 = 0.0f;
        for (int i4 = 0; i4 < currentSize; i4++) {
            float variableValue = this.variables.getVariableValue(i4);
            if (variableValue < 0.0f) {
                SolverVariable variable = this.variables.getVariable(i4);
                if ((zArr == null || !zArr[variable.id]) && variable != solverVariable && (((type = variable.mType) == SolverVariable.Type.SLACK || type == SolverVariable.Type.ERROR) && variableValue < f4)) {
                    f4 = variableValue;
                    solverVariable2 = variable;
                }
            }
        }
        return solverVariable2;
    }

    public ArrayRow addError(LinearSystem linearSystem, int i4) {
        this.variables.put(linearSystem.createErrorVariable(i4, "ep"), 1.0f);
        this.variables.put(linearSystem.createErrorVariable(i4, "em"), -1.0f);
        return this;
    }

    public ArrayRow addSingleError(SolverVariable solverVariable, int i4) {
        this.variables.put(solverVariable, i4);
        return this;
    }

    public boolean chooseSubject(LinearSystem linearSystem) {
        boolean z3;
        SolverVariable solverVariableChooseSubjectInVariables = chooseSubjectInVariables(linearSystem);
        if (solverVariableChooseSubjectInVariables == null) {
            z3 = true;
        } else {
            pivot(solverVariableChooseSubjectInVariables);
            z3 = false;
        }
        if (this.variables.getCurrentSize() == 0) {
            this.isSimpleDefinition = true;
        }
        return z3;
    }

    public SolverVariable chooseSubjectInVariables(LinearSystem linearSystem) {
        int currentSize = this.variables.getCurrentSize();
        SolverVariable solverVariable = null;
        SolverVariable solverVariable2 = null;
        boolean z3 = false;
        boolean z4 = false;
        float f4 = 0.0f;
        float f5 = 0.0f;
        for (int i4 = 0; i4 < currentSize; i4++) {
            float variableValue = this.variables.getVariableValue(i4);
            SolverVariable variable = this.variables.getVariable(i4);
            if (variable.mType == SolverVariable.Type.UNRESTRICTED) {
                if (solverVariable == null || f4 > variableValue) {
                    boolean zIsNew = isNew(variable, linearSystem);
                    z3 = zIsNew;
                    f4 = variableValue;
                    solverVariable = variable;
                } else if (!z3 && isNew(variable, linearSystem)) {
                    f4 = variableValue;
                    solverVariable = variable;
                    z3 = true;
                }
            } else if (solverVariable == null && variableValue < 0.0f) {
                if (solverVariable2 == null || f5 > variableValue) {
                    boolean zIsNew2 = isNew(variable, linearSystem);
                    z4 = zIsNew2;
                    f5 = variableValue;
                    solverVariable2 = variable;
                } else if (!z4 && isNew(variable, linearSystem)) {
                    f5 = variableValue;
                    solverVariable2 = variable;
                    z4 = true;
                }
            }
        }
        return solverVariable != null ? solverVariable : solverVariable2;
    }

    @Override // androidx.constraintlayout.solver.LinearSystem.Row
    public void clear() {
        this.variables.clear();
        this.variable = null;
        this.constantValue = 0.0f;
    }

    public ArrayRow createRowCentering(SolverVariable solverVariable, SolverVariable solverVariable2, int i4, float f4, SolverVariable solverVariable3, SolverVariable solverVariable4, int i5) {
        if (solverVariable2 == solverVariable3) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable4, 1.0f);
            this.variables.put(solverVariable2, -2.0f);
            return this;
        }
        if (f4 == 0.5f) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable3, -1.0f);
            this.variables.put(solverVariable4, 1.0f);
            if (i4 > 0 || i5 > 0) {
                this.constantValue = (-i4) + i5;
            }
        } else if (f4 <= 0.0f) {
            this.variables.put(solverVariable, -1.0f);
            this.variables.put(solverVariable2, 1.0f);
            this.constantValue = i4;
        } else if (f4 >= 1.0f) {
            this.variables.put(solverVariable4, -1.0f);
            this.variables.put(solverVariable3, 1.0f);
            this.constantValue = -i5;
        } else {
            float f5 = 1.0f - f4;
            this.variables.put(solverVariable, f5 * 1.0f);
            this.variables.put(solverVariable2, f5 * (-1.0f));
            this.variables.put(solverVariable3, (-1.0f) * f4);
            this.variables.put(solverVariable4, 1.0f * f4);
            if (i4 > 0 || i5 > 0) {
                this.constantValue = (i5 * f4) + ((-i4) * f5);
            }
        }
        return this;
    }

    public ArrayRow createRowDefinition(SolverVariable solverVariable, int i4) {
        this.variable = solverVariable;
        float f4 = i4;
        solverVariable.computedValue = f4;
        this.constantValue = f4;
        this.isSimpleDefinition = true;
        return this;
    }

    public ArrayRow createRowDimensionPercent(SolverVariable solverVariable, SolverVariable solverVariable2, float f4) {
        this.variables.put(solverVariable, -1.0f);
        this.variables.put(solverVariable2, f4);
        return this;
    }

    public ArrayRow createRowDimensionRatio(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f4) {
        this.variables.put(solverVariable, -1.0f);
        this.variables.put(solverVariable2, 1.0f);
        this.variables.put(solverVariable3, f4);
        this.variables.put(solverVariable4, -f4);
        return this;
    }

    public ArrayRow createRowEqualDimension(float f4, float f5, float f6, SolverVariable solverVariable, int i4, SolverVariable solverVariable2, int i5, SolverVariable solverVariable3, int i6, SolverVariable solverVariable4, int i7) {
        if (f5 == 0.0f || f4 == f6) {
            this.constantValue = ((-i4) - i5) + i6 + i7;
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable4, 1.0f);
            this.variables.put(solverVariable3, -1.0f);
        } else {
            float f7 = (f4 / f5) / (f6 / f5);
            this.constantValue = (i7 * f7) + (i6 * f7) + ((-i4) - i5);
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable4, f7);
            this.variables.put(solverVariable3, -f7);
        }
        return this;
    }

    public ArrayRow createRowEqualMatchDimensions(float f4, float f5, float f6, SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4) {
        this.constantValue = 0.0f;
        if (f5 == 0.0f || f4 == f6) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable4, 1.0f);
            this.variables.put(solverVariable3, -1.0f);
        } else if (f4 == 0.0f) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
        } else if (f6 == 0.0f) {
            this.variables.put(solverVariable3, 1.0f);
            this.variables.put(solverVariable4, -1.0f);
        } else {
            float f7 = (f4 / f5) / (f6 / f5);
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable4, f7);
            this.variables.put(solverVariable3, -f7);
        }
        return this;
    }

    public ArrayRow createRowEquals(SolverVariable solverVariable, int i4) {
        if (i4 < 0) {
            this.constantValue = i4 * (-1);
            this.variables.put(solverVariable, 1.0f);
        } else {
            this.constantValue = i4;
            this.variables.put(solverVariable, -1.0f);
        }
        return this;
    }

    public ArrayRow createRowGreaterThan(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i4) {
        boolean z3 = false;
        if (i4 != 0) {
            if (i4 < 0) {
                i4 *= -1;
                z3 = true;
            }
            this.constantValue = i4;
        }
        if (z3) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable3, -1.0f);
        } else {
            this.variables.put(solverVariable, -1.0f);
            this.variables.put(solverVariable2, 1.0f);
            this.variables.put(solverVariable3, 1.0f);
        }
        return this;
    }

    public ArrayRow createRowLowerThan(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i4) {
        boolean z3 = false;
        if (i4 != 0) {
            if (i4 < 0) {
                i4 *= -1;
                z3 = true;
            }
            this.constantValue = i4;
        }
        if (z3) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable3, 1.0f);
        } else {
            this.variables.put(solverVariable, -1.0f);
            this.variables.put(solverVariable2, 1.0f);
            this.variables.put(solverVariable3, -1.0f);
        }
        return this;
    }

    public ArrayRow createRowWithAngle(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f4) {
        this.variables.put(solverVariable3, 0.5f);
        this.variables.put(solverVariable4, 0.5f);
        this.variables.put(solverVariable, -0.5f);
        this.variables.put(solverVariable2, -0.5f);
        this.constantValue = -f4;
        return this;
    }

    public void ensurePositiveConstant() {
        float f4 = this.constantValue;
        if (f4 < 0.0f) {
            this.constantValue = f4 * (-1.0f);
            this.variables.invert();
        }
    }

    @Override // androidx.constraintlayout.solver.LinearSystem.Row
    public SolverVariable getKey() {
        return this.variable;
    }

    @Override // androidx.constraintlayout.solver.LinearSystem.Row
    public SolverVariable getPivotCandidate(LinearSystem linearSystem, boolean[] zArr) {
        return pickPivotInVariables(zArr, null);
    }

    public boolean hasKeyVariable() {
        SolverVariable solverVariable = this.variable;
        return solverVariable != null && (solverVariable.mType == SolverVariable.Type.UNRESTRICTED || this.constantValue >= 0.0f);
    }

    public boolean hasVariable(SolverVariable solverVariable) {
        return this.variables.contains(solverVariable);
    }

    @Override // androidx.constraintlayout.solver.LinearSystem.Row
    public void initFromRow(LinearSystem.Row row) {
        if (row instanceof ArrayRow) {
            ArrayRow arrayRow = (ArrayRow) row;
            this.variable = null;
            this.variables.clear();
            for (int i4 = 0; i4 < arrayRow.variables.getCurrentSize(); i4++) {
                this.variables.add(arrayRow.variables.getVariable(i4), arrayRow.variables.getVariableValue(i4), true);
            }
        }
    }

    @Override // androidx.constraintlayout.solver.LinearSystem.Row
    public boolean isEmpty() {
        return this.variable == null && this.constantValue == 0.0f && this.variables.getCurrentSize() == 0;
    }

    public SolverVariable pickPivot(SolverVariable solverVariable) {
        return pickPivotInVariables(null, solverVariable);
    }

    public void pivot(SolverVariable solverVariable) {
        SolverVariable solverVariable2 = this.variable;
        if (solverVariable2 != null) {
            this.variables.put(solverVariable2, -1.0f);
            this.variable = null;
        }
        float fRemove = this.variables.remove(solverVariable, true) * (-1.0f);
        this.variable = solverVariable;
        if (fRemove == 1.0f) {
            return;
        }
        this.constantValue /= fRemove;
        this.variables.divideByAmount(fRemove);
    }

    public void reset() {
        this.variable = null;
        this.variables.clear();
        this.constantValue = 0.0f;
        this.isSimpleDefinition = false;
    }

    public int sizeInBytes() {
        return this.variables.sizeInBytes() + (this.variable != null ? 4 : 0) + 4 + 4;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0081  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toReadableString() {
        /*
            r8 = this;
            androidx.constraintlayout.solver.SolverVariable r0 = r8.variable
            if (r0 != 0) goto L7
            java.lang.String r0 = "0"
            goto L16
        L7:
            java.lang.String r0 = ""
            java.lang.StringBuilder r0 = android.support.v4.media.f.a(r0)
            androidx.constraintlayout.solver.SolverVariable r1 = r8.variable
            r0.append(r1)
            java.lang.String r0 = r0.toString()
        L16:
            java.lang.String r1 = " = "
            java.lang.String r0 = androidx.appcompat.view.a.a(r0, r1)
            float r1 = r8.constantValue
            r2 = 0
            r3 = 0
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 == 0) goto L33
            java.lang.StringBuilder r0 = android.support.v4.media.f.a(r0)
            float r1 = r8.constantValue
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r1 = 1
            goto L34
        L33:
            r1 = 0
        L34:
            androidx.constraintlayout.solver.ArrayRow$ArrayRowVariables r4 = r8.variables
            int r4 = r4.getCurrentSize()
        L3a:
            if (r2 >= r4) goto L9c
            androidx.constraintlayout.solver.ArrayRow$ArrayRowVariables r5 = r8.variables
            androidx.constraintlayout.solver.SolverVariable r5 = r5.getVariable(r2)
            if (r5 != 0) goto L45
            goto L99
        L45:
            androidx.constraintlayout.solver.ArrayRow$ArrayRowVariables r6 = r8.variables
            float r6 = r6.getVariableValue(r2)
            int r7 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            if (r7 != 0) goto L50
            goto L99
        L50:
            java.lang.String r5 = r5.toString()
            r7 = -1082130432(0xffffffffbf800000, float:-1.0)
            if (r1 != 0) goto L63
            int r1 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            if (r1 >= 0) goto L76
            java.lang.String r1 = "- "
            java.lang.String r0 = androidx.appcompat.view.a.a(r0, r1)
            goto L74
        L63:
            int r1 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            if (r1 <= 0) goto L6e
            java.lang.String r1 = " + "
            java.lang.String r0 = androidx.appcompat.view.a.a(r0, r1)
            goto L76
        L6e:
            java.lang.String r1 = " - "
            java.lang.String r0 = androidx.appcompat.view.a.a(r0, r1)
        L74:
            float r6 = r6 * r7
        L76:
            r1 = 1065353216(0x3f800000, float:1.0)
            int r1 = (r6 > r1 ? 1 : (r6 == r1 ? 0 : -1))
            if (r1 != 0) goto L81
            java.lang.String r0 = androidx.appcompat.view.a.a(r0, r5)
            goto L98
        L81:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r0)
            r1.append(r6)
            java.lang.String r0 = " "
            r1.append(r0)
            r1.append(r5)
            java.lang.String r0 = r1.toString()
        L98:
            r1 = 1
        L99:
            int r2 = r2 + 1
            goto L3a
        L9c:
            if (r1 != 0) goto La4
            java.lang.String r1 = "0.0"
            java.lang.String r0 = androidx.appcompat.view.a.a(r0, r1)
        La4:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.ArrayRow.toReadableString():java.lang.String");
    }

    public String toString() {
        return toReadableString();
    }

    @Override // androidx.constraintlayout.solver.LinearSystem.Row
    public void updateFromFinalVariable(LinearSystem linearSystem, SolverVariable solverVariable, boolean z3) {
        if (solverVariable.isFinalValue) {
            float f4 = this.variables.get(solverVariable);
            this.constantValue = (solverVariable.computedValue * f4) + this.constantValue;
            this.variables.remove(solverVariable, z3);
            if (z3) {
                solverVariable.removeFromRow(this);
            }
        }
    }

    @Override // androidx.constraintlayout.solver.LinearSystem.Row
    public void updateFromRow(ArrayRow arrayRow, boolean z3) {
        float fUse = this.variables.use(arrayRow, z3);
        this.constantValue = (arrayRow.constantValue * fUse) + this.constantValue;
        if (z3) {
            arrayRow.variable.removeFromRow(this);
        }
    }

    @Override // androidx.constraintlayout.solver.LinearSystem.Row
    public void updateFromSystem(LinearSystem linearSystem) {
        if (linearSystem.mRows.length == 0) {
            return;
        }
        boolean z3 = false;
        while (!z3) {
            int currentSize = this.variables.getCurrentSize();
            for (int i4 = 0; i4 < currentSize; i4++) {
                SolverVariable variable = this.variables.getVariable(i4);
                if (variable.definitionId != -1 || variable.isFinalValue) {
                    this.variablesToUpdate.add(variable);
                }
            }
            if (this.variablesToUpdate.size() > 0) {
                for (SolverVariable solverVariable : this.variablesToUpdate) {
                    if (solverVariable.isFinalValue) {
                        updateFromFinalVariable(linearSystem, solverVariable, true);
                    } else {
                        updateFromRow(linearSystem.mRows[solverVariable.definitionId], true);
                    }
                }
                this.variablesToUpdate.clear();
            } else {
                z3 = true;
            }
        }
    }

    @Override // androidx.constraintlayout.solver.LinearSystem.Row
    public void addError(SolverVariable solverVariable) {
        int i4 = solverVariable.strength;
        float f4 = 1.0f;
        if (i4 != 1) {
            if (i4 == 2) {
                f4 = 1000.0f;
            } else if (i4 == 3) {
                f4 = 1000000.0f;
            } else if (i4 == 4) {
                f4 = 1.0E9f;
            } else if (i4 == 5) {
                f4 = 1.0E12f;
            }
        }
        this.variables.put(solverVariable, f4);
    }

    public ArrayRow createRowEquals(SolverVariable solverVariable, SolverVariable solverVariable2, int i4) {
        boolean z3 = false;
        if (i4 != 0) {
            if (i4 < 0) {
                i4 *= -1;
                z3 = true;
            }
            this.constantValue = i4;
        }
        if (!z3) {
            this.variables.put(solverVariable, -1.0f);
            this.variables.put(solverVariable2, 1.0f);
        } else {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
        }
        return this;
    }

    public ArrayRow(Cache cache) {
        this.variables = new ArrayLinkedVariables(this, cache);
    }

    public ArrayRow createRowGreaterThan(SolverVariable solverVariable, int i4, SolverVariable solverVariable2) {
        this.constantValue = i4;
        this.variables.put(solverVariable, -1.0f);
        return this;
    }
}
