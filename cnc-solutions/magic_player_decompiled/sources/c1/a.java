package c1;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    private int flags;

    public final void addFlag(int i4) {
        this.flags = i4 | this.flags;
    }

    public void clear() {
        this.flags = 0;
    }

    public final void clearFlag(int i4) {
        this.flags = (i4 ^ (-1)) & this.flags;
    }

    public final boolean getFlag(int i4) {
        return (this.flags & i4) == i4;
    }

    public final boolean hasSupplementalData() {
        return getFlag(268435456);
    }

    public final boolean isDecodeOnly() {
        return getFlag(Integer.MIN_VALUE);
    }

    public final boolean isEndOfStream() {
        return getFlag(4);
    }

    public final boolean isKeyFrame() {
        return getFlag(1);
    }

    public final void setFlags(int i4) {
        this.flags = i4;
    }
}
