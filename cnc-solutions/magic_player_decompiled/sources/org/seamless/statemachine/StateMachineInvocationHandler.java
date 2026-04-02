package org.seamless.statemachine;

import android.support.v4.media.f;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class StateMachineInvocationHandler implements InvocationHandler {
    public static final String METHOD_ON_ENTRY = "onEntry";
    public static final String METHOD_ON_EXIT = "onExit";
    private static Logger log = Logger.getLogger(StateMachineInvocationHandler.class.getName());
    public Object currentState;
    public final Class initialStateClass;
    public final Map<Class, Object> stateObjects = new ConcurrentHashMap();

    public StateMachineInvocationHandler(List<Class<?>> list, Class<?> cls, Class[] clsArr, Object[] objArr) {
        Object objNewInstance;
        log.fine("Creating state machine with initial state: " + cls);
        this.initialStateClass = cls;
        for (Class<?> cls2 : list) {
            if (clsArr != null) {
                try {
                    objNewInstance = cls2.getConstructor(clsArr).newInstance(objArr);
                } catch (NoSuchMethodException e4) {
                    StringBuilder sbA = f.a("State ");
                    sbA.append(cls2.getName());
                    sbA.append(" has the wrong constructor: ");
                    sbA.append(e4);
                    throw new RuntimeException(sbA.toString(), e4);
                } catch (Exception e5) {
                    StringBuilder sbA2 = f.a("State ");
                    sbA2.append(cls2.getName());
                    sbA2.append(" can't be instantiated: ");
                    sbA2.append(e5);
                    throw new RuntimeException(sbA2.toString(), e5);
                }
            } else {
                objNewInstance = cls2.newInstance();
            }
            log.fine("Adding state instance: " + objNewInstance.getClass().getName());
            this.stateObjects.put(cls2, objNewInstance);
        }
        if (!this.stateObjects.containsKey(cls)) {
            throw new RuntimeException("Initial state not in list of states: " + cls);
        }
        this.currentState = this.stateObjects.get(cls);
        synchronized (this) {
            invokeEntryMethod(this.currentState);
        }
    }

    private Method getMethodOfCurrentState(Method method) {
        try {
            return this.currentState.getClass().getMethod(method.getName(), method.getParameterTypes());
        } catch (NoSuchMethodException unused) {
            StringBuilder sbA = f.a("State '");
            sbA.append(this.currentState.getClass().getName());
            sbA.append("' doesn't support signal '");
            sbA.append(method.getName());
            sbA.append("'");
            throw new TransitionException(sbA.toString());
        }
    }

    private void invokeEntryMethod(Object obj) {
        Logger logger = log;
        StringBuilder sbA = f.a("Trying to invoke entry method of state: ");
        sbA.append(obj.getClass().getName());
        logger.fine(sbA.toString());
        try {
            obj.getClass().getMethod(METHOD_ON_ENTRY, new Class[0]).invoke(obj, new Object[0]);
        } catch (NoSuchMethodException unused) {
            Logger logger2 = log;
            StringBuilder sbA2 = f.a("No entry method found on state: ");
            sbA2.append(obj.getClass().getName());
            logger2.finer(sbA2.toString());
        } catch (Exception e4) {
            StringBuilder sbA3 = f.a("State '");
            sbA3.append(obj.getClass().getName());
            sbA3.append("' entry method threw exception: ");
            sbA3.append(e4);
            throw new TransitionException(sbA3.toString(), e4);
        }
    }

    private void invokeExitMethod(Object obj) {
        Logger logger = log;
        StringBuilder sbA = f.a("Trying to invoking exit method of state: ");
        sbA.append(obj.getClass().getName());
        logger.finer(sbA.toString());
        try {
            obj.getClass().getMethod(METHOD_ON_EXIT, new Class[0]).invoke(obj, new Object[0]);
        } catch (NoSuchMethodException unused) {
            Logger logger2 = log;
            StringBuilder sbA2 = f.a("No exit method found on state: ");
            sbA2.append(obj.getClass().getName());
            logger2.finer(sbA2.toString());
        } catch (Exception e4) {
            StringBuilder sbA3 = f.a("State '");
            sbA3.append(obj.getClass().getName());
            sbA3.append("' exit method threw exception: ");
            sbA3.append(e4);
            throw new TransitionException(sbA3.toString(), e4);
        }
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        synchronized (this) {
            if (StateMachine.METHOD_CURRENT_STATE.equals(method.getName()) && method.getParameterTypes().length == 0) {
                return this.currentState;
            }
            if (StateMachine.METHOD_FORCE_STATE.equals(method.getName()) && method.getParameterTypes().length == 1 && objArr.length == 1 && objArr[0] != null && (objArr[0] instanceof Class)) {
                Object obj2 = this.stateObjects.get((Class) objArr[0]);
                if (obj2 == null) {
                    throw new TransitionException("Can't force to invalid state: " + objArr[0]);
                }
                log.finer("Forcing state machine into state: " + obj2.getClass().getName());
                invokeExitMethod(this.currentState);
                this.currentState = obj2;
                invokeEntryMethod(obj2);
                return null;
            }
            Method methodOfCurrentState = getMethodOfCurrentState(method);
            log.fine("Invoking signal method of current state: " + methodOfCurrentState.toString());
            Object objInvoke = methodOfCurrentState.invoke(this.currentState, objArr);
            if (objInvoke != null && (objInvoke instanceof Class)) {
                Class cls = (Class) objInvoke;
                if (this.stateObjects.containsKey(cls)) {
                    log.fine("Executing transition to next state: " + cls.getName());
                    invokeExitMethod(this.currentState);
                    Object obj3 = this.stateObjects.get(cls);
                    this.currentState = obj3;
                    invokeEntryMethod(obj3);
                }
            }
            return objInvoke;
        }
    }
}
