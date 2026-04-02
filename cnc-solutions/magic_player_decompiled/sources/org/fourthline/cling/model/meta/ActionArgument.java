package org.fourthline.cling.model.meta;

import android.support.v4.media.f;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;
import org.fourthline.cling.model.ModelUtil;
import org.fourthline.cling.model.Validatable;
import org.fourthline.cling.model.ValidationError;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.model.types.Datatype;

/* JADX INFO: loaded from: classes2.dex */
public class ActionArgument<S extends Service> implements Validatable {
    private static final Logger log = Logger.getLogger(ActionArgument.class.getName());
    private Action<S> action;
    private final String[] aliases;
    private final Direction direction;
    private final String name;
    private final String relatedStateVariableName;
    private final boolean returnValue;

    public enum Direction {
        IN,
        OUT
    }

    public ActionArgument(String str, String str2, Direction direction) {
        this(str, new String[0], str2, direction, false);
    }

    public ActionArgument<S> deepCopy() {
        return new ActionArgument<>(getName(), getAliases(), getRelatedStateVariableName(), getDirection(), isReturnValue());
    }

    public Action<S> getAction() {
        return this.action;
    }

    public String[] getAliases() {
        return this.aliases;
    }

    public Datatype getDatatype() {
        return getAction().getService().getDatatype(this);
    }

    public Direction getDirection() {
        return this.direction;
    }

    public String getName() {
        return this.name;
    }

    public String getRelatedStateVariableName() {
        return this.relatedStateVariableName;
    }

    public boolean isNameOrAlias(String str) {
        if (getName().equalsIgnoreCase(str)) {
            return true;
        }
        for (String str2 : this.aliases) {
            if (str2.equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean isReturnValue() {
        return this.returnValue;
    }

    public void setAction(Action<S> action) {
        if (this.action != null) {
            throw new IllegalStateException("Final value has been set already, model is immutable");
        }
        this.action = action;
    }

    public String toString() {
        StringBuilder sbA = f.a("(");
        sbA.append(getClass().getSimpleName());
        sbA.append(", ");
        sbA.append(getDirection());
        sbA.append(") ");
        sbA.append(getName());
        return sbA.toString();
    }

    @Override // org.fourthline.cling.model.Validatable
    public List<ValidationError> validate() {
        ArrayList arrayList = new ArrayList();
        if (getName() == null || getName().length() == 0) {
            Class<?> cls = getClass();
            StringBuilder sbA = f.a("Argument without name of: ");
            sbA.append(getAction());
            arrayList.add(new ValidationError(cls, "name", sbA.toString()));
        } else if (!ModelUtil.isValidUDAName(getName())) {
            Logger logger = log;
            StringBuilder sbA2 = f.a("UPnP specification violation of: ");
            sbA2.append(getAction().getService().getDevice());
            logger.warning(sbA2.toString());
            logger.warning("Invalid argument name: " + this);
        } else if (getName().length() > 32) {
            Logger logger2 = log;
            StringBuilder sbA3 = f.a("UPnP specification violation of: ");
            sbA3.append(getAction().getService().getDevice());
            logger2.warning(sbA3.toString());
            logger2.warning("Argument name should be less than 32 characters: " + this);
        }
        if (getDirection() == null) {
            Class<?> cls2 = getClass();
            StringBuilder sbA4 = f.a("Argument '");
            sbA4.append(getName());
            sbA4.append("' requires a direction, either IN or OUT");
            arrayList.add(new ValidationError(cls2, "direction", sbA4.toString()));
        }
        if (isReturnValue() && getDirection() != Direction.OUT) {
            Class<?> cls3 = getClass();
            StringBuilder sbA5 = f.a("Return value argument '");
            sbA5.append(getName());
            sbA5.append("' must be direction OUT");
            arrayList.add(new ValidationError(cls3, "direction", sbA5.toString()));
        }
        return arrayList;
    }

    public ActionArgument(String str, String[] strArr, String str2, Direction direction) {
        this(str, strArr, str2, direction, false);
    }

    public ActionArgument(String str, String str2, Direction direction, boolean z3) {
        this(str, new String[0], str2, direction, z3);
    }

    public ActionArgument(String str, String[] strArr, String str2, Direction direction, boolean z3) {
        this.name = str;
        this.aliases = strArr;
        this.relatedStateVariableName = str2;
        this.direction = direction;
        this.returnValue = z3;
    }
}
