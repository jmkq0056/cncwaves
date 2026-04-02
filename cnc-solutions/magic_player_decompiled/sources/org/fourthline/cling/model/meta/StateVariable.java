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
public class StateVariable<S extends Service> implements Validatable {
    private static final Logger log = Logger.getLogger(StateVariable.class.getName());
    private final StateVariableEventDetails eventDetails;
    private final String name;
    private S service;
    private final StateVariableTypeDetails type;

    public StateVariable(String str, StateVariableTypeDetails stateVariableTypeDetails) {
        this(str, stateVariableTypeDetails, new StateVariableEventDetails());
    }

    public StateVariable<S> deepCopy() {
        return new StateVariable<>(getName(), getTypeDetails(), getEventDetails());
    }

    public StateVariableEventDetails getEventDetails() {
        return this.eventDetails;
    }

    public String getName() {
        return this.name;
    }

    public S getService() {
        return this.service;
    }

    public StateVariableTypeDetails getTypeDetails() {
        return this.type;
    }

    public boolean isModeratedNumericType() {
        return Datatype.Builtin.isNumeric(getTypeDetails().getDatatype().getBuiltin()) && getEventDetails().getEventMinimumDelta() > 0;
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
        sbA.append(", Name: ");
        sbA.append(getName());
        sbA.append(", Type: ");
        sbA.append(getTypeDetails().getDatatype().getDisplayString());
        sbA.append(")");
        if (!getEventDetails().isSendEvents()) {
            sbA.append(" (No Events)");
        }
        if (getTypeDetails().getDefaultValue() != null) {
            sbA.append(" Default Value: ");
            sbA.append("'");
            sbA.append(getTypeDetails().getDefaultValue());
            sbA.append("'");
        }
        if (getTypeDetails().getAllowedValues() != null) {
            sbA.append(" Allowed Values: ");
            for (String str : getTypeDetails().getAllowedValues()) {
                sbA.append(str);
                sbA.append("|");
            }
        }
        return sbA.toString();
    }

    @Override // org.fourthline.cling.model.Validatable
    public List<ValidationError> validate() {
        ArrayList arrayList = new ArrayList();
        if (getName() == null || getName().length() == 0) {
            Class<?> cls = getClass();
            StringBuilder sbA = f.a("StateVariable without name of: ");
            sbA.append(getService());
            arrayList.add(new ValidationError(cls, "name", sbA.toString()));
        } else if (!ModelUtil.isValidUDAName(getName())) {
            Logger logger = log;
            StringBuilder sbA2 = f.a("UPnP specification violation of: ");
            sbA2.append(getService().getDevice());
            logger.warning(sbA2.toString());
            logger.warning("Invalid state variable name: " + this);
        }
        arrayList.addAll(getTypeDetails().validate());
        return arrayList;
    }

    public StateVariable(String str, StateVariableTypeDetails stateVariableTypeDetails, StateVariableEventDetails stateVariableEventDetails) {
        this.name = str;
        this.type = stateVariableTypeDetails;
        this.eventDetails = stateVariableEventDetails;
    }
}
