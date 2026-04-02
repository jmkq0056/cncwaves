package org.seamless.swing;

import java.beans.PropertyDescriptor;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.swing.table.AbstractTableModel;

/* JADX INFO: loaded from: classes2.dex */
public class BeanTableModel<T> extends AbstractTableModel {
    private Class<T> beanClass;
    private List<PropertyDescriptor> properties = new ArrayList();
    private List<T> rows;

    public BeanTableModel(Class<T> cls, Collection<T> collection) {
        this.beanClass = cls;
        this.rows = new ArrayList(collection);
    }

    public void addColumn(String str, String str2) {
        try {
            PropertyDescriptor propertyDescriptor = new PropertyDescriptor(str2, this.beanClass, str2, (String) null);
            propertyDescriptor.setDisplayName(str);
            this.properties.add(propertyDescriptor);
        } catch (Exception e4) {
            throw new RuntimeException(e4);
        }
    }

    public void addRow(T t3) {
        this.rows.add(t3);
        fireTableRowsInserted(getRowCount() - 1, getRowCount() - 1);
    }

    public int getColumnCount() {
        return this.properties.size();
    }

    public String getColumnName(int i4) {
        return this.properties.get(i4).getDisplayName();
    }

    public int getRowCount() {
        return this.rows.size();
    }

    public List<T> getRows() {
        return this.rows;
    }

    public Object getValueAt(int i4, int i5) {
        T t3 = this.rows.get(i4);
        if (t3 == null) {
            return null;
        }
        try {
            return this.properties.get(i5).getReadMethod().invoke(t3, new Object[0]);
        } catch (Exception e4) {
            throw new RuntimeException(e4);
        }
    }

    public void removeRow(int i4) {
        if (this.rows.size() <= i4 || i4 == -1) {
            return;
        }
        this.rows.remove(i4);
        fireTableRowsDeleted(i4, i4);
    }

    public void resetColumns() {
        this.properties = new ArrayList();
    }

    public void setRow(int i4, T t3) {
        this.rows.remove(i4);
        this.rows.add(i4, t3);
        fireTableDataChanged();
    }

    public void setRows(Collection<T> collection) {
        this.rows = new ArrayList(collection);
        fireTableDataChanged();
    }
}
