package v0;

import android.graphics.Point;
import android.graphics.RectF;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import cn.huidu.lcd.render.model.AreaNode;
import cn.huidu.lcd.render.model.ClockNode;
import cn.huidu.lcd.render.model.EWatchNode;
import cn.huidu.lcd.render.model.EffectNode;
import cn.huidu.lcd.render.model.HdmiInNode;
import cn.huidu.lcd.render.model.HtmlNode;
import cn.huidu.lcd.render.model.ImageNode;
import cn.huidu.lcd.render.model.LiveStreamNode;
import cn.huidu.lcd.render.model.NodeTags;
import cn.huidu.lcd.render.model.OfficeNode;
import cn.huidu.lcd.render.model.PlayTaskNode;
import cn.huidu.lcd.render.model.ProgramNode;
import cn.huidu.lcd.render.model.QrCodeNode;
import cn.huidu.lcd.render.model.ScreenNode;
import cn.huidu.lcd.render.model.TextNode;
import cn.huidu.lcd.render.model.TimerNode;
import cn.huidu.lcd.render.model.VideoNode;
import cn.huidu.lcd.render.model.WeatherNode;
import cn.huidu.lcd.render.model.WidgetNode;
import cn.huidu.lcd.render.model.extra.AnimationNode;
import cn.huidu.lcd.render.model.extra.ButtonNode;
import cn.huidu.lcd.render.model.extra.ContentChange;
import cn.huidu.lcd.render.model.extra.DateRange;
import cn.huidu.lcd.render.model.extra.FontStyleNode;
import cn.huidu.lcd.render.model.extra.InteractionNode;
import cn.huidu.lcd.render.model.extra.TimeRange;
import cn.huidu.lcd.render.model.extra.WeekRange;
import cn.huidu.lcd.transmit.model.playtask.AnimationInfo;
import cn.huidu.lcd.transmit.model.playtask.Area;
import cn.huidu.lcd.transmit.model.playtask.BGMusic;
import cn.huidu.lcd.transmit.model.playtask.Border;
import cn.huidu.lcd.transmit.model.playtask.ButtonAttrs;
import cn.huidu.lcd.transmit.model.playtask.Clock;
import cn.huidu.lcd.transmit.model.playtask.ClockFormat;
import cn.huidu.lcd.transmit.model.playtask.EWatch;
import cn.huidu.lcd.transmit.model.playtask.Effect;
import cn.huidu.lcd.transmit.model.playtask.FontStyle;
import cn.huidu.lcd.transmit.model.playtask.HRectF;
import cn.huidu.lcd.transmit.model.playtask.HdmiIn;
import cn.huidu.lcd.transmit.model.playtask.Html;
import cn.huidu.lcd.transmit.model.playtask.Image;
import cn.huidu.lcd.transmit.model.playtask.Interaction;
import cn.huidu.lcd.transmit.model.playtask.LiveStream;
import cn.huidu.lcd.transmit.model.playtask.Office;
import cn.huidu.lcd.transmit.model.playtask.PlayControl;
import cn.huidu.lcd.transmit.model.playtask.PlayTask;
import cn.huidu.lcd.transmit.model.playtask.Program;
import cn.huidu.lcd.transmit.model.playtask.QrCode;
import cn.huidu.lcd.transmit.model.playtask.Rect;
import cn.huidu.lcd.transmit.model.playtask.Size;
import cn.huidu.lcd.transmit.model.playtask.SubScreen;
import cn.huidu.lcd.transmit.model.playtask.Text;
import cn.huidu.lcd.transmit.model.playtask.Timer;
import cn.huidu.lcd.transmit.model.playtask.Video;
import cn.huidu.lcd.transmit.model.playtask.Weather;
import cn.huidu.lcd.transmit.model.playtask.Widget;
import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.TimeZone;
import java.util.UUID;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

/* JADX INFO: loaded from: classes.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map<String, String> f3652a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f3653b;

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000b, code lost:
    
        r4 = s.c.a();
        r0 = w0.a.b(w0.c.f3777a);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public i(java.util.Map<java.lang.String, java.lang.String> r4) {
        /*
            r3 = this;
            r3.<init>()
            r3.f3652a = r4
            int r4 = cn.huidu.lcd.core.a.f337c
            r0 = 103(0x67, float:1.44E-43)
            if (r4 != r0) goto L25
            android.graphics.Point r4 = s.c.a()
            android.app.Application r0 = w0.c.f3777a
            android.graphics.Point r0 = w0.a.b(r0)
            int r1 = r4.x
            int r2 = r0.x
            if (r1 <= r2) goto L25
            int r4 = r4.y
            int r0 = r0.y
            if (r4 <= r0) goto L25
            float r4 = (float) r2
            float r0 = (float) r1
            float r4 = r4 / r0
            goto L27
        L25:
            r4 = 1065353216(0x3f800000, float:1.0)
        L27:
            r3.f3653b = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: v0.i.<init>(java.util.Map):void");
    }

    public static int a(String str) {
        boolean zContains = str.contains("left");
        boolean zContains2 = str.contains("right");
        boolean zContains3 = str.contains("top");
        boolean zContains4 = str.contains("bottom");
        boolean zContains5 = str.contains("center");
        boolean zContains6 = str.contains("middle");
        int i4 = 1;
        if (!zContains) {
            if (zContains2) {
                i4 = 2;
            } else if (zContains5) {
                i4 = 3;
            }
        }
        int i5 = 256;
        if (!zContains3) {
            if (zContains4) {
                i5 = 512;
            } else if (zContains6 || zContains5) {
                i5 = 768;
            }
        }
        return i4 | i5;
    }

    public static int b(String str) {
        if (str == null) {
            return 0;
        }
        try {
            if (str.startsWith("#")) {
                String strReplace = str.replace("#", "");
                int i4 = (int) Long.parseLong(strReplace, 16);
                if (strReplace.length() == 6) {
                    i4 |= ViewCompat.MEASURED_STATE_MASK;
                }
                return i4;
            }
            if (str.startsWith("rgba")) {
                String[] strArrSplit = str.replaceAll("[rgba()]", "").split("[,]");
                if (strArrSplit.length != 4) {
                    return 0;
                }
                int i5 = Integer.parseInt(strArrSplit[0]);
                int i6 = Integer.parseInt(strArrSplit[1]);
                return (Integer.parseInt(strArrSplit[3]) << 24) | (i5 << 16) | (i6 << 8) | Integer.parseInt(strArrSplit[2]);
            }
            if (!str.startsWith("rgb")) {
                return 0;
            }
            String[] strArrSplit2 = str.replaceAll("[rgb()]", "").split("[,]");
            if (strArrSplit2.length != 3) {
                return 0;
            }
            int i7 = Integer.parseInt(strArrSplit2[0]);
            int i8 = Integer.parseInt(strArrSplit2[1]);
            return Integer.parseInt(strArrSplit2[2]) | (i7 << 16) | ViewCompat.MEASURED_STATE_MASK | (i8 << 8);
        } catch (Exception e4) {
            e4.printStackTrace();
            return 0;
        }
    }

    public static long c(String str, boolean z3) {
        try {
            String[] strArrSplit = str.split(" ");
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
            long time = simpleDateFormat.parse(strArrSplit[0]).getTime();
            return z3 ? time + 86399000 : time;
        } catch (ParseException e4) {
            e4.printStackTrace();
            return 0L;
        }
    }

    public static int g(String str) {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm:ss", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
            return (int) (simpleDateFormat.parse(str).getTime() / 1000);
        } catch (ParseException e4) {
            e4.printStackTrace();
            return 0;
        }
    }

    public final EffectNode d(Effect effect) {
        if (effect == null) {
            return null;
        }
        EffectNode effectNode = new EffectNode();
        effectNode.setEffectType(effect.effectType);
        effectNode.setEnterTime(effect.effectTime);
        effectNode.setDisplayTime(effect.displayTime);
        effectNode.setSpeed(effect.speed);
        effectNode.setEndToEnd(effect.endToEnd);
        effectNode.setClearScreen(effect.clearScreen);
        return effectNode;
    }

    public final String e(Object obj) {
        if (obj == null) {
            return null;
        }
        return h.a.y0(obj);
    }

    public final FontStyleNode f(FontStyle fontStyle) {
        if (fontStyle == null) {
            return null;
        }
        FontStyleNode fontStyleNode = new FontStyleNode();
        fontStyleNode.setFontName(fontStyle.fontName);
        fontStyleNode.setFontSize(l(fontStyle.fontSize));
        fontStyleNode.setColor(b(fontStyle.color));
        fontStyleNode.setBgColor(b(fontStyle.bgColor));
        fontStyleNode.setBold(fontStyle.bold);
        fontStyleNode.setItalic(fontStyle.italic);
        fontStyleNode.setUnderline(fontStyle.underline);
        o(fontStyle.fontName);
        return fontStyleNode;
    }

    public final List<TimeRange> h(List<PlayControl.TimeRange> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (PlayControl.TimeRange timeRange : list) {
            arrayList.add(new TimeRange(g(timeRange.startTime), g(timeRange.endTime)));
        }
        if (arrayList.size() > 0) {
            return arrayList;
        }
        return null;
    }

    public final int i(List<String> list) {
        int i4 = 0;
        for (String str : list) {
            Objects.requireNonNull(str);
            str.hashCode();
            switch (str) {
                case "Fri":
                    i4 |= 16;
                    break;
                case "Mon":
                    i4 |= 1;
                    break;
                case "Sat":
                    i4 |= 32;
                    break;
                case "Sun":
                    i4 |= 64;
                    break;
                case "Thu":
                case "Thur":
                    i4 |= 8;
                    break;
                case "Tue":
                case "Tues":
                    i4 |= 2;
                    break;
                case "Wed":
                    i4 |= 4;
                    break;
                default:
                    android.support.v4.media.c.a("convertWeekFlags: error week day: ", str, "PlayTaskUpdater");
                    break;
            }
        }
        return i4;
    }

    public final WidgetNode j(Widget widget) throws r0.b {
        WidgetNode widgetNode;
        int i4 = 0;
        if (NodeTags.TEXT.equalsIgnoreCase(widget.type)) {
            Text text = (Text) q0.a.t(widget.content, Text.class, "text content");
            TextNode textNode = new TextNode();
            StringBuilder sbA = android.support.v4.media.f.a("convertText: content-->");
            sbA.append(text.content);
            sbA.append(" alignment->");
            sbA.append(text.alignment);
            sbA.append(" files->");
            sbA.append(text.files);
            Log.d("PlayTaskUpdater", sbA.toString());
            textNode.setText(text.content);
            textNode.setFontStyle(f(text.fontStyle));
            String str = text.alignment;
            if (str != null) {
                textNode.setAlignment(a(str));
            }
            Effect effect = text.effect;
            if (effect != null && effect.displayTime == 0) {
                effect.displayTime = text.displayTime;
            }
            textNode.setEffect(d(effect));
            widgetNode = textNode;
            if (text.files != null) {
                ArrayList arrayList = new ArrayList();
                while (i4 < text.files.size()) {
                    arrayList.add(k(text.files.get(i4)));
                    i4++;
                }
                textNode.setFileList(arrayList);
                widgetNode = textNode;
            }
        } else if (NodeTags.IMAGE.equalsIgnoreCase(widget.type)) {
            Image image = (Image) q0.a.t(widget.content, Image.class, "image content");
            ImageNode imageNode = new ImageNode();
            imageNode.setDuration(image.duration);
            imageNode.setEffect(d(image.effect));
            imageNode.setImagePath(k(image.image));
            imageNode.setKeepAspectRatio(image.keepAspectRatio);
            widgetNode = imageNode;
        } else if (NodeTags.VIDEO.equalsIgnoreCase(widget.type)) {
            Video video = (Video) q0.a.t(widget.content, Video.class, "video content");
            VideoNode videoNode = new VideoNode();
            videoNode.setKeepAspectRatio(video.keepAspectRatio);
            videoNode.setVideoPath(k(video.video));
            videoNode.setDuration(video.duration);
            widgetNode = videoNode;
        } else if (NodeTags.CLOCK.equalsIgnoreCase(widget.type)) {
            Clock clock = (Clock) q0.a.t(widget.content, Clock.class, "clock content");
            ClockNode clockNode = new ClockNode();
            String str2 = clock.textColor;
            if (str2 != null) {
                clockNode.setTextColor(b(str2));
            }
            clockNode.setFixedTextColor(b(clock.fixedTextColor));
            clockNode.setDateColor(b(clock.dateColor));
            clockNode.setTimeColor(b(clock.timeColor));
            clockNode.setWeekColor(b(clock.weekColor));
            clockNode.setLunarColor(b(clock.lunarColor));
            o(clock.fontName);
            clockNode.setFontName(clock.fontName);
            clockNode.setTextSize(l(clock.textSize));
            clockNode.setSpacing(m(clock.spacing));
            clockNode.setTimeZone(clock.timeZone);
            clockNode.setTimeAdjust(clock.timeAdjust);
            clockNode.setMultiLine(clock.multiLine);
            clockNode.setFixedText(clock.fixedText);
            clockNode.setShowItems(clock.show);
            ClockFormat clockFormat = clock.format;
            if (clockFormat != null) {
                clockNode.setDateFormat(clockFormat.dateFormat);
                clockNode.setTimeFormat(clock.format.timeFormat);
                clockNode.setWeekFormat(clock.format.weekFormat);
                clockNode.setCustomWeek(clock.format.customWeek);
            }
            clockNode.setDuration(clock.duration);
            widgetNode = clockNode;
        } else if (NodeTags.E_WATCH.equalsIgnoreCase(widget.type)) {
            EWatch eWatch = (EWatch) q0.a.t(widget.content, EWatch.class, "eWatch content");
            EWatchNode eWatchNode = new EWatchNode();
            int i5 = eWatch.textSize;
            if (i5 <= 0) {
                eWatchNode.setTextSize(i5);
            } else {
                eWatchNode.setTextSize(l(i5));
            }
            String str3 = eWatch.textColor;
            if (str3 != null) {
                eWatchNode.setTextColor(b(str3));
            }
            String str4 = eWatch.strokeColor;
            if (str4 != null) {
                eWatchNode.setStrokeColor(b(str4));
            }
            String str5 = eWatch.baseColor;
            if (str5 != null) {
                eWatchNode.setBaseColor(b(str5));
            }
            String str6 = eWatch.alignment;
            if (str6 != null) {
                eWatchNode.setAlignment(a(str6));
            }
            int i6 = eWatch.padding;
            if (i6 > 0) {
                eWatchNode.setPadding(i6);
            }
            eWatchNode.setStyle(eWatch.showSecond ? 1 : 0);
            widgetNode = eWatchNode;
        } else if (NodeTags.HTML.equalsIgnoreCase(widget.type)) {
            Html html = (Html) q0.a.t(widget.content, Html.class, "html content");
            HtmlNode htmlNode = new HtmlNode();
            htmlNode.setUrl(html.url);
            if (!TextUtils.isEmpty(html.file)) {
                htmlNode.setFilePath(k(html.file));
            }
            String str7 = html.userAgent;
            if (str7 != null) {
                htmlNode.setUserAgent(str7);
            }
            htmlNode.setAutoRefresh(html.autoRefresh);
            htmlNode.setRefreshInterval(html.refreshInterval);
            htmlNode.setDuration(html.duration);
            htmlNode.setOffsetX(html.offsetX);
            htmlNode.setOffsetY(html.offsetY);
            htmlNode.setScale(html.scale);
            widgetNode = htmlNode;
        } else if (NodeTags.WEATHER.equalsIgnoreCase(widget.type)) {
            Weather weather = (Weather) q0.a.t(widget.content, Weather.class, "weather content");
            WeatherNode weatherNode = new WeatherNode();
            weatherNode.setStyle(weather.style);
            weatherNode.setCityCode(weather.cityCode);
            weatherNode.setCityName(weather.cityName);
            weatherNode.setShowItems(weather.show);
            weatherNode.setTemperatureUnit(weather.tmpUnit);
            weatherNode.setMultiLine(weather.multiLine);
            weatherNode.setSpacing(m(weather.spacing));
            weatherNode.setFontStyle(f(weather.fontStyle));
            weatherNode.setLanguage(weather.language);
            Weather.LocalStrings localStrings = weather.strings;
            if (localStrings != null) {
                weatherNode.setStrWaitingData(localStrings.waitingData);
                weatherNode.setStrUnknown(weather.strings.unknown);
                weatherNode.setStrTmpRange(weather.strings.temperatureRange);
                weatherNode.setStrHumidity(weather.strings.humidity);
                weatherNode.setStrAirQuality(weather.strings.airQuality);
            }
            weatherNode.setDuration(weather.duration);
            widgetNode = weatherNode;
        } else if (NodeTags.TIMER.equalsIgnoreCase(widget.type)) {
            Timer timer = (Timer) q0.a.t(widget.content, Timer.class, "timer content");
            TimerNode timerNode = new TimerNode();
            timerNode.setTargetTime(timer.targetTime);
            timerNode.setTimeMode(timer.mode);
            timerNode.setFormat(timer.format);
            timerNode.setFontStyle(f(timer.fontStyle));
            timerNode.setTimeFontStyle(f(timer.timeFontStyle));
            timerNode.setDuration(timer.duration);
            widgetNode = timerNode;
        } else if (NodeTags.QR_CODE.equalsIgnoreCase(widget.type)) {
            QrCode qrCode = (QrCode) q0.a.t(widget.content, QrCode.class, "qrCode content");
            QrCodeNode qrCodeNode = new QrCodeNode();
            qrCodeNode.setContent(qrCode.content);
            String str8 = qrCode.color;
            if (str8 != null) {
                qrCodeNode.setColor(b(str8));
            }
            String str9 = qrCode.bgColor;
            if (str9 != null) {
                qrCodeNode.setBgColor(b(str9));
            }
            String str10 = qrCode.ecl;
            if (str10 != null) {
                qrCodeNode.setEcl(str10);
            }
            Integer num = qrCode.margin;
            if (num != null) {
                qrCodeNode.setMargin(num.intValue());
            }
            qrCodeNode.setDuration(qrCode.duration);
            widgetNode = qrCodeNode;
        } else if (NodeTags.LIVE_STREAM.equalsIgnoreCase(widget.type)) {
            LiveStream liveStream = (LiveStream) q0.a.t(widget.content, LiveStream.class, "liveStream content");
            LiveStreamNode liveStreamNode = new LiveStreamNode();
            liveStreamNode.setUrl(liveStream.url);
            liveStreamNode.setDuration(liveStream.duration);
            widgetNode = liveStreamNode;
        } else if (NodeTags.OFFICE.equalsIgnoreCase(widget.type)) {
            Office office = (Office) q0.a.t(widget.content, Office.class, "office content");
            OfficeNode officeNode = new OfficeNode();
            officeNode.setAutoPlay(office.autoPlay);
            officeNode.setInterval(office.interval);
            officeNode.setEffect(office.effect);
            officeNode.setEndType(office.endType);
            officeNode.setDuration(office.duration);
            widgetNode = officeNode;
            if (office.files != null) {
                ArrayList arrayList2 = new ArrayList();
                while (i4 < office.files.size()) {
                    arrayList2.add(k(office.files.get(i4)));
                    i4++;
                }
                officeNode.setFileList(arrayList2);
                widgetNode = officeNode;
            }
        } else {
            if (!NodeTags.HDMI_IN.equalsIgnoreCase(widget.type)) {
                StringBuilder sbA2 = android.support.v4.media.f.a("unsupported widget type: ");
                sbA2.append(widget.type);
                throw new r0.b("kNotImplemented", sbA2.toString());
            }
            HdmiIn hdmiIn = (HdmiIn) q0.a.t(widget.content, HdmiIn.class, "HDMI IN content");
            StringBuilder sbA3 = android.support.v4.media.f.a("convertHdmiIn: rotation->");
            sbA3.append(hdmiIn.rotation);
            sbA3.append(" jHdmiIn->");
            sbA3.append(hdmiIn.hideNoSignal);
            sbA3.append(" duration->");
            sbA3.append(hdmiIn.duration);
            Log.d("PlayTaskUpdater", sbA3.toString());
            HdmiInNode hdmiInNode = new HdmiInNode();
            hdmiInNode.setRotation(hdmiIn.rotation);
            hdmiInNode.setHideNoSignal(hdmiIn.hideNoSignal);
            hdmiInNode.setDuration(hdmiIn.duration);
            hdmiInNode.setHdmiSource(hdmiIn.source);
            widgetNode = hdmiInNode;
        }
        widgetNode.setName(widget.name);
        widgetNode.setUuid(widget.uuid);
        widgetNode.setExtraData(e(widget.extraData));
        if (widget.scaleRect != null) {
            HRectF hRectF = widget.scaleRect;
            widgetNode.setScaleRect(new RectF(hRectF.left, hRectF.top, hRectF.right, hRectF.bottom));
        }
        return widgetNode;
    }

    public final String k(String str) throws r0.a {
        Map<String, String> map = this.f3652a;
        String str2 = map != null ? map.get(str) : null;
        if (str2 != null) {
            return str2;
        }
        throw new r0.a(androidx.appcompat.view.a.a("missing resource file: ", str));
    }

    public final int l(int i4) {
        float f4 = this.f3653b;
        if (f4 == 1.0d) {
            return i4;
        }
        int i5 = (int) ((i4 * f4) + 0.5f);
        if (i5 < 12) {
            return 12;
        }
        return i5;
    }

    public final int m(int i4) {
        float f4 = this.f3653b;
        if (f4 == 1.0d) {
            return i4;
        }
        int i5 = (int) ((i4 * f4) + 0.5f);
        if (i5 < 0) {
            return 0;
        }
        return i5;
    }

    public PlayTaskNode n(PlayTask playTask) throws r0.b {
        ProgramNode child;
        Boolean bool = playTask.interlude;
        int i4 = (bool == null || !bool.booleanValue()) ? 0 : 1;
        File fileD = h0.g.d(i4);
        Boolean bool2 = playTask.clearOld;
        PlayTaskNode playTaskNodeG = (bool2 == null || !bool2.booleanValue()) ? h0.g.g(fileD) : null;
        if (cn.huidu.lcd.core.a.f337c == 103) {
            Point pointB = s.c.b();
            Point pointB2 = w0.a.b(w0.c.f3777a);
            int i5 = pointB2.x;
            int i6 = pointB2.y;
            if (pointB.x > i5 && pointB.y > i6) {
                if (playTask.screenSize == null) {
                    playTask.screenSize = new Size();
                }
                Size size = playTask.screenSize;
                size.width = i5;
                size.height = i6;
                float f4 = i5 / pointB.x;
                float f5 = i6 / pointB.y;
                List<Program> list = playTask.programs;
                if (list != null) {
                    Iterator<Program> it = list.iterator();
                    while (it.hasNext()) {
                        List<Area> list2 = it.next().areas;
                        if (list2 != null) {
                            for (Area area : list2) {
                                area.frame.f1102x = Math.round(r11.f1102x * f4);
                                area.frame.f1103y = Math.round(r11.f1103y * f5);
                                area.frame.width = Math.round(r11.width * f4);
                                area.frame.height = Math.round(r11.height * f5);
                                Rect rect = area.frame;
                                int i7 = rect.f1102x;
                                if (i7 < 0) {
                                    rect.width += i7;
                                    rect.f1102x = 0;
                                }
                                int i8 = rect.f1102x;
                                int i9 = rect.width;
                                int i10 = i8 + i9;
                                if (i10 > i5) {
                                    int i11 = (i9 - i10) + i5;
                                    rect.width = i11;
                                    if (i11 < 8) {
                                        rect.width = 8;
                                        rect.f1102x = i5 - 8;
                                    }
                                }
                                int i12 = rect.f1103y;
                                if (i12 < 0) {
                                    rect.height += i12;
                                    rect.f1103y = 0;
                                }
                                int i13 = rect.f1103y;
                                int i14 = rect.height;
                                int i15 = i13 + i14;
                                if (i15 > i6) {
                                    int i16 = (i14 - i15) + i6;
                                    rect.height = i16;
                                    if (i16 < 8) {
                                        rect.height = 8;
                                        rect.f1103y = i6 - 8;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        if (playTaskNodeG == null) {
            playTaskNodeG = new PlayTaskNode();
        }
        playTaskNodeG.setName(playTask.name);
        playTaskNodeG.setUuid(playTask.uuid);
        playTaskNodeG.setExtraData(e(playTask.extraData));
        playTaskNodeG.setTimeStamp(playTask.timestamp);
        playTaskNodeG.setTaskType(i4);
        playTaskNodeG.setHomeUuid(playTask.home);
        Size size2 = playTask.screenSize;
        if (size2 != null) {
            playTaskNodeG.setWidth(size2.width);
            playTaskNodeG.setHeight(playTask.screenSize.height);
        }
        playTaskNodeG.setVersion(playTask.version);
        List<Program> list3 = playTask.programs;
        if (list3 != null && !list3.isEmpty()) {
            int i17 = 0;
            for (int i18 = 0; i18 < playTask.programs.size(); i18++) {
                Program program = playTask.programs.get(i18);
                String str = program.action;
                String str2 = program.uuid;
                if (TextUtils.isEmpty(str2)) {
                    child = null;
                } else {
                    for (int i19 = 0; i19 < playTaskNodeG.childCount(); i19++) {
                        child = playTaskNodeG.getChild(i19);
                        if (str2.equals(child.getUuid())) {
                            break;
                        }
                    }
                    child = null;
                }
                if (str == null || str.startsWith("add")) {
                    if (child != null) {
                        playTaskNodeG.removeChild(child);
                    }
                    ProgramNode programNodeR = r(null, program);
                    if ("addFirst".equals(str)) {
                        playTaskNodeG.insertChild(i17, programNodeR);
                        i17++;
                    } else {
                        playTaskNodeG.addChild(programNodeR);
                    }
                } else if (!"remove".equals(str)) {
                    if (!"update".equals(str)) {
                        throw new r0.a(androidx.appcompat.view.a.a("unsupported action: ", str));
                    }
                    if (child != null) {
                        r(child, program);
                    } else {
                        Log.d("PlayTaskUpdater", "update program but old program not found!");
                    }
                } else if (child != null) {
                    playTaskNodeG.removeChild(child);
                }
            }
        }
        File file = new File(fileD, "TempRes");
        if (!file.exists()) {
            file.mkdirs();
        }
        String string = UUID.randomUUID().toString();
        File file2 = new File(file, string);
        file2.mkdirs();
        int duration = 0;
        for (int i20 = 0; i20 < playTaskNodeG.childCount(); i20++) {
            ProgramNode child2 = playTaskNodeG.getChild(i20);
            String uuid = child2.getUuid();
            if (uuid == null || uuid.length() == 0) {
                child2.setUuid(UUID.randomUUID().toString());
            }
            List<ScreenNode> subScreens = child2.getSubScreens();
            int iMax = 0;
            for (int i21 = 0; i21 < child2.childCount(); i21++) {
                AreaNode child3 = child2.getChild(i21);
                h.c(child3, file2);
                iMax = Math.max(iMax, child3.getDuration());
            }
            if (subScreens != null) {
                for (ScreenNode screenNode : subScreens) {
                    for (int i22 = 0; i22 < screenNode.childCount(); i22++) {
                        AreaNode child4 = screenNode.getChild(i22);
                        h.c(child4, file2);
                        iMax = Math.max(iMax, child4.getDuration());
                    }
                }
            }
            for (int i23 = 0; i23 < child2.childCount(); i23++) {
                AreaNode child5 = child2.getChild(i23);
                h.a(child5, iMax);
                iMax = Math.max(iMax, child5.getDuration());
            }
            if (subScreens != null) {
                for (ScreenNode screenNode2 : subScreens) {
                    for (int i24 = 0; i24 < screenNode2.childCount(); i24++) {
                        AreaNode child6 = screenNode2.getChild(i24);
                        h.a(child6, iMax);
                        iMax = Math.max(iMax, child6.getDuration());
                    }
                }
            }
            child2.setMaxAreaDuration(iMax);
            int fixedDuration = child2.getFixedDuration();
            if (fixedDuration > 0 && fixedDuration < 1000) {
                fixedDuration = 1000;
            }
            child2.setFixedDuration(fixedDuration);
            if (fixedDuration > 0) {
                child2.setDuration(fixedDuration);
            } else if (iMax > 0) {
                child2.setDuration(iMax);
            } else {
                child2.setDuration(1000);
            }
            duration += child2.getDuration();
        }
        Log.d("PlayTaskPrepareHelper", "preparePlayTask: duration = " + duration);
        String[] list4 = file.list();
        if (list4 != null) {
            for (String str3 : list4) {
                if (!str3.equals(string)) {
                    l.e.d(new File(file, str3));
                }
            }
        }
        if (!h0.g.i(playTaskNodeG, fileD)) {
            s.h.a("process: save play task failed!");
            throw new r0.b("kWriteFileFailed", "error saving play task xml");
        }
        s.d.c(h0.g.e(playTaskNodeG), fileD);
        File fileO = l.e.o();
        ArrayList arrayList = new ArrayList();
        s.d.a(fileO, arrayList);
        l.l.e().j(arrayList);
        return playTaskNodeG;
    }

    public final void o(String str) {
        Element elementP;
        if (str != null) {
            Map<String, String> map = this.f3652a;
            Document document = null;
            String str2 = map != null ? map.get(str) : null;
            if (str2 != null) {
                Log.d("PlayTaskUpdater", "registerFont: " + str + " - " + str2);
                l.f fVarA = l.f.a();
                Objects.requireNonNull(fVarA);
                synchronized (fVarA.f2324a) {
                    String str3 = fVarA.f2324a.get(str);
                    if (str3 != null && str3.equals(str2)) {
                        Log.d("FontFileManager", "addNewFont: font already exists: " + str);
                    } else if (w0.g.b().a(str, str2)) {
                        synchronized (fVarA.f2324a) {
                            fVarA.f2324a.put(str, str2);
                            File file = new File(l.e.j(), "contents.xml");
                            Map<String, String> map2 = fVarA.f2324a;
                            Document documentD = q0.a.d();
                            if (documentD != null && (elementP = y0.a.p(null, map2, documentD)) != null) {
                                documentD.appendChild(elementP);
                                document = documentD;
                            }
                            if (!(document == null ? false : q0.a.w(document, file, true))) {
                                Log.d("FontFileManager", "save font list failed!");
                            }
                        }
                    } else {
                        Log.w("FontFileManager", "addNewFont: illegal font file: " + str2);
                    }
                }
            }
        }
    }

    public final int p(AreaNode areaNode, String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        for (int i4 = 0; i4 < areaNode.childCount(); i4++) {
            WidgetNode child = areaNode.getChild(i4);
            if (str.equals(child.getUuid())) {
                areaNode.removeChild(child);
                return i4;
            }
        }
        return -1;
    }

    public final AreaNode q(AreaNode areaNode, Area area) throws r0.a {
        if (areaNode == null) {
            areaNode = new AreaNode();
        }
        areaNode.setName(area.name);
        areaNode.setUuid(area.uuid);
        areaNode.setExtraData(e(area.extraData));
        Rect rect = area.frame;
        if (rect != null) {
            areaNode.setX(rect.f1102x);
            areaNode.setY(area.frame.f1103y);
            areaNode.setWidth(area.frame.width);
            areaNode.setHeight(area.frame.height);
            areaNode.setPercentUnit(area.frame.percent);
        }
        areaNode.setRotation(area.rotation);
        Border border = area.border;
        if (border != null) {
            areaNode.setStrokeWidth(border.strokeWidth);
            areaNode.setStrokeColor(b(area.border.strokeColor));
            areaNode.setCornerRadius(area.border.cornerRadius);
        }
        List<AnimationInfo> list = area.animations;
        if (list != null && !list.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (AnimationInfo animationInfo : area.animations) {
                AnimationNode animationNode = new AnimationNode();
                animationNode.setType(animationInfo.type);
                animationNode.setDuration(animationInfo.duration);
                animationNode.setDelay(animationInfo.delay);
                animationNode.setRepeat(animationInfo.repeat);
                arrayList.add(animationNode);
            }
            areaNode.setAnimations(arrayList);
        }
        String str = area.background;
        if (str != null && str.length() != 0) {
            if (str.startsWith("#")) {
                areaNode.setBackgroundColor(b(str));
            } else {
                areaNode.setBackgroundImage(k(str));
            }
        }
        areaNode.setGlobalEffect(d(area.globalEffect));
        areaNode.setMotion(area.motion);
        areaNode.setCarousel(area.carousel);
        ButtonAttrs buttonAttrs = area.asButton;
        ButtonNode buttonNode = null;
        InteractionNode interactionNode = null;
        if (buttonAttrs != null) {
            ButtonNode buttonNode2 = new ButtonNode();
            buttonNode2.setText(buttonAttrs.text);
            buttonNode2.setFontStyle(f(buttonAttrs.fontStyle));
            Interaction interaction = buttonAttrs.onClick;
            if (interaction != null) {
                interactionNode = new InteractionNode();
                interactionNode.setChangeProgram(interaction.changeProgram);
                if (interaction.changeItems != null) {
                    ArrayList arrayList2 = new ArrayList();
                    for (Interaction.ChangeItem changeItem : interaction.changeItems) {
                        ContentChange contentChange = new ContentChange();
                        contentChange.setArea(changeItem.area);
                        contentChange.setPosition(changeItem.position);
                        contentChange.setUrl(changeItem.url);
                        arrayList2.add(contentChange);
                    }
                    interactionNode.setChangeItems(arrayList2);
                }
            }
            buttonNode2.setOnClick(interactionNode);
            buttonNode = buttonNode2;
        }
        areaNode.setButton(buttonNode);
        List<Widget> list2 = area.widgets;
        if (list2 != null && !list2.isEmpty()) {
            for (int i4 = 0; i4 < area.widgets.size(); i4++) {
                Widget widget = area.widgets.get(i4);
                String str2 = widget.action;
                if (str2 == null || "add".equals(str2)) {
                    p(areaNode, widget.uuid);
                    areaNode.addChild(j(widget));
                } else if ("remove".equals(widget.action)) {
                    p(areaNode, widget.uuid);
                } else {
                    if (!"update".equals(widget.action)) {
                        StringBuilder sbA = android.support.v4.media.f.a("unsupported action: ");
                        sbA.append(widget.action);
                        throw new r0.a(sbA.toString());
                    }
                    int iP = p(areaNode, widget.uuid);
                    if (iP >= 0) {
                        areaNode.insertChild(iP, j(widget));
                    } else {
                        Log.d("PlayTaskUpdater", "update widget but old widget not found");
                    }
                }
            }
        }
        return areaNode;
    }

    public final ProgramNode r(@Nullable ProgramNode programNode, Program program) throws r0.a {
        List<String> fileList;
        AreaNode areaNode;
        String str;
        if (programNode == null) {
            programNode = new ProgramNode();
        }
        programNode.setName(program.name);
        programNode.setUuid(program.uuid);
        programNode.setVersion(program.version);
        programNode.setExtraData(e(program.extraData));
        String str2 = program.background;
        if (str2 != null && str2.length() != 0) {
            if (str2.startsWith("#")) {
                programNode.setBackgroundColor(b(str2));
            } else {
                programNode.setBackgroundImage(k(str2));
            }
        }
        BGMusic bGMusic = program.music;
        if (bGMusic == null || (str = bGMusic.audio) == null) {
            String str3 = program.bgm;
            if (str3 != null) {
                programNode.setBackgroundMusic(k(str3));
            }
        } else {
            programNode.setBackgroundMusic(k(str));
            programNode.setBGMLoop(program.music.loop);
        }
        int i4 = program.duration;
        if (i4 > 0) {
            programNode.setFixedDuration(i4);
        }
        PlayControl playControl = program.playControl;
        if (playControl != null) {
            Integer num = playControl.duration;
            if (num != null) {
                programNode.setFixedDuration(num.intValue());
            }
            Integer num2 = playControl.playCountPerDay;
            if (num2 != null) {
                programNode.setPlayCountPerDay(num2.intValue());
            }
            Boolean bool = playControl.onlyFaceDetect;
            if (bool != null) {
                programNode.setOnlyFaceDetect(bool.booleanValue());
            }
            List<PlayControl.DateRange> list = playControl.dateRanges;
            if (list != null) {
                ArrayList arrayList = new ArrayList();
                for (PlayControl.DateRange dateRange : list) {
                    DateRange dateRange2 = new DateRange();
                    dateRange2.setStartDate(c(dateRange.startDate, false));
                    dateRange2.setEndDate(c(dateRange.endDate, true));
                    dateRange2.setTimeRanges(h(dateRange.timeRanges));
                    arrayList.add(dateRange2);
                }
                if (arrayList.size() <= 0) {
                    arrayList = null;
                }
                programNode.setDateRanges(arrayList);
            } else {
                PlayControl.DateRange dateRange3 = playControl.byDate;
                if (dateRange3 != null) {
                    long jC = c(dateRange3.startDate, false);
                    long jC2 = c(playControl.byDate.endDate, true);
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(new DateRange(jC, jC2));
                    programNode.setDateRanges(arrayList2);
                }
            }
            List<PlayControl.TimeRange> list2 = playControl.timeRanges;
            if (list2 != null) {
                programNode.setTimeRanges(h(list2));
            } else {
                PlayControl.TimeRange timeRange = playControl.byTime;
                if (timeRange != null) {
                    int iG = g(timeRange.startTime);
                    int iG2 = g(playControl.byTime.endTime);
                    ArrayList arrayList3 = new ArrayList();
                    arrayList3.add(new TimeRange(iG, iG2));
                    programNode.setTimeRanges(arrayList3);
                }
            }
            List<PlayControl.WeekRange> list3 = playControl.weekRanges;
            if (list3 != null) {
                ArrayList arrayList4 = new ArrayList();
                for (PlayControl.WeekRange weekRange : list3) {
                    int i5 = i(weekRange.daysOfWeek);
                    List<TimeRange> listH = h(weekRange.timeRanges);
                    if (i5 != 0) {
                        WeekRange weekRange2 = new WeekRange();
                        weekRange2.setWeekFlags(i5);
                        weekRange2.setTimeRanges(listH);
                        arrayList4.add(weekRange2);
                    }
                }
                if (arrayList4.size() <= 0) {
                    arrayList4 = null;
                }
                programNode.setWeekRanges(arrayList4);
            } else {
                List<String> list4 = playControl.byWeek;
                if (list4 != null) {
                    int i6 = i(list4);
                    ArrayList arrayList5 = new ArrayList();
                    arrayList5.add(new WeekRange(i6));
                    programNode.setWeekRanges(arrayList5);
                }
            }
        }
        programNode.setTags(program.tags);
        List<Area> list5 = program.areas;
        if (list5 != null && !list5.isEmpty()) {
            for (int i7 = 0; i7 < program.areas.size(); i7++) {
                Area area = program.areas.get(i7);
                String str4 = area.action;
                String str5 = area.uuid;
                if (TextUtils.isEmpty(str5)) {
                    areaNode = null;
                } else {
                    for (int i8 = 0; i8 < programNode.childCount(); i8++) {
                        areaNode = (AreaNode) programNode.getChild(i8);
                        if (str5.equals(areaNode.getUuid())) {
                            break;
                        }
                    }
                    areaNode = null;
                }
                if (str4 == null || "add".equals(str4)) {
                    if (areaNode != null) {
                        programNode.removeChild(areaNode);
                    }
                    programNode.addChild(q(null, area));
                } else if (!"remove".equals(str4)) {
                    if (!"update".equals(str4)) {
                        throw new r0.a(androidx.appcompat.view.a.a("unsupported action: ", str4));
                    }
                    if (areaNode != null) {
                        q(areaNode, area);
                    } else {
                        Log.d("PlayTaskUpdater", "update area but old area not found!");
                    }
                } else if (areaNode != null) {
                    programNode.removeChild(areaNode);
                }
            }
        }
        List<SubScreen> list6 = program.multiDisplay;
        if (list6 != null && !list6.isEmpty()) {
            programNode.setSubScreens(new ArrayList());
            for (int i9 = 0; i9 < program.multiDisplay.size(); i9++) {
                SubScreen subScreen = program.multiDisplay.get(i9);
                ScreenNode screenNode = new ScreenNode();
                screenNode.setDisplayId(Math.max(1, subScreen.displayId));
                Size size = subScreen.size;
                if (size != null) {
                    screenNode.setWidth(size.width);
                    screenNode.setHeight(subScreen.size.height);
                }
                List<Area> list7 = subScreen.areas;
                if (list7 != null) {
                    Iterator<Area> it = list7.iterator();
                    while (it.hasNext()) {
                        screenNode.addChild(q(null, it.next()));
                    }
                }
                programNode.getSubScreens().add(screenNode);
            }
        }
        ArrayList arrayList6 = new ArrayList();
        for (int i10 = 0; i10 < programNode.childCount(); i10++) {
            AreaNode areaNode2 = (AreaNode) programNode.getChild(i10);
            for (int i11 = 0; i11 < areaNode2.childCount(); i11++) {
                WidgetNode child = areaNode2.getChild(i11);
                if (child instanceof VideoNode) {
                    String videoPath = ((VideoNode) child).getVideoPath();
                    if (videoPath != null && !arrayList6.contains(videoPath)) {
                        arrayList6.add(videoPath);
                    }
                } else if (child instanceof ImageNode) {
                    String imagePath = ((ImageNode) child).getImagePath();
                    if (imagePath != null && !arrayList6.contains(imagePath)) {
                        arrayList6.add(imagePath);
                    }
                } else if ((child instanceof TextNode) && (fileList = ((TextNode) child).getFileList()) != null && fileList.size() > 0) {
                    for (String str6 : fileList) {
                        if (str6 != null && !arrayList6.contains(str6)) {
                            arrayList6.add(str6);
                        }
                    }
                }
            }
        }
        long length = 0;
        for (int i12 = 0; i12 < arrayList6.size(); i12++) {
            String str7 = (String) arrayList6.get(i12);
            if (str7 != null) {
                length = new File(str7).length() + length;
            }
        }
        programNode.setResFileSize(length);
        programNode.setUpdateTime(System.currentTimeMillis());
        return programNode;
    }
}
