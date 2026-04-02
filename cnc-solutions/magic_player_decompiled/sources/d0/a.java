package d0;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import cn.huidu.lcd.render.model.AreaNode;
import cn.huidu.lcd.render.model.extra.ButtonNode;
import cn.huidu.lcd.render.model.extra.ContentChange;
import cn.huidu.lcd.render.model.extra.FontStyleNode;
import cn.huidu.lcd.render.model.extra.InteractionNode;
import cn.huidu.lcd.render.player.view.ContainerView;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class a extends d<AreaNode> implements View.OnClickListener {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ContainerView f1471d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Bitmap f1472e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public InterfaceC0016a f1473f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f1474g;

    /* JADX INFO: renamed from: d0.a$a, reason: collision with other inner class name */
    public interface InterfaceC0016a {
    }

    public a(a0.g gVar) {
        super(gVar);
    }

    @Override // d0.d
    public void m() {
        String backgroundImage = ((AreaNode) this.f1487b).getBackgroundImage();
        if (backgroundImage != null) {
            z.b.c(backgroundImage).a(new p.b(this));
        }
    }

    @Override // d0.d
    public void n() {
        if (((AreaNode) this.f1487b).isPercentUnit()) {
            this.f1471d.c(((AreaNode) this.f1487b).getX(), ((AreaNode) this.f1487b).getY(), ((AreaNode) this.f1487b).getWidth(), ((AreaNode) this.f1487b).getHeight());
        } else {
            this.f1471d.b(((AreaNode) this.f1487b).getX(), ((AreaNode) this.f1487b).getY(), ((AreaNode) this.f1487b).getWidth(), ((AreaNode) this.f1487b).getHeight());
        }
        if (((AreaNode) this.f1487b).getBackgroundImage() != null) {
            this.f1471d.setBgImage(this.f1472e);
        } else {
            this.f1471d.setBgColor(((AreaNode) this.f1487b).getBackgroundColor());
        }
        this.f1471d.setRotation(((AreaNode) this.f1487b).getRotation());
        this.f1471d.a(((AreaNode) this.f1487b).getStrokeWidth(), ((AreaNode) this.f1487b).getStrokeColor(), ((AreaNode) this.f1487b).getCornerRadius());
        ButtonNode button = ((AreaNode) this.f1487b).getButton();
        if (this.f1471d.getChildCount() > 0) {
            this.f1471d.removeAllViews();
        }
        if (button == null || button.getText() == null) {
            return;
        }
        TextView textView = new TextView(this.f1486a.f30a);
        textView.setGravity(17);
        textView.setText(button.getText());
        FontStyleNode fontStyle = button.getFontStyle();
        if (fontStyle != null) {
            String fontName = fontStyle.getFontName();
            if (fontName != null) {
                textView.setTypeface(w0.g.b().c(fontName));
            }
            textView.setTextSize(fontStyle.getFontSize());
            textView.setTextColor(fontStyle.getColor());
        }
        this.f1471d.addView(textView);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        boolean z3;
        InterfaceC0016a interfaceC0016a;
        b next;
        int i4;
        ButtonNode button;
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f1474g;
        int i5 = 0;
        if (jElapsedRealtime <= 0 || jElapsedRealtime >= 500) {
            this.f1474g = SystemClock.elapsedRealtime();
            z3 = false;
        } else {
            z3 = true;
        }
        if (z3) {
            return;
        }
        T t3 = this.f1487b;
        InteractionNode onClick = (t3 == 0 || ((AreaNode) t3).getButton() == null || (button = ((AreaNode) this.f1487b).getButton()) == null) ? null : button.getOnClick();
        if (onClick == null || (interfaceC0016a = this.f1473f) == null) {
            return;
        }
        g gVar = (g) interfaceC0016a;
        if (gVar.f1508s == null) {
            return;
        }
        int i6 = -1;
        if (onClick.getChangeProgram() != null) {
            b0.c cVar = gVar.f1508s;
            String changeProgram = onClick.getChangeProgram();
            b0.d dVar = (b0.d) cVar;
            Objects.requireNonNull(dVar);
            if (TextUtils.isEmpty(changeProgram)) {
                return;
            }
            if ("next".equalsIgnoreCase(changeProgram)) {
                dVar.o(1);
                return;
            }
            if ("prev".equalsIgnoreCase(changeProgram)) {
                dVar.o(-1);
                return;
            }
            if ("home".equalsIgnoreCase(changeProgram)) {
                dVar.q(dVar.f171g);
                return;
            }
            if (changeProgram.startsWith("#")) {
                try {
                    i6 = (-1) + Integer.parseInt(changeProgram.substring(1));
                } catch (Exception unused) {
                }
                if (i6 >= 0) {
                    dVar.q(i6);
                    return;
                }
                h0.h.d("InteractivePC", "onSwitchProgram: illegal index: " + changeProgram);
                return;
            }
            while (true) {
                if (i5 >= dVar.f166c.childCount()) {
                    i5 = -1;
                    break;
                } else if (changeProgram.equals(dVar.f166c.getChild(i5).getUuid())) {
                    break;
                } else {
                    i5++;
                }
            }
            if (i5 != -1) {
                dVar.q(i5);
                return;
            }
            h0.h.d("InteractivePC", "onSwitchProgram: illegal uuid: " + changeProgram);
            return;
        }
        if (onClick.getChangeItems() != null) {
            for (ContentChange contentChange : onClick.getChangeItems()) {
                String area = contentChange.getArea();
                if (area != null) {
                    Iterator<b> it = gVar.f1504o.iterator();
                    while (it.hasNext()) {
                        next = it.next();
                        if (area.equals(((AreaNode) next.f1487b).getUuid())) {
                            break;
                        }
                    }
                    next = null;
                } else {
                    next = null;
                }
                if (next != null) {
                    String position = contentChange.getPosition();
                    String url = contentChange.getUrl();
                    if (!TextUtils.isEmpty(url)) {
                        h hVar = next.f1480r;
                        if (hVar instanceof f0.f) {
                            ((f0.f) hVar).I(url);
                        } else if (hVar instanceof f0.h) {
                            f0.h hVar2 = (f0.h) hVar;
                            hVar2.I(true);
                            hVar2.f1655q.g(url);
                            hVar2.f1655q.h();
                        } else {
                            h0.h.d("AreaPlayer", "switchContent: url not supported: " + url);
                        }
                    } else if (TextUtils.isEmpty(position)) {
                        h0.h.d("AreaPlayer", "switchContent: illegal params!");
                    } else if ("next".equalsIgnoreCase(position)) {
                        next.J(1);
                    } else if ("prev".equalsIgnoreCase(position)) {
                        next.J(-1);
                    } else if (position.startsWith("#")) {
                        try {
                            i4 = Integer.parseInt(position.substring(1)) - 1;
                        } catch (Exception unused2) {
                            i4 = -1;
                        }
                        if (i4 < 0 || i4 >= ((AreaNode) next.f1487b).childCount()) {
                            h0.h.d("AreaPlayer", "switchContent: illegal position: " + position);
                        } else {
                            next.M(i4, 0);
                        }
                    } else {
                        int i7 = 0;
                        while (true) {
                            if (i7 >= ((AreaNode) next.f1487b).childCount()) {
                                i7 = -1;
                                break;
                            } else if (position.equals(((AreaNode) next.f1487b).getChild(i7).getUuid())) {
                                break;
                            } else {
                                i7++;
                            }
                        }
                        if (i7 != -1) {
                            next.M(i7, 0);
                        } else {
                            h0.h.d("AreaPlayer", "switchContent: illegal uuid: " + position);
                        }
                    }
                }
            }
        }
    }

    @Override // d0.d
    public View p(Context context) {
        ContainerView containerView = new ContainerView(context);
        this.f1471d = containerView;
        containerView.setOnClickListener(this);
        return this.f1471d;
    }
}
