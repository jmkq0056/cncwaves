package e0;

import android.text.TextPaint;

/* JADX INFO: loaded from: classes.dex */
public class k implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextPaint f1605a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final h0.k f1606b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1607c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f1608d;

    public k() {
        TextPaint textPaint = new TextPaint();
        this.f1605a = textPaint;
        textPaint.setTextSize(36.0f);
        textPaint.setColor(-1);
        textPaint.setAntiAlias(true);
        this.f1606b = new h0.k();
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x019a A[ADDED_TO_REGION] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // e0.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(android.graphics.Canvas r20) {
        /*
            Method dump skipped, instruction units count: 467
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: e0.k.draw(android.graphics.Canvas):void");
    }
}
