package androidx.transition;

import android.support.v4.media.f;
import android.support.v4.media.g;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.appcompat.view.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class TransitionValues {
    public View view;
    public final Map<String, Object> values = new HashMap();
    public final ArrayList<Transition> mTargetedTransitions = new ArrayList<>();

    @Deprecated
    public TransitionValues() {
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof TransitionValues)) {
            return false;
        }
        TransitionValues transitionValues = (TransitionValues) obj;
        return this.view == transitionValues.view && this.values.equals(transitionValues.values);
    }

    public int hashCode() {
        return this.values.hashCode() + (this.view.hashCode() * 31);
    }

    public String toString() {
        StringBuilder sbA = f.a("TransitionValues@");
        sbA.append(Integer.toHexString(hashCode()));
        sbA.append(":\n");
        StringBuilder sbA2 = g.a(sbA.toString(), "    view = ");
        sbA2.append(this.view);
        sbA2.append("\n");
        String strA = a.a(sbA2.toString(), "    values:");
        for (String str : this.values.keySet()) {
            strA = strA + "    " + str + ": " + this.values.get(str) + "\n";
        }
        return strA;
    }

    public TransitionValues(@NonNull View view) {
        this.view = view;
    }
}
