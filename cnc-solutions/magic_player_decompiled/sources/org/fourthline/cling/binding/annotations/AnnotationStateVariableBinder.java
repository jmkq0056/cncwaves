package org.fourthline.cling.binding.annotations;

import android.support.v4.media.f;
import java.util.Set;
import java.util.logging.Logger;
import org.fourthline.cling.binding.AllowedValueProvider;
import org.fourthline.cling.binding.AllowedValueRangeProvider;
import org.fourthline.cling.binding.LocalServiceBindingException;
import org.fourthline.cling.model.ModelUtil;
import org.fourthline.cling.model.meta.StateVariableAllowedValueRange;
import org.fourthline.cling.model.state.StateVariableAccessor;
import org.fourthline.cling.model.types.Datatype;

/* JADX INFO: loaded from: classes2.dex */
public class AnnotationStateVariableBinder {
    private static Logger log = Logger.getLogger(AnnotationLocalServiceBinder.class.getName());
    public StateVariableAccessor accessor;
    public UpnpStateVariable annotation;
    public String name;
    public Set<Class> stringConvertibleTypes;

    public AnnotationStateVariableBinder(UpnpStateVariable upnpStateVariable, String str, StateVariableAccessor stateVariableAccessor, Set<Class> set) {
        this.annotation = upnpStateVariable;
        this.name = str;
        this.accessor = stateVariableAccessor;
        this.stringConvertibleTypes = set;
    }

    public Datatype createDatatype() {
        String strDatatype = getAnnotation().datatype();
        if (strDatatype.length() == 0 && getAccessor() != null) {
            Class<?> returnType = getAccessor().getReturnType();
            log.finer("Using accessor return type as state variable type: " + returnType);
            if (ModelUtil.isStringConvertibleType(getStringConvertibleTypes(), returnType)) {
                log.finer("Return type is string-convertible, using string datatype");
                return Datatype.Default.STRING.getBuiltinType().getDatatype();
            }
            Datatype.Default byJavaType = Datatype.Default.getByJavaType(returnType);
            if (byJavaType != null) {
                log.finer("Return type has default UPnP datatype: " + byJavaType);
                return byJavaType.getBuiltinType().getDatatype();
            }
        }
        if (strDatatype.length() == 0 && (getAnnotation().allowedValues().length > 0 || getAnnotation().allowedValuesEnum() != Void.TYPE)) {
            log.finer("State variable has restricted allowed values, hence using 'string' datatype");
            strDatatype = "string";
        }
        if (strDatatype.length() == 0) {
            StringBuilder sbA = f.a("Could not detect datatype of state variable: ");
            sbA.append(getName());
            throw new LocalServiceBindingException(sbA.toString());
        }
        log.finer("Trying to find built-in UPnP datatype for detected name: " + strDatatype);
        Datatype.Builtin byDescriptorName = Datatype.Builtin.getByDescriptorName(strDatatype);
        if (byDescriptorName == null) {
            throw new LocalServiceBindingException("No built-in UPnP datatype found, using CustomDataType (TODO: NOT IMPLEMENTED)");
        }
        log.finer("Found built-in UPnP datatype: " + byDescriptorName);
        return byDescriptorName.getDatatype();
    }

    public String createDefaultValue(Datatype datatype) {
        if (getAnnotation().defaultValue().length() == 0) {
            return null;
        }
        try {
            datatype.valueOf(getAnnotation().defaultValue());
            log.finer("Found state variable default value: " + getAnnotation().defaultValue());
            return getAnnotation().defaultValue();
        } catch (Exception e4) {
            StringBuilder sbA = f.a("Default value doesn't match datatype of state variable '");
            sbA.append(getName());
            sbA.append("': ");
            sbA.append(e4.getMessage());
            throw new LocalServiceBindingException(sbA.toString());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:72:0x021b A[PHI: r5
      0x021b: PHI (r5v1 int) = (r5v0 int), (r5v6 int), (r5v6 int) binds: [B:62:0x01b4, B:68:0x01ec, B:70:0x01f6] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.fourthline.cling.model.meta.StateVariable createStateVariable() {
        /*
            Method dump skipped, instruction units count: 560
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fourthline.cling.binding.annotations.AnnotationStateVariableBinder.createStateVariable():org.fourthline.cling.model.meta.StateVariable");
    }

    public StateVariableAccessor getAccessor() {
        return this.accessor;
    }

    public StateVariableAllowedValueRange getAllowedRangeFromProvider() {
        Class clsAllowedValueRangeProvider = getAnnotation().allowedValueRangeProvider();
        if (AllowedValueRangeProvider.class.isAssignableFrom(clsAllowedValueRangeProvider)) {
            try {
                AllowedValueRangeProvider allowedValueRangeProvider = (AllowedValueRangeProvider) clsAllowedValueRangeProvider.newInstance();
                return getAllowedValueRange(allowedValueRangeProvider.getMinimum(), allowedValueRangeProvider.getMaximum(), allowedValueRangeProvider.getStep());
            } catch (Exception e4) {
                StringBuilder sbA = f.a("Allowed value range provider can't be instantiated: ");
                sbA.append(getName());
                throw new LocalServiceBindingException(sbA.toString(), e4);
            }
        }
        throw new LocalServiceBindingException("Allowed value range provider is not of type " + AllowedValueRangeProvider.class + ": " + getName());
    }

    public StateVariableAllowedValueRange getAllowedValueRange(long j4, long j5, long j6) {
        if (j5 >= j4) {
            return new StateVariableAllowedValueRange(j4, j5, j6);
        }
        StringBuilder sbA = f.a("Allowed value range maximum is smaller than minimum: ");
        sbA.append(getName());
        throw new LocalServiceBindingException(sbA.toString());
    }

    public String[] getAllowedValues(Class cls) {
        if (!cls.isEnum()) {
            throw new LocalServiceBindingException("Allowed values type is not an Enum: " + cls);
        }
        Logger logger = log;
        StringBuilder sbA = f.a("Restricting allowed values of state variable to Enum: ");
        sbA.append(getName());
        logger.finer(sbA.toString());
        String[] strArr = new String[cls.getEnumConstants().length];
        for (int i4 = 0; i4 < cls.getEnumConstants().length; i4++) {
            Object obj = cls.getEnumConstants()[i4];
            if (obj.toString().length() > 32) {
                StringBuilder sbA2 = f.a("Allowed value string (that is, Enum constant name) is longer than 32 characters: ");
                sbA2.append(obj.toString());
                throw new LocalServiceBindingException(sbA2.toString());
            }
            Logger logger2 = log;
            StringBuilder sbA3 = f.a("Adding allowed value (converted to string): ");
            sbA3.append(obj.toString());
            logger2.finer(sbA3.toString());
            strArr[i4] = obj.toString();
        }
        return strArr;
    }

    public String[] getAllowedValuesFromProvider() {
        Class clsAllowedValueProvider = getAnnotation().allowedValueProvider();
        if (AllowedValueProvider.class.isAssignableFrom(clsAllowedValueProvider)) {
            try {
                return ((AllowedValueProvider) clsAllowedValueProvider.newInstance()).getValues();
            } catch (Exception e4) {
                StringBuilder sbA = f.a("Allowed value provider can't be instantiated: ");
                sbA.append(getName());
                throw new LocalServiceBindingException(sbA.toString(), e4);
            }
        }
        throw new LocalServiceBindingException("Allowed value provider is not of type " + AllowedValueProvider.class + ": " + getName());
    }

    public UpnpStateVariable getAnnotation() {
        return this.annotation;
    }

    public String getName() {
        return this.name;
    }

    public Set<Class> getStringConvertibleTypes() {
        return this.stringConvertibleTypes;
    }
}
