package org.seamless.swing;

import java.awt.Color;
import java.awt.Component;
import java.awt.FontMetrics;
import java.awt.Graphics;
import java.awt.Point;
import java.awt.Rectangle;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.event.MouseMotionListener;
import javax.swing.Icon;
import javax.swing.JComponent;
import javax.swing.JTabbedPane;
import javax.swing.JViewport;
import javax.swing.SwingUtilities;
import javax.swing.event.EventListenerList;
import javax.swing.plaf.basic.BasicTabbedPaneUI;
import javax.swing.plaf.metal.MetalTabbedPaneUI;
import javax.swing.text.View;

/* JADX INFO: loaded from: classes2.dex */
public class ClosableTabbedPane extends JTabbedPane implements MouseListener, MouseMotionListener {
    private EventListenerList listenerList = null;
    private JViewport headerViewport = null;
    private Icon normalCloseIcon = null;
    private Icon hooverCloseIcon = null;
    private Icon pressedCloseIcon = null;

    public class CloseTabIcon implements Icon {
        private Icon fileIcon;
        private int x_pos;
        private int y_pos;
        private boolean mouseover = false;
        private boolean mousepressed = false;
        private int width = 16;
        private int height = 16;

        public CloseTabIcon(Icon icon) {
            this.fileIcon = icon;
        }

        public Rectangle getBounds() {
            return new Rectangle(this.x_pos, this.y_pos, this.width, this.height);
        }

        public int getIconHeight() {
            return this.height;
        }

        public int getIconWidth() {
            int i4 = this.width;
            Icon icon = this.fileIcon;
            return i4 + (icon != null ? icon.getIconWidth() : 0);
        }

        public void paintIcon(Component component, Graphics graphics, int i4, int i5) {
            Object clientProperty;
            try {
                JTabbedPane jTabbedPane = (JTabbedPane) component;
                clientProperty = jTabbedPane.getComponentAt(jTabbedPane.getUI().tabForCoordinate(jTabbedPane, i4, i5)).getClientProperty("isClosable");
            } catch (Exception unused) {
            }
            if (clientProperty != null ? ((Boolean) clientProperty).booleanValue() : true) {
                this.x_pos = i4;
                this.y_pos = i5;
                int i6 = i5 + 1;
                if (ClosableTabbedPane.this.normalCloseIcon != null && !this.mouseover) {
                    ClosableTabbedPane.this.normalCloseIcon.paintIcon(component, graphics, i4, i6);
                    return;
                }
                if (ClosableTabbedPane.this.hooverCloseIcon != null && this.mouseover && !this.mousepressed) {
                    ClosableTabbedPane.this.hooverCloseIcon.paintIcon(component, graphics, i4, i6);
                    return;
                }
                if (ClosableTabbedPane.this.pressedCloseIcon != null && this.mousepressed) {
                    ClosableTabbedPane.this.pressedCloseIcon.paintIcon(component, graphics, i4, i6);
                    return;
                }
                int i7 = i6 + 1;
                Color color = graphics.getColor();
                if (this.mousepressed && this.mouseover) {
                    graphics.setColor(Color.WHITE);
                    graphics.fillRect(i4 + 1, i7, 12, 13);
                }
                graphics.setColor(Color.black);
                int i8 = i4 + 1;
                int i9 = i4 + 12;
                graphics.drawLine(i8, i7, i9, i7);
                int i10 = i7 + 13;
                graphics.drawLine(i8, i10, i9, i10);
                int i11 = i7 + 1;
                int i12 = i7 + 12;
                graphics.drawLine(i4, i11, i4, i12);
                int i13 = i4 + 13;
                graphics.drawLine(i13, i11, i13, i12);
                int i14 = i4 + 3;
                int i15 = i7 + 3;
                int i16 = i4 + 10;
                int i17 = i7 + 10;
                graphics.drawLine(i14, i15, i16, i17);
                if (this.mouseover) {
                    graphics.setColor(Color.GRAY);
                }
                int i18 = i7 + 4;
                int i19 = i4 + 9;
                graphics.drawLine(i14, i18, i19, i17);
                int i20 = i4 + 4;
                int i21 = i7 + 9;
                graphics.drawLine(i20, i15, i16, i21);
                graphics.drawLine(i16, i15, i14, i17);
                graphics.drawLine(i16, i18, i20, i17);
                graphics.drawLine(i19, i15, i14, i21);
                graphics.setColor(color);
                Icon icon = this.fileIcon;
                if (icon != null) {
                    icon.paintIcon(component, graphics, i4 + this.width, i7);
                }
            }
        }
    }

    public ClosableTabbedPane() {
        init(2);
    }

    private void init(int i4) {
        this.listenerList = new EventListenerList();
        addMouseListener(this);
        addMouseMotionListener(this);
        if (getUI() instanceof MetalTabbedPaneUI) {
            setUI(new CloseableMetalTabbedPaneUI(i4));
        } else {
            setUI(new CloseableTabbedPaneUI(i4));
        }
    }

    private void processMouseEvents(MouseEvent mouseEvent) {
        CloseTabIcon closeTabIcon;
        int iTabForCoordinate = getUI().tabForCoordinate(this, mouseEvent.getX(), mouseEvent.getY());
        if (iTabForCoordinate >= 0 && (closeTabIcon = (CloseTabIcon) getIconAt(iTabForCoordinate)) != null) {
            Rectangle bounds = closeTabIcon.getBounds();
            JViewport jViewport = this.headerViewport;
            Point point = jViewport == null ? new Point() : jViewport.getViewPosition();
            Rectangle rectangle = new Rectangle(bounds.x - point.x, bounds.y - point.y, bounds.width, bounds.height);
            if (mouseEvent.getID() == 501) {
                closeTabIcon.mousepressed = mouseEvent.getModifiers() == 16;
                repaint(rectangle);
                return;
            }
            if (mouseEvent.getID() == 503 || mouseEvent.getID() == 506 || mouseEvent.getID() == 500) {
                point.x += mouseEvent.getX();
                point.y += mouseEvent.getY();
                if (!bounds.contains(point)) {
                    closeTabIcon.mouseover = false;
                } else if (mouseEvent.getID() == 500) {
                    int selectedIndex = getSelectedIndex();
                    if (fireCloseTab(selectedIndex)) {
                        if (selectedIndex > 0) {
                            Rectangle tabBounds = getUI().getTabBounds(this, selectedIndex - 1);
                            dispatchEvent(new MouseEvent((Component) mouseEvent.getSource(), mouseEvent.getID() + 1, System.currentTimeMillis(), mouseEvent.getModifiers(), tabBounds.x, tabBounds.y, mouseEvent.getClickCount(), mouseEvent.isPopupTrigger(), mouseEvent.getButton()));
                        }
                        remove(selectedIndex);
                    } else {
                        closeTabIcon.mouseover = false;
                        closeTabIcon.mousepressed = false;
                        repaint(rectangle);
                    }
                } else {
                    closeTabIcon.mouseover = true;
                    closeTabIcon.mousepressed = mouseEvent.getModifiers() == 16;
                }
                repaint(rectangle);
            }
        }
    }

    public void addCloseableTabbedPaneListener(ClosableTabbedPaneListener closableTabbedPaneListener) {
        this.listenerList.add(ClosableTabbedPaneListener.class, closableTabbedPaneListener);
    }

    public void addTab(String str, Component component) {
        addTab(str, component, null);
    }

    public boolean fireCloseTab(int i4) {
        for (Object obj : this.listenerList.getListenerList()) {
            if ((obj instanceof ClosableTabbedPaneListener) && !((ClosableTabbedPaneListener) obj).closeTab(i4)) {
                return false;
            }
        }
        return true;
    }

    public ClosableTabbedPaneListener[] getCloseableTabbedPaneListener() {
        return (ClosableTabbedPaneListener[]) this.listenerList.getListeners(ClosableTabbedPaneListener.class);
    }

    public void mouseClicked(MouseEvent mouseEvent) {
        processMouseEvents(mouseEvent);
    }

    public void mouseDragged(MouseEvent mouseEvent) {
        processMouseEvents(mouseEvent);
    }

    public void mouseEntered(MouseEvent mouseEvent) {
    }

    public void mouseExited(MouseEvent mouseEvent) {
        for (int i4 = 0; i4 < getTabCount(); i4++) {
            CloseTabIcon closeTabIcon = (CloseTabIcon) getIconAt(i4);
            if (closeTabIcon != null) {
                closeTabIcon.mouseover = false;
            }
        }
        repaint();
    }

    public void mouseMoved(MouseEvent mouseEvent) {
        processMouseEvents(mouseEvent);
    }

    public void mousePressed(MouseEvent mouseEvent) {
        processMouseEvents(mouseEvent);
    }

    public void mouseReleased(MouseEvent mouseEvent) {
    }

    public void removeCloseableTabbedPaneListener(ClosableTabbedPaneListener closableTabbedPaneListener) {
        this.listenerList.remove(ClosableTabbedPaneListener.class, closableTabbedPaneListener);
    }

    public void setCloseIcons(Icon icon, Icon icon2, Icon icon3) {
        this.normalCloseIcon = icon;
        this.hooverCloseIcon = icon2;
        this.pressedCloseIcon = icon3;
    }

    public class CloseableMetalTabbedPaneUI extends MetalTabbedPaneUI {
        private int horizontalTextPosition;

        public CloseableMetalTabbedPaneUI() {
            this.horizontalTextPosition = 2;
        }

        public void layoutLabel(int i4, FontMetrics fontMetrics, int i5, String str, Icon icon, Rectangle rectangle, Rectangle rectangle2, Rectangle rectangle3, boolean z3) {
            rectangle2.y = 0;
            rectangle2.x = 0;
            rectangle3.y = 0;
            rectangle3.x = 0;
            View textViewForTab = getTextViewForTab(i5);
            if (textViewForTab != null) {
                this.tabPane.putClientProperty("html", textViewForTab);
            }
            SwingUtilities.layoutCompoundLabel(this.tabPane, fontMetrics, str, icon, 0, 0, 0, this.horizontalTextPosition, rectangle, rectangle2, rectangle3, this.textIconGap + 2);
            this.tabPane.putClientProperty("html", (Object) null);
            int tabLabelShiftX = getTabLabelShiftX(i4, i5, z3);
            int tabLabelShiftY = getTabLabelShiftY(i4, i5, z3);
            rectangle2.x += tabLabelShiftX;
            rectangle2.y += tabLabelShiftY;
            rectangle3.x += tabLabelShiftX;
            rectangle3.y += tabLabelShiftY;
        }

        public CloseableMetalTabbedPaneUI(int i4) {
            this.horizontalTextPosition = 2;
            this.horizontalTextPosition = i4;
        }
    }

    public class CloseableTabbedPaneUI extends BasicTabbedPaneUI {
        private int horizontalTextPosition;

        public CloseableTabbedPaneUI() {
            this.horizontalTextPosition = 2;
        }

        public void layoutLabel(int i4, FontMetrics fontMetrics, int i5, String str, Icon icon, Rectangle rectangle, Rectangle rectangle2, Rectangle rectangle3, boolean z3) {
            rectangle2.y = 0;
            rectangle2.x = 0;
            rectangle3.y = 0;
            rectangle3.x = 0;
            View textViewForTab = getTextViewForTab(i5);
            if (textViewForTab != null) {
                this.tabPane.putClientProperty("html", textViewForTab);
            }
            SwingUtilities.layoutCompoundLabel(this.tabPane, fontMetrics, str, icon, 0, 0, 0, this.horizontalTextPosition, rectangle, rectangle2, rectangle3, this.textIconGap + 2);
            this.tabPane.putClientProperty("html", (Object) null);
            int tabLabelShiftX = getTabLabelShiftX(i4, i5, z3);
            int tabLabelShiftY = getTabLabelShiftY(i4, i5, z3);
            rectangle2.x += tabLabelShiftX;
            rectangle2.y += tabLabelShiftY;
            rectangle3.x += tabLabelShiftX;
            rectangle3.y += tabLabelShiftY;
        }

        public CloseableTabbedPaneUI(int i4) {
            this.horizontalTextPosition = 2;
            this.horizontalTextPosition = i4;
        }
    }

    public void addTab(String str, Component component, Icon icon) {
        boolean zBooleanValue = true;
        try {
            Object clientProperty = ((JComponent) component).getClientProperty("isClosable");
            if (clientProperty != null) {
                zBooleanValue = ((Boolean) clientProperty).booleanValue();
            }
        } catch (Exception unused) {
        }
        super.addTab(str, zBooleanValue ? new CloseTabIcon(icon) : null, component);
        if (this.headerViewport == null) {
            for (JViewport jViewport : getComponents()) {
                if ("TabbedPane.scrollableViewport".equals(jViewport.getName())) {
                    this.headerViewport = jViewport;
                }
            }
        }
    }

    public ClosableTabbedPane(int i4) {
        init(i4);
    }
}
