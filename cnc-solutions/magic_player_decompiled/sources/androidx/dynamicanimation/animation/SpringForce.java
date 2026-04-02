package androidx.dynamicanimation.animation;

import androidx.annotation.FloatRange;
import androidx.annotation.RestrictTo;
import androidx.dynamicanimation.animation.DynamicAnimation;

/* JADX INFO: loaded from: classes.dex */
public final class SpringForce implements Force {
    public static final float DAMPING_RATIO_HIGH_BOUNCY = 0.2f;
    public static final float DAMPING_RATIO_LOW_BOUNCY = 0.75f;
    public static final float DAMPING_RATIO_MEDIUM_BOUNCY = 0.5f;
    public static final float DAMPING_RATIO_NO_BOUNCY = 1.0f;
    public static final float STIFFNESS_HIGH = 10000.0f;
    public static final float STIFFNESS_LOW = 200.0f;
    public static final float STIFFNESS_MEDIUM = 1500.0f;
    public static final float STIFFNESS_VERY_LOW = 50.0f;
    private static final double UNSET = Double.MAX_VALUE;
    private static final double VELOCITY_THRESHOLD_MULTIPLIER = 62.5d;
    private double mDampedFreq;
    public double mDampingRatio;
    private double mFinalPosition;
    private double mGammaMinus;
    private double mGammaPlus;
    private boolean mInitialized;
    private final DynamicAnimation.MassState mMassState;
    public double mNaturalFreq;
    private double mValueThreshold;
    private double mVelocityThreshold;

    public SpringForce() {
        this.mNaturalFreq = Math.sqrt(1500.0d);
        this.mDampingRatio = 0.5d;
        this.mInitialized = false;
        this.mFinalPosition = UNSET;
        this.mMassState = new DynamicAnimation.MassState();
    }

    private void init() {
        if (this.mInitialized) {
            return;
        }
        if (this.mFinalPosition == UNSET) {
            throw new IllegalStateException("Error: Final position of the spring must be set before the animation starts");
        }
        double d4 = this.mDampingRatio;
        if (d4 > 1.0d) {
            double d5 = this.mNaturalFreq;
            this.mGammaPlus = (Math.sqrt((d4 * d4) - 1.0d) * d5) + ((-d4) * d5);
            double d6 = this.mDampingRatio;
            double d7 = this.mNaturalFreq;
            this.mGammaMinus = ((-d6) * d7) - (Math.sqrt((d6 * d6) - 1.0d) * d7);
        } else if (d4 >= 0.0d && d4 < 1.0d) {
            this.mDampedFreq = Math.sqrt(1.0d - (d4 * d4)) * this.mNaturalFreq;
        }
        this.mInitialized = true;
    }

    @Override // androidx.dynamicanimation.animation.Force
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public float getAcceleration(float f4, float f5) {
        float finalPosition = f4 - getFinalPosition();
        double d4 = this.mNaturalFreq;
        double d5 = d4 * d4;
        double d6 = d4 * 2.0d * this.mDampingRatio;
        double d7 = finalPosition;
        Double.isNaN(d7);
        double d8 = f5;
        Double.isNaN(d8);
        return (float) (((-d5) * d7) - (d6 * d8));
    }

    public float getDampingRatio() {
        return (float) this.mDampingRatio;
    }

    public float getFinalPosition() {
        return (float) this.mFinalPosition;
    }

    public float getStiffness() {
        double d4 = this.mNaturalFreq;
        return (float) (d4 * d4);
    }

    @Override // androidx.dynamicanimation.animation.Force
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean isAtEquilibrium(float f4, float f5) {
        return ((double) Math.abs(f5)) < this.mVelocityThreshold && ((double) Math.abs(f4 - getFinalPosition())) < this.mValueThreshold;
    }

    public SpringForce setDampingRatio(@FloatRange(from = 0.0d) float f4) {
        if (f4 < 0.0f) {
            throw new IllegalArgumentException("Damping ratio must be non-negative");
        }
        this.mDampingRatio = f4;
        this.mInitialized = false;
        return this;
    }

    public SpringForce setFinalPosition(float f4) {
        this.mFinalPosition = f4;
        return this;
    }

    public SpringForce setStiffness(@FloatRange(from = 0.0d, fromInclusive = false) float f4) {
        if (f4 <= 0.0f) {
            throw new IllegalArgumentException("Spring stiffness constant must be positive.");
        }
        this.mNaturalFreq = Math.sqrt(f4);
        this.mInitialized = false;
        return this;
    }

    public void setValueThreshold(double d4) {
        double dAbs = Math.abs(d4);
        this.mValueThreshold = dAbs;
        this.mVelocityThreshold = dAbs * VELOCITY_THRESHOLD_MULTIPLIER;
    }

    public DynamicAnimation.MassState updateValues(double d4, double d5, long j4) {
        double dCos;
        double dPow;
        init();
        double d6 = j4;
        Double.isNaN(d6);
        double d7 = d6 / 1000.0d;
        double d8 = d4 - this.mFinalPosition;
        double d9 = this.mDampingRatio;
        if (d9 > 1.0d) {
            double d10 = this.mGammaMinus;
            double d11 = this.mGammaPlus;
            double d12 = d8 - (((d10 * d8) - d5) / (d10 - d11));
            double d13 = ((d8 * d10) - d5) / (d10 - d11);
            dPow = (Math.pow(2.718281828459045d, this.mGammaPlus * d7) * d13) + (Math.pow(2.718281828459045d, d10 * d7) * d12);
            double d14 = this.mGammaMinus;
            double dPow2 = Math.pow(2.718281828459045d, d14 * d7) * d12 * d14;
            double d15 = this.mGammaPlus;
            dCos = (Math.pow(2.718281828459045d, d15 * d7) * d13 * d15) + dPow2;
        } else if (d9 == 1.0d) {
            double d16 = this.mNaturalFreq;
            double d17 = (d16 * d8) + d5;
            double d18 = (d17 * d7) + d8;
            double dPow3 = Math.pow(2.718281828459045d, (-d16) * d7) * d18;
            double dPow4 = Math.pow(2.718281828459045d, (-this.mNaturalFreq) * d7) * d18;
            double d19 = this.mNaturalFreq;
            dCos = (Math.pow(2.718281828459045d, (-d19) * d7) * d17) + (dPow4 * (-d19));
            dPow = dPow3;
        } else {
            double d20 = 1.0d / this.mDampedFreq;
            double d21 = this.mNaturalFreq;
            double d22 = ((d9 * d21 * d8) + d5) * d20;
            double dSin = ((Math.sin(this.mDampedFreq * d7) * d22) + (Math.cos(this.mDampedFreq * d7) * d8)) * Math.pow(2.718281828459045d, (-d9) * d21 * d7);
            double d23 = this.mNaturalFreq;
            double d24 = this.mDampingRatio;
            double d25 = (-d23) * dSin * d24;
            double dPow5 = Math.pow(2.718281828459045d, (-d24) * d23 * d7);
            double d26 = this.mDampedFreq;
            double dSin2 = Math.sin(d26 * d7) * (-d26) * d8;
            double d27 = this.mDampedFreq;
            dCos = (((Math.cos(d27 * d7) * d22 * d27) + dSin2) * dPow5) + d25;
            dPow = dSin;
        }
        DynamicAnimation.MassState massState = this.mMassState;
        massState.mValue = (float) (dPow + this.mFinalPosition);
        massState.mVelocity = (float) dCos;
        return massState;
    }

    public SpringForce(float f4) {
        this.mNaturalFreq = Math.sqrt(1500.0d);
        this.mDampingRatio = 0.5d;
        this.mInitialized = false;
        this.mFinalPosition = UNSET;
        this.mMassState = new DynamicAnimation.MassState();
        this.mFinalPosition = f4;
    }
}
