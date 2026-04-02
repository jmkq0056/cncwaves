package org.fourthline.cling.model.state;

import android.support.v4.media.f;
import org.fourthline.cling.model.Command;
import org.fourthline.cling.model.ServiceManager;
import org.fourthline.cling.model.meta.LocalService;
import org.fourthline.cling.model.meta.StateVariable;

/* JADX INFO: loaded from: classes2.dex */
public abstract class StateVariableAccessor {

    /* JADX INFO: renamed from: org.fourthline.cling.model.state.StateVariableAccessor$1AccessCommand, reason: invalid class name */
    public class C1AccessCommand implements Command {
        public Object result;
        public final /* synthetic */ Object val$serviceImpl;
        public final /* synthetic */ StateVariable val$stateVariable;

        public C1AccessCommand(Object obj, StateVariable stateVariable) {
            this.val$serviceImpl = obj;
            this.val$stateVariable = stateVariable;
        }

        @Override // org.fourthline.cling.model.Command
        public void execute(ServiceManager serviceManager) {
            this.result = StateVariableAccessor.this.read(this.val$serviceImpl);
            if (((LocalService) this.val$stateVariable.getService()).isStringConvertibleType(this.result)) {
                this.result = this.result.toString();
            }
        }
    }

    public abstract Class<?> getReturnType();

    public abstract Object read(Object obj);

    public StateVariableValue read(StateVariable<LocalService> stateVariable, Object obj) {
        C1AccessCommand c1AccessCommand = new C1AccessCommand(obj, stateVariable);
        ((LocalService) stateVariable.getService()).getManager().execute(c1AccessCommand);
        return new StateVariableValue(stateVariable, c1AccessCommand.result);
    }

    public String toString() {
        StringBuilder sbA = f.a("(");
        sbA.append(getClass().getSimpleName());
        sbA.append(")");
        return sbA.toString();
    }
}
