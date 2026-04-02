package cn.huidu.lcd.setting.ui.view;

import android.content.Context;
import android.text.Editable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.appcompat.widget.AppCompatEditText;

/* JADX INFO: loaded from: classes.dex */
public class FocusEditText extends AppCompatEditText {
    public FocusEditText(Context context) {
        super(context);
        a();
    }

    public final void a() {
        setClickable(false);
        setLongClickable(false);
        Editable text = getText();
        if (text != null) {
            setSelection(text.length());
        }
        setBackground(null);
        setCursorVisible(false);
    }

    @Override // android.view.View
    public boolean isFocused() {
        return true;
    }

    @Override // android.widget.TextView
    public void onSelectionChanged(int i4, int i5) {
        Editable text;
        super.onSelectionChanged(i4, i5);
        if (i4 != i5 || (text = getText()) == null) {
            return;
        }
        setSelection(text.length());
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent) && isClickable();
    }

    public FocusEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public FocusEditText(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        a();
    }
}
