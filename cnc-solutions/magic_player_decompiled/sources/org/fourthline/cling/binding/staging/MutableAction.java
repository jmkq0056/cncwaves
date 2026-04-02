package org.fourthline.cling.binding.staging;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.fourthline.cling.model.meta.Action;
import org.fourthline.cling.model.meta.ActionArgument;

/* JADX INFO: loaded from: classes2.dex */
public class MutableAction {
    public List<MutableActionArgument> arguments = new ArrayList();
    public String name;

    public Action build() {
        return new Action(this.name, createActionArgumennts());
    }

    public ActionArgument[] createActionArgumennts() {
        ActionArgument[] actionArgumentArr = new ActionArgument[this.arguments.size()];
        Iterator<MutableActionArgument> it = this.arguments.iterator();
        int i4 = 0;
        while (it.hasNext()) {
            actionArgumentArr[i4] = it.next().build();
            i4++;
        }
        return actionArgumentArr;
    }
}
