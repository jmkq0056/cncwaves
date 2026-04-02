package cn.huidu.lcd.setting.ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import cn.huidu.lcd.setting.R$string;
import cn.huidu.lcd.setting.ui.adapter.AudioListItemAdapter;
import cn.huidu.lcd.setting.ui.adapter.b;

/* JADX INFO: loaded from: classes.dex */
public class AudioModelCellLayout extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public a f909a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f910b;

    public interface a {
    }

    public AudioModelCellLayout(Context context) {
        super(context);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i4, KeyEvent keyEvent) {
        a aVar;
        Context context;
        int i5;
        if ((i4 != 21 && i4 != 22) || (aVar = this.f909a) == null) {
            return super.onKeyDown(i4, keyEvent);
        }
        ((b) aVar).a(i4 == 21, true);
        boolean z3 = !this.f910b;
        this.f910b = z3;
        b bVar = (b) this.f909a;
        AudioListItemAdapter.c cVar = bVar.f814a;
        TextView textView = cVar.f719e;
        AudioListItemAdapter audioListItemAdapter = AudioListItemAdapter.this;
        if (z3) {
            context = audioListItemAdapter.f696a;
            i5 = R$string.default_type;
        } else {
            context = audioListItemAdapter.f696a;
            i5 = R$string.customize;
        }
        textView.setText(context.getString(i5));
        AudioListItemAdapter.e eVar = AudioListItemAdapter.this.f698c;
        if (eVar != null) {
            eVar.g(z3);
        }
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i4, KeyEvent keyEvent) {
        if (i4 != 21 && i4 != 22) {
            return super.onKeyUp(i4, keyEvent);
        }
        ((b) this.f909a).a(i4 == 21, false);
        return true;
    }

    public void setCurrentMode(boolean z3) {
        this.f910b = z3;
    }

    public void setModeKeyEventListener(a aVar) {
        this.f909a = aVar;
    }

    public AudioModelCellLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AudioModelCellLayout(Context context, @Nullable AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
    }
}
