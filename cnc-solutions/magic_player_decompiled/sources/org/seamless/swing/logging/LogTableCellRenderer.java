package org.seamless.swing.logging;

import java.awt.Component;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import javax.swing.ImageIcon;
import javax.swing.JLabel;
import javax.swing.JTable;
import javax.swing.table.DefaultTableCellRenderer;

/* JADX INFO: loaded from: classes2.dex */
public abstract class LogTableCellRenderer extends DefaultTableCellRenderer {
    public SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm:ss:SSS");

    public abstract ImageIcon getDebugIcon();

    public abstract ImageIcon getInfoIcon();

    public Component getTableCellRendererComponent(JTable jTable, Object obj, boolean z3, boolean z4, int i4, int i5) {
        LogMessage logMessage = (LogMessage) obj;
        if (i5 == 0) {
            return (logMessage.getLevel().equals(Level.SEVERE) || logMessage.getLevel().equals(Level.WARNING)) ? new JLabel(getWarnErrorIcon()) : logMessage.getLevel().equals(Level.FINE) ? new JLabel(getDebugIcon()) : (logMessage.getLevel().equals(Level.FINER) || logMessage.getLevel().equals(Level.FINEST)) ? new JLabel(getTraceIcon()) : new JLabel(getInfoIcon());
        }
        if (i5 != 1) {
            return i5 != 2 ? i5 != 3 ? super.getTableCellRendererComponent(jTable, logMessage.getMessage().replaceAll("\n", "<NL>").replaceAll("\r", "<CR>"), z3, z4, i4, i5) : super.getTableCellRendererComponent(jTable, logMessage.getSource(), z3, z4, i4, i5) : super.getTableCellRendererComponent(jTable, logMessage.getThread(), z3, z4, i4, i5);
        }
        return super.getTableCellRendererComponent(jTable, this.dateFormat.format(new Date(logMessage.getCreatedOn().longValue())), z3, z4, i4, i5);
    }

    public abstract ImageIcon getTraceIcon();

    public abstract ImageIcon getWarnErrorIcon();
}
