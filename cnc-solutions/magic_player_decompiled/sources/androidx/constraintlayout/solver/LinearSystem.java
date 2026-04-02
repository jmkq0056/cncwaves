package androidx.constraintlayout.solver;

import android.support.v4.media.e;
import android.support.v4.media.f;
import android.support.v4.media.g;
import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.io.PrintStream;
import java.util.Arrays;
import java.util.HashMap;
import org.eclipse.jetty.util.security.Constraint;

/* JADX INFO: loaded from: classes.dex */
public class LinearSystem {
    public static long ARRAY_ROW_CREATION = 0;
    public static final boolean DEBUG = false;
    private static final boolean DEBUG_CONSTRAINTS = false;
    public static final boolean FULL_DEBUG = false;
    public static final boolean MEASURE = false;
    public static long OPTIMIZED_ARRAY_ROW_CREATION = 0;
    public static boolean OPTIMIZED_ENGINE = true;
    private static int POOL_SIZE = 1000;
    public static final boolean SIMPLIFY_SYNONYMS = false;
    private static final boolean USE_SYNONYMS = true;
    public static Metrics sMetrics;
    public final Cache mCache;
    private Row mGoal;
    public ArrayRow[] mRows;
    private Row mTempGoal;
    public int mVariablesID = 0;
    private HashMap<String, SolverVariable> mVariables = null;
    private int TABLE_SIZE = 32;
    private int mMaxColumns = 32;
    public boolean graphOptimizer = false;
    public boolean newgraphOptimizer = false;
    private boolean[] mAlreadyTestedCandidates = new boolean[32];
    public int mNumColumns = 1;
    public int mNumRows = 0;
    private int mMaxRows = 32;
    private SolverVariable[] mPoolVariables = new SolverVariable[POOL_SIZE];
    private int mPoolVariablesCount = 0;

    public interface Row {
        void addError(SolverVariable solverVariable);

        void clear();

        SolverVariable getKey();

        SolverVariable getPivotCandidate(LinearSystem linearSystem, boolean[] zArr);

        void initFromRow(Row row);

        boolean isEmpty();

        void updateFromFinalVariable(LinearSystem linearSystem, SolverVariable solverVariable, boolean z3);

        void updateFromRow(ArrayRow arrayRow, boolean z3);

        void updateFromSystem(LinearSystem linearSystem);
    }

    public class ValuesRow extends ArrayRow {
        public ValuesRow(Cache cache) {
            this.variables = new SolverVariableValues(this, cache);
        }
    }

    public LinearSystem() {
        this.mRows = null;
        this.mRows = new ArrayRow[32];
        releaseRows();
        Cache cache = new Cache();
        this.mCache = cache;
        this.mGoal = new PriorityGoalRow(cache);
        if (OPTIMIZED_ENGINE) {
            this.mTempGoal = new ValuesRow(cache);
        } else {
            this.mTempGoal = new ArrayRow(cache);
        }
    }

    private SolverVariable acquireSolverVariable(SolverVariable.Type type, String str) {
        SolverVariable solverVariableAcquire = this.mCache.solverVariablePool.acquire();
        if (solverVariableAcquire == null) {
            solverVariableAcquire = new SolverVariable(type, str);
            solverVariableAcquire.setType(type, str);
        } else {
            solverVariableAcquire.reset();
            solverVariableAcquire.setType(type, str);
        }
        int i4 = this.mPoolVariablesCount;
        int i5 = POOL_SIZE;
        if (i4 >= i5) {
            int i6 = i5 * 2;
            POOL_SIZE = i6;
            this.mPoolVariables = (SolverVariable[]) Arrays.copyOf(this.mPoolVariables, i6);
        }
        SolverVariable[] solverVariableArr = this.mPoolVariables;
        int i7 = this.mPoolVariablesCount;
        this.mPoolVariablesCount = i7 + 1;
        solverVariableArr[i7] = solverVariableAcquire;
        return solverVariableAcquire;
    }

    private void addError(ArrayRow arrayRow) {
        arrayRow.addError(this, 0);
    }

    private final void addRow(ArrayRow arrayRow) {
        if (OPTIMIZED_ENGINE) {
            ArrayRow[] arrayRowArr = this.mRows;
            int i4 = this.mNumRows;
            if (arrayRowArr[i4] != null) {
                this.mCache.optimizedArrayRowPool.release(arrayRowArr[i4]);
            }
        } else {
            ArrayRow[] arrayRowArr2 = this.mRows;
            int i5 = this.mNumRows;
            if (arrayRowArr2[i5] != null) {
                this.mCache.arrayRowPool.release(arrayRowArr2[i5]);
            }
        }
        ArrayRow[] arrayRowArr3 = this.mRows;
        int i6 = this.mNumRows;
        arrayRowArr3[i6] = arrayRow;
        SolverVariable solverVariable = arrayRow.variable;
        solverVariable.definitionId = i6;
        this.mNumRows = i6 + 1;
        solverVariable.updateReferencesWithNewDefinition(arrayRow);
    }

    private void addSingleError(ArrayRow arrayRow, int i4) {
        addSingleError(arrayRow, i4, 0);
    }

    private void computeValues() {
        for (int i4 = 0; i4 < this.mNumRows; i4++) {
            ArrayRow arrayRow = this.mRows[i4];
            arrayRow.variable.computedValue = arrayRow.constantValue;
        }
    }

    public static ArrayRow createRowDimensionPercent(LinearSystem linearSystem, SolverVariable solverVariable, SolverVariable solverVariable2, float f4) {
        return linearSystem.createRow().createRowDimensionPercent(solverVariable, solverVariable2, f4);
    }

    private SolverVariable createVariable(String str, SolverVariable.Type type) {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.variables++;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        SolverVariable solverVariableAcquireSolverVariable = acquireSolverVariable(type, null);
        solverVariableAcquireSolverVariable.setName(str);
        int i4 = this.mVariablesID + 1;
        this.mVariablesID = i4;
        this.mNumColumns++;
        solverVariableAcquireSolverVariable.id = i4;
        if (this.mVariables == null) {
            this.mVariables = new HashMap<>();
        }
        this.mVariables.put(str, solverVariableAcquireSolverVariable);
        this.mCache.mIndexedVariables[this.mVariablesID] = solverVariableAcquireSolverVariable;
        return solverVariableAcquireSolverVariable;
    }

    private void displayRows() {
        displaySolverVariables();
        String strA = "";
        for (int i4 = 0; i4 < this.mNumRows; i4++) {
            StringBuilder sbA = f.a(strA);
            sbA.append(this.mRows[i4]);
            strA = androidx.appcompat.view.a.a(sbA.toString(), "\n");
        }
        StringBuilder sbA2 = f.a(strA);
        sbA2.append(this.mGoal);
        sbA2.append("\n");
        System.out.println(sbA2.toString());
    }

    private void displaySolverVariables() {
        StringBuilder sbA = f.a("Display Rows (");
        sbA.append(this.mNumRows);
        sbA.append("x");
        System.out.println(e.a(sbA, this.mNumColumns, ")\n"));
    }

    private int enforceBFS(Row row) {
        float f4;
        boolean z3;
        int i4 = 0;
        while (true) {
            f4 = 0.0f;
            if (i4 >= this.mNumRows) {
                z3 = false;
                break;
            }
            ArrayRow[] arrayRowArr = this.mRows;
            if (arrayRowArr[i4].variable.mType != SolverVariable.Type.UNRESTRICTED && arrayRowArr[i4].constantValue < 0.0f) {
                z3 = true;
                break;
            }
            i4++;
        }
        if (!z3) {
            return 0;
        }
        boolean z4 = false;
        int i5 = 0;
        while (!z4) {
            Metrics metrics = sMetrics;
            if (metrics != null) {
                metrics.bfs++;
            }
            i5++;
            float f5 = Float.MAX_VALUE;
            int i6 = 0;
            int i7 = -1;
            int i8 = -1;
            int i9 = 0;
            while (i6 < this.mNumRows) {
                ArrayRow arrayRow = this.mRows[i6];
                if (arrayRow.variable.mType != SolverVariable.Type.UNRESTRICTED && !arrayRow.isSimpleDefinition && arrayRow.constantValue < f4) {
                    int i10 = 1;
                    while (i10 < this.mNumColumns) {
                        SolverVariable solverVariable = this.mCache.mIndexedVariables[i10];
                        float f6 = arrayRow.variables.get(solverVariable);
                        if (f6 > f4) {
                            for (int i11 = 0; i11 < 9; i11++) {
                                float f7 = solverVariable.strengthVector[i11] / f6;
                                if ((f7 < f5 && i11 == i9) || i11 > i9) {
                                    i8 = i10;
                                    i9 = i11;
                                    f5 = f7;
                                    i7 = i6;
                                }
                            }
                        }
                        i10++;
                        f4 = 0.0f;
                    }
                }
                i6++;
                f4 = 0.0f;
            }
            if (i7 != -1) {
                ArrayRow arrayRow2 = this.mRows[i7];
                arrayRow2.variable.definitionId = -1;
                Metrics metrics2 = sMetrics;
                if (metrics2 != null) {
                    metrics2.pivots++;
                }
                arrayRow2.pivot(this.mCache.mIndexedVariables[i8]);
                SolverVariable solverVariable2 = arrayRow2.variable;
                solverVariable2.definitionId = i7;
                solverVariable2.updateReferencesWithNewDefinition(arrayRow2);
            } else {
                z4 = true;
            }
            if (i5 > this.mNumColumns / 2) {
                z4 = true;
            }
            f4 = 0.0f;
        }
        return i5;
    }

    private String getDisplaySize(int i4) {
        int i5 = i4 * 4;
        int i6 = i5 / 1024;
        int i7 = i6 / 1024;
        return i7 > 0 ? a.a("", i7, " Mb") : i6 > 0 ? a.a("", i6, " Kb") : a.a("", i5, " bytes");
    }

    private String getDisplayStrength(int i4) {
        return i4 == 1 ? "LOW" : i4 == 2 ? "MEDIUM" : i4 == 3 ? "HIGH" : i4 == 4 ? "HIGHEST" : i4 == 5 ? "EQUALITY" : i4 == 8 ? "FIXED" : i4 == 6 ? "BARRIER" : Constraint.NONE;
    }

    public static Metrics getMetrics() {
        return sMetrics;
    }

    private void increaseTableSize() {
        int i4 = this.TABLE_SIZE * 2;
        this.TABLE_SIZE = i4;
        this.mRows = (ArrayRow[]) Arrays.copyOf(this.mRows, i4);
        Cache cache = this.mCache;
        cache.mIndexedVariables = (SolverVariable[]) Arrays.copyOf(cache.mIndexedVariables, this.TABLE_SIZE);
        int i5 = this.TABLE_SIZE;
        this.mAlreadyTestedCandidates = new boolean[i5];
        this.mMaxColumns = i5;
        this.mMaxRows = i5;
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.tableSizeIncrease++;
            metrics.maxTableSize = Math.max(metrics.maxTableSize, i5);
            Metrics metrics2 = sMetrics;
            metrics2.lastTableSize = metrics2.maxTableSize;
        }
    }

    private final int optimize(Row row, boolean z3) {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.optimize++;
        }
        for (int i4 = 0; i4 < this.mNumColumns; i4++) {
            this.mAlreadyTestedCandidates[i4] = false;
        }
        boolean z4 = false;
        int i5 = 0;
        while (!z4) {
            Metrics metrics2 = sMetrics;
            if (metrics2 != null) {
                metrics2.iterations++;
            }
            i5++;
            if (i5 >= this.mNumColumns * 2) {
                return i5;
            }
            if (row.getKey() != null) {
                this.mAlreadyTestedCandidates[row.getKey().id] = true;
            }
            SolverVariable pivotCandidate = row.getPivotCandidate(this, this.mAlreadyTestedCandidates);
            if (pivotCandidate != null) {
                boolean[] zArr = this.mAlreadyTestedCandidates;
                int i6 = pivotCandidate.id;
                if (zArr[i6]) {
                    return i5;
                }
                zArr[i6] = true;
            }
            if (pivotCandidate != null) {
                float f4 = Float.MAX_VALUE;
                int i7 = -1;
                for (int i8 = 0; i8 < this.mNumRows; i8++) {
                    ArrayRow arrayRow = this.mRows[i8];
                    if (arrayRow.variable.mType != SolverVariable.Type.UNRESTRICTED && !arrayRow.isSimpleDefinition && arrayRow.hasVariable(pivotCandidate)) {
                        float f5 = arrayRow.variables.get(pivotCandidate);
                        if (f5 < 0.0f) {
                            float f6 = (-arrayRow.constantValue) / f5;
                            if (f6 < f4) {
                                i7 = i8;
                                f4 = f6;
                            }
                        }
                    }
                }
                if (i7 > -1) {
                    ArrayRow arrayRow2 = this.mRows[i7];
                    arrayRow2.variable.definitionId = -1;
                    Metrics metrics3 = sMetrics;
                    if (metrics3 != null) {
                        metrics3.pivots++;
                    }
                    arrayRow2.pivot(pivotCandidate);
                    SolverVariable solverVariable = arrayRow2.variable;
                    solverVariable.definitionId = i7;
                    solverVariable.updateReferencesWithNewDefinition(arrayRow2);
                }
            } else {
                z4 = true;
            }
        }
        return i5;
    }

    private void releaseRows() {
        int i4 = 0;
        if (OPTIMIZED_ENGINE) {
            while (true) {
                ArrayRow[] arrayRowArr = this.mRows;
                if (i4 >= arrayRowArr.length) {
                    return;
                }
                ArrayRow arrayRow = arrayRowArr[i4];
                if (arrayRow != null) {
                    this.mCache.optimizedArrayRowPool.release(arrayRow);
                }
                this.mRows[i4] = null;
                i4++;
            }
        } else {
            while (true) {
                ArrayRow[] arrayRowArr2 = this.mRows;
                if (i4 >= arrayRowArr2.length) {
                    return;
                }
                ArrayRow arrayRow2 = arrayRowArr2[i4];
                if (arrayRow2 != null) {
                    this.mCache.arrayRowPool.release(arrayRow2);
                }
                this.mRows[i4] = null;
                i4++;
            }
        }
    }

    public void addCenterPoint(ConstraintWidget constraintWidget, ConstraintWidget constraintWidget2, float f4, int i4) {
        ConstraintAnchor.Type type = ConstraintAnchor.Type.LEFT;
        SolverVariable solverVariableCreateObjectVariable = createObjectVariable(constraintWidget.getAnchor(type));
        ConstraintAnchor.Type type2 = ConstraintAnchor.Type.TOP;
        SolverVariable solverVariableCreateObjectVariable2 = createObjectVariable(constraintWidget.getAnchor(type2));
        ConstraintAnchor.Type type3 = ConstraintAnchor.Type.RIGHT;
        SolverVariable solverVariableCreateObjectVariable3 = createObjectVariable(constraintWidget.getAnchor(type3));
        ConstraintAnchor.Type type4 = ConstraintAnchor.Type.BOTTOM;
        SolverVariable solverVariableCreateObjectVariable4 = createObjectVariable(constraintWidget.getAnchor(type4));
        SolverVariable solverVariableCreateObjectVariable5 = createObjectVariable(constraintWidget2.getAnchor(type));
        SolverVariable solverVariableCreateObjectVariable6 = createObjectVariable(constraintWidget2.getAnchor(type2));
        SolverVariable solverVariableCreateObjectVariable7 = createObjectVariable(constraintWidget2.getAnchor(type3));
        SolverVariable solverVariableCreateObjectVariable8 = createObjectVariable(constraintWidget2.getAnchor(type4));
        ArrayRow arrayRowCreateRow = createRow();
        double d4 = f4;
        double dSin = Math.sin(d4);
        double d5 = i4;
        Double.isNaN(d5);
        arrayRowCreateRow.createRowWithAngle(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable6, solverVariableCreateObjectVariable8, (float) (dSin * d5));
        addConstraint(arrayRowCreateRow);
        ArrayRow arrayRowCreateRow2 = createRow();
        double dCos = Math.cos(d4);
        Double.isNaN(d5);
        arrayRowCreateRow2.createRowWithAngle(solverVariableCreateObjectVariable, solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable5, solverVariableCreateObjectVariable7, (float) (dCos * d5));
        addConstraint(arrayRowCreateRow2);
    }

    public void addCentering(SolverVariable solverVariable, SolverVariable solverVariable2, int i4, float f4, SolverVariable solverVariable3, SolverVariable solverVariable4, int i5, int i6) {
        ArrayRow arrayRowCreateRow = createRow();
        arrayRowCreateRow.createRowCentering(solverVariable, solverVariable2, i4, f4, solverVariable3, solverVariable4, i5);
        if (i6 != 8) {
            arrayRowCreateRow.addError(this, i6);
        }
        addConstraint(arrayRowCreateRow);
    }

    public void addConstraint(ArrayRow arrayRow) {
        SolverVariable solverVariablePickPivot;
        if (arrayRow == null) {
            return;
        }
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.constraints++;
            if (arrayRow.isSimpleDefinition) {
                metrics.simpleconstraints++;
            }
        }
        boolean z3 = true;
        if (this.mNumRows + 1 >= this.mMaxRows || this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        boolean z4 = false;
        if (!arrayRow.isSimpleDefinition) {
            arrayRow.updateFromSystem(this);
            if (arrayRow.isEmpty()) {
                return;
            }
            arrayRow.ensurePositiveConstant();
            if (arrayRow.chooseSubject(this)) {
                SolverVariable solverVariableCreateExtraVariable = createExtraVariable();
                arrayRow.variable = solverVariableCreateExtraVariable;
                addRow(arrayRow);
                this.mTempGoal.initFromRow(arrayRow);
                optimize(this.mTempGoal, true);
                if (solverVariableCreateExtraVariable.definitionId == -1) {
                    if (arrayRow.variable == solverVariableCreateExtraVariable && (solverVariablePickPivot = arrayRow.pickPivot(solverVariableCreateExtraVariable)) != null) {
                        Metrics metrics2 = sMetrics;
                        if (metrics2 != null) {
                            metrics2.pivots++;
                        }
                        arrayRow.pivot(solverVariablePickPivot);
                    }
                    if (!arrayRow.isSimpleDefinition) {
                        arrayRow.variable.updateReferencesWithNewDefinition(arrayRow);
                    }
                    this.mNumRows--;
                }
            } else {
                z3 = false;
            }
            if (!arrayRow.hasKeyVariable()) {
                return;
            } else {
                z4 = z3;
            }
        }
        if (z4) {
            return;
        }
        addRow(arrayRow);
    }

    public ArrayRow addEquality(SolverVariable solverVariable, SolverVariable solverVariable2, int i4, int i5) {
        if (i5 == 8 && solverVariable2.isFinalValue && solverVariable.definitionId == -1) {
            solverVariable.setFinalValue(this, solverVariable2.computedValue + i4);
            return null;
        }
        ArrayRow arrayRowCreateRow = createRow();
        arrayRowCreateRow.createRowEquals(solverVariable, solverVariable2, i4);
        if (i5 != 8) {
            arrayRowCreateRow.addError(this, i5);
        }
        addConstraint(arrayRowCreateRow);
        return arrayRowCreateRow;
    }

    public void addGreaterBarrier(SolverVariable solverVariable, SolverVariable solverVariable2, int i4, boolean z3) {
        ArrayRow arrayRowCreateRow = createRow();
        SolverVariable solverVariableCreateSlackVariable = createSlackVariable();
        solverVariableCreateSlackVariable.strength = 0;
        arrayRowCreateRow.createRowGreaterThan(solverVariable, solverVariable2, solverVariableCreateSlackVariable, i4);
        addConstraint(arrayRowCreateRow);
    }

    public void addGreaterThan(SolverVariable solverVariable, SolverVariable solverVariable2, int i4, int i5) {
        ArrayRow arrayRowCreateRow = createRow();
        SolverVariable solverVariableCreateSlackVariable = createSlackVariable();
        solverVariableCreateSlackVariable.strength = 0;
        arrayRowCreateRow.createRowGreaterThan(solverVariable, solverVariable2, solverVariableCreateSlackVariable, i4);
        if (i5 != 8) {
            addSingleError(arrayRowCreateRow, (int) (arrayRowCreateRow.variables.get(solverVariableCreateSlackVariable) * (-1.0f)), i5);
        }
        addConstraint(arrayRowCreateRow);
    }

    public void addLowerBarrier(SolverVariable solverVariable, SolverVariable solverVariable2, int i4, boolean z3) {
        ArrayRow arrayRowCreateRow = createRow();
        SolverVariable solverVariableCreateSlackVariable = createSlackVariable();
        solverVariableCreateSlackVariable.strength = 0;
        arrayRowCreateRow.createRowLowerThan(solverVariable, solverVariable2, solverVariableCreateSlackVariable, i4);
        addConstraint(arrayRowCreateRow);
    }

    public void addLowerThan(SolverVariable solverVariable, SolverVariable solverVariable2, int i4, int i5) {
        ArrayRow arrayRowCreateRow = createRow();
        SolverVariable solverVariableCreateSlackVariable = createSlackVariable();
        solverVariableCreateSlackVariable.strength = 0;
        arrayRowCreateRow.createRowLowerThan(solverVariable, solverVariable2, solverVariableCreateSlackVariable, i4);
        if (i5 != 8) {
            addSingleError(arrayRowCreateRow, (int) (arrayRowCreateRow.variables.get(solverVariableCreateSlackVariable) * (-1.0f)), i5);
        }
        addConstraint(arrayRowCreateRow);
    }

    public void addRatio(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f4, int i4) {
        ArrayRow arrayRowCreateRow = createRow();
        arrayRowCreateRow.createRowDimensionRatio(solverVariable, solverVariable2, solverVariable3, solverVariable4, f4);
        if (i4 != 8) {
            arrayRowCreateRow.addError(this, i4);
        }
        addConstraint(arrayRowCreateRow);
    }

    public final void cleanupRows() {
        int i4;
        int i5 = 0;
        while (i5 < this.mNumRows) {
            ArrayRow arrayRow = this.mRows[i5];
            if (arrayRow.variables.getCurrentSize() == 0) {
                arrayRow.isSimpleDefinition = true;
            }
            if (arrayRow.isSimpleDefinition) {
                SolverVariable solverVariable = arrayRow.variable;
                solverVariable.computedValue = arrayRow.constantValue;
                solverVariable.removeFromRow(arrayRow);
                int i6 = i5;
                while (true) {
                    i4 = this.mNumRows;
                    if (i6 >= i4 - 1) {
                        break;
                    }
                    ArrayRow[] arrayRowArr = this.mRows;
                    int i7 = i6 + 1;
                    arrayRowArr[i6] = arrayRowArr[i7];
                    i6 = i7;
                }
                this.mRows[i4 - 1] = null;
                this.mNumRows = i4 - 1;
                i5--;
            }
            i5++;
        }
    }

    public SolverVariable createErrorVariable(int i4, String str) {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.errors++;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        SolverVariable solverVariableAcquireSolverVariable = acquireSolverVariable(SolverVariable.Type.ERROR, str);
        int i5 = this.mVariablesID + 1;
        this.mVariablesID = i5;
        this.mNumColumns++;
        solverVariableAcquireSolverVariable.id = i5;
        solverVariableAcquireSolverVariable.strength = i4;
        this.mCache.mIndexedVariables[i5] = solverVariableAcquireSolverVariable;
        this.mGoal.addError(solverVariableAcquireSolverVariable);
        return solverVariableAcquireSolverVariable;
    }

    public SolverVariable createExtraVariable() {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.extravariables++;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        SolverVariable solverVariableAcquireSolverVariable = acquireSolverVariable(SolverVariable.Type.SLACK, null);
        int i4 = this.mVariablesID + 1;
        this.mVariablesID = i4;
        this.mNumColumns++;
        solverVariableAcquireSolverVariable.id = i4;
        this.mCache.mIndexedVariables[i4] = solverVariableAcquireSolverVariable;
        return solverVariableAcquireSolverVariable;
    }

    public SolverVariable createObjectVariable(Object obj) {
        SolverVariable solverVariable = null;
        if (obj == null) {
            return null;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        if (obj instanceof ConstraintAnchor) {
            ConstraintAnchor constraintAnchor = (ConstraintAnchor) obj;
            solverVariable = constraintAnchor.getSolverVariable();
            if (solverVariable == null) {
                constraintAnchor.resetSolverVariable(this.mCache);
                solverVariable = constraintAnchor.getSolverVariable();
            }
            int i4 = solverVariable.id;
            if (i4 == -1 || i4 > this.mVariablesID || this.mCache.mIndexedVariables[i4] == null) {
                if (i4 != -1) {
                    solverVariable.reset();
                }
                int i5 = this.mVariablesID + 1;
                this.mVariablesID = i5;
                this.mNumColumns++;
                solverVariable.id = i5;
                solverVariable.mType = SolverVariable.Type.UNRESTRICTED;
                this.mCache.mIndexedVariables[i5] = solverVariable;
            }
        }
        return solverVariable;
    }

    public ArrayRow createRow() {
        ArrayRow arrayRowAcquire;
        if (OPTIMIZED_ENGINE) {
            arrayRowAcquire = this.mCache.optimizedArrayRowPool.acquire();
            if (arrayRowAcquire == null) {
                arrayRowAcquire = new ValuesRow(this.mCache);
                OPTIMIZED_ARRAY_ROW_CREATION++;
            } else {
                arrayRowAcquire.reset();
            }
        } else {
            arrayRowAcquire = this.mCache.arrayRowPool.acquire();
            if (arrayRowAcquire == null) {
                arrayRowAcquire = new ArrayRow(this.mCache);
                ARRAY_ROW_CREATION++;
            } else {
                arrayRowAcquire.reset();
            }
        }
        SolverVariable.increaseErrorId();
        return arrayRowAcquire;
    }

    public SolverVariable createSlackVariable() {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.slackvariables++;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        SolverVariable solverVariableAcquireSolverVariable = acquireSolverVariable(SolverVariable.Type.SLACK, null);
        int i4 = this.mVariablesID + 1;
        this.mVariablesID = i4;
        this.mNumColumns++;
        solverVariableAcquireSolverVariable.id = i4;
        this.mCache.mIndexedVariables[i4] = solverVariableAcquireSolverVariable;
        return solverVariableAcquireSolverVariable;
    }

    public void displayReadableRows() {
        displaySolverVariables();
        String str = "";
        for (int i4 = 0; i4 < this.mVariablesID; i4++) {
            SolverVariable solverVariable = this.mCache.mIndexedVariables[i4];
            if (solverVariable != null && solverVariable.isFinalValue) {
                str = str + " $[" + i4 + "] => " + solverVariable + " = " + solverVariable.computedValue + "\n";
            }
        }
        String strA = androidx.appcompat.view.a.a(str, "\n\n #  ");
        for (int i5 = 0; i5 < this.mNumRows; i5++) {
            StringBuilder sbA = f.a(strA);
            sbA.append(this.mRows[i5].toReadableString());
            strA = androidx.appcompat.view.a.a(sbA.toString(), "\n #  ");
        }
        if (this.mGoal != null) {
            StringBuilder sbA2 = g.a(strA, "Goal: ");
            sbA2.append(this.mGoal);
            sbA2.append("\n");
            strA = sbA2.toString();
        }
        System.out.println(strA);
    }

    public void displaySystemInformations() {
        int iSizeInBytes = 0;
        for (int i4 = 0; i4 < this.TABLE_SIZE; i4++) {
            ArrayRow[] arrayRowArr = this.mRows;
            if (arrayRowArr[i4] != null) {
                iSizeInBytes = arrayRowArr[i4].sizeInBytes() + iSizeInBytes;
            }
        }
        int iSizeInBytes2 = 0;
        for (int i5 = 0; i5 < this.mNumRows; i5++) {
            ArrayRow[] arrayRowArr2 = this.mRows;
            if (arrayRowArr2[i5] != null) {
                iSizeInBytes2 = arrayRowArr2[i5].sizeInBytes() + iSizeInBytes2;
            }
        }
        PrintStream printStream = System.out;
        StringBuilder sbA = f.a("Linear System -> Table size: ");
        sbA.append(this.TABLE_SIZE);
        sbA.append(" (");
        int i6 = this.TABLE_SIZE;
        sbA.append(getDisplaySize(i6 * i6));
        sbA.append(") -- row sizes: ");
        sbA.append(getDisplaySize(iSizeInBytes));
        sbA.append(", actual size: ");
        sbA.append(getDisplaySize(iSizeInBytes2));
        sbA.append(" rows: ");
        sbA.append(this.mNumRows);
        sbA.append("/");
        sbA.append(this.mMaxRows);
        sbA.append(" cols: ");
        sbA.append(this.mNumColumns);
        sbA.append("/");
        sbA.append(this.mMaxColumns);
        sbA.append(" ");
        sbA.append(0);
        sbA.append(" occupied cells, ");
        sbA.append(getDisplaySize(0));
        printStream.println(sbA.toString());
    }

    public void displayVariablesReadableRows() {
        displaySolverVariables();
        String strA = "";
        for (int i4 = 0; i4 < this.mNumRows; i4++) {
            if (this.mRows[i4].variable.mType == SolverVariable.Type.UNRESTRICTED) {
                StringBuilder sbA = f.a(strA);
                sbA.append(this.mRows[i4].toReadableString());
                strA = androidx.appcompat.view.a.a(sbA.toString(), "\n");
            }
        }
        StringBuilder sbA2 = f.a(strA);
        sbA2.append(this.mGoal);
        sbA2.append("\n");
        System.out.println(sbA2.toString());
    }

    public void fillMetrics(Metrics metrics) {
        sMetrics = metrics;
    }

    public Cache getCache() {
        return this.mCache;
    }

    public Row getGoal() {
        return this.mGoal;
    }

    public int getMemoryUsed() {
        int iSizeInBytes = 0;
        for (int i4 = 0; i4 < this.mNumRows; i4++) {
            ArrayRow[] arrayRowArr = this.mRows;
            if (arrayRowArr[i4] != null) {
                iSizeInBytes = arrayRowArr[i4].sizeInBytes() + iSizeInBytes;
            }
        }
        return iSizeInBytes;
    }

    public int getNumEquations() {
        return this.mNumRows;
    }

    public int getNumVariables() {
        return this.mVariablesID;
    }

    public int getObjectVariableValue(Object obj) {
        SolverVariable solverVariable = ((ConstraintAnchor) obj).getSolverVariable();
        if (solverVariable != null) {
            return (int) (solverVariable.computedValue + 0.5f);
        }
        return 0;
    }

    public ArrayRow getRow(int i4) {
        return this.mRows[i4];
    }

    public float getValueFor(String str) {
        SolverVariable variable = getVariable(str, SolverVariable.Type.UNRESTRICTED);
        if (variable == null) {
            return 0.0f;
        }
        return variable.computedValue;
    }

    public SolverVariable getVariable(String str, SolverVariable.Type type) {
        if (this.mVariables == null) {
            this.mVariables = new HashMap<>();
        }
        SolverVariable solverVariable = this.mVariables.get(str);
        return solverVariable == null ? createVariable(str, type) : solverVariable;
    }

    public void minimize() {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.minimize++;
        }
        if (!this.graphOptimizer && !this.newgraphOptimizer) {
            minimizeGoal(this.mGoal);
            return;
        }
        if (metrics != null) {
            metrics.graphOptimizer++;
        }
        boolean z3 = false;
        int i4 = 0;
        while (true) {
            if (i4 >= this.mNumRows) {
                z3 = true;
                break;
            } else if (!this.mRows[i4].isSimpleDefinition) {
                break;
            } else {
                i4++;
            }
        }
        if (!z3) {
            minimizeGoal(this.mGoal);
            return;
        }
        Metrics metrics2 = sMetrics;
        if (metrics2 != null) {
            metrics2.fullySolved++;
        }
        computeValues();
    }

    public void minimizeGoal(Row row) {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.minimizeGoal++;
            metrics.maxVariables = Math.max(metrics.maxVariables, this.mNumColumns);
            Metrics metrics2 = sMetrics;
            metrics2.maxRows = Math.max(metrics2.maxRows, this.mNumRows);
        }
        enforceBFS(row);
        optimize(row, false);
        computeValues();
    }

    public void removeRow(ArrayRow arrayRow) {
        SolverVariable solverVariable;
        int i4;
        if (!arrayRow.isSimpleDefinition || (solverVariable = arrayRow.variable) == null) {
            return;
        }
        int i5 = solverVariable.definitionId;
        if (i5 != -1) {
            while (true) {
                i4 = this.mNumRows;
                if (i5 >= i4 - 1) {
                    break;
                }
                ArrayRow[] arrayRowArr = this.mRows;
                int i6 = i5 + 1;
                arrayRowArr[i5] = arrayRowArr[i6];
                i5 = i6;
            }
            this.mNumRows = i4 - 1;
        }
        arrayRow.variable.setFinalValue(this, arrayRow.constantValue);
    }

    public void reset() {
        Cache cache;
        int i4 = 0;
        while (true) {
            cache = this.mCache;
            SolverVariable[] solverVariableArr = cache.mIndexedVariables;
            if (i4 >= solverVariableArr.length) {
                break;
            }
            SolverVariable solverVariable = solverVariableArr[i4];
            if (solverVariable != null) {
                solverVariable.reset();
            }
            i4++;
        }
        cache.solverVariablePool.releaseAll(this.mPoolVariables, this.mPoolVariablesCount);
        this.mPoolVariablesCount = 0;
        Arrays.fill(this.mCache.mIndexedVariables, (Object) null);
        HashMap<String, SolverVariable> map = this.mVariables;
        if (map != null) {
            map.clear();
        }
        this.mVariablesID = 0;
        this.mGoal.clear();
        this.mNumColumns = 1;
        for (int i5 = 0; i5 < this.mNumRows; i5++) {
            this.mRows[i5].used = false;
        }
        releaseRows();
        this.mNumRows = 0;
        if (OPTIMIZED_ENGINE) {
            this.mTempGoal = new ValuesRow(this.mCache);
        } else {
            this.mTempGoal = new ArrayRow(this.mCache);
        }
    }

    public void addSingleError(ArrayRow arrayRow, int i4, int i5) {
        arrayRow.addSingleError(createErrorVariable(i5, null), i4);
    }

    public void addEquality(SolverVariable solverVariable, int i4) {
        int i5 = solverVariable.definitionId;
        if (i5 == -1) {
            solverVariable.setFinalValue(this, i4);
            return;
        }
        if (i5 != -1) {
            ArrayRow arrayRow = this.mRows[i5];
            if (arrayRow.isSimpleDefinition) {
                arrayRow.constantValue = i4;
                return;
            }
            if (arrayRow.variables.getCurrentSize() == 0) {
                arrayRow.isSimpleDefinition = true;
                arrayRow.constantValue = i4;
                return;
            } else {
                ArrayRow arrayRowCreateRow = createRow();
                arrayRowCreateRow.createRowEquals(solverVariable, i4);
                addConstraint(arrayRowCreateRow);
                return;
            }
        }
        ArrayRow arrayRowCreateRow2 = createRow();
        arrayRowCreateRow2.createRowDefinition(solverVariable, i4);
        addConstraint(arrayRowCreateRow2);
    }
}
