package androidx.constraintlayout.solver;

import android.support.v4.media.f;
import android.support.v4.media.g;
import androidx.constraintlayout.solver.ArrayRow;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class SolverVariableValues implements ArrayRow.ArrayRowVariables {
    private static final boolean DEBUG = false;
    private static final boolean HASH = true;
    private static float epsilon = 0.001f;
    public final Cache mCache;
    private final ArrayRow mRow;
    private final int NONE = -1;
    private int SIZE = 16;
    private int HASH_SIZE = 16;
    public int[] keys = new int[16];
    public int[] nextKeys = new int[16];
    public int[] variables = new int[16];
    public float[] values = new float[16];
    public int[] previous = new int[16];
    public int[] next = new int[16];
    public int mCount = 0;
    public int head = -1;

    public SolverVariableValues(ArrayRow arrayRow, Cache cache) {
        this.mRow = arrayRow;
        this.mCache = cache;
        clear();
    }

    private void addToHashMap(SolverVariable solverVariable, int i4) {
        int[] iArr;
        int i5 = solverVariable.id % this.HASH_SIZE;
        int[] iArr2 = this.keys;
        int i6 = iArr2[i5];
        if (i6 == -1) {
            iArr2[i5] = i4;
        } else {
            while (true) {
                iArr = this.nextKeys;
                if (iArr[i6] == -1) {
                    break;
                } else {
                    i6 = iArr[i6];
                }
            }
            iArr[i6] = i4;
        }
        this.nextKeys[i4] = -1;
    }

    private void addVariable(int i4, SolverVariable solverVariable, float f4) {
        this.variables[i4] = solverVariable.id;
        this.values[i4] = f4;
        this.previous[i4] = -1;
        this.next[i4] = -1;
        solverVariable.addToRow(this.mRow);
        solverVariable.usageInRowCount++;
        this.mCount++;
    }

    private void displayHash() {
        for (int i4 = 0; i4 < this.HASH_SIZE; i4++) {
            if (this.keys[i4] != -1) {
                String string = hashCode() + " hash [" + i4 + "] => ";
                int i5 = this.keys[i4];
                boolean z3 = false;
                while (!z3) {
                    StringBuilder sbA = g.a(string, " ");
                    sbA.append(this.variables[i5]);
                    string = sbA.toString();
                    int[] iArr = this.nextKeys;
                    if (iArr[i5] != -1) {
                        i5 = iArr[i5];
                    } else {
                        z3 = true;
                    }
                }
                System.out.println(string);
            }
        }
    }

    private int findEmptySlot() {
        for (int i4 = 0; i4 < this.SIZE; i4++) {
            if (this.variables[i4] == -1) {
                return i4;
            }
        }
        return -1;
    }

    private void increaseSize() {
        int i4 = this.SIZE * 2;
        this.variables = Arrays.copyOf(this.variables, i4);
        this.values = Arrays.copyOf(this.values, i4);
        this.previous = Arrays.copyOf(this.previous, i4);
        this.next = Arrays.copyOf(this.next, i4);
        this.nextKeys = Arrays.copyOf(this.nextKeys, i4);
        for (int i5 = this.SIZE; i5 < i4; i5++) {
            this.variables[i5] = -1;
            this.nextKeys[i5] = -1;
        }
        this.SIZE = i4;
    }

    private void insertVariable(int i4, SolverVariable solverVariable, float f4) {
        int iFindEmptySlot = findEmptySlot();
        addVariable(iFindEmptySlot, solverVariable, f4);
        if (i4 != -1) {
            this.previous[iFindEmptySlot] = i4;
            int[] iArr = this.next;
            iArr[iFindEmptySlot] = iArr[i4];
            iArr[i4] = iFindEmptySlot;
        } else {
            this.previous[iFindEmptySlot] = -1;
            if (this.mCount > 0) {
                this.next[iFindEmptySlot] = this.head;
                this.head = iFindEmptySlot;
            } else {
                this.next[iFindEmptySlot] = -1;
            }
        }
        int[] iArr2 = this.next;
        if (iArr2[iFindEmptySlot] != -1) {
            this.previous[iArr2[iFindEmptySlot]] = iFindEmptySlot;
        }
        addToHashMap(solverVariable, iFindEmptySlot);
    }

    private void removeFromHashMap(SolverVariable solverVariable) {
        int[] iArr;
        int i4 = solverVariable.id;
        int i5 = i4 % this.HASH_SIZE;
        int[] iArr2 = this.keys;
        int i6 = iArr2[i5];
        if (i6 == -1) {
            return;
        }
        if (this.variables[i6] == i4) {
            int[] iArr3 = this.nextKeys;
            iArr2[i5] = iArr3[i6];
            iArr3[i6] = -1;
            return;
        }
        while (true) {
            iArr = this.nextKeys;
            if (iArr[i6] == -1 || this.variables[iArr[i6]] == i4) {
                break;
            } else {
                i6 = iArr[i6];
            }
        }
        int i7 = iArr[i6];
        if (i7 == -1 || this.variables[i7] != i4) {
            return;
        }
        iArr[i6] = iArr[i7];
        iArr[i7] = -1;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public void add(SolverVariable solverVariable, float f4, boolean z3) {
        float f5 = epsilon;
        if (f4 <= (-f5) || f4 >= f5) {
            int iIndexOf = indexOf(solverVariable);
            if (iIndexOf == -1) {
                put(solverVariable, f4);
                return;
            }
            float[] fArr = this.values;
            fArr[iIndexOf] = fArr[iIndexOf] + f4;
            float f6 = fArr[iIndexOf];
            float f7 = epsilon;
            if (f6 <= (-f7) || fArr[iIndexOf] >= f7) {
                return;
            }
            fArr[iIndexOf] = 0.0f;
            remove(solverVariable, z3);
        }
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public void clear() {
        int i4 = this.mCount;
        for (int i5 = 0; i5 < i4; i5++) {
            SolverVariable variable = getVariable(i5);
            if (variable != null) {
                variable.removeFromRow(this.mRow);
            }
        }
        for (int i6 = 0; i6 < this.SIZE; i6++) {
            this.variables[i6] = -1;
            this.nextKeys[i6] = -1;
        }
        for (int i7 = 0; i7 < this.HASH_SIZE; i7++) {
            this.keys[i7] = -1;
        }
        this.mCount = 0;
        this.head = -1;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public boolean contains(SolverVariable solverVariable) {
        return indexOf(solverVariable) != -1;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public void display() {
        int i4 = this.mCount;
        System.out.print("{ ");
        for (int i5 = 0; i5 < i4; i5++) {
            SolverVariable variable = getVariable(i5);
            if (variable != null) {
                System.out.print(variable + " = " + getVariableValue(i5) + " ");
            }
        }
        System.out.println(" }");
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public void divideByAmount(float f4) {
        int i4 = this.mCount;
        int i5 = this.head;
        for (int i6 = 0; i6 < i4; i6++) {
            float[] fArr = this.values;
            fArr[i5] = fArr[i5] / f4;
            i5 = this.next[i5];
            if (i5 == -1) {
                return;
            }
        }
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public float get(SolverVariable solverVariable) {
        int iIndexOf = indexOf(solverVariable);
        if (iIndexOf != -1) {
            return this.values[iIndexOf];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public int getCurrentSize() {
        return this.mCount;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public SolverVariable getVariable(int i4) {
        int i5 = this.mCount;
        if (i5 == 0) {
            return null;
        }
        int i6 = this.head;
        for (int i7 = 0; i7 < i5; i7++) {
            if (i7 == i4 && i6 != -1) {
                return this.mCache.mIndexedVariables[this.variables[i6]];
            }
            i6 = this.next[i6];
            if (i6 == -1) {
                break;
            }
        }
        return null;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public float getVariableValue(int i4) {
        int i5 = this.mCount;
        int i6 = this.head;
        for (int i7 = 0; i7 < i5; i7++) {
            if (i7 == i4) {
                return this.values[i6];
            }
            i6 = this.next[i6];
            if (i6 == -1) {
                return 0.0f;
            }
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public int indexOf(SolverVariable solverVariable) {
        int[] iArr;
        if (this.mCount == 0) {
            return -1;
        }
        int i4 = solverVariable.id;
        int i5 = this.keys[i4 % this.HASH_SIZE];
        if (i5 == -1) {
            return -1;
        }
        if (this.variables[i5] == i4) {
            return i5;
        }
        while (true) {
            iArr = this.nextKeys;
            if (iArr[i5] == -1 || this.variables[iArr[i5]] == i4) {
                break;
            }
            i5 = iArr[i5];
        }
        if (iArr[i5] != -1 && this.variables[iArr[i5]] == i4) {
            return iArr[i5];
        }
        return -1;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public void invert() {
        int i4 = this.mCount;
        int i5 = this.head;
        for (int i6 = 0; i6 < i4; i6++) {
            float[] fArr = this.values;
            fArr[i5] = fArr[i5] * (-1.0f);
            i5 = this.next[i5];
            if (i5 == -1) {
                return;
            }
        }
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public void put(SolverVariable solverVariable, float f4) {
        float f5 = epsilon;
        if (f4 > (-f5) && f4 < f5) {
            remove(solverVariable, true);
            return;
        }
        if (this.mCount == 0) {
            addVariable(0, solverVariable, f4);
            addToHashMap(solverVariable, 0);
            this.head = 0;
            return;
        }
        int iIndexOf = indexOf(solverVariable);
        if (iIndexOf != -1) {
            this.values[iIndexOf] = f4;
            return;
        }
        if (this.mCount + 1 >= this.SIZE) {
            increaseSize();
        }
        int i4 = this.mCount;
        int i5 = this.head;
        int i6 = -1;
        for (int i7 = 0; i7 < i4; i7++) {
            int[] iArr = this.variables;
            int i8 = iArr[i5];
            int i9 = solverVariable.id;
            if (i8 == i9) {
                this.values[i5] = f4;
                return;
            }
            if (iArr[i5] < i9) {
                i6 = i5;
            }
            i5 = this.next[i5];
            if (i5 == -1) {
                break;
            }
        }
        insertVariable(i6, solverVariable, f4);
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public float remove(SolverVariable solverVariable, boolean z3) {
        int iIndexOf = indexOf(solverVariable);
        if (iIndexOf == -1) {
            return 0.0f;
        }
        removeFromHashMap(solverVariable);
        float f4 = this.values[iIndexOf];
        if (this.head == iIndexOf) {
            this.head = this.next[iIndexOf];
        }
        this.variables[iIndexOf] = -1;
        int[] iArr = this.previous;
        if (iArr[iIndexOf] != -1) {
            int[] iArr2 = this.next;
            iArr2[iArr[iIndexOf]] = iArr2[iIndexOf];
        }
        int[] iArr3 = this.next;
        if (iArr3[iIndexOf] != -1) {
            iArr[iArr3[iIndexOf]] = iArr[iIndexOf];
        }
        this.mCount--;
        solverVariable.usageInRowCount--;
        if (z3) {
            solverVariable.removeFromRow(this.mRow);
        }
        return f4;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public int sizeInBytes() {
        return 0;
    }

    public String toString() {
        String strA;
        String strA2;
        String strA3 = hashCode() + " { ";
        int i4 = this.mCount;
        for (int i5 = 0; i5 < i4; i5++) {
            SolverVariable variable = getVariable(i5);
            if (variable != null) {
                String str = strA3 + variable + " = " + getVariableValue(i5) + " ";
                int iIndexOf = indexOf(variable);
                String strA4 = androidx.appcompat.view.a.a(str, "[p: ");
                if (this.previous[iIndexOf] != -1) {
                    StringBuilder sbA = f.a(strA4);
                    sbA.append(this.mCache.mIndexedVariables[this.variables[this.previous[iIndexOf]]]);
                    strA = sbA.toString();
                } else {
                    strA = androidx.appcompat.view.a.a(strA4, "none");
                }
                String strA5 = androidx.appcompat.view.a.a(strA, ", n: ");
                if (this.next[iIndexOf] != -1) {
                    StringBuilder sbA2 = f.a(strA5);
                    sbA2.append(this.mCache.mIndexedVariables[this.variables[this.next[iIndexOf]]]);
                    strA2 = sbA2.toString();
                } else {
                    strA2 = androidx.appcompat.view.a.a(strA5, "none");
                }
                strA3 = androidx.appcompat.view.a.a(strA2, "]");
            }
        }
        return androidx.appcompat.view.a.a(strA3, " }");
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public float use(ArrayRow arrayRow, boolean z3) {
        float f4 = get(arrayRow.variable);
        remove(arrayRow.variable, z3);
        SolverVariableValues solverVariableValues = (SolverVariableValues) arrayRow.variables;
        int currentSize = solverVariableValues.getCurrentSize();
        int i4 = 0;
        int i5 = 0;
        while (i4 < currentSize) {
            int[] iArr = solverVariableValues.variables;
            if (iArr[i5] != -1) {
                add(this.mCache.mIndexedVariables[iArr[i5]], solverVariableValues.values[i5] * f4, z3);
                i4++;
            }
            i5++;
        }
        return f4;
    }
}
