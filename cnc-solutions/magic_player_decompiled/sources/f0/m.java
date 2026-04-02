package f0;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.view.View;
import androidx.core.internal.view.SupportMenu;
import cn.huidu.lcd.core.entity.model.GetWeatherResult;
import cn.huidu.lcd.render.model.WeatherNode;
import cn.huidu.lcd.render.model.WidgetNode;
import cn.huidu.lcd.render.model.extra.FontStyleNode;
import cn.huidu.lcd.render.player.view.DrawableView;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class m extends o implements g0.a {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final e0.l f1683r;

    public m(a0.g gVar) {
        super(gVar);
        this.f1683r = new e0.l();
    }

    @Override // d0.e
    public void C() {
        super.C();
        u();
    }

    @Override // f0.o, d0.e
    public void E(int i4) {
        super.E(i4);
        u();
    }

    @Override // d0.h
    public boolean H(WidgetNode widgetNode) {
        return (widgetNode instanceof WeatherNode) && ((WeatherNode) widgetNode).getStyle() == 0;
    }

    @Override // f0.o
    public void J(GetWeatherResult getWeatherResult) {
        String string;
        e0.l lVar = this.f1683r;
        Objects.requireNonNull(lVar);
        if (getWeatherResult.isSuccess()) {
            List<String> showItems = lVar.f1610b.getShowItems();
            if (showItems == null || showItems.isEmpty()) {
                string = "";
            } else {
                StringBuilder sb = new StringBuilder();
                CharSequence conditionStr = null;
                for (String str : showItems) {
                    if (str != null) {
                        switch (str) {
                            case "condition":
                            case "cond":
                                conditionStr = getWeatherResult.getConditionStr();
                                break;
                            case "aqi":
                            case "airQuality":
                                conditionStr = lVar.f1610b.getStrAirQuality() + ": " + ((int) getWeatherResult.getAqi()) + " " + getWeatherResult.getAirQualityStr();
                                break;
                            case "hum":
                            case "humidity":
                                conditionStr = lVar.f1610b.getStrHumidity() + " " + ((int) getWeatherResult.getHumidity()) + "%";
                                break;
                            case "city":
                                conditionStr = lVar.f1610b.getCityName();
                                if (TextUtils.isEmpty(conditionStr)) {
                                    conditionStr = getWeatherResult.getCityName();
                                    break;
                                }
                                break;
                            case "date":
                                conditionStr = DateFormat.format("yyyy/MM/dd", new Date());
                                break;
                            case "wind":
                                conditionStr = getWeatherResult.getWindDirectionStr() + " " + getWeatherResult.getWindLevelStr();
                                break;
                            case "temperature":
                            case "tmpRange":
                                float tmpMax = getWeatherResult.getTmpMax();
                                float tmpMin = getWeatherResult.getTmpMin();
                                if (lVar.f1610b.getTemperatureUnit() == 1) {
                                    conditionStr = String.format(Locale.ENGLISH, "%.0f℉~%.0f℉", Float.valueOf((tmpMin * 1.8f) + 32.0f), Float.valueOf((tmpMax * 1.8f) + 32.0f));
                                    break;
                                } else {
                                    conditionStr = String.format(Locale.ENGLISH, "%.0f℃~%.0f℃", Float.valueOf(tmpMin), Float.valueOf(tmpMax));
                                    break;
                                }
                                break;
                        }
                        if (conditionStr != null && conditionStr.length() > 0) {
                            if (sb.length() > 0) {
                                if (lVar.f1610b.isMultiLine()) {
                                    sb.append("\n");
                                } else {
                                    sb.append(", ");
                                }
                            }
                            sb.append(conditionStr);
                        }
                    }
                }
                string = sb.toString();
            }
            lVar.a(string);
        } else {
            lVar.a(lVar.f1610b.getStrWaitingData());
        }
        u();
    }

    @Override // f0.o, d0.e, d0.c
    public void a() {
        super.a();
        u();
    }

    @Override // g0.a
    public void f(Canvas canvas) {
        this.f1683r.draw(canvas);
        if (this.f1683r.f1613e && w()) {
            u();
        }
    }

    @Override // f0.o, d0.d
    public void m() {
        Typeface typefaceC;
        e0.l lVar = this.f1683r;
        WeatherNode weatherNode = (WeatherNode) this.f1487b;
        lVar.f1610b = weatherNode;
        TextPaint textPaint = lVar.f1609a;
        FontStyleNode fontStyle = weatherNode.getFontStyle();
        if (fontStyle != null) {
            if (fontStyle.getFontName() != null && (typefaceC = w0.g.b().c(fontStyle.getFontName())) != null) {
                textPaint.setTypeface(typefaceC);
            }
            textPaint.setTextSize(fontStyle.getFontSize());
            textPaint.setColor(fontStyle.getColor());
            textPaint.setUnderlineText(fontStyle.isUnderline());
            textPaint.setFakeBoldText(fontStyle.isBold());
            textPaint.setTextSkewX(fontStyle.isItalic() ? -0.25f : 0.0f);
        } else {
            textPaint.setTextSize(16.0f);
            textPaint.setColor(SupportMenu.CATEGORY_MASK);
        }
        lVar.a(weatherNode.getStrWaitingData());
    }

    @Override // d0.d
    public View p(Context context) {
        DrawableView drawableView = new DrawableView(context);
        drawableView.setOnDrawListener(this);
        return drawableView;
    }
}
