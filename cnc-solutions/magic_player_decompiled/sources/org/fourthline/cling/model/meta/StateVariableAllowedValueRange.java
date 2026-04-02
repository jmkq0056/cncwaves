package org.fourthline.cling.model.meta;

import android.support.v4.media.f;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;
import org.fourthline.cling.model.Validatable;
import org.fourthline.cling.model.ValidationError;

/* JADX INFO: loaded from: classes2.dex */
public class StateVariableAllowedValueRange implements Validatable {
    private static final Logger log = Logger.getLogger(StateVariableAllowedValueRange.class.getName());
    private final long maximum;
    private final long minimum;
    private final long step;

    public StateVariableAllowedValueRange(long j4, long j5) {
        this(j4, j5, 1L);
    }

    public long getMaximum() {
        return this.maximum;
    }

    public long getMinimum() {
        return this.minimum;
    }

    public long getStep() {
        return this.step;
    }

    public boolean isInRange(long j4) {
        return j4 >= getMinimum() && j4 <= getMaximum() && j4 % this.step == 0;
    }

    public String toString() {
        StringBuilder sbA = f.a("Range Min: ");
        sbA.append(getMinimum());
        sbA.append(" Max: ");
        sbA.append(getMaximum());
        sbA.append(" Step: ");
        sbA.append(getStep());
        return sbA.toString();
    }

    @Override // org.fourthline.cling.model.Validatable
    public List<ValidationError> validate() {
        return new ArrayList();
    }

    public StateVariableAllowedValueRange(long j4, long j5, long j6) {
        if (j4 > j5) {
            log.warning("UPnP specification violation, allowed value range minimum '" + j4 + "' is greater than maximum '" + j5 + "', switching values.");
            this.minimum = j5;
            this.maximum = j4;
        } else {
            this.minimum = j4;
            this.maximum = j5;
        }
        this.step = j6;
    }
}
