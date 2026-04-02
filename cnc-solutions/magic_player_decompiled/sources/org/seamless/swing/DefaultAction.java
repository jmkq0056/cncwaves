package org.seamless.swing;

import java.awt.event.ActionEvent;
import javax.swing.AbstractAction;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DefaultAction extends AbstractAction {
    public void executeInController(Controller controller, ActionEvent actionEvent) {
        actionPerformed(actionEvent);
    }
}
