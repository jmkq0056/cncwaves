package org.fourthline.cling.model.action;

import android.support.v4.media.f;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.fourthline.cling.model.Command;
import org.fourthline.cling.model.ServiceManager;
import org.fourthline.cling.model.meta.Action;
import org.fourthline.cling.model.meta.ActionArgument;
import org.fourthline.cling.model.meta.LocalService;
import org.fourthline.cling.model.state.StateVariableAccessor;
import org.fourthline.cling.model.types.ErrorCode;
import org.fourthline.cling.model.types.InvalidValueException;
import org.seamless.util.Exceptions;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractActionExecutor implements ActionExecutor {
    private static Logger log = Logger.getLogger(AbstractActionExecutor.class.getName());
    public Map<ActionArgument<LocalService>, StateVariableAccessor> outputArgumentAccessors;

    public AbstractActionExecutor() {
        this.outputArgumentAccessors = new HashMap();
    }

    @Override // org.fourthline.cling.model.action.ActionExecutor
    public void execute(final ActionInvocation<LocalService> actionInvocation) {
        log.fine("Invoking on local service: " + actionInvocation);
        LocalService localService = (LocalService) actionInvocation.getAction().getService();
        try {
            if (localService.getManager() == null) {
                throw new IllegalStateException("Service has no implementation factory, can't get service instance");
            }
            localService.getManager().execute(new Command() { // from class: org.fourthline.cling.model.action.AbstractActionExecutor.1
                @Override // org.fourthline.cling.model.Command
                public void execute(ServiceManager serviceManager) {
                    AbstractActionExecutor.this.execute(actionInvocation, serviceManager.getImplementation());
                }

                public String toString() {
                    StringBuilder sbA = f.a("Action invocation: ");
                    sbA.append(actionInvocation.getAction());
                    return sbA.toString();
                }
            });
        } catch (InterruptedException e4) {
            Logger logger = log;
            Level level = Level.FINE;
            if (logger.isLoggable(level)) {
                log.fine("InterruptedException thrown by service, wrapping in invocation and returning: " + e4);
                log.log(level, "Exception root cause: ", Exceptions.unwrap(e4));
            }
            actionInvocation.setFailure(new ActionCancelledException(e4));
        } catch (ActionException e5) {
            Logger logger2 = log;
            Level level2 = Level.FINE;
            if (logger2.isLoggable(level2)) {
                log.fine("ActionException thrown by service, wrapping in invocation and returning: " + e5);
                log.log(level2, "Exception root cause: ", Exceptions.unwrap(e5));
            }
            actionInvocation.setFailure(e5);
        } catch (Throwable th) {
            Throwable thUnwrap = Exceptions.unwrap(th);
            Logger logger3 = log;
            Level level3 = Level.FINE;
            if (logger3.isLoggable(level3)) {
                log.fine("Execution has thrown, wrapping root cause in ActionException and returning: " + th);
                log.log(level3, "Exception root cause: ", thUnwrap);
            }
            actionInvocation.setFailure(new ActionException(ErrorCode.ACTION_FAILED, thUnwrap.getMessage() != null ? thUnwrap.getMessage() : thUnwrap.toString(), thUnwrap));
        }
    }

    public abstract void execute(ActionInvocation<LocalService> actionInvocation, Object obj);

    public Map<ActionArgument<LocalService>, StateVariableAccessor> getOutputArgumentAccessors() {
        return this.outputArgumentAccessors;
    }

    public Object readOutputArgumentValues(Action<LocalService> action, Object obj) {
        int length = action.getOutputArguments().length;
        Object[] objArr = new Object[length];
        log.fine("Attempting to retrieve output argument values using accessor: " + length);
        Object[] outputArguments = action.getOutputArguments();
        int length2 = outputArguments.length;
        int i4 = 0;
        int i5 = 0;
        while (i4 < length2) {
            Object obj2 = outputArguments[i4];
            log.finer("Calling acccessor method for: " + obj2);
            StateVariableAccessor stateVariableAccessor = getOutputArgumentAccessors().get(obj2);
            if (stateVariableAccessor == null) {
                throw new IllegalStateException("No accessor bound for: " + obj2);
            }
            log.fine("Calling accessor to read output argument value: " + stateVariableAccessor);
            objArr[i5] = stateVariableAccessor.read(obj);
            i4++;
            i5++;
        }
        if (length == 1) {
            return objArr[0];
        }
        if (length > 0) {
            return objArr;
        }
        return null;
    }

    public void setOutputArgumentValue(ActionInvocation<LocalService> actionInvocation, ActionArgument<LocalService> actionArgument, Object obj) throws ActionException {
        LocalService localService = (LocalService) actionInvocation.getAction().getService();
        if (obj == null) {
            log.fine("Result of invocation is null, not setting any output argument value(s)");
            return;
        }
        try {
            if (localService.isStringConvertibleType(obj)) {
                log.fine("Result of invocation matches convertible type, setting toString() single output argument value");
                actionInvocation.setOutput(new ActionArgumentValue<>(actionArgument, obj.toString()));
            } else {
                log.fine("Result of invocation is Object, setting single output argument value");
                actionInvocation.setOutput(new ActionArgumentValue<>(actionArgument, obj));
            }
        } catch (InvalidValueException e4) {
            ErrorCode errorCode = ErrorCode.ARGUMENT_VALUE_INVALID;
            StringBuilder sbA = f.a("Wrong type or invalid value for '");
            sbA.append(actionArgument.getName());
            sbA.append("': ");
            sbA.append(e4.getMessage());
            throw new ActionException(errorCode, sbA.toString(), e4);
        }
    }

    public AbstractActionExecutor(Map<ActionArgument<LocalService>, StateVariableAccessor> map) {
        this.outputArgumentAccessors = new HashMap();
        this.outputArgumentAccessors = map;
    }
}
