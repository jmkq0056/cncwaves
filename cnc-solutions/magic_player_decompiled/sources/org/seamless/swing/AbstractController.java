package org.seamless.swing;

import android.support.v4.media.f;
import java.awt.Container;
import java.awt.event.ActionEvent;
import java.awt.event.WindowEvent;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;
import javax.swing.AbstractButton;

/* JADX INFO: loaded from: classes2.dex */
public class AbstractController<V extends Container> implements Controller<V> {
    private static Logger log = Logger.getLogger(AbstractController.class.getName());
    private Map<String, DefaultAction> actions;
    private Map<Class, List<EventListener>> eventListeners;
    private Controller parentController;
    private List<Controller> subControllers;
    private V view;

    public AbstractController(V v3) {
        this.subControllers = new ArrayList();
        this.actions = new HashMap();
        this.eventListeners = new HashMap();
        this.view = v3;
    }

    public void actionPerformed(ActionEvent actionEvent) {
        try {
            String actionCommand = ((AbstractButton) actionEvent.getSource()).getActionCommand();
            DefaultAction defaultAction = this.actions.get(actionCommand);
            if (defaultAction == null) {
                if (getParentController() != null) {
                    log.fine("Passing action on to parent controller");
                    this.parentController.actionPerformed(actionEvent);
                    return;
                } else {
                    throw new RuntimeException("Nobody is responsible for action command: " + actionCommand);
                }
            }
            log.fine("Handling command: " + actionCommand + " with action: " + defaultAction.getClass());
            try {
                try {
                    preActionExecute();
                    log.fine("Dispatching to action for execution");
                    defaultAction.executeInController(this, actionEvent);
                    postActionExecute();
                } catch (RuntimeException e4) {
                    failedActionExecute();
                    throw e4;
                } catch (Exception e5) {
                    failedActionExecute();
                    throw new RuntimeException(e5);
                }
            } finally {
                finalActionExecute();
            }
        } catch (ClassCastException unused) {
            throw new IllegalArgumentException("Action source is not an Abstractbutton: " + actionEvent);
        }
    }

    public void deregisterAction(String str) {
        this.actions.remove(str);
    }

    @Override // org.seamless.swing.Controller
    public void dispose() {
        log.fine("Disposing controller");
        Iterator<Controller> it = this.subControllers.iterator();
        while (it.hasNext()) {
            it.next().dispose();
            it.remove();
        }
    }

    @Override // org.seamless.swing.Controller
    public void failedActionExecute() {
    }

    @Override // org.seamless.swing.Controller
    public void finalActionExecute() {
    }

    @Override // org.seamless.swing.Controller
    public void fireEvent(Event event) {
        fireEvent(event, false);
    }

    @Override // org.seamless.swing.Controller
    public void fireEventGlobal(Event event) {
        fireEvent(event, true);
    }

    @Override // org.seamless.swing.Controller
    public Controller getParentController() {
        return this.parentController;
    }

    @Override // org.seamless.swing.Controller
    public List<Controller> getSubControllers() {
        return this.subControllers;
    }

    @Override // org.seamless.swing.Controller
    public V getView() {
        return this.view;
    }

    @Override // org.seamless.swing.Controller
    public void postActionExecute() {
    }

    @Override // org.seamless.swing.Controller
    public void preActionExecute() {
    }

    @Override // org.seamless.swing.Controller
    public void registerAction(AbstractButton abstractButton, DefaultAction defaultAction) {
        abstractButton.removeActionListener(this);
        abstractButton.addActionListener(this);
        this.actions.put(abstractButton.getActionCommand(), defaultAction);
    }

    @Override // org.seamless.swing.Controller
    public void registerEventListener(Class cls, EventListener eventListener) {
        log.fine("Registering listener: " + eventListener + " for event type: " + cls.getName());
        List<EventListener> arrayList = this.eventListeners.get(cls);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        arrayList.add(eventListener);
        this.eventListeners.put(cls, arrayList);
    }

    public void windowActivated(WindowEvent windowEvent) {
    }

    public void windowClosed(WindowEvent windowEvent) {
    }

    public void windowClosing(WindowEvent windowEvent) {
        dispose();
        getView().dispose();
    }

    public void windowDeactivated(WindowEvent windowEvent) {
    }

    public void windowDeiconified(WindowEvent windowEvent) {
    }

    public void windowIconified(WindowEvent windowEvent) {
    }

    public void windowOpened(WindowEvent windowEvent) {
    }

    @Override // org.seamless.swing.Controller
    public void fireEvent(Event event, boolean z3) {
        if (event.alreadyFired(this)) {
            log.finest("Event already fired here, ignoring...");
        } else {
            log.finest("Event has not been fired already");
            if (this.eventListeners.get(event.getClass()) != null) {
                Logger logger = log;
                StringBuilder sbA = f.a("Have listeners for this type of event: ");
                sbA.append(this.eventListeners.get(event.getClass()));
                logger.finest(sbA.toString());
                for (EventListener eventListener : this.eventListeners.get(event.getClass())) {
                    Logger logger2 = log;
                    StringBuilder sbA2 = f.a("Processing event: ");
                    sbA2.append(event.getClass().getName());
                    sbA2.append(" with listener: ");
                    sbA2.append(eventListener.getClass().getName());
                    logger2.fine(sbA2.toString());
                    eventListener.handleEvent(event);
                }
            }
            event.addFiredInController(this);
            Logger logger3 = log;
            StringBuilder sbA3 = f.a("Passing event: ");
            sbA3.append(event.getClass().getName());
            sbA3.append(" DOWN in the controller hierarchy");
            logger3.fine(sbA3.toString());
            Iterator<Controller> it = this.subControllers.iterator();
            while (it.hasNext()) {
                it.next().fireEvent(event, z3);
            }
        }
        if (getParentController() == null || event.alreadyFired(getParentController()) || !z3) {
            log.finest("Event does not propagate up the tree from here");
            return;
        }
        Logger logger4 = log;
        StringBuilder sbA4 = f.a("Passing event: ");
        sbA4.append(event.getClass().getName());
        sbA4.append(" UP in the controller hierarchy");
        logger4.fine(sbA4.toString());
        getParentController().fireEvent(event, z3);
    }

    @Override // org.seamless.swing.Controller
    public void registerAction(AbstractButton abstractButton, String str, DefaultAction defaultAction) {
        abstractButton.setActionCommand(str);
        registerAction(abstractButton, defaultAction);
    }

    public AbstractController() {
        this.subControllers = new ArrayList();
        this.actions = new HashMap();
        this.eventListeners = new HashMap();
    }

    public AbstractController(Controller controller) {
        this(null, controller);
    }

    public AbstractController(V v3, Controller controller) {
        this.subControllers = new ArrayList();
        this.actions = new HashMap();
        this.eventListeners = new HashMap();
        this.view = v3;
        if (controller != null) {
            this.parentController = controller;
            controller.getSubControllers().add(this);
        }
    }
}
