package org.eclipse.jetty.servlet.listener;

import android.support.v4.media.f;
import g2.s;
import g2.t;
import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.jetty.util.Loader;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class ELContextCleaner implements t {
    private static final Logger LOG = Log.getLogger((Class<?>) ELContextCleaner.class);

    @Override // g2.t
    public void contextDestroyed(s sVar) {
        try {
            purgeEntries(getField(Loader.loadClass(getClass(), "javax.el.BeanELResolver")));
            LOG.info("javax.el.BeanELResolver purged", new Object[0]);
        } catch (ClassNotFoundException unused) {
        } catch (IllegalAccessException e4) {
            LOG.warn("Cannot purge classes from javax.el.BeanELResolver", e4);
        } catch (IllegalArgumentException e5) {
            LOG.warn("Cannot purge classes from javax.el.BeanELResolver", e5);
        } catch (NoSuchFieldException unused2) {
            LOG.info("Not cleaning cached beans: no such field javax.el.BeanELResolver.properties", new Object[0]);
        } catch (SecurityException e6) {
            LOG.warn("Cannot purge classes from javax.el.BeanELResolver", e6);
        }
    }

    @Override // g2.t
    public void contextInitialized(s sVar) {
    }

    public Field getField(Class cls) {
        if (cls == null) {
            return null;
        }
        return cls.getDeclaredField("properties");
    }

    public void purgeEntries(Field field) {
        if (field == null) {
            return;
        }
        if (!field.isAccessible()) {
            field.setAccessible(true);
        }
        Map map = (Map) field.get(null);
        if (map == null) {
            return;
        }
        Iterator it = map.keySet().iterator();
        while (it.hasNext()) {
            Class cls = (Class) it.next();
            Logger logger = LOG;
            logger.info("Clazz: " + cls + " loaded by " + cls.getClassLoader(), new Object[0]);
            if (Thread.currentThread().getContextClassLoader().equals(cls.getClassLoader())) {
                it.remove();
                logger.info("removed", new Object[0]);
            } else {
                StringBuilder sbA = f.a("not removed: contextclassloader=");
                sbA.append(Thread.currentThread().getContextClassLoader());
                sbA.append("clazz's classloader=");
                sbA.append(cls.getClassLoader());
                logger.info(sbA.toString(), new Object[0]);
            }
        }
    }
}
