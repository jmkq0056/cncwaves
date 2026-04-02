package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.appcompat.graphics.drawable.a;
import androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
class RunGroup {
    public static final int BASELINE = 2;
    public static final int END = 1;
    public static final int START = 0;
    public static int index;
    public int direction;
    public WidgetRun firstRun;
    public int groupIndex;
    public WidgetRun lastRun;
    public int position = 0;
    public boolean dual = false;
    public ArrayList<WidgetRun> runs = new ArrayList<>();

    public RunGroup(WidgetRun widgetRun, int i4) {
        this.firstRun = null;
        this.lastRun = null;
        this.groupIndex = 0;
        int i5 = index;
        this.groupIndex = i5;
        index = i5 + 1;
        this.firstRun = widgetRun;
        this.lastRun = widgetRun;
        this.direction = i4;
    }

    private boolean defineTerminalWidget(WidgetRun widgetRun, int i4) {
        DependencyNode dependencyNode;
        WidgetRun widgetRun2;
        DependencyNode dependencyNode2;
        WidgetRun widgetRun3;
        if (!widgetRun.widget.isTerminalWidget[i4]) {
            return false;
        }
        for (Dependency dependency : widgetRun.start.dependencies) {
            if ((dependency instanceof DependencyNode) && (widgetRun3 = (dependencyNode2 = (DependencyNode) dependency).run) != widgetRun && dependencyNode2 == widgetRun3.start) {
                if (widgetRun instanceof ChainRun) {
                    Iterator<WidgetRun> it = ((ChainRun) widgetRun).widgets.iterator();
                    while (it.hasNext()) {
                        defineTerminalWidget(it.next(), i4);
                    }
                } else if (!(widgetRun instanceof HelperReferences)) {
                    widgetRun.widget.isTerminalWidget[i4] = false;
                }
                defineTerminalWidget(dependencyNode2.run, i4);
            }
        }
        for (Dependency dependency2 : widgetRun.end.dependencies) {
            if ((dependency2 instanceof DependencyNode) && (widgetRun2 = (dependencyNode = (DependencyNode) dependency2).run) != widgetRun && dependencyNode == widgetRun2.start) {
                if (widgetRun instanceof ChainRun) {
                    Iterator<WidgetRun> it2 = ((ChainRun) widgetRun).widgets.iterator();
                    while (it2.hasNext()) {
                        defineTerminalWidget(it2.next(), i4);
                    }
                } else if (!(widgetRun instanceof HelperReferences)) {
                    widgetRun.widget.isTerminalWidget[i4] = false;
                }
                defineTerminalWidget(dependencyNode.run, i4);
            }
        }
        return false;
    }

    private long traverseEnd(DependencyNode dependencyNode, long j4) {
        WidgetRun widgetRun = dependencyNode.run;
        if (widgetRun instanceof HelperReferences) {
            return j4;
        }
        int size = dependencyNode.dependencies.size();
        long jMin = j4;
        for (int i4 = 0; i4 < size; i4++) {
            Dependency dependency = dependencyNode.dependencies.get(i4);
            if (dependency instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) dependency;
                if (dependencyNode2.run != widgetRun) {
                    jMin = Math.min(jMin, traverseEnd(dependencyNode2, ((long) dependencyNode2.margin) + j4));
                }
            }
        }
        if (dependencyNode != widgetRun.end) {
            return jMin;
        }
        long wrapDimension = j4 - widgetRun.getWrapDimension();
        return Math.min(Math.min(jMin, traverseEnd(widgetRun.start, wrapDimension)), wrapDimension - ((long) widgetRun.start.margin));
    }

    private long traverseStart(DependencyNode dependencyNode, long j4) {
        WidgetRun widgetRun = dependencyNode.run;
        if (widgetRun instanceof HelperReferences) {
            return j4;
        }
        int size = dependencyNode.dependencies.size();
        long jMax = j4;
        for (int i4 = 0; i4 < size; i4++) {
            Dependency dependency = dependencyNode.dependencies.get(i4);
            if (dependency instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) dependency;
                if (dependencyNode2.run != widgetRun) {
                    jMax = Math.max(jMax, traverseStart(dependencyNode2, ((long) dependencyNode2.margin) + j4));
                }
            }
        }
        if (dependencyNode != widgetRun.start) {
            return jMax;
        }
        long wrapDimension = j4 + widgetRun.getWrapDimension();
        return Math.max(Math.max(jMax, traverseStart(widgetRun.end, wrapDimension)), wrapDimension - ((long) widgetRun.end.margin));
    }

    public void add(WidgetRun widgetRun) {
        this.runs.add(widgetRun);
        this.lastRun = widgetRun;
    }

    public long computeWrapSize(ConstraintWidgetContainer constraintWidgetContainer, int i4) {
        WidgetRun widgetRun = this.firstRun;
        if (widgetRun instanceof ChainRun) {
            if (((ChainRun) widgetRun).orientation != i4) {
                return 0L;
            }
        } else if (i4 == 0) {
            if (!(widgetRun instanceof HorizontalWidgetRun)) {
                return 0L;
            }
        } else if (!(widgetRun instanceof VerticalWidgetRun)) {
            return 0L;
        }
        DependencyNode dependencyNode = (i4 == 0 ? constraintWidgetContainer.horizontalRun : constraintWidgetContainer.verticalRun).start;
        DependencyNode dependencyNode2 = (i4 == 0 ? constraintWidgetContainer.horizontalRun : constraintWidgetContainer.verticalRun).end;
        boolean zContains = widgetRun.start.targets.contains(dependencyNode);
        boolean zContains2 = this.firstRun.end.targets.contains(dependencyNode2);
        long wrapDimension = this.firstRun.getWrapDimension();
        if (!zContains || !zContains2) {
            if (zContains) {
                return Math.max(traverseStart(this.firstRun.start, r13.margin), ((long) this.firstRun.start.margin) + wrapDimension);
            }
            if (zContains2) {
                return Math.max(-traverseEnd(this.firstRun.end, r13.margin), ((long) (-this.firstRun.end.margin)) + wrapDimension);
            }
            WidgetRun widgetRun2 = this.firstRun;
            return (widgetRun2.getWrapDimension() + ((long) widgetRun2.start.margin)) - ((long) this.firstRun.end.margin);
        }
        long jTraverseStart = traverseStart(this.firstRun.start, 0L);
        long jTraverseEnd = traverseEnd(this.firstRun.end, 0L);
        long j4 = jTraverseStart - wrapDimension;
        WidgetRun widgetRun3 = this.firstRun;
        int i5 = widgetRun3.end.margin;
        if (j4 >= (-i5)) {
            j4 += (long) i5;
        }
        int i6 = widgetRun3.start.margin;
        long j5 = ((-jTraverseEnd) - wrapDimension) - ((long) i6);
        if (j5 >= i6) {
            j5 -= (long) i6;
        }
        float biasPercent = widgetRun3.widget.getBiasPercent(i4);
        float f4 = biasPercent > 0.0f ? (long) ((j4 / (1.0f - biasPercent)) + (j5 / biasPercent)) : 0L;
        long jA = ((long) ((f4 * biasPercent) + 0.5f)) + wrapDimension + ((long) a.a(1.0f, biasPercent, f4, 0.5f));
        WidgetRun widgetRun4 = this.firstRun;
        return (((long) widgetRun4.start.margin) + jA) - ((long) widgetRun4.end.margin);
    }

    public void defineTerminalWidgets(boolean z3, boolean z4) {
        if (z3) {
            WidgetRun widgetRun = this.firstRun;
            if (widgetRun instanceof HorizontalWidgetRun) {
                defineTerminalWidget(widgetRun, 0);
            }
        }
        if (z4) {
            WidgetRun widgetRun2 = this.firstRun;
            if (widgetRun2 instanceof VerticalWidgetRun) {
                defineTerminalWidget(widgetRun2, 1);
            }
        }
    }
}
