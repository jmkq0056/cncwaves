package androidx.dynamicanimation.animation;

import androidx.annotation.FloatRange;
import androidx.dynamicanimation.animation.DynamicAnimation;

/* JADX INFO: loaded from: classes.dex */
public final class FlingAnimation extends DynamicAnimation<FlingAnimation> {
    private final DragForce mFlingForce;

    public static final class DragForce implements Force {
        private static final float DEFAULT_FRICTION = -4.2f;
        private static final float VELOCITY_THRESHOLD_MULTIPLIER = 62.5f;
        private float mFriction = DEFAULT_FRICTION;
        private final DynamicAnimation.MassState mMassState = new DynamicAnimation.MassState();
        private float mVelocityThreshold;

        @Override // androidx.dynamicanimation.animation.Force
        public float getAcceleration(float f4, float f5) {
            return f5 * this.mFriction;
        }

        public float getFrictionScalar() {
            return this.mFriction / DEFAULT_FRICTION;
        }

        @Override // androidx.dynamicanimation.animation.Force
        public boolean isAtEquilibrium(float f4, float f5) {
            return Math.abs(f5) < this.mVelocityThreshold;
        }

        public void setFrictionScalar(float f4) {
            this.mFriction = f4 * DEFAULT_FRICTION;
        }

        public void setValueThreshold(float f4) {
            this.mVelocityThreshold = f4 * VELOCITY_THRESHOLD_MULTIPLIER;
        }

        public DynamicAnimation.MassState updateValueAndVelocity(float f4, float f5, long j4) {
            DynamicAnimation.MassState massState = this.mMassState;
            double d4 = f5;
            float f6 = j4;
            double dExp = Math.exp((f6 / 1000.0f) * this.mFriction);
            Double.isNaN(d4);
            massState.mVelocity = (float) (dExp * d4);
            DynamicAnimation.MassState massState2 = this.mMassState;
            float f7 = this.mFriction;
            double d5 = f4 - (f5 / f7);
            double d6 = f5 / f7;
            double dExp2 = Math.exp((f7 * f6) / 1000.0f);
            Double.isNaN(d6);
            Double.isNaN(d5);
            massState2.mValue = (float) ((dExp2 * d6) + d5);
            DynamicAnimation.MassState massState3 = this.mMassState;
            if (isAtEquilibrium(massState3.mValue, massState3.mVelocity)) {
                this.mMassState.mVelocity = 0.0f;
            }
            return this.mMassState;
        }
    }

    public FlingAnimation(FloatValueHolder floatValueHolder) {
        super(floatValueHolder);
        DragForce dragForce = new DragForce();
        this.mFlingForce = dragForce;
        dragForce.setValueThreshold(getValueThreshold());
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public float getAcceleration(float f4, float f5) {
        return this.mFlingForce.getAcceleration(f4, f5);
    }

    public float getFriction() {
        return this.mFlingForce.getFrictionScalar();
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public boolean isAtEquilibrium(float f4, float f5) {
        return f4 >= this.mMaxValue || f4 <= this.mMinValue || this.mFlingForce.isAtEquilibrium(f4, f5);
    }

    public FlingAnimation setFriction(@FloatRange(from = 0.0d, fromInclusive = false) float f4) {
        if (f4 <= 0.0f) {
            throw new IllegalArgumentException("Friction must be positive");
        }
        this.mFlingForce.setFrictionScalar(f4);
        return this;
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public void setValueThreshold(float f4) {
        this.mFlingForce.setValueThreshold(f4);
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public boolean updateValueAndVelocity(long j4) {
        DynamicAnimation.MassState massStateUpdateValueAndVelocity = this.mFlingForce.updateValueAndVelocity(this.mValue, this.mVelocity, j4);
        float f4 = massStateUpdateValueAndVelocity.mValue;
        this.mValue = f4;
        float f5 = massStateUpdateValueAndVelocity.mVelocity;
        this.mVelocity = f5;
        float f6 = this.mMinValue;
        if (f4 < f6) {
            this.mValue = f6;
            return true;
        }
        float f7 = this.mMaxValue;
        if (f4 <= f7) {
            return isAtEquilibrium(f4, f5);
        }
        this.mValue = f7;
        return true;
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public FlingAnimation setMaxValue(float f4) {
        super.setMaxValue(f4);
        return this;
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public FlingAnimation setMinValue(float f4) {
        super.setMinValue(f4);
        return this;
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public FlingAnimation setStartVelocity(float f4) {
        super.setStartVelocity(f4);
        return this;
    }

    public <K> FlingAnimation(K k4, FloatPropertyCompat<K> floatPropertyCompat) {
        super(k4, floatPropertyCompat);
        DragForce dragForce = new DragForce();
        this.mFlingForce = dragForce;
        dragForce.setValueThreshold(getValueThreshold());
    }
}
