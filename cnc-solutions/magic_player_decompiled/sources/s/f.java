package s;

import android.text.format.DateFormat;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import cn.huidu.lcd.core.entity.model.GetWeatherResult;
import java.io.ByteArrayInputStream;
import java.util.Date;
import javax.xml.parsers.DocumentBuilderFactory;
import k2.x;
import org.eclipse.jetty.http.HttpMethods;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    public interface a {
    }

    public static x a(String str, String str2) {
        String strA = str2 != null ? android.support.v4.media.h.a("http://data.huidu.cn/Rich/Weather/GetWeatherResult", "?lang=", str2) : "http://data.huidu.cn/Rich/Weather/GetWeatherResult";
        String string = DateFormat.format("yyyyMMddHHmmss", new Date()).toString();
        String strG = w0.h.g((string + "|" + str + "|HuiduKey-MANUDIUH@)>ITVEGL").getBytes());
        Log.d("GetWeatherHelper", "createRequest: " + str + ", " + str2 + ", " + strG + ", " + string);
        x.a aVar = new x.a();
        aVar.e(strA);
        aVar.a("CityCode", str);
        aVar.a("AuthKey", strG);
        aVar.a("Time", string);
        aVar.d(HttpMethods.GET, null);
        return aVar.b();
    }

    public static GetWeatherResult b(String str) {
        Document document;
        GetWeatherResult getWeatherResult = new GetWeatherResult(0);
        try {
            document = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new ByteArrayInputStream(str.getBytes()));
        } catch (Exception e4) {
            StringBuilder sbA = android.support.v4.media.f.a("load xml failed: ");
            sbA.append(e4.getMessage());
            Log.w("XmlDomUtils", sbA.toString());
            document = null;
        }
        if (document != null) {
            Element documentElement = document.getDocumentElement();
            getWeatherResult.setStatus(q0.a.l(documentElement, NotificationCompat.CATEGORY_STATUS));
            getWeatherResult.setCityCode(documentElement.getAttribute("areaid"));
            Element elementH = q0.a.h(documentElement, "datetime");
            if (elementH != null) {
                getWeatherResult.setUpdateLoc(elementH.getAttribute("loc"));
                getWeatherResult.setUpdateUtc(elementH.getAttribute("utc"));
                getWeatherResult.setTimeZone(elementH.getAttribute("tz"));
            }
            Element elementH2 = q0.a.h(documentElement, "weather");
            if (elementH2 != null) {
                getWeatherResult.setCondition(q0.a.l(elementH2, "cond"));
                getWeatherResult.setConditionStr(elementH2.getAttribute(NotificationCompat.MessagingStyle.Message.KEY_TEXT));
            }
            Element elementH3 = q0.a.h(documentElement, "temp");
            if (elementH3 != null) {
                getWeatherResult.setTemperature(q0.a.l(elementH3, "value"));
                getWeatherResult.setTmpMax(q0.a.l(elementH3, "max"));
                getWeatherResult.setTmpMin(q0.a.l(elementH3, "min"));
                getWeatherResult.setTemperatureStr(elementH3.getAttribute(NotificationCompat.MessagingStyle.Message.KEY_TEXT));
            }
            Element elementH4 = q0.a.h(documentElement, "speed");
            if (elementH4 != null) {
                getWeatherResult.setWindLevel(q0.a.l(elementH4, "spd"));
                getWeatherResult.setWindLevelStr(elementH4.getAttribute(NotificationCompat.MessagingStyle.Message.KEY_TEXT));
            }
            Element elementH5 = q0.a.h(documentElement, "dir");
            if (elementH5 != null) {
                getWeatherResult.setWindDirection(q0.a.l(elementH5, "code"));
                getWeatherResult.setWindDirectionStr(elementH5.getAttribute(NotificationCompat.MessagingStyle.Message.KEY_TEXT));
            }
            Element elementH6 = q0.a.h(documentElement, "humidity");
            if (elementH6 != null) {
                getWeatherResult.setHumidity(q0.a.l(elementH6, "value"));
                getWeatherResult.setHumidityStr(elementH6.getAttribute(NotificationCompat.MessagingStyle.Message.KEY_TEXT));
            }
            Element elementH7 = q0.a.h(documentElement, "air");
            if (elementH7 != null) {
                getWeatherResult.setAirQuality(q0.a.l(elementH7, "quality"));
                getWeatherResult.setAqi(q0.a.l(elementH7, "aqi"));
                getWeatherResult.setPM2_5(q0.a.l(elementH7, "pm25"));
                getWeatherResult.setAirQualityStr(elementH7.getAttribute(NotificationCompat.MessagingStyle.Message.KEY_TEXT));
            }
        }
        return getWeatherResult;
    }
}
