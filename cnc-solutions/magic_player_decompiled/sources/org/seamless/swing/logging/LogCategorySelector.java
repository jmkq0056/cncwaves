package org.seamless.swing.logging;

import cn.huidu.lcd.transmit.model.readback.GetLogOptions;
import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.BorderFactory;
import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JDialog;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JToolBar;
import org.seamless.swing.logging.LogCategory;

/* JADX INFO: loaded from: classes2.dex */
public class LogCategorySelector extends JDialog {
    public final JPanel mainPanel;

    public LogCategorySelector(List<LogCategory> list) {
        JPanel jPanel = new JPanel();
        this.mainPanel = jPanel;
        setTitle("Select logging categories...");
        jPanel.setLayout(new BoxLayout(jPanel, 1));
        jPanel.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));
        addLogCategories(list);
        JScrollPane jScrollPane = new JScrollPane(jPanel);
        jScrollPane.setBorder(BorderFactory.createEmptyBorder());
        add(jScrollPane);
        setMaximumSize(new Dimension(750, 550));
        setResizable(false);
        pack();
    }

    public void addLogCategories(List<LogCategory> list) {
        Iterator<LogCategory> it = list.iterator();
        while (it.hasNext()) {
            addLogCategory(it.next());
        }
    }

    public void addLogCategory(LogCategory logCategory) {
        JPanel jPanel = new JPanel(new BorderLayout());
        jPanel.setBorder(BorderFactory.createTitledBorder(logCategory.getName()));
        addLoggerGroups(logCategory, jPanel);
        this.mainPanel.add(jPanel);
    }

    public void addLoggerGroups(final LogCategory logCategory, final JPanel jPanel) {
        JPanel jPanel2 = new JPanel();
        jPanel2.setLayout(new BoxLayout(jPanel2, 1));
        for (final LogCategory.Group group : logCategory.getGroups()) {
            JCheckBox jCheckBox = new JCheckBox(group.getName());
            jCheckBox.setSelected(group.isEnabled());
            jCheckBox.setFocusable(false);
            jCheckBox.addItemListener(new ItemListener() { // from class: org.seamless.swing.logging.LogCategorySelector.1
                public void itemStateChanged(ItemEvent itemEvent) {
                    if (itemEvent.getStateChange() == 2) {
                        LogCategorySelector.this.disableLoggerGroup(group);
                    } else if (itemEvent.getStateChange() == 1) {
                        LogCategorySelector.this.enableLoggerGroup(group);
                    }
                }
            });
            jPanel2.add(jCheckBox);
        }
        JToolBar jToolBar = new JToolBar();
        jToolBar.setFloatable(false);
        JButton jButton = new JButton(GetLogOptions.ALL_LOG);
        jButton.setFocusable(false);
        jButton.addActionListener(new ActionListener() { // from class: org.seamless.swing.logging.LogCategorySelector.2
            public void actionPerformed(ActionEvent actionEvent) {
                Iterator<LogCategory.Group> it = logCategory.getGroups().iterator();
                while (it.hasNext()) {
                    LogCategorySelector.this.enableLoggerGroup(it.next());
                }
                jPanel.removeAll();
                LogCategorySelector.this.addLoggerGroups(logCategory, jPanel);
                jPanel.revalidate();
            }
        });
        jToolBar.add(jButton);
        JButton jButton2 = new JButton("None");
        jButton2.setFocusable(false);
        jButton2.addActionListener(new ActionListener() { // from class: org.seamless.swing.logging.LogCategorySelector.3
            public void actionPerformed(ActionEvent actionEvent) {
                Iterator<LogCategory.Group> it = logCategory.getGroups().iterator();
                while (it.hasNext()) {
                    LogCategorySelector.this.disableLoggerGroup(it.next());
                }
                jPanel.removeAll();
                LogCategorySelector.this.addLoggerGroups(logCategory, jPanel);
                jPanel.revalidate();
            }
        });
        jToolBar.add(jButton2);
        jPanel.add(jPanel2, "Center");
        jPanel.add(jToolBar, "North");
    }

    public void disableLoggerGroup(LogCategory.Group group) {
        group.setEnabled(false);
        for (LogCategory.LoggerLevel loggerLevel : group.getPreviousLevels()) {
            Logger.getLogger(loggerLevel.getLogger()).setLevel(loggerLevel.getLevel());
        }
        if (group.getPreviousLevels().size() == 0) {
            Iterator<LogCategory.LoggerLevel> it = group.getLoggerLevels().iterator();
            while (it.hasNext()) {
                Logger.getLogger(it.next().getLogger()).setLevel(Level.INFO);
            }
        }
        group.getPreviousLevels().clear();
    }

    public void enableLoggerGroup(LogCategory.Group group) {
        group.setEnabled(true);
        group.getPreviousLevels().clear();
        for (LogCategory.LoggerLevel loggerLevel : group.getLoggerLevels()) {
            Logger logger = Logger.getLogger(loggerLevel.getLogger());
            group.getPreviousLevels().add(new LogCategory.LoggerLevel(logger.getName(), getLevel(logger)));
            logger.setLevel(loggerLevel.getLevel());
        }
    }

    public Level getLevel(Logger logger) {
        Level level = logger.getLevel();
        return (level != null || logger.getParent() == null) ? level : logger.getParent().getLevel();
    }
}
