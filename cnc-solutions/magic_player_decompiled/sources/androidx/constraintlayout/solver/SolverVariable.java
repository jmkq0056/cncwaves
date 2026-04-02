package androidx.constraintlayout.solver;

import android.support.v4.media.f;
import java.util.Arrays;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public class SolverVariable {
    private static final boolean INTERNAL_DEBUG = false;
    public static final int MAX_STRENGTH = 9;
    public static final int STRENGTH_BARRIER = 6;
    public static final int STRENGTH_CENTERING = 7;
    public static final int STRENGTH_EQUALITY = 5;
    public static final int STRENGTH_FIXED = 8;
    public static final int STRENGTH_HIGH = 3;
    public static final int STRENGTH_HIGHEST = 4;
    public static final int STRENGTH_LOW = 1;
    public static final int STRENGTH_MEDIUM = 2;
    public static final int STRENGTH_NONE = 0;
    private static final boolean VAR_USE_HASH = false;
    private static int uniqueConstantId = 1;
    private static int uniqueErrorId = 1;
    private static int uniqueId = 1;
    private static int uniqueSlackId = 1;
    private static int uniqueUnrestrictedId = 1;
    public float computedValue;
    public int definitionId;
    public float[] goalStrengthVector;
    public int id;
    public boolean inGoal;
    public HashSet<ArrayRow> inRows;
    public boolean isFinalValue;
    public ArrayRow[] mClientEquations;
    public int mClientEquationsCount;
    private String mName;
    public Type mType;
    public int strength;
    public float[] strengthVector;
    public int usageInRowCount;

    /* JADX INFO: renamed from: androidx.constraintlayout.solver.SolverVariable$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$androidx$constraintlayout$solver$SolverVariable$Type;

        static {
            int[] iArr = new int[Type.values().length];
            $SwitchMap$androidx$constraintlayout$solver$SolverVariable$Type = iArr;
            try {
                iArr[Type.UNRESTRICTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$solver$SolverVariable$Type[Type.CONSTANT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$solver$SolverVariable$Type[Type.SLACK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$solver$SolverVariable$Type[Type.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$solver$SolverVariable$Type[Type.UNKNOWN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public enum Type {
        UNRESTRICTED,
        CONSTANT,
        SLACK,
        ERROR,
        UNKNOWN
    }

    public SolverVariable(String str, Type type) {
        this.id = -1;
        this.definitionId = -1;
        this.strength = 0;
        this.isFinalValue = false;
        this.strengthVector = new float[9];
        this.goalStrengthVector = new float[9];
        this.mClientEquations = new ArrayRow[16];
        this.mClientEquationsCount = 0;
        this.usageInRowCount = 0;
        this.inRows = null;
        this.mName = str;
        this.mType = type;
    }

    private static String getUniqueName(Type type, String str) {
        if (str != null) {
            StringBuilder sbA = f.a(str);
            sbA.append(uniqueErrorId);
            return sbA.toString();
        }
        int i4 = AnonymousClass1.$SwitchMap$androidx$constraintlayout$solver$SolverVariable$Type[type.ordinal()];
        if (i4 == 1) {
            StringBuilder sbA2 = f.a("U");
            int i5 = uniqueUnrestrictedId + 1;
            uniqueUnrestrictedId = i5;
            sbA2.append(i5);
            return sbA2.toString();
        }
        if (i4 == 2) {
            StringBuilder sbA3 = f.a("C");
            int i6 = uniqueConstantId + 1;
            uniqueConstantId = i6;
            sbA3.append(i6);
            return sbA3.toString();
        }
        if (i4 == 3) {
            StringBuilder sbA4 = f.a("S");
            int i7 = uniqueSlackId + 1;
            uniqueSlackId = i7;
            sbA4.append(i7);
            return sbA4.toString();
        }
        if (i4 == 4) {
            StringBuilder sbA5 = f.a("e");
            int i8 = uniqueErrorId + 1;
            uniqueErrorId = i8;
            sbA5.append(i8);
            return sbA5.toString();
        }
        if (i4 != 5) {
            throw new AssertionError(type.name());
        }
        StringBuilder sbA6 = f.a("V");
        int i9 = uniqueId + 1;
        uniqueId = i9;
        sbA6.append(i9);
        return sbA6.toString();
    }

    public static void increaseErrorId() {
        uniqueErrorId++;
    }

    public final void addToRow(ArrayRow arrayRow) {
        int i4 = 0;
        while (true) {
            int i5 = this.mClientEquationsCount;
            if (i4 >= i5) {
                ArrayRow[] arrayRowArr = this.mClientEquations;
                if (i5 >= arrayRowArr.length) {
                    this.mClientEquations = (ArrayRow[]) Arrays.copyOf(arrayRowArr, arrayRowArr.length * 2);
                }
                ArrayRow[] arrayRowArr2 = this.mClientEquations;
                int i6 = this.mClientEquationsCount;
                arrayRowArr2[i6] = arrayRow;
                this.mClientEquationsCount = i6 + 1;
                return;
            }
            if (this.mClientEquations[i4] == arrayRow) {
                return;
            } else {
                i4++;
            }
        }
    }

    public void clearStrengths() {
        for (int i4 = 0; i4 < 9; i4++) {
            this.strengthVector[i4] = 0.0f;
        }
    }

    public String getName() {
        return this.mName;
    }

    public final void removeFromRow(ArrayRow arrayRow) {
        int i4 = this.mClientEquationsCount;
        int i5 = 0;
        while (i5 < i4) {
            if (this.mClientEquations[i5] == arrayRow) {
                while (i5 < i4 - 1) {
                    ArrayRow[] arrayRowArr = this.mClientEquations;
                    int i6 = i5 + 1;
                    arrayRowArr[i5] = arrayRowArr[i6];
                    i5 = i6;
                }
                this.mClientEquationsCount--;
                return;
            }
            i5++;
        }
    }

    public void reset() {
        this.mName = null;
        this.mType = Type.UNKNOWN;
        this.strength = 0;
        this.id = -1;
        this.definitionId = -1;
        this.computedValue = 0.0f;
        this.isFinalValue = false;
        int i4 = this.mClientEquationsCount;
        for (int i5 = 0; i5 < i4; i5++) {
            this.mClientEquations[i5] = null;
        }
        this.mClientEquationsCount = 0;
        this.usageInRowCount = 0;
        this.inGoal = false;
        Arrays.fill(this.goalStrengthVector, 0.0f);
    }

    public void setFinalValue(LinearSystem linearSystem, float f4) {
        this.computedValue = f4;
        this.isFinalValue = true;
        int i4 = this.mClientEquationsCount;
        for (int i5 = 0; i5 < i4; i5++) {
            this.mClientEquations[i5].updateFromFinalVariable(linearSystem, this, false);
        }
        this.mClientEquationsCount = 0;
    }

    public void setName(String str) {
        this.mName = str;
    }

    public void setType(Type type, String str) {
        this.mType = type;
    }

    public String strengthsToString() {
        String strA = this + "[";
        int i4 = 0;
        boolean z3 = false;
        boolean z4 = true;
        while (i4 < this.strengthVector.length) {
            StringBuilder sbA = f.a(strA);
            sbA.append(this.strengthVector[i4]);
            String string = sbA.toString();
            float[] fArr = this.strengthVector;
            if (fArr[i4] > 0.0f) {
                z3 = false;
            } else if (fArr[i4] < 0.0f) {
                z3 = true;
            }
            if (fArr[i4] != 0.0f) {
                z4 = false;
            }
            strA = i4 < fArr.length + (-1) ? androidx.appcompat.view.a.a(string, ", ") : androidx.appcompat.view.a.a(string, "] ");
            i4++;
        }
        if (z3) {
            strA = androidx.appcompat.view.a.a(strA, " (-)");
        }
        return z4 ? androidx.appcompat.view.a.a(strA, " (*)") : strA;
    }

    public String toString() {
        if (this.mName != null) {
            StringBuilder sbA = f.a("");
            sbA.append(this.mName);
            return sbA.toString();
        }
        StringBuilder sbA2 = f.a("");
        sbA2.append(this.id);
        return sbA2.toString();
    }

    public final void updateReferencesWithNewDefinition(ArrayRow arrayRow) {
        int i4 = this.mClientEquationsCount;
        for (int i5 = 0; i5 < i4; i5++) {
            this.mClientEquations[i5].updateFromRow(arrayRow, false);
        }
        this.mClientEquationsCount = 0;
    }

    public SolverVariable(Type type, String str) {
        this.id = -1;
        this.definitionId = -1;
        this.strength = 0;
        this.isFinalValue = false;
        this.strengthVector = new float[9];
        this.goalStrengthVector = new float[9];
        this.mClientEquations = new ArrayRow[16];
        this.mClientEquationsCount = 0;
        this.usageInRowCount = 0;
        this.inRows = null;
        this.mType = type;
    }
}
