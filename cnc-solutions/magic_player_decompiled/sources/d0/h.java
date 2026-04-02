package d0;

import cn.huidu.lcd.render.model.WidgetNode;

/* JADX INFO: loaded from: classes.dex */
public abstract class h<T extends WidgetNode> extends e<T> {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f1509m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f1510n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f1511o;

    public h(a0.g gVar) {
        super(gVar);
        this.f1496k = true;
    }

    public abstract boolean H(WidgetNode widgetNode);

    @Override // d0.c
    public int getDuration() {
        return ((WidgetNode) this.f1487b).getDuration();
    }
}
