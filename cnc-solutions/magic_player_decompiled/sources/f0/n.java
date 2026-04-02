package f0;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import cn.huidu.lcd.core.entity.model.GetWeatherResult;
import cn.huidu.lcd.render.R$drawable;
import cn.huidu.lcd.render.R$id;
import cn.huidu.lcd.render.R$layout;
import cn.huidu.lcd.render.model.WeatherNode;
import cn.huidu.lcd.render.model.WidgetNode;
import com.google.android.material.datepicker.UtcDates;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public class n extends o {
    public TextView A;
    public TextView B;
    public TextView C;
    public TextView D;
    public TextView E;
    public boolean F;
    public int G;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public FrameLayout f1684r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public View f1685s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public TextView f1686t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public TextView f1687u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public ImageView f1688v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public TextView f1689w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public TextView f1690x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public TextView f1691y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public TextView f1692z;

    public n(a0.g gVar) {
        super(gVar);
    }

    @Override // d0.h
    public boolean H(WidgetNode widgetNode) {
        return (widgetNode instanceof WeatherNode) && ((WeatherNode) widgetNode).getStyle() != 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0010 A[Catch: Exception -> 0x0015, TRY_LEAVE, TryCatch #0 {Exception -> 0x0015, blocks: (B:5:0x0006, B:7:0x000c, B:8:0x0010), top: B:14:0x0006 }] */
    @Override // f0.o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void J(cn.huidu.lcd.core.entity.model.GetWeatherResult r2) {
        /*
            r1 = this;
            boolean r0 = r1.F
            if (r0 == 0) goto L19
            if (r2 == 0) goto L10
            boolean r0 = r2.isSuccess()     // Catch: java.lang.Exception -> L15
            if (r0 == 0) goto L10
            r1.K(r2)     // Catch: java.lang.Exception -> L15
            goto L19
        L10:
            r2 = 1
            r1.L(r2)     // Catch: java.lang.Exception -> L15
            goto L19
        L15:
            r2 = move-exception
            r2.printStackTrace()
        L19:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: f0.n.J(cn.huidu.lcd.core.entity.model.GetWeatherResult):void");
    }

    public final void K(GetWeatherResult getWeatherResult) {
        L(false);
        String cityName = getWeatherResult.getCityName();
        TextView textView = this.f1687u;
        if (textView != null && cityName != null && TextUtils.isEmpty(textView.getText())) {
            this.f1687u.setText(cityName);
        }
        TextView textView2 = this.f1689w;
        if (textView2 != null) {
            textView2.setText(getWeatherResult.getConditionStr());
        }
        if (this.f1688v != null) {
            int condition = getWeatherResult.getCondition();
            String timeZone = getWeatherResult.getTimeZone();
            String sunrise = getWeatherResult.getSunrise();
            String sunset = getWeatherResult.getSunset();
            Calendar calendar = Calendar.getInstance();
            if (TextUtils.isEmpty(timeZone)) {
                calendar.setTimeZone(TimeZone.getDefault());
            } else {
                calendar.setTimeInMillis(System.currentTimeMillis() + ((long) h.a.m0(timeZone)));
                calendar.setTimeZone(TimeZone.getTimeZone(UtcDates.UTC));
            }
            int i4 = (((calendar.get(11) * 60) + calendar.get(12)) * 60) + calendar.get(13);
            int iK0 = h.a.k0(sunrise);
            if (iK0 == 0) {
                iK0 = 21600;
            }
            int iK02 = h.a.k0(sunset);
            if (iK02 == 0) {
                iK02 = 64800;
            }
            boolean z3 = i4 > iK0 && i4 < iK02;
            int i5 = this.G;
            int i6 = condition == 100 ? i5 == 1 ? z3 ? R$drawable.sunny_day_small : R$drawable.sunny_night_small : i5 == 2 ? z3 ? R$drawable.sunny_day_middle : R$drawable.sunny_night_middle : z3 ? R$drawable.sunny_day_large : R$drawable.sunny_night_large : condition == 104 ? i5 == 1 ? R$drawable.overcast_small : i5 == 2 ? R$drawable.overcast_middle : R$drawable.overcast_large : (condition <= 100 || condition >= 200) ? (condition < 300 || condition >= 400) ? (condition < 400 || condition >= 500) ? (condition < 500 || condition >= 600) ? i5 == 1 ? z3 ? R$drawable.sunny_day_small : R$drawable.sunny_night_small : i5 == 2 ? z3 ? R$drawable.sunny_day_middle : R$drawable.sunny_night_middle : z3 ? R$drawable.sunny_day_large : R$drawable.sunny_night_large : i5 == 1 ? R$drawable.fog_sand_small : i5 == 2 ? R$drawable.fog_sand_middle : R$drawable.fog_sand_large : i5 == 1 ? R$drawable.snow_small : i5 == 2 ? R$drawable.snow_middle : R$drawable.snow_large : i5 == 1 ? R$drawable.rain_small : i5 == 2 ? R$drawable.rain_middle : R$drawable.rain_large : i5 == 1 ? z3 ? R$drawable.cloudy_day_small : R$drawable.cloudy_night_small : i5 == 2 ? z3 ? R$drawable.cloudy_day_middle : R$drawable.cloudy_night_middle : z3 ? R$drawable.cloudy_day_large : R$drawable.cloudy_night_large;
            if (i6 != 0) {
                this.f1688v.setImageResource(i6);
            }
        }
        if (this.f1690x != null) {
            this.f1690x.setText(((WeatherNode) this.f1487b).getTemperatureUnit() == 0 ? String.format(Locale.ENGLISH, "%.0f℃", Float.valueOf(getWeatherResult.getTemperature())) : String.format(Locale.ENGLISH, "%.0f℉", Float.valueOf((getWeatherResult.getTemperature() * 1.8f) + 32.0f)));
        }
        if (this.f1691y != null) {
            this.f1691y.setText(((WeatherNode) this.f1487b).getTemperatureUnit() == 0 ? String.format(Locale.ENGLISH, "%.0f/%.0f℃", Float.valueOf(getWeatherResult.getTmpMin()), Float.valueOf(getWeatherResult.getTmpMax())) : String.format(Locale.ENGLISH, "%.0f/%.0f℉", Float.valueOf((getWeatherResult.getTmpMin() * 1.8f) + 32.0f), Float.valueOf((getWeatherResult.getTmpMax() * 1.8f) + 32.0f)));
        }
        TextView textView3 = this.C;
        if (textView3 != null) {
            textView3.setText(String.format(Locale.ENGLISH, "%.0f%%", Float.valueOf(getWeatherResult.getHumidity())));
        }
        TextView textView4 = this.B;
        if (textView4 != null) {
            textView4.setText(getWeatherResult.getWindLevelStr());
        }
        if (this.A != null) {
            if (getWeatherResult.getWindLevel() == 0) {
                this.A.setVisibility(8);
            } else {
                this.A.setVisibility(0);
                this.A.setText(getWeatherResult.getWindDirectionStr());
            }
        }
        TextView textView5 = this.f1692z;
        if (textView5 != null) {
            textView5.setText(getWeatherResult.getAirQualityStr());
            int airQuality = getWeatherResult.getAirQuality();
            if (airQuality == 0) {
                this.f1692z.setTextColor(-13289387);
                this.f1692z.setBackgroundResource(R$drawable.shape_round_rect_01e300);
                return;
            }
            if (airQuality == 1) {
                this.f1692z.setTextColor(-13289387);
                this.f1692z.setBackgroundResource(R$drawable.shape_round_rect_d5d508);
                return;
            }
            if (airQuality == 2) {
                this.f1692z.setTextColor(-1);
                this.f1692z.setBackgroundResource(R$drawable.shape_round_rect_fda401);
                return;
            }
            if (airQuality == 3) {
                this.f1692z.setTextColor(-1);
                this.f1692z.setBackgroundResource(R$drawable.shape_round_rect_d30109);
            } else if (airQuality == 4) {
                this.f1692z.setTextColor(-1);
                this.f1692z.setBackgroundResource(R$drawable.shape_round_rect_810081);
            } else if (airQuality == 5) {
                this.f1692z.setTextColor(-1);
                this.f1692z.setBackgroundResource(R$drawable.shape_round_rect_7f0224);
            } else {
                this.f1692z.setTextColor(-1);
                this.f1692z.setBackgroundResource(R$drawable.shape_round_rect_353855);
            }
        }
    }

    public final void L(boolean z3) {
        View view = this.f1685s;
        if (view != null) {
            view.setVisibility(z3 ? 8 : 0);
        }
        TextView textView = this.f1686t;
        if (textView != null) {
            textView.setVisibility(z3 ? 0 : 8);
        }
    }

    @Override // d0.d
    public void n() {
        View viewInflate;
        int i4 = this.f1509m;
        int i5 = this.f1510n;
        this.F = true;
        this.f1684r.removeAllViews();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f1486a.f30a);
        if (i4 >= 450 && i5 >= 250) {
            this.G = 3;
            viewInflate = layoutInflaterFrom.inflate(R$layout.weather_large, (ViewGroup) this.f1684r, true);
        } else if (i4 < 200 || i5 < 100) {
            this.G = 1;
            viewInflate = layoutInflaterFrom.inflate(R$layout.weather_small, (ViewGroup) this.f1684r, true);
        } else {
            this.G = 2;
            viewInflate = layoutInflaterFrom.inflate(R$layout.weather_middle, (ViewGroup) this.f1684r, true);
        }
        this.f1685s = viewInflate.findViewById(R$id.weather_view);
        this.f1686t = (TextView) viewInflate.findViewById(R$id.tv_waiting_data);
        this.f1687u = (TextView) viewInflate.findViewById(R$id.tv_city_name);
        this.f1688v = (ImageView) viewInflate.findViewById(R$id.iv_condition);
        this.f1689w = (TextView) viewInflate.findViewById(R$id.tv_condition);
        this.f1690x = (TextView) viewInflate.findViewById(R$id.tv_temperature);
        this.f1692z = (TextView) viewInflate.findViewById(R$id.tv_air_quality);
        this.f1691y = (TextView) viewInflate.findViewById(R$id.tv_temperature_range);
        this.A = (TextView) viewInflate.findViewById(R$id.tv_wind_direction);
        this.B = (TextView) viewInflate.findViewById(R$id.tv_wind_speed);
        this.C = (TextView) viewInflate.findViewById(R$id.tv_humidity);
        this.D = (TextView) viewInflate.findViewById(R$id.tv_temperature_range_title);
        this.E = (TextView) viewInflate.findViewById(R$id.tv_humidity_title);
        if (this.f1687u != null) {
            String cityName = ((WeatherNode) this.f1487b).getCityName();
            TextView textView = this.f1687u;
            if (cityName == null) {
                cityName = "";
            }
            textView.setText(cityName);
        }
        TextView textView2 = this.f1686t;
        if (textView2 != null) {
            textView2.setText(((WeatherNode) this.f1487b).getStrWaitingData());
        }
        TextView textView3 = this.D;
        if (textView3 != null) {
            textView3.setText(((WeatherNode) this.f1487b).getStrTmpRange());
        }
        TextView textView4 = this.E;
        if (textView4 != null) {
            textView4.setText(((WeatherNode) this.f1487b).getStrHumidity());
        }
        View view = this.f1685s;
        if (view != null) {
            view.setVisibility(8);
        }
        J(this.f1693p);
    }

    @Override // d0.d
    public View p(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        this.f1684r = frameLayout;
        frameLayout.setBackgroundColor(-16579029);
        return this.f1684r;
    }
}
