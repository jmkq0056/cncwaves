package org.fourthline.cling.support.model.dlna.types;

/* JADX INFO: loaded from: classes2.dex */
public class ScmsFlagType {
    private boolean copyright;
    private boolean original;

    public ScmsFlagType() {
        this.copyright = true;
        this.original = true;
    }

    public boolean isCopyright() {
        return this.copyright;
    }

    public boolean isOriginal() {
        return this.original;
    }

    public ScmsFlagType(boolean z3, boolean z4) {
        this.copyright = z3;
        this.original = z4;
    }
}
