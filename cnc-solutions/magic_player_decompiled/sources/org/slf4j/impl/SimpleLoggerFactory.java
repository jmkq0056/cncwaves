package org.slf4j.impl;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.slf4j.ILoggerFactory;
import org.slf4j.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class SimpleLoggerFactory implements ILoggerFactory {
    public ConcurrentMap<String, Logger> loggerMap = new ConcurrentHashMap();

    public SimpleLoggerFactory() {
        SimpleLogger.lazyInit();
    }

    @Override // org.slf4j.ILoggerFactory
    public Logger getLogger(String str) {
        Logger logger = this.loggerMap.get(str);
        if (logger != null) {
            return logger;
        }
        SimpleLogger simpleLogger = new SimpleLogger(str);
        Logger loggerPutIfAbsent = this.loggerMap.putIfAbsent(str, simpleLogger);
        return loggerPutIfAbsent == null ? simpleLogger : loggerPutIfAbsent;
    }

    public void reset() {
        this.loggerMap.clear();
    }
}
