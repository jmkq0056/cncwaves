package org.seamless.swing.logging;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes2.dex */
public class LogCategory {
    private List<Group> groups;
    private String name;

    public static class LoggerLevel {
        private Level level;
        private String logger;

        public LoggerLevel(String str, Level level) {
            this.logger = str;
            this.level = level;
        }

        public Level getLevel() {
            return this.level;
        }

        public String getLogger() {
            return this.logger;
        }
    }

    public LogCategory(String str) {
        this.groups = new ArrayList();
        this.name = str;
    }

    public void addGroup(String str, LoggerLevel[] loggerLevelArr) {
        this.groups.add(new Group(str, loggerLevelArr));
    }

    public List<Group> getGroups() {
        return this.groups;
    }

    public String getName() {
        return this.name;
    }

    public static class Group {
        private boolean enabled;
        private List<LoggerLevel> loggerLevels;
        private String name;
        private List<LoggerLevel> previousLevels;

        public Group(String str) {
            this.loggerLevels = new ArrayList();
            this.previousLevels = new ArrayList();
            this.name = str;
        }

        public List<LoggerLevel> getLoggerLevels() {
            return this.loggerLevels;
        }

        public String getName() {
            return this.name;
        }

        public List<LoggerLevel> getPreviousLevels() {
            return this.previousLevels;
        }

        public boolean isEnabled() {
            return this.enabled;
        }

        public void setEnabled(boolean z3) {
            this.enabled = z3;
        }

        public void setPreviousLevels(List<LoggerLevel> list) {
            this.previousLevels = list;
        }

        public Group(String str, LoggerLevel[] loggerLevelArr) {
            this.loggerLevels = new ArrayList();
            this.previousLevels = new ArrayList();
            this.name = str;
            this.loggerLevels = Arrays.asList(loggerLevelArr);
        }
    }

    public LogCategory(String str, Group[] groupArr) {
        this.groups = new ArrayList();
        this.name = str;
        this.groups = Arrays.asList(groupArr);
    }
}
