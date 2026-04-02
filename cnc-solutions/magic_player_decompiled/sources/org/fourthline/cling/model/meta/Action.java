package org.fourthline.cling.model.meta;

import android.support.v4.media.f;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;
import org.fourthline.cling.model.ModelUtil;
import org.fourthline.cling.model.Validatable;
import org.fourthline.cling.model.ValidationError;
import org.fourthline.cling.model.meta.ActionArgument;
import org.fourthline.cling.model.meta.Service;

/* JADX INFO: loaded from: classes2.dex */
public class Action<S extends Service> implements Validatable {
    private static final Logger log = Logger.getLogger(Action.class.getName());
    private final ActionArgument[] arguments;
    private final ActionArgument[] inputArguments;
    private final String name;
    private final ActionArgument[] outputArguments;
    private S service;

    public Action(String str, ActionArgument[] actionArgumentArr) {
        this.name = str;
        if (actionArgumentArr == null) {
            this.arguments = new ActionArgument[0];
            this.inputArguments = new ActionArgument[0];
            this.outputArguments = new ActionArgument[0];
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (ActionArgument actionArgument : actionArgumentArr) {
            actionArgument.setAction(this);
            if (actionArgument.getDirection().equals(ActionArgument.Direction.IN)) {
                arrayList.add(actionArgument);
            }
            if (actionArgument.getDirection().equals(ActionArgument.Direction.OUT)) {
                arrayList2.add(actionArgument);
            }
        }
        this.arguments = actionArgumentArr;
        this.inputArguments = (ActionArgument[]) arrayList.toArray(new ActionArgument[arrayList.size()]);
        this.outputArguments = (ActionArgument[]) arrayList2.toArray(new ActionArgument[arrayList2.size()]);
    }

    public Action<S> deepCopy() {
        ActionArgument[] actionArgumentArr = new ActionArgument[getArguments().length];
        for (int i4 = 0; i4 < getArguments().length; i4++) {
            actionArgumentArr[i4] = getArguments()[i4].deepCopy();
        }
        return new Action<>(getName(), actionArgumentArr);
    }

    public ActionArgument[] getArguments() {
        return this.arguments;
    }

    public ActionArgument<S> getFirstInputArgument() {
        if (hasInputArguments()) {
            return getInputArguments()[0];
        }
        throw new IllegalStateException("No input arguments: " + this);
    }

    public ActionArgument<S> getFirstOutputArgument() {
        if (hasOutputArguments()) {
            return getOutputArguments()[0];
        }
        throw new IllegalStateException("No output arguments: " + this);
    }

    public ActionArgument<S> getInputArgument(String str) {
        for (ActionArgument<S> actionArgument : getInputArguments()) {
            if (actionArgument.isNameOrAlias(str)) {
                return actionArgument;
            }
        }
        return null;
    }

    public ActionArgument<S>[] getInputArguments() {
        return this.inputArguments;
    }

    public String getName() {
        return this.name;
    }

    public ActionArgument<S> getOutputArgument(String str) {
        for (ActionArgument<S> actionArgument : getOutputArguments()) {
            if (actionArgument.getName().equals(str)) {
                return actionArgument;
            }
        }
        return null;
    }

    public ActionArgument<S>[] getOutputArguments() {
        return this.outputArguments;
    }

    public S getService() {
        return this.service;
    }

    public boolean hasArguments() {
        return getArguments() != null && getArguments().length > 0;
    }

    public boolean hasInputArguments() {
        return getInputArguments() != null && getInputArguments().length > 0;
    }

    public boolean hasOutputArguments() {
        return getOutputArguments() != null && getOutputArguments().length > 0;
    }

    public void setService(S s3) {
        if (this.service != null) {
            throw new IllegalStateException("Final value has been set already, model is immutable");
        }
        this.service = s3;
    }

    public String toString() {
        StringBuilder sbA = f.a("(");
        sbA.append(getClass().getSimpleName());
        sbA.append(", Arguments: ");
        sbA.append(getArguments() != null ? Integer.valueOf(getArguments().length) : "NO ARGS");
        sbA.append(") ");
        sbA.append(getName());
        return sbA.toString();
    }

    @Override // org.fourthline.cling.model.Validatable
    public List<ValidationError> validate() {
        ArrayList arrayList = new ArrayList();
        if (getName() == null || getName().length() == 0) {
            Class<?> cls = getClass();
            StringBuilder sbA = f.a("Action without name of: ");
            sbA.append(getService());
            arrayList.add(new ValidationError(cls, "name", sbA.toString()));
        } else if (!ModelUtil.isValidUDAName(getName())) {
            Logger logger = log;
            StringBuilder sbA2 = f.a("UPnP specification violation of: ");
            sbA2.append(getService().getDevice());
            logger.warning(sbA2.toString());
            logger.warning("Invalid action name: " + this);
        }
        for (ActionArgument actionArgument : getArguments()) {
            if (getService().getStateVariable(actionArgument.getRelatedStateVariableName()) == null) {
                Class<?> cls2 = getClass();
                StringBuilder sbA3 = f.a("Action argument references an unknown state variable: ");
                sbA3.append(actionArgument.getRelatedStateVariableName());
                arrayList.add(new ValidationError(cls2, "arguments", sbA3.toString()));
            }
        }
        ActionArgument actionArgument2 = null;
        int i4 = 0;
        int i5 = 0;
        for (ActionArgument actionArgument3 : getArguments()) {
            if (actionArgument3.isReturnValue()) {
                if (actionArgument3.getDirection() == ActionArgument.Direction.IN) {
                    Logger logger2 = log;
                    StringBuilder sbA4 = f.a("UPnP specification violation of :");
                    sbA4.append(getService().getDevice());
                    logger2.warning(sbA4.toString());
                    logger2.warning("Input argument can not have <retval/>");
                } else {
                    if (actionArgument2 != null) {
                        Logger logger3 = log;
                        StringBuilder sbA5 = f.a("UPnP specification violation of: ");
                        sbA5.append(getService().getDevice());
                        logger3.warning(sbA5.toString());
                        logger3.warning("Only one argument of action '" + getName() + "' can be <retval/>");
                    }
                    i5 = i4;
                    actionArgument2 = actionArgument3;
                }
            }
            i4++;
        }
        if (actionArgument2 != null) {
            for (int i6 = 0; i6 < i5; i6++) {
                if (getArguments()[i6].getDirection() == ActionArgument.Direction.OUT) {
                    Logger logger4 = log;
                    StringBuilder sbA6 = f.a("UPnP specification violation of: ");
                    sbA6.append(getService().getDevice());
                    logger4.warning(sbA6.toString());
                    logger4.warning("Argument '" + actionArgument2.getName() + "' of action '" + getName() + "' is <retval/> but not the first OUT argument");
                }
            }
        }
        for (ActionArgument actionArgument4 : this.arguments) {
            arrayList.addAll(actionArgument4.validate());
        }
        return arrayList;
    }
}
