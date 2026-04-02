package c0;

import a0.j;
import android.util.Log;
import cn.huidu.lcd.render.model.PlayIndex;
import cn.huidu.lcd.render.model.PlayList;
import cn.huidu.lcd.render.model.PlayTaskNode;
import cn.huidu.lcd.render.model.ProgramNode;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class f implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f318a;

    public interface a {
    }

    public f(a aVar) {
        this.f318a = aVar;
    }

    @Override // c0.c
    public /* synthetic */ boolean a() {
        return b.c(this);
    }

    @Override // c0.c
    public /* synthetic */ void b(PlayList playList, ProgramNode programNode) {
        b.b(this, playList, programNode);
    }

    @Override // c0.c
    public PlayIndex c(PlayList playList, int i4) {
        int i5 = i4 + 1;
        if (i5 < playList.size()) {
            return new PlayIndex(i5);
        }
        a aVar = this.f318a;
        if (aVar == null) {
            return null;
        }
        j jVar = (j) ((p.b) aVar).f2923b;
        Objects.requireNonNull(jVar);
        Log.d("TaskPlayerImpl", "onPlayFinish: ");
        PlayTaskNode playTaskNode = jVar.f44c;
        if (playTaskNode != null) {
            jVar.g(playTaskNode);
            return null;
        }
        jVar.stop();
        return null;
    }

    @Override // c0.c
    public PlayIndex d(PlayList playList) {
        return new PlayIndex(0);
    }

    @Override // c0.c
    public int e(PlayList playList, int i4, int i5) {
        int i6 = i4 + 1;
        if (i6 < playList.size()) {
            return i6;
        }
        return -1;
    }

    @Override // c0.c
    public /* synthetic */ PlayIndex f(d0.f fVar, PlayList playList, int i4) {
        return b.a(this, fVar, playList, i4);
    }

    @Override // c0.c
    public /* synthetic */ boolean g() {
        return b.d(this);
    }
}
