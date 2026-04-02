package org.seamless.util.jpa;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/* JADX INFO: loaded from: classes2.dex */
public class HibernateUtil {
    public static final Configuration configuration;
    public static final SessionFactory sessionFactory;

    static {
        try {
            Configuration configurationConfigure = new Configuration().configure();
            configuration = configurationConfigure;
            sessionFactory = configurationConfigure.buildSessionFactory();
        } catch (Throwable th) {
            throw new RuntimeException(th);
        }
    }

    public static Configuration getConfiguration() {
        return configuration;
    }

    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }
}
