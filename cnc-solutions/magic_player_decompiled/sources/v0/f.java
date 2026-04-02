package v0;

import android.graphics.Color;
import android.graphics.RectF;
import android.util.Log;
import androidx.annotation.NonNull;
import cn.huidu.lcd.core.entity.model.LocalFileInfo;
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
import cn.huidu.lcd.render.model.extra.TagControl;
import cn.huidu.lcd.render.model.extra.TimeRange;
import cn.huidu.lcd.render.model.extra.WeekRange;
import cn.huidu.lcd.transmit.model.playtask.AnimationInfo;
import cn.huidu.lcd.transmit.model.playtask.Area;
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
import cn.huidu.lcd.transmit.model.playtask.QrCode;
import cn.huidu.lcd.transmit.model.playtask.Rect;
import cn.huidu.lcd.transmit.model.playtask.Text;
import cn.huidu.lcd.transmit.model.playtask.Timer;
import cn.huidu.lcd.transmit.model.playtask.Video;
import cn.huidu.lcd.transmit.model.playtask.Weather;
import cn.huidu.lcd.transmit.model.playtask.Widget;
import cn.huidu.lcd.transmit.model.report.PlayTaskInfo;
import cn.huidu.lcd.transmit.model.report.ProgramInfo;
import cn.huidu.lcd.transmit.model.setting.TagControlInfo;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public class f {
    public static String a(int i4) {
        int i5 = i4 & 255;
        String str = "center";
        String str2 = i5 != 1 ? i5 != 2 ? i5 != 3 ? null : "center" : "right" : "left";
        int i6 = i4 & 65280;
        if (i6 == 256) {
            str = "top";
        } else if (i6 == 512) {
            str = "bottom";
        } else if (i6 != 768) {
            str = null;
        }
        String strA = str != null ? androidx.appcompat.view.a.a("", str) : "";
        if (str2 == null || str2.equals(str)) {
            return strA;
        }
        if (strA.length() > 0) {
            strA = androidx.appcompat.view.a.a(strA, "|");
        }
        return androidx.appcompat.view.a.a(strA, str2);
    }

    public static Area b(AreaNode areaNode) {
        Area area = new Area();
        area.name = areaNode.getName();
        area.uuid = areaNode.getUuid();
        area.extraData = f(areaNode.getExtraData());
        area.frame = new Rect(areaNode.getX(), areaNode.getY(), areaNode.getWidth(), areaNode.getHeight());
        area.rotation = areaNode.getRotation();
        Border border = new Border();
        area.border = border;
        border.strokeWidth = areaNode.getStrokeWidth();
        area.border.strokeColor = c(areaNode.getStrokeColor());
        area.border.cornerRadius = areaNode.getCornerRadius();
        List<AnimationNode> animations = areaNode.getAnimations();
        if (animations != null && !animations.isEmpty()) {
            area.animations = new ArrayList();
            for (AnimationNode animationNode : animations) {
                AnimationInfo animationInfo = new AnimationInfo();
                animationInfo.type = animationNode.getType();
                animationInfo.duration = animationNode.getDuration();
                animationInfo.delay = animationNode.getDelay();
                animationInfo.repeat = animationNode.getRepeat();
                area.animations.add(animationInfo);
            }
        }
        if (areaNode.getBackgroundImage() != null) {
            area.background = k(areaNode.getBackgroundImage());
        } else {
            area.background = c(areaNode.getBackgroundColor());
        }
        area.motion = areaNode.isMotion();
        area.carousel = areaNode.isCarousel();
        ButtonNode button = areaNode.getButton();
        ButtonAttrs buttonAttrs = null;
        Interaction interaction = null;
        if (button != null) {
            ButtonAttrs buttonAttrs2 = new ButtonAttrs();
            buttonAttrs2.text = button.getText();
            buttonAttrs2.fontStyle = g(button.getFontStyle());
            InteractionNode onClick = button.getOnClick();
            if (onClick != null) {
                interaction = new Interaction();
                interaction.changeProgram = onClick.getChangeProgram();
                if (onClick.getChangeItems() != null) {
                    interaction.changeItems = new ArrayList();
                    for (ContentChange contentChange : onClick.getChangeItems()) {
                        Interaction.ChangeItem changeItem = new Interaction.ChangeItem();
                        changeItem.area = contentChange.getArea();
                        changeItem.position = contentChange.getPosition();
                        changeItem.url = contentChange.getUrl();
                        interaction.changeItems.add(changeItem);
                    }
                }
            }
            buttonAttrs2.onClick = interaction;
            buttonAttrs = buttonAttrs2;
        }
        area.asButton = buttonAttrs;
        area.widgets = new ArrayList();
        for (int i4 = 0; i4 < areaNode.childCount(); i4++) {
            WidgetNode child = areaNode.getChild(i4);
            Widget widget = new Widget();
            widget.name = child.getName();
            widget.uuid = child.getUuid();
            widget.extraData = f(child.getExtraData());
            RectF scaleRect = child.getScaleRect();
            if (scaleRect != null) {
                HRectF hRectF = new HRectF();
                widget.scaleRect = hRectF;
                hRectF.left = scaleRect.left;
                hRectF.right = scaleRect.right;
                hRectF.top = scaleRect.top;
                hRectF.bottom = scaleRect.bottom;
            }
            if (child instanceof ImageNode) {
                widget.type = NodeTags.IMAGE;
                ImageNode imageNode = (ImageNode) child;
                Image image = new Image();
                image.image = k(imageNode.getImagePath());
                image.keepAspectRatio = imageNode.isKeepAspectRatio();
                image.effect = e(imageNode.getEffect());
                widget.content = image;
            } else if (child instanceof VideoNode) {
                widget.type = NodeTags.VIDEO;
                VideoNode videoNode = (VideoNode) child;
                Video video = new Video();
                video.video = k(videoNode.getVideoPath());
                video.keepAspectRatio = videoNode.isKeepAspectRatio();
                video.duration = videoNode.getDuration();
                widget.content = video;
            } else if (child instanceof TextNode) {
                widget.type = NodeTags.TEXT;
                TextNode textNode = (TextNode) child;
                Text text = new Text();
                text.content = textNode.getText();
                text.fontStyle = g(textNode.getFontStyle());
                text.alignment = a(textNode.getAlignment());
                text.effect = e(textNode.getEffect());
                widget.content = text;
            } else if (child instanceof ClockNode) {
                widget.type = NodeTags.CLOCK;
                ClockNode clockNode = (ClockNode) child;
                Clock clock = new Clock();
                clock.fontName = clockNode.getFontName();
                clock.textSize = clockNode.getTextSize();
                clock.spacing = clockNode.getSpacing();
                clock.multiLine = clockNode.isMultiLine();
                clock.textColor = c(clockNode.getTextColor());
                clock.fixedTextColor = c(clockNode.getFixedTextColor());
                clock.dateColor = c(clockNode.getDateColor());
                clock.timeColor = c(clockNode.getTimeColor());
                clock.weekColor = c(clockNode.getWeekColor());
                clock.lunarColor = c(clockNode.getLunarColor());
                clock.timeZone = clockNode.getTimeZone();
                clock.timeAdjust = clockNode.getTimeAdjust();
                clock.fixedText = clockNode.getFixedText();
                clock.show = clockNode.getShowItems();
                ClockFormat clockFormat = new ClockFormat();
                clock.format = clockFormat;
                clockFormat.dateFormat = clockNode.getDateFormat();
                clock.format.timeFormat = clockNode.getTimeFormat();
                clock.format.weekFormat = clockNode.getWeekFormat();
                clock.format.customWeek = clockNode.getCustomWeek();
                clock.duration = clockNode.getDuration();
                widget.content = clock;
            } else if (child instanceof EWatchNode) {
                widget.type = NodeTags.E_WATCH;
                EWatchNode eWatchNode = (EWatchNode) child;
                EWatch eWatch = new EWatch();
                eWatch.textSize = eWatchNode.getTextSize();
                eWatch.textColor = c(eWatchNode.getTextColor());
                eWatch.strokeColor = c(eWatchNode.getStrokeColor());
                eWatch.baseColor = c(eWatchNode.getBaseColor());
                eWatch.showSecond = eWatchNode.getStyle() == 1;
                eWatch.alignment = a(eWatchNode.getAlignment());
                eWatch.padding = eWatchNode.getPadding();
                eWatch.duration = eWatchNode.getDuration();
                widget.content = eWatch;
            } else if (child instanceof HtmlNode) {
                widget.type = NodeTags.HTML;
                HtmlNode htmlNode = (HtmlNode) child;
                Html html = new Html();
                html.url = htmlNode.getUrl();
                html.file = k(htmlNode.getFilePath());
                html.userAgent = htmlNode.getUserAgent();
                html.autoRefresh = htmlNode.isAutoRefresh();
                html.refreshInterval = htmlNode.getRefreshInterval();
                html.duration = htmlNode.getDuration();
                html.offsetX = htmlNode.getOffsetX();
                html.offsetY = htmlNode.getOffsetY();
                html.scale = htmlNode.getScale();
                widget.content = html;
            } else if (child instanceof WeatherNode) {
                widget.type = NodeTags.WEATHER;
                WeatherNode weatherNode = (WeatherNode) child;
                Weather weather = new Weather();
                weather.style = weatherNode.getStyle();
                weather.cityCode = weatherNode.getCityCode();
                weather.cityName = weatherNode.getCityName();
                weather.show = weatherNode.getShowItems();
                weather.tmpUnit = weatherNode.getTemperatureUnit();
                weather.multiLine = weatherNode.isMultiLine();
                weather.spacing = weatherNode.getSpacing();
                weather.fontStyle = g(weatherNode.getFontStyle());
                weather.language = weatherNode.getLanguage();
                Weather.LocalStrings localStrings = new Weather.LocalStrings();
                weather.strings = localStrings;
                localStrings.waitingData = weatherNode.getStrWaitingData();
                weather.strings.unknown = weatherNode.getStrUnknown();
                weather.strings.temperatureRange = weatherNode.getStrTmpRange();
                weather.strings.humidity = weatherNode.getStrHumidity();
                weather.strings.airQuality = weatherNode.getStrAirQuality();
                weather.duration = weatherNode.getDuration();
                widget.content = weather;
            } else if (child instanceof TimerNode) {
                widget.type = NodeTags.TIMER;
                TimerNode timerNode = (TimerNode) child;
                Timer timer = new Timer();
                timer.targetTime = timerNode.getTargetTime();
                timer.mode = timerNode.getTimeMode();
                timer.format = timerNode.getFormat();
                timer.fontStyle = g(timerNode.getFontStyle());
                timer.timeFontStyle = g(timerNode.getTimeFontStyle());
                timer.duration = timerNode.getDuration();
                widget.content = timer;
            } else if (child instanceof QrCodeNode) {
                widget.type = NodeTags.QR_CODE;
                QrCodeNode qrCodeNode = (QrCodeNode) child;
                QrCode qrCode = new QrCode();
                qrCode.content = qrCodeNode.getContent();
                qrCode.color = c(qrCodeNode.getColor());
                qrCode.bgColor = c(qrCodeNode.getBgColor());
                qrCode.ecl = qrCodeNode.getEcl();
                qrCode.margin = Integer.valueOf(qrCodeNode.getMargin());
                qrCode.duration = qrCodeNode.getDuration();
                widget.content = qrCode;
            } else if (child instanceof LiveStreamNode) {
                widget.type = NodeTags.LIVE_STREAM;
                LiveStreamNode liveStreamNode = (LiveStreamNode) child;
                LiveStream liveStream = new LiveStream();
                liveStream.url = liveStreamNode.getUrl();
                liveStream.duration = liveStreamNode.getDuration();
                widget.content = liveStream;
            } else if (child instanceof OfficeNode) {
                widget.type = NodeTags.OFFICE;
                OfficeNode officeNode = (OfficeNode) child;
                Office office = new Office();
                office.autoPlay = officeNode.isAutoPlay();
                office.interval = officeNode.getInterval();
                office.effect = officeNode.getEffect();
                office.endType = officeNode.getEndType();
                office.duration = officeNode.getDuration();
                List<String> fileList = officeNode.getFileList();
                if (fileList != null) {
                    office.files = new ArrayList();
                    Iterator<String> it = fileList.iterator();
                    while (it.hasNext()) {
                        String strK = k(it.next());
                        if (strK != null) {
                            office.files.add(strK);
                        }
                    }
                }
                widget.content = office;
            } else if (child instanceof HdmiInNode) {
                widget.type = NodeTags.HDMI_IN;
                HdmiInNode hdmiInNode = (HdmiInNode) child;
                HdmiIn hdmiIn = new HdmiIn();
                hdmiIn.rotation = hdmiInNode.getRotation();
                hdmiIn.hideNoSignal = hdmiInNode.isHideNoSignal();
                hdmiIn.duration = hdmiInNode.getDuration();
                hdmiIn.source = hdmiInNode.getHdmiSource();
                widget.content = hdmiIn;
            } else {
                Log.w("PlayTaskConverter", "convertWidget: unknown widget!");
            }
            area.widgets.add(widget);
        }
        return area;
    }

    public static String c(int i4) {
        return String.format(Locale.US, "#%02X%02X%02X%02X", Integer.valueOf(Color.alpha(i4)), Integer.valueOf(Color.red(i4)), Integer.valueOf(Color.green(i4)), Integer.valueOf(Color.blue(i4)));
    }

    public static String d(long j4) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpleDateFormat.format(new Date(j4));
    }

    public static Effect e(EffectNode effectNode) {
        Effect effect = new Effect();
        effect.effectType = effectNode.getEffectType();
        effect.effectTime = effectNode.getEnterTime();
        effect.displayTime = effectNode.getDisplayTime();
        effect.speed = effectNode.getSpeed();
        effect.clearScreen = effectNode.isClearScreen();
        effect.endToEnd = effectNode.isEndToEnd();
        return effect;
    }

    public static Object f(String str) {
        if (str == null) {
            return null;
        }
        return h.a.A0(str, Object.class);
    }

    public static FontStyle g(FontStyleNode fontStyleNode) {
        if (fontStyleNode == null) {
            return null;
        }
        FontStyle fontStyle = new FontStyle();
        fontStyle.fontName = fontStyleNode.getFontName();
        fontStyle.fontSize = fontStyleNode.getFontSize();
        fontStyle.color = c(fontStyleNode.getColor());
        fontStyle.bgColor = c(fontStyleNode.getBgColor());
        fontStyle.bold = fontStyleNode.isBold();
        fontStyle.italic = fontStyleNode.isItalic();
        fontStyle.underline = fontStyleNode.isUnderline();
        return fontStyle;
    }

    public static PlayControl h(ProgramNode programNode) {
        ArrayList arrayList;
        PlayControl playControl = new PlayControl();
        if (programNode.getFixedDuration() != 0) {
            playControl.duration = Integer.valueOf(programNode.getFixedDuration());
        }
        if (programNode.getPlayCountPerDay() != 0) {
            playControl.playCountPerDay = Integer.valueOf(programNode.getPlayCountPerDay());
        }
        if (programNode.isOnlyFaceDetect()) {
            playControl.onlyFaceDetect = Boolean.TRUE;
        }
        List<DateRange> dateRanges = programNode.getDateRanges();
        ArrayList arrayList2 = null;
        if (dateRanges == null || dateRanges.isEmpty()) {
            arrayList = null;
        } else {
            arrayList = new ArrayList();
            for (DateRange dateRange : dateRanges) {
                PlayControl.DateRange dateRange2 = new PlayControl.DateRange();
                dateRange2.startDate = d(dateRange.getStartDate());
                dateRange2.endDate = d(dateRange.getEndDate());
                dateRange2.timeRanges = j(dateRange.getTimeRanges());
                arrayList.add(dateRange2);
            }
        }
        playControl.dateRanges = arrayList;
        playControl.timeRanges = j(programNode.getTimeRanges());
        List<WeekRange> weekRanges = programNode.getWeekRanges();
        if (weekRanges != null && !weekRanges.isEmpty()) {
            arrayList2 = new ArrayList();
            for (WeekRange weekRange : weekRanges) {
                PlayControl.WeekRange weekRange2 = new PlayControl.WeekRange();
                int weekFlags = weekRange.getWeekFlags();
                ArrayList arrayList3 = new ArrayList();
                if ((weekFlags & 1) != 0) {
                    arrayList3.add("Mon");
                }
                if ((weekFlags & 2) != 0) {
                    arrayList3.add("Tues");
                }
                if ((weekFlags & 4) != 0) {
                    arrayList3.add("Wed");
                }
                if ((weekFlags & 8) != 0) {
                    arrayList3.add("Thur");
                }
                if ((weekFlags & 16) != 0) {
                    arrayList3.add("Fri");
                }
                if ((weekFlags & 32) != 0) {
                    arrayList3.add("Sat");
                }
                if ((weekFlags & 64) != 0) {
                    arrayList3.add("Sun");
                }
                weekRange2.daysOfWeek = arrayList3;
                weekRange2.timeRanges = j(weekRange.getTimeRanges());
                arrayList2.add(weekRange2);
            }
        }
        playControl.weekRanges = arrayList2;
        return playControl;
    }

    public static String i(int i4) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm:ss", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpleDateFormat.format(new Date(i4 * 1000));
    }

    public static List<PlayControl.TimeRange> j(List<TimeRange> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (TimeRange timeRange : list) {
            PlayControl.TimeRange timeRange2 = new PlayControl.TimeRange();
            timeRange2.startTime = i(timeRange.getStartTime());
            timeRange2.endTime = i(timeRange.getEndTime());
            arrayList.add(timeRange2);
        }
        return arrayList;
    }

    public static String k(String str) {
        LocalFileInfo localFileInfoD = l.l.e().d(str);
        if (localFileInfoD != null) {
            return localFileInfoD.getOriginPath();
        }
        return null;
    }

    public static PlayTaskInfo l(@NonNull PlayTaskNode playTaskNode) {
        PlayTaskInfo playTaskInfo = new PlayTaskInfo();
        playTaskInfo.name = playTaskNode.getName();
        playTaskInfo.uuid = playTaskNode.getUuid();
        playTaskInfo.version = playTaskNode.getVersion();
        TagControl tagControlH = h0.g.h();
        TagControlInfo tagControlInfo = new TagControlInfo();
        if (tagControlH != null) {
            tagControlInfo.enable = tagControlH.isEnable();
            tagControlInfo.showTags = tagControlH.getShowTags();
            tagControlInfo.hideTags = tagControlH.getHideTags();
        } else {
            tagControlInfo.enable = false;
        }
        playTaskInfo.tagControl = tagControlInfo;
        playTaskInfo.extraData = f(playTaskNode.getExtraData());
        playTaskInfo.programs = new ArrayList();
        for (int i4 = 0; i4 < playTaskNode.childCount(); i4++) {
            ProgramNode child = playTaskNode.getChild(i4);
            ProgramInfo programInfo = new ProgramInfo();
            programInfo.name = child.getName();
            programInfo.uuid = child.getUuid();
            programInfo.version = child.getVersion();
            programInfo.extraData = f(child.getExtraData());
            programInfo.playControl = h(child);
            programInfo.fileSize = child.getResFileSize();
            programInfo.updateTime = child.getUpdateTime();
            programInfo.tags = child.getTags();
            playTaskInfo.programs.add(programInfo);
        }
        return playTaskInfo;
    }
}
