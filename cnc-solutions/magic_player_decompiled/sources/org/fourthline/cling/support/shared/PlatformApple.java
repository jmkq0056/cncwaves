package org.fourthline.cling.support.shared;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import javax.swing.JFrame;
import org.seamless.swing.Controller;

/* JADX INFO: loaded from: classes2.dex */
public class PlatformApple {

    public static class AppListenerProxy implements InvocationHandler {
        private Controller<JFrame> appController;
        private Object object;

        private AppListenerProxy(Object obj, Controller<JFrame> controller) {
            this.object = obj;
            this.appController = controller;
        }

        public static Object newInstance(Object obj, Controller<JFrame> controller) {
            return Proxy.newProxyInstance(obj.getClass().getClassLoader(), obj.getClass().getInterfaces(), new AppListenerProxy(obj, controller));
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            Object objInvoke = null;
            try {
                if ("handleQuit".equals(method.getName())) {
                    Controller<JFrame> controller = this.appController;
                    if (controller != null) {
                        controller.dispose();
                        this.appController.getView().dispose();
                    }
                } else {
                    objInvoke = method.invoke(this.object, objArr);
                }
            } catch (Exception unused) {
            }
            return objInvoke;
        }
    }

    public static void setup(Controller<JFrame> controller, String str) throws IllegalAccessException, InstantiationException, ClassNotFoundException, InvocationTargetException {
        System.setProperty("apple.laf.useScreenMenuBar", "true");
        System.setProperty("com.apple.mrj.application.apple.menu.about.name", str);
        System.setProperty("apple.awt.showGrowBox", "true");
        Class<?> cls = Class.forName("com.apple.eawt.Application");
        cls.getDeclaredMethod("addApplicationListener", Class.forName("com.apple.eawt.ApplicationListener")).invoke(cls.newInstance(), AppListenerProxy.newInstance(Class.forName("com.apple.eawt.ApplicationAdapter").newInstance(), controller));
    }
}
