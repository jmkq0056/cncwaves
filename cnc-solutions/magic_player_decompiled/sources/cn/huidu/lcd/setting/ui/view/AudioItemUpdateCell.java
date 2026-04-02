package cn.huidu.lcd.setting.ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import p.b;

/* JADX INFO: loaded from: classes.dex */
public class AudioItemUpdateCell extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f907a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public a f908b;

    public interface a {
    }

    public AudioItemUpdateCell(Context context) {
        super(context);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i4, KeyEvent keyEvent) {
        if (i4 == 21) {
            a aVar = this.f908b;
            if (aVar != null && this.f907a) {
                this.f907a = false;
                ((b) aVar).d(false);
            }
            return true;
        }
        if (i4 != 22) {
            return super.onKeyDown(i4, keyEvent);
        }
        a aVar2 = this.f908b;
        if (aVar2 != null && !this.f907a) {
            this.f907a = true;
            ((b) aVar2).d(true);
        }
        return true;
    }

    public void setDelete(boolean z3) {
        this.f907a = z3;
    }

    public void setDeleteItemListener(a aVar) {
        this.f908b = aVar;
    }

    public AudioItemUpdateCell(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AudioItemUpdateCell(Context context, @Nullable AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
    }
}
