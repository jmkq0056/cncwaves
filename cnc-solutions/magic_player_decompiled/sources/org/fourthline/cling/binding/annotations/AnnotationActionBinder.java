package org.fourthline.cling.binding.annotations;

import android.support.v4.media.f;
import androidx.appcompat.view.a;
import androidx.appcompat.view.b;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Logger;
import org.fourthline.cling.binding.LocalServiceBindingException;
import org.fourthline.cling.model.Constants;
import org.fourthline.cling.model.ModelUtil;
import org.fourthline.cling.model.action.ActionExecutor;
import org.fourthline.cling.model.action.MethodActionExecutor;
import org.fourthline.cling.model.meta.Action;
import org.fourthline.cling.model.meta.ActionArgument;
import org.fourthline.cling.model.meta.LocalService;
import org.fourthline.cling.model.meta.StateVariable;
import org.fourthline.cling.model.profile.RemoteClientInfo;
import org.fourthline.cling.model.state.GetterStateVariableAccessor;
import org.fourthline.cling.model.state.StateVariableAccessor;
import org.fourthline.cling.model.types.Datatype;
import org.seamless.util.Reflections;

/* JADX INFO: loaded from: classes2.dex */
public class AnnotationActionBinder {
    private static Logger log = Logger.getLogger(AnnotationLocalServiceBinder.class.getName());
    public UpnpAction annotation;
    public Method method;
    public Map<StateVariable, StateVariableAccessor> stateVariables;
    public Set<Class> stringConvertibleTypes;

    public AnnotationActionBinder(Method method, Map<StateVariable, StateVariableAccessor> map, Set<Class> set) {
        this.annotation = (UpnpAction) method.getAnnotation(UpnpAction.class);
        this.stateVariables = map;
        this.method = method;
        this.stringConvertibleTypes = set;
    }

    public Action appendAction(Map<Action, ActionExecutor> map) {
        String strName = getAnnotation().name().length() != 0 ? getAnnotation().name() : AnnotationLocalServiceBinder.toUpnpActionName(getMethod().getName());
        log.fine("Creating action and executor: " + strName);
        List<ActionArgument> listCreateInputArguments = createInputArguments();
        Map<ActionArgument<LocalService>, StateVariableAccessor> mapCreateOutputArguments = createOutputArguments();
        listCreateInputArguments.addAll(mapCreateOutputArguments.keySet());
        Action action = new Action(strName, (ActionArgument[]) listCreateInputArguments.toArray(new ActionArgument[listCreateInputArguments.size()]));
        map.put(action, createExecutor(mapCreateOutputArguments));
        return action;
    }

    public ActionExecutor createExecutor(Map<ActionArgument<LocalService>, StateVariableAccessor> map) {
        return new MethodActionExecutor(map, getMethod());
    }

    public List<ActionArgument> createInputArguments() {
        ArrayList arrayList = new ArrayList();
        Annotation[][] parameterAnnotations = getMethod().getParameterAnnotations();
        int i4 = 0;
        for (int i5 = 0; i5 < parameterAnnotations.length; i5++) {
            for (Annotation annotation : parameterAnnotations[i5]) {
                if (annotation instanceof UpnpInputArgument) {
                    UpnpInputArgument upnpInputArgument = (UpnpInputArgument) annotation;
                    i4++;
                    String strName = upnpInputArgument.name();
                    StateVariable stateVariableFindRelatedStateVariable = findRelatedStateVariable(upnpInputArgument.stateVariable(), strName, getMethod().getName());
                    if (stateVariableFindRelatedStateVariable == null) {
                        throw new LocalServiceBindingException(a.a("Could not detected related state variable of argument: ", strName));
                    }
                    validateType(stateVariableFindRelatedStateVariable, getMethod().getParameterTypes()[i5]);
                    arrayList.add(new ActionArgument(strName, upnpInputArgument.aliases(), stateVariableFindRelatedStateVariable.getName(), ActionArgument.Direction.IN));
                }
            }
        }
        if (i4 >= getMethod().getParameterTypes().length || RemoteClientInfo.class.isAssignableFrom(this.method.getParameterTypes()[this.method.getParameterTypes().length - 1])) {
            return arrayList;
        }
        StringBuilder sbA = f.a("Method has parameters that are not input arguments: ");
        sbA.append(getMethod().getName());
        throw new LocalServiceBindingException(sbA.toString());
    }

    public Map<ActionArgument<LocalService>, StateVariableAccessor> createOutputArguments() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        UpnpAction upnpAction = (UpnpAction) getMethod().getAnnotation(UpnpAction.class);
        if (upnpAction.out().length == 0) {
            return linkedHashMap;
        }
        boolean z3 = upnpAction.out().length > 1;
        for (UpnpOutputArgument upnpOutputArgument : upnpAction.out()) {
            String strName = upnpOutputArgument.name();
            StateVariable stateVariableFindRelatedStateVariable = findRelatedStateVariable(upnpOutputArgument.stateVariable(), strName, getMethod().getName());
            if (stateVariableFindRelatedStateVariable == null && upnpOutputArgument.getterName().length() > 0) {
                stateVariableFindRelatedStateVariable = findRelatedStateVariable(null, null, upnpOutputArgument.getterName());
            }
            if (stateVariableFindRelatedStateVariable == null) {
                throw new LocalServiceBindingException(a.a("Related state variable not found for output argument: ", strName));
            }
            StateVariableAccessor stateVariableAccessorFindOutputArgumentAccessor = findOutputArgumentAccessor(stateVariableFindRelatedStateVariable, upnpOutputArgument.getterName(), z3);
            log.finer("Found related state variable for output argument '" + strName + "': " + stateVariableFindRelatedStateVariable);
            linkedHashMap.put(new ActionArgument(strName, stateVariableFindRelatedStateVariable.getName(), ActionArgument.Direction.OUT, z3 ^ true), stateVariableAccessorFindOutputArgumentAccessor);
        }
        return linkedHashMap;
    }

    public StateVariableAccessor findOutputArgumentAccessor(StateVariable stateVariable, String str, boolean z3) {
        if (getMethod().getReturnType().equals(Void.TYPE)) {
            if (str == null || str.length() <= 0) {
                log.finer("Action method is void, trying to find existing accessor of related: " + stateVariable);
                return getStateVariables().get(stateVariable);
            }
            log.finer("Action method is void, will use getter method named: " + str);
            Method method = Reflections.getMethod(getMethod().getDeclaringClass(), str);
            if (method != null) {
                validateType(stateVariable, method.getReturnType());
                return new GetterStateVariableAccessor(method);
            }
            StringBuilder sbA = b.a("Declared getter method '", str, "' not found on: ");
            sbA.append(getMethod().getDeclaringClass());
            throw new LocalServiceBindingException(sbA.toString());
        }
        if (str == null || str.length() <= 0) {
            if (z3) {
                return null;
            }
            Logger logger = log;
            StringBuilder sbA2 = f.a("Action method is not void, will use the returned instance: ");
            sbA2.append(getMethod().getReturnType());
            logger.finer(sbA2.toString());
            validateType(stateVariable, getMethod().getReturnType());
            return null;
        }
        log.finer("Action method is not void, will use getter method on returned instance: " + str);
        Method method2 = Reflections.getMethod(getMethod().getReturnType(), str);
        if (method2 != null) {
            validateType(stateVariable, method2.getReturnType());
            return new GetterStateVariableAccessor(method2);
        }
        StringBuilder sbA3 = b.a("Declared getter method '", str, "' not found on return type: ");
        sbA3.append(getMethod().getReturnType());
        throw new LocalServiceBindingException(sbA3.toString());
    }

    public StateVariable findRelatedStateVariable(String str, String str2, String str3) {
        String methodPropertyName;
        StateVariable stateVariable = (str == null || str.length() <= 0) ? null : getStateVariable(str);
        if (stateVariable == null && str2 != null && str2.length() > 0) {
            String upnpStateVariableName = AnnotationLocalServiceBinder.toUpnpStateVariableName(str2);
            log.finer("Finding related state variable with argument name (converted to UPnP name): " + upnpStateVariableName);
            stateVariable = getStateVariable(str2);
        }
        if (stateVariable == null && str2 != null && str2.length() > 0) {
            String strA = a.a(Constants.ARG_TYPE_PREFIX, AnnotationLocalServiceBinder.toUpnpStateVariableName(str2));
            log.finer("Finding related state variable with prefixed argument name (converted to UPnP name): " + strA);
            stateVariable = getStateVariable(strA);
        }
        if (stateVariable != null || str3 == null || str3.length() <= 0 || (methodPropertyName = Reflections.getMethodPropertyName(str3)) == null) {
            return stateVariable;
        }
        log.finer("Finding related state variable with method property name: " + methodPropertyName);
        return getStateVariable(AnnotationLocalServiceBinder.toUpnpStateVariableName(methodPropertyName));
    }

    public UpnpAction getAnnotation() {
        return this.annotation;
    }

    public Method getMethod() {
        return this.method;
    }

    public StateVariable getStateVariable(String str) {
        for (StateVariable stateVariable : getStateVariables().keySet()) {
            if (stateVariable.getName().equals(str)) {
                return stateVariable;
            }
        }
        return null;
    }

    public Map<StateVariable, StateVariableAccessor> getStateVariables() {
        return this.stateVariables;
    }

    public Set<Class> getStringConvertibleTypes() {
        return this.stringConvertibleTypes;
    }

    public void validateType(StateVariable stateVariable, Class cls) {
        Datatype.Default byJavaType = ModelUtil.isStringConvertibleType(getStringConvertibleTypes(), cls) ? Datatype.Default.STRING : Datatype.Default.getByJavaType(cls);
        log.finer("Expecting '" + stateVariable + "' to match default mapping: " + byJavaType);
        if (byJavaType != null && !stateVariable.getTypeDetails().getDatatype().isHandlingJavaType(byJavaType.getJavaType())) {
            throw new LocalServiceBindingException("State variable '" + stateVariable + "' datatype can't handle action argument's Java type (change one): " + byJavaType.getJavaType());
        }
        if (byJavaType != null || stateVariable.getTypeDetails().getDatatype().getBuiltin() == null) {
            log.finer("State variable matches required argument datatype (or can't be validated because it is custom)");
            return;
        }
        throw new LocalServiceBindingException("State variable '" + stateVariable + "' should be custom datatype (action argument type is unknown Java type): " + cls.getSimpleName());
    }
}
