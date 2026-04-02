package y;

import android.view.animation.AlphaAnimation;
import android.view.animation.Transformation;

/* JADX INFO: loaded from: classes.dex */
public class j extends AlphaAnimation {
    public j(float f4, float f5) {
        super(f4, f5);
    }

    @Override // android.view.animation.AlphaAnimation, android.view.animation.Animation
    public void applyTransformation(float f4, Transformation transformation) {
        super.applyTransformation(f4, transformation);
        transformation.getMatrix().reset();
    }

    @Override // android.view.animation.AlphaAnimation, android.view.animation.Animation
    public boolean willChangeTransformationMatrix() {
        return true;
    }
}
