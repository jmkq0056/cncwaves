package com.example.digitalkiosk.fragments;

import android.R;
import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.NumberPicker;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import coil.Coil;
import coil.request.ImageRequest;
import com.example.digitalkiosk.MainActivity;
import com.example.digitalkiosk.OptionActivity;
import com.example.digitalkiosk.ShopActivity;
import com.example.digitalkiosk.models.KioskSetting;
import com.example.digitalkiosk.models.Translation;
import com.google.android.material.timepicker.TimeModel;
import com.sun.jna.platform.win32.WinError;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: compiled from: TimeSelectionFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0012\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J&\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\b\u0010\u001a\u001a\u00020\u0011H\u0002J \u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\fH\u0002J(\u0010 \u001a\u00020\u00112\u0006\u0010!\u001a\u00020\u001d2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\fH\u0002J\u0010\u0010\"\u001a\u00020\u00112\u0006\u0010#\u001a\u00020$H\u0002R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcom/example/digitalkiosk/fragments/TimeSelectionFragment;", "Landroidx/fragment/app/DialogFragment;", "kioskSetting", "Lcom/example/digitalkiosk/models/KioskSetting;", "optionsTimer", "Landroid/os/CountDownTimer;", "<init>", "(Lcom/example/digitalkiosk/models/KioskSetting;Landroid/os/CountDownTimer;)V", "minuteval", "", "hourval", "minutesDifference", "", "phoneNumber", "phoneView", "Landroid/widget/TextView;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "updatePhoneNumber", "setMinuteValues", "minute", "Landroid/widget/NumberPicker;", "min", "max", "setHourValues", "hour", "numberButtonClick", "button", "Landroid/widget/Button;", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TimeSelectionFragment extends DialogFragment {
    private String hourval;
    private final KioskSetting kioskSetting;
    private int minutesDifference;
    private String minuteval;
    private final CountDownTimer optionsTimer;
    private String phoneNumber;
    private TextView phoneView;

    public /* synthetic */ TimeSelectionFragment(KioskSetting kioskSetting, CountDownTimer countDownTimer, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(kioskSetting, (i & 2) != 0 ? null : countDownTimer);
    }

    public TimeSelectionFragment(KioskSetting kioskSetting, CountDownTimer countDownTimer) {
        this.kioskSetting = kioskSetting;
        this.optionsTimer = countDownTimer;
        this.minuteval = "";
        this.hourval = "";
        KioskSetting kioskSetting2 = OptionActivity.INSTANCE.getKioskSetting();
        this.minutesDifference = kioskSetting2 != null ? kioskSetting2.getPick_later_minutes() : 15;
        this.phoneNumber = "";
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R.style.Theme.Black.NoTitleBar.Fullscreen);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Window window;
        View decorView;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null && (decorView = window.getDecorView()) != null) {
            decorView.setSystemUiVisibility(WinError.ERROR_CLUSTER_NETWORK_NOT_FOUND_FOR_IP);
        }
        View viewInflate = inflater.inflate(com.example.digitalkiosk.R.layout.time_selection, container, false);
        ImageView imageView = (ImageView) viewInflate.findViewById(com.example.digitalkiosk.R.id.logo);
        Intrinsics.checkNotNull(imageView);
        KioskSetting kioskSetting = this.kioskSetting;
        Coil.imageLoader(imageView.getContext()).enqueue(new ImageRequest.Builder(imageView.getContext()).data(kioskSetting != null ? kioskSetting.getApp_logo() : null).target(imageView).build());
        View viewFindViewById = viewInflate.findViewById(com.example.digitalkiosk.R.id.back_button);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById, "findViewById(...)");
        Button button = (Button) viewFindViewById;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.TimeSelectionFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TimeSelectionFragment.onCreateView$lambda$1(this.f$0, view);
            }
        });
        this.phoneView = (TextView) viewInflate.findViewById(com.example.digitalkiosk.R.id.number_display);
        if (OptionActivity.INSTANCE.getPhone_number() != null) {
            String phone_number = OptionActivity.INSTANCE.getPhone_number();
            Intrinsics.checkNotNull(phone_number);
            this.phoneNumber = phone_number;
        }
        updatePhoneNumber();
        View viewFindViewById2 = viewInflate.findViewById(com.example.digitalkiosk.R.id.number_key_0);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById2, "findViewById(...)");
        numberButtonClick((Button) viewFindViewById2);
        View viewFindViewById3 = viewInflate.findViewById(com.example.digitalkiosk.R.id.number_key_1);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById3, "findViewById(...)");
        numberButtonClick((Button) viewFindViewById3);
        View viewFindViewById4 = viewInflate.findViewById(com.example.digitalkiosk.R.id.number_key_2);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById4, "findViewById(...)");
        numberButtonClick((Button) viewFindViewById4);
        View viewFindViewById5 = viewInflate.findViewById(com.example.digitalkiosk.R.id.number_key_3);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById5, "findViewById(...)");
        numberButtonClick((Button) viewFindViewById5);
        View viewFindViewById6 = viewInflate.findViewById(com.example.digitalkiosk.R.id.number_key_4);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById6, "findViewById(...)");
        numberButtonClick((Button) viewFindViewById6);
        View viewFindViewById7 = viewInflate.findViewById(com.example.digitalkiosk.R.id.number_key_5);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById7, "findViewById(...)");
        numberButtonClick((Button) viewFindViewById7);
        View viewFindViewById8 = viewInflate.findViewById(com.example.digitalkiosk.R.id.number_key_6);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById8, "findViewById(...)");
        numberButtonClick((Button) viewFindViewById8);
        View viewFindViewById9 = viewInflate.findViewById(com.example.digitalkiosk.R.id.number_key_7);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById9, "findViewById(...)");
        numberButtonClick((Button) viewFindViewById9);
        View viewFindViewById10 = viewInflate.findViewById(com.example.digitalkiosk.R.id.number_key_8);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById10, "findViewById(...)");
        numberButtonClick((Button) viewFindViewById10);
        View viewFindViewById11 = viewInflate.findViewById(com.example.digitalkiosk.R.id.number_key_9);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById11, "findViewById(...)");
        numberButtonClick((Button) viewFindViewById11);
        ((Button) viewInflate.findViewById(com.example.digitalkiosk.R.id.backspace_button)).setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.TimeSelectionFragment$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TimeSelectionFragment.onCreateView$lambda$2(this.f$0, view);
            }
        });
        Translation translation = MainActivity.INSTANCE.get_term_translation("pickup_phone_number");
        if (translation != null) {
            ((TextView) viewInflate.findViewById(com.example.digitalkiosk.R.id.phone_number_label)).setText(translation.getTranslation());
        }
        Translation translation2 = MainActivity.INSTANCE.get_term_translation("pickup_phone_number_warning");
        if (translation2 != null) {
            ((TextView) viewInflate.findViewById(com.example.digitalkiosk.R.id.phone_number_warning)).setText(translation2.getTranslation());
        }
        View viewFindViewById12 = viewInflate.findViewById(com.example.digitalkiosk.R.id.confirm_button);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById12, "findViewById(...)");
        Button button2 = (Button) viewFindViewById12;
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.TimeSelectionFragment$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TimeSelectionFragment.onCreateView$lambda$3(this.f$0, view);
            }
        });
        Translation translation3 = MainActivity.INSTANCE.get_term_translation("choose_your_pickup_time");
        if (translation3 != null) {
            ((TextView) viewInflate.findViewById(com.example.digitalkiosk.R.id.title_text)).setText(translation3.getTranslation());
        }
        Translation translation4 = MainActivity.INSTANCE.get_term_translation("back_pickup");
        if (translation4 != null) {
            button.setText(translation4.getTranslation());
        }
        Translation translation5 = MainActivity.INSTANCE.get_term_translation("confirm_pickup");
        if (translation5 != null) {
            button2.setText(translation5.getTranslation());
        }
        Calendar calendar = Calendar.getInstance();
        int i = calendar.get(11);
        int i2 = calendar.get(12);
        if (i2 >= 60 - (this.minutesDifference * 2)) {
            i++;
        }
        View viewFindViewById13 = viewInflate.findViewById(com.example.digitalkiosk.R.id.hour);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById13, "findViewById(...)");
        NumberPicker numberPicker = (NumberPicker) viewFindViewById13;
        View viewFindViewById14 = viewInflate.findViewById(com.example.digitalkiosk.R.id.minute);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById14, "findViewById(...)");
        NumberPicker numberPicker2 = (NumberPicker) viewFindViewById14;
        int i3 = this.minutesDifference;
        if (i2 < 60 - (i3 * 2)) {
            setMinuteValues(numberPicker2, i2 + i3, 59);
        } else {
            setMinuteValues(numberPicker2, (i2 + i3) - 60, 59);
        }
        setHourValues(numberPicker, numberPicker2, i, 20);
        return viewInflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$1(TimeSelectionFragment timeSelectionFragment, View view) {
        CountDownTimer countDownTimer = timeSelectionFragment.optionsTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = timeSelectionFragment.optionsTimer;
        if (countDownTimer2 != null) {
            countDownTimer2.start();
        }
        timeSelectionFragment.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$2(TimeSelectionFragment timeSelectionFragment, View view) {
        if (Intrinsics.areEqual(timeSelectionFragment.phoneNumber, "")) {
            return;
        }
        timeSelectionFragment.phoneNumber = StringsKt.dropLast(timeSelectionFragment.phoneNumber, 1);
        timeSelectionFragment.updatePhoneNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$3(TimeSelectionFragment timeSelectionFragment, View view) {
        CountDownTimer countDownTimer = timeSelectionFragment.optionsTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        OptionActivity.INSTANCE.setOrder_type("pick-up");
        OptionActivity.INSTANCE.setSelected_time(timeSelectionFragment.hourval + AbstractJsonLexerKt.COLON + timeSelectionFragment.minuteval);
        OptionActivity.INSTANCE.setPhone_number(timeSelectionFragment.phoneNumber);
        timeSelectionFragment.dismiss();
        timeSelectionFragment.startActivity(new Intent(timeSelectionFragment.getContext(), (Class<?>) ShopActivity.class));
    }

    private final void updatePhoneNumber() {
        CountDownTimer countDownTimer = this.optionsTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = this.optionsTimer;
        if (countDownTimer2 != null) {
            countDownTimer2.start();
        }
        TextView textView = this.phoneView;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("phoneView");
            textView = null;
        }
        textView.setText(this.phoneNumber);
    }

    private final void setMinuteValues(NumberPicker minute, int min, int max) {
        final ArrayList arrayList = new ArrayList();
        if (min <= max) {
            while (true) {
                if (min % this.minutesDifference == 0) {
                    StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                    String str = String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Arrays.copyOf(new Object[]{Integer.valueOf(min)}, 1));
                    Intrinsics.checkNotNullExpressionValue(str, "format(...)");
                    arrayList.add(str);
                }
                if (min == max) {
                    break;
                } else {
                    min++;
                }
            }
        }
        if (arrayList.size() > 0) {
            minute.setDisplayedValues(null);
            minute.setMinValue(0);
            minute.setMaxValue(arrayList.size() - 1);
            minute.setDisplayedValues((String[]) arrayList.toArray(new String[0]));
            minute.setValue(0);
            minute.setWrapSelectorWheel(true);
            this.minuteval = (String) arrayList.get(0);
            minute.setOnValueChangedListener(new NumberPicker.OnValueChangeListener() { // from class: com.example.digitalkiosk.fragments.TimeSelectionFragment$$ExternalSyntheticLambda5
                @Override // android.widget.NumberPicker.OnValueChangeListener
                public final void onValueChange(NumberPicker numberPicker, int i, int i2) {
                    TimeSelectionFragment.setMinuteValues$lambda$4(this.f$0, arrayList, numberPicker, i, i2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setMinuteValues$lambda$4(TimeSelectionFragment timeSelectionFragment, ArrayList arrayList, NumberPicker numberPicker, int i, int i2) {
        CountDownTimer countDownTimer = timeSelectionFragment.optionsTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = timeSelectionFragment.optionsTimer;
        if (countDownTimer2 != null) {
            countDownTimer2.start();
        }
        timeSelectionFragment.minuteval = (String) arrayList.get(i2);
    }

    private final void setHourValues(NumberPicker hour, final NumberPicker minute, int min, int max) {
        final ArrayList arrayList = new ArrayList();
        if (min <= max) {
            while (true) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String str = String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Arrays.copyOf(new Object[]{Integer.valueOf(min)}, 1));
                Intrinsics.checkNotNullExpressionValue(str, "format(...)");
                arrayList.add(str);
                if (min == max) {
                    break;
                } else {
                    min++;
                }
            }
        }
        if (arrayList.size() > 0) {
            hour.setDisplayedValues(null);
            hour.setMinValue(0);
            hour.setMaxValue(arrayList.size() - 1);
            hour.setDisplayedValues((String[]) arrayList.toArray(new String[0]));
            hour.setValue(0);
            hour.setWrapSelectorWheel(true);
            final int i = Calendar.getInstance().get(12);
            this.hourval = (String) arrayList.get(0);
            hour.setOnValueChangedListener(new NumberPicker.OnValueChangeListener() { // from class: com.example.digitalkiosk.fragments.TimeSelectionFragment$$ExternalSyntheticLambda0
                @Override // android.widget.NumberPicker.OnValueChangeListener
                public final void onValueChange(NumberPicker numberPicker, int i2, int i3) {
                    TimeSelectionFragment.setHourValues$lambda$5(this.f$0, i, minute, arrayList, numberPicker, i2, i3);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setHourValues$lambda$5(TimeSelectionFragment timeSelectionFragment, int i, NumberPicker numberPicker, ArrayList arrayList, NumberPicker numberPicker2, int i2, int i3) {
        CountDownTimer countDownTimer = timeSelectionFragment.optionsTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = timeSelectionFragment.optionsTimer;
        if (countDownTimer2 != null) {
            countDownTimer2.start();
        }
        if (i3 == 0) {
            int i4 = timeSelectionFragment.minutesDifference;
            if (i < 60 - i4) {
                timeSelectionFragment.setMinuteValues(numberPicker, i + i4, 59);
            } else {
                timeSelectionFragment.setMinuteValues(numberPicker, (i + i4) - 60, 59);
            }
        } else {
            timeSelectionFragment.setMinuteValues(numberPicker, 0, 59);
        }
        timeSelectionFragment.hourval = (String) arrayList.get(i3);
    }

    private final void numberButtonClick(final Button button) {
        button.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.TimeSelectionFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TimeSelectionFragment.numberButtonClick$lambda$6(this.f$0, button, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void numberButtonClick$lambda$6(TimeSelectionFragment timeSelectionFragment, Button button, View view) {
        timeSelectionFragment.phoneNumber += ((Object) button.getText());
        timeSelectionFragment.updatePhoneNumber();
    }
}
