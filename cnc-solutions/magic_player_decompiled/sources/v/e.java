package v;

import android.os.CountDownTimer;
import cn.huidu.lcd.player.PlayerActivity;
import cn.huidu.lcd.player.R;

/* JADX INFO: loaded from: classes.dex */
public class e extends CountDownTimer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ PlayerActivity f3638a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(PlayerActivity playerActivity, long j4, long j5) {
        super(j4, j5);
        this.f3638a = playerActivity;
    }

    @Override // android.os.CountDownTimer
    public void onFinish() {
        PlayerActivity playerActivity = this.f3638a;
        playerActivity.f396o = false;
        playerActivity.f382a.setVisibility(8);
        cn.huidu.lcd.core.util.a.j();
    }

    @Override // android.os.CountDownTimer
    public void onTick(long j4) {
        this.f3638a.f383b.setText(this.f3638a.getString(R.string.count_down_turn_off).replace("#X#", String.valueOf((int) (j4 / 1000))));
    }
}
