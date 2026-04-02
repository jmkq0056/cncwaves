package cn.huidu.lcd.setting.keyboard;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Point;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
import cn.huidu.lcd.setting.R$id;
import cn.huidu.lcd.setting.R$layout;
import cn.huidu.lcd.setting.R$xml;
import cn.huidu.lcd.setting.keyboard.SoftKeyboardView;
import i0.e;
import i0.f;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SkbContainer extends RelativeLayout {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ int f519g = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public SoftKeyboardView f520a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f521b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f522c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Context f523d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public e f524e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @SuppressLint({"HandlerLeak"})
    public Handler f525f;

    public class a extends Handler {
        public a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            cn.huidu.lcd.setting.keyboard.a aVar = (cn.huidu.lcd.setting.keyboard.a) message.obj;
            if (aVar != null) {
                SkbContainer skbContainer = SkbContainer.this;
                int i4 = SkbContainer.f519g;
                skbContainer.d(aVar);
                Message messageObtainMessage = SkbContainer.this.f525f.obtainMessage();
                messageObtainMessage.obj = aVar;
                SkbContainer.this.f525f.sendMessageDelayed(messageObtainMessage, 200L);
            }
        }
    }

    public SkbContainer(Context context) {
        super(context);
        this.f522c = false;
        this.f525f = new a();
        a(context);
    }

    public final void a(Context context) {
        this.f523d = context;
        View.inflate(context, R$layout.softkey_layout_view, this);
        this.f520a = (SoftKeyboardView) findViewById(R$id.softKeyboardView);
    }

    public final void b(cn.huidu.lcd.setting.keyboard.a aVar) {
        cn.huidu.lcd.setting.keyboard.a aVar2;
        if (this.f524e != null) {
            SoftKeyboardView softKeyboardView = this.f520a;
            String str = aVar.f540c;
            f fVar = softKeyboardView.f530c;
            int iE = fVar.e();
            int i4 = 0;
            loop0: while (true) {
                if (i4 >= iE) {
                    aVar2 = null;
                    break;
                }
                List<cn.huidu.lcd.setting.keyboard.a> list = fVar.f1890a.get(i4).f1883a;
                for (int i5 = 0; i5 < list.size(); i5++) {
                    aVar2 = list.get(i5);
                    if (str.equals(aVar2.f540c)) {
                        fVar.f1894e = i4;
                        fVar.f1895f = i5;
                        break loop0;
                    }
                }
                i4++;
            }
            if (aVar2 != null) {
                this.f520a.getSoftKeyboard().f(aVar2);
                this.f520a.setSoftKeyPress(true);
            }
            this.f524e.b(aVar);
        }
    }

    public void c(int i4, int i5) {
        f softKeyboard;
        List<i0.a> list;
        SoftKeyboardView softKeyboardView = this.f520a;
        if (softKeyboardView == null || (softKeyboard = softKeyboardView.getSoftKeyboard()) == null || (list = softKeyboard.f1890a) == null) {
            return;
        }
        int iMax = Math.max(Math.min(i4, list.size() - 1), 0);
        if (softKeyboard.f1890a.get(iMax).f1883a == null) {
            return;
        }
        List<cn.huidu.lcd.setting.keyboard.a> list2 = softKeyboard.f1890a.get(iMax).f1883a;
        int iMax2 = Math.max(Math.min(i5, list2.size() - 1), 0);
        cn.huidu.lcd.setting.keyboard.a aVar = list2.get(iMax2);
        if (aVar != null) {
            softKeyboard.f1894e = iMax;
            softKeyboard.f1895f = iMax2;
            softKeyboard.f(aVar);
        }
    }

    public final boolean d(cn.huidu.lcd.setting.keyboard.a aVar) {
        if (aVar == null) {
            return false;
        }
        Point pointB = w0.a.b(this.f523d);
        e eVar = this.f524e;
        if (eVar == null) {
            return true;
        }
        int i4 = aVar.f541d;
        if (i4 == 250) {
            if (w0.a.d(this.f523d)) {
                int i5 = pointB.y;
                if (i5 < 360) {
                    setSkbLayout(R$xml.hd_number_symbol_250);
                    return true;
                }
                if (i5 < 360 || i5 >= 800) {
                    setSkbLayout(R$xml.hd_number_symbol);
                    return true;
                }
                setSkbLayout(R$xml.hd_number_symbol_barscreen);
                return true;
            }
            int i6 = pointB.x;
            if (i6 < 360) {
                setSkbLayout(R$xml.hd_number_symbol_barscreen);
                return true;
            }
            if (i6 < 360 || i6 >= 720) {
                setSkbLayout(R$xml.hd_number_symbol);
                return true;
            }
            setSkbLayout(R$xml.hd_number_symbol_barscreen);
            return true;
        }
        if (i4 == 280) {
            if (w0.a.d(this.f523d)) {
                int i7 = pointB.y;
                if (i7 < 360) {
                    setSkbLayout(R$xml.hd_qwerty_barscreen_250);
                    return true;
                }
                if (i7 < 360 || i7 >= 800) {
                    setSkbLayout(R$xml.hd_qwerty_lowcase);
                    return true;
                }
                setSkbLayout(R$xml.hd_qwerty_barscreen_lower);
                return true;
            }
            int i8 = pointB.x;
            if (i8 < 360) {
                setSkbLayout(R$xml.hd_qwerty_barscreen_lower);
                return true;
            }
            if (i8 < 360 || i8 >= 720) {
                setSkbLayout(R$xml.hd_qwerty_lowcase);
                return true;
            }
            setSkbLayout(R$xml.hd_qwerty_barscreen_lower);
            return true;
        }
        if (i4 == 300) {
            if (w0.a.d(this.f523d)) {
                int i9 = pointB.y;
                if (i9 < 360) {
                    setSkbLayout(R$xml.hd_qwerty_barscreen_capital_250);
                    return true;
                }
                if (i9 < 360 || i9 >= 800) {
                    setSkbLayout(R$xml.hd_qwerty);
                    return true;
                }
                setSkbLayout(R$xml.hd_qwerty_barscreen_capital);
                return true;
            }
            int i10 = pointB.x;
            if (i10 < 360) {
                setSkbLayout(R$xml.hd_qwerty_barscreen_capital);
                return true;
            }
            if (i10 < 360 || i10 >= 720) {
                setSkbLayout(R$xml.hd_qwerty);
                return true;
            }
            setSkbLayout(R$xml.hd_qwerty_barscreen_capital);
            return true;
        }
        if (i4 != 400) {
            eVar.a(aVar);
            return true;
        }
        if (w0.a.d(this.f523d)) {
            int i11 = pointB.y;
            if (i11 < 360) {
                setSkbLayout(R$xml.hd_qwerty_barscreen_250);
                return true;
            }
            if (i11 < 360 || i11 >= 800) {
                setSkbLayout(R$xml.hd_qwerty_lowcase);
                return true;
            }
            setSkbLayout(R$xml.hd_qwerty_barscreen_lower);
            return true;
        }
        int i12 = pointB.x;
        if (i12 < 360) {
            setSkbLayout(R$xml.hd_qwerty_barscreen_lower);
            return true;
        }
        if (i12 < 360 || i12 >= 720) {
            setSkbLayout(R$xml.hd_qwerty_lowcase);
            return true;
        }
        setSkbLayout(R$xml.hd_qwerty_barscreen_lower);
        return true;
    }

    public boolean e(cn.huidu.lcd.setting.keyboard.a aVar) {
        f softKeyboard;
        SoftKeyboardView softKeyboardView = this.f520a;
        if (softKeyboardView == null || (softKeyboard = softKeyboardView.getSoftKeyboard()) == null) {
            return false;
        }
        boolean zF = softKeyboard.f(aVar);
        this.f520a.invalidate();
        return zF;
    }

    public cn.huidu.lcd.setting.keyboard.a getSelectKey() {
        f softKeyboard = this.f520a.getSoftKeyboard();
        if (softKeyboard != null) {
            return softKeyboard.f1893d;
        }
        return null;
    }

    public int getSkbLayoutId() {
        return this.f521b;
    }

    public SoftKeyboardView getSoftKeyboardView() {
        return this.f520a;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int x3 = (int) motionEvent.getX();
        int y3 = (int) motionEvent.getY();
        cn.huidu.lcd.setting.keyboard.a aVar = null;
        if (action == 0) {
            f fVar = this.f520a.f530c;
            int iE = fVar.e();
            int i4 = 0;
            loop0: while (true) {
                if (i4 >= iE) {
                    break;
                }
                List<cn.huidu.lcd.setting.keyboard.a> list = fVar.f1890a.get(i4).f1883a;
                for (int i5 = 0; i5 < list.size(); i5++) {
                    cn.huidu.lcd.setting.keyboard.a aVar2 = list.get(i5);
                    if (aVar2.b().contains(x3, y3)) {
                        fVar.f1894e = i4;
                        fVar.f1895f = i5;
                        aVar = aVar2;
                        break loop0;
                    }
                }
                i4++;
            }
            if (aVar != null) {
                this.f520a.getSoftKeyboard().f(aVar);
                this.f520a.setSoftKeyPress(true);
                d(aVar);
                if (cn.huidu.lcd.core.a.f337c == 102) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    while (true) {
                        if (this.f522c) {
                            break;
                        }
                        if (System.currentTimeMillis() > jCurrentTimeMillis + 200) {
                            this.f522c = true;
                            break;
                        }
                    }
                    if (this.f522c) {
                        Message messageObtainMessage = this.f525f.obtainMessage();
                        messageObtainMessage.obj = aVar;
                        this.f525f.sendMessageDelayed(messageObtainMessage, 200L);
                    }
                } else {
                    Message messageObtainMessage2 = this.f525f.obtainMessage();
                    messageObtainMessage2.obj = aVar;
                    this.f525f.sendMessageDelayed(messageObtainMessage2, 200L);
                }
            }
        } else if (action == 1) {
            this.f522c = false;
            this.f525f.removeCallbacksAndMessages(null);
            this.f520a.setSoftKeyPress(false);
        }
        return true;
    }

    public void setKeyScale(float f4) {
        this.f520a.setKeyScale(f4);
    }

    public void setMoveDuration(int i4) {
        this.f520a.setMoveDuration(i4);
    }

    public void setMoveSoftKey(boolean z3) {
        this.f520a.setMoveSoftKey(z3);
    }

    public void setNineNumKeyDone(boolean z3) {
        this.f520a.setShowNineNumDoneKey(z3);
    }

    public void setOnKeyBoardAnimListener(SoftKeyboardView.a aVar) {
        this.f520a.setOnKeyBoardAnimListener(aVar);
    }

    public void setOnSoftKeyBoardListener(e eVar) {
        this.f524e = eVar;
    }

    public void setSelectSofkKeyFront(boolean z3) {
        this.f520a.setSelectSofkKeyFront(z3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0101, code lost:
    
        r6.close();
        r13 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0145, code lost:
    
        android.util.Log.e("XmlKeyboardLoader", "loadKeyboard: XML_TAG_KEYS splitter or labels null");
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:111:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0216  */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v3, types: [android.graphics.drawable.Drawable, java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setSkbLayout(int r18) {
        /*
            Method dump skipped, instruction units count: 550
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.huidu.lcd.setting.keyboard.SkbContainer.setSkbLayout(int):void");
    }

    public void setSoftKeySelectPadding(int i4) {
        this.f520a.setSoftKeySelectPadding(i4);
    }

    public void setSoftKeyboard(f fVar) {
        SoftKeyboardView softKeyboardView = (SoftKeyboardView) findViewById(R$id.softKeyboardView);
        this.f520a = softKeyboardView;
        softKeyboardView.setSoftKeyboard(fVar);
    }

    public void setSoftKeySelectPadding(RectF rectF) {
        this.f520a.setSoftKeySelectPadding(rectF);
    }

    public SkbContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f522c = false;
        this.f525f = new a();
        a(context);
    }

    public SkbContainer(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f522c = false;
        this.f525f = new a();
        a(context);
    }
}
