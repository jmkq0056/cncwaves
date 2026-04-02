package org.fourthline.cling.model.action;

import java.lang.reflect.Method;
import java.util.Map;
import java.util.logging.Logger;
import org.fourthline.cling.model.meta.ActionArgument;
import org.fourthline.cling.model.meta.LocalService;
import org.fourthline.cling.model.state.StateVariableAccessor;

/* JADX INFO: loaded from: classes2.dex */
public class MethodActionExecutor extends AbstractActionExecutor {
    private static Logger log = Logger.getLogger(MethodActionExecutor.class.getName());
    public Method method;

    public MethodActionExecutor(Method method) {
        this.method = method;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0157  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object[] createInputArgumentValues(org.fourthline.cling.model.action.ActionInvocation<org.fourthline.cling.model.meta.LocalService> r17, java.lang.reflect.Method r18) throws org.fourthline.cling.model.action.ActionException {
        /*
            Method dump skipped, instruction units count: 357
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fourthline.cling.model.action.MethodActionExecutor.createInputArgumentValues(org.fourthline.cling.model.action.ActionInvocation, java.lang.reflect.Method):java.lang.Object[]");
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c7  */
    @Override // org.fourthline.cling.model.action.AbstractActionExecutor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void execute(org.fourthline.cling.model.action.ActionInvocation<org.fourthline.cling.model.meta.LocalService> r6, java.lang.Object r7) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fourthline.cling.model.action.MethodActionExecutor.execute(org.fourthline.cling.model.action.ActionInvocation, java.lang.Object):void");
    }

    public Method getMethod() {
        return this.method;
    }

    public boolean isUseOutputArgumentAccessors(ActionInvocation<LocalService> actionInvocation) {
        for (ActionArgument actionArgument : actionInvocation.getAction().getOutputArguments()) {
            if (getOutputArgumentAccessors().get(actionArgument) != null) {
                return true;
            }
        }
        return false;
    }

    public MethodActionExecutor(Map<ActionArgument<LocalService>, StateVariableAccessor> map, Method method) {
        super(map);
        this.method = method;
    }
}
