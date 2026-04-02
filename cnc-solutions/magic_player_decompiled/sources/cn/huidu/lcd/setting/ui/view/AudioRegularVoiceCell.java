package cn.huidu.lcd.setting.ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import cn.huidu.lcd.setting.ui.adapter.AudioListItemAdapter;

/* JADX INFO: loaded from: classes.dex */
public class AudioRegularVoiceCell extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f911a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public a f912b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f913c;

    public interface a {
    }

    public AudioRegularVoiceCell(Context context) {
        super(context);
        this.f913c = 0;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i4, KeyEvent keyEvent) {
        if (i4 == 21) {
            a aVar = this.f912b;
            if (aVar != null) {
                ((cn.huidu.lcd.setting.ui.adapter.a) aVar).a(true, true);
                int i5 = this.f911a;
                int iV0 = i5 - h.a.v0(i5, this.f913c);
                int i6 = iV0 > 0 ? iV0 : 0;
                if (this.f911a != i6) {
                    this.f911a = i6;
                    AudioListItemAdapter.a aVar2 = ((cn.huidu.lcd.setting.ui.adapter.a) this.f912b).f813a;
                    AudioListItemAdapter audioListItemAdapter = AudioListItemAdapter.this;
                    int i7 = audioListItemAdapter.f701f;
                    if (i6 < i7) {
                        i6 = i7;
                    }
                    int i8 = audioListItemAdapter.f702g;
                    if (i6 > i8) {
                        i6 = i8;
                    }
                    aVar2.a(i6);
                }
            }
            return true;
        }
        if (i4 != 22) {
            return super.onKeyDown(i4, keyEvent);
        }
        a aVar3 = this.f912b;
        if (aVar3 != null) {
            ((cn.huidu.lcd.setting.ui.adapter.a) aVar3).a(false, true);
            int i9 = this.f911a;
            int iU0 = h.a.u0(i9, this.f913c) + i9;
            if (iU0 >= 100) {
                iU0 = 100;
            }
            if (this.f911a != iU0) {
                this.f911a = iU0;
                AudioListItemAdapter.a aVar4 = ((cn.huidu.lcd.setting.ui.adapter.a) this.f912b).f813a;
                AudioListItemAdapter audioListItemAdapter2 = AudioListItemAdapter.this;
                int i10 = audioListItemAdapter2.f701f;
                if (iU0 < i10) {
                    iU0 = i10;
                }
                int i11 = audioListItemAdapter2.f702g;
                if (iU0 > i11) {
                    iU0 = i11;
                }
                aVar4.a(iU0);
            }
        }
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i4, KeyEvent keyEvent) {
        if (i4 != 21 && i4 != 22) {
            return super.onKeyUp(i4, keyEvent);
        }
        ((cn.huidu.lcd.setting.ui.adapter.a) this.f912b).a(i4 == 21, false);
        return true;
    }

    public void setDefaultValue(int i4) {
        this.f911a = i4;
    }

    public void setDefaultValueChangeListener(a aVar) {
        this.f912b = aVar;
    }

    public void setStepping(int i4) {
        this.f913c = i4;
    }

    public AudioRegularVoiceCell(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f913c = 0;
    }

    public AudioRegularVoiceCell(Context context, @Nullable AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f913c = 0;
    }
}
