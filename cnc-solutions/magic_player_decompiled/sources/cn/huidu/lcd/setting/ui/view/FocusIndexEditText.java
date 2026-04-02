package cn.huidu.lcd.setting.ui.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.Editable;
import android.text.Layout;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.widget.AppCompatEditText;

/* JADX INFO: loaded from: classes.dex */
public class FocusIndexEditText extends AppCompatEditText {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public View.OnClickListener f939a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f940b;

    public FocusIndexEditText(Context context) {
        super(context);
        a();
    }

    public final void a() {
        setBackground(null);
        setCursorVisible(false);
        Editable text = getText();
        if (text != null) {
            setSelection(text.length());
        }
    }

    public String getTextString() {
        Editable text = getText();
        return text != null ? text.toString() : "";
    }

    @Override // android.view.View
    public boolean isFocused() {
        return true;
    }

    @Override // android.widget.TextView, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        float x3 = motionEvent.getX();
        float y3 = motionEvent.getY();
        if (actionMasked != 0) {
            boolean z3 = false;
            if (actionMasked != 1) {
                if (actionMasked == 3) {
                    this.f940b = false;
                }
            } else if (this.f940b) {
                this.f940b = false;
                if (x3 > 0.0f && x3 < getWidth() && y3 > 0.0f && y3 < getHeight()) {
                    z3 = true;
                }
                if (z3) {
                    Layout layout = getLayout();
                    int scrollY = getScrollY();
                    int lineForVertical = layout.getLineForVertical((int) (scrollY + y3));
                    int offsetForHorizontal = layout.getOffsetForHorizontal(lineForVertical, x3);
                    Log.d("FocusIndexEditText", "setSelectionAtPoint: x: " + x3 + ", y: " + y3 + ", scrollY: " + scrollY + ", line: " + lineForVertical + ", offset: " + offsetForHorizontal);
                    Editable text = getText();
                    if (text != null && offsetForHorizontal >= 0 && offsetForHorizontal <= text.length()) {
                        setSelection(offsetForHorizontal);
                    }
                    View.OnClickListener onClickListener = this.f939a;
                    if (onClickListener != null) {
                        onClickListener.onClick(this);
                    }
                }
            }
        } else {
            this.f940b = true;
        }
        return true;
    }

    public void setCustomClickListener(View.OnClickListener onClickListener) {
        this.f939a = onClickListener;
    }

    public FocusIndexEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public FocusIndexEditText(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        a();
    }
}
