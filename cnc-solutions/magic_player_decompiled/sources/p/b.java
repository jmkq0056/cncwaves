package p;

import android.graphics.Bitmap;
import android.os.Message;
import android.util.Log;
import android.widget.ImageView;
import android.widget.Toast;
import c0.f;
import cn.huidu.lcd.core.entity.model.CloudRegisterResult;
import cn.huidu.lcd.player.PlayerActivity;
import cn.huidu.lcd.render.player.view.ContainerView;
import cn.huidu.lcd.setting.R$drawable;
import cn.huidu.lcd.setting.R$string;
import cn.huidu.lcd.setting.ui.adapter.AudioListItemAdapter;
import cn.huidu.lcd.setting.ui.adapter.HomeAdapter;
import cn.huidu.lcd.setting.ui.adapter.SwitchTimeListAdapter;
import cn.huidu.lcd.setting.ui.base.BaseActivity;
import cn.huidu.lcd.setting.ui.network.WirelessNetworkSetActivity;
import cn.huidu.lcd.setting.ui.view.AudioItemUpdateCell;
import cn.huidu.lcd.setting.ui.view.InputInfoJoinWifiActivity;
import cn.huidu.lcd.setting.ui.view.InputWifiPwdActivity;
import cn.huidu.lcd.setting.ui.view.NetworkingModeFragment;
import java.util.Objects;
import n0.a;
import p.d;
import s.k;
import v0.c;
import x.a;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class b implements a.InterfaceC0054a, f.a, z.c, HomeAdapter.a, AudioItemUpdateCell.a, a.InterfaceC0032a, d.b, k.b, c.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2922a = 2;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2923b;

    public /* synthetic */ b(d0.a aVar) {
        this.f2923b = aVar;
    }

    public /* synthetic */ b(d0.b bVar) {
        this.f2923b = bVar;
    }

    public /* synthetic */ b(d dVar) {
        this.f2923b = dVar;
    }

    @Override // s.k.b
    public void a(CloudRegisterResult cloudRegisterResult) {
        NetworkingModeFragment networkingModeFragment = (NetworkingModeFragment) this.f2923b;
        int i4 = NetworkingModeFragment.f997n;
        Objects.requireNonNull(networkingModeFragment);
        Log.d("NetworkingModeFragment", "result: " + cloudRegisterResult.toString());
        if (cloudRegisterResult.isRegisterSuccess()) {
            n.c cVar = networkingModeFragment.f1008m;
            cVar.f2627c = true;
            cVar.f2630f = 0;
            l.b.c().d(networkingModeFragment.f1008m);
            p0.a.j().f2981l = 0;
            p0.a.j().k();
            networkingModeFragment.g(false);
            networkingModeFragment.f998c.finish();
            return;
        }
        n.c cVar2 = networkingModeFragment.f1008m;
        cVar2.f2627c = false;
        cVar2.f2630f = cloudRegisterResult.error;
        l.b.c().d(networkingModeFragment.f1008m);
        p0.a.j().g();
        networkingModeFragment.f1006k.setText(networkingModeFragment.getString(R$string.not_register));
        networkingModeFragment.g(false);
        Toast.makeText(networkingModeFragment.getContext(), k.c(cloudRegisterResult, networkingModeFragment.getContext()), 0).show();
    }

    @Override // z.c
    public void b(Bitmap bitmap) {
        ImageView imageView;
        switch (this.f2922a) {
            case 3:
                d0.a aVar = (d0.a) this.f2923b;
                aVar.f1472e = bitmap;
                ContainerView containerView = aVar.f1471d;
                if (containerView != null) {
                    containerView.setBgImage(bitmap);
                }
                break;
            case 4:
                d0.b bVar = (d0.b) this.f2923b;
                bVar.f1484v = bitmap;
                ContainerView containerView2 = bVar.f1475m;
                if (containerView2 != null) {
                    containerView2.setBgImage(bitmap);
                }
                break;
            case 5:
                for (d0.g gVar : ((d0.f) this.f2923b).f1499m) {
                    gVar.f1507r = bitmap;
                    ContainerView containerView3 = gVar.f1502m;
                    if (containerView3 != null) {
                        containerView3.setBgImage(bitmap);
                    }
                }
                break;
            default:
                f0.j jVar = (f0.j) this.f2923b;
                jVar.f1670q = bitmap;
                if (bitmap != null && (imageView = jVar.f1669p) != null) {
                    imageView.post(new m.b(jVar, bitmap));
                    break;
                }
                break;
        }
    }

    public void c() {
        switch (this.f2922a) {
            case 1:
                PlayerActivity playerActivity = (PlayerActivity) this.f2923b;
                int i4 = PlayerActivity.f381x;
                playerActivity.k();
                break;
            default:
                ((BaseActivity) this.f2923b).i();
                break;
        }
    }

    public void d(boolean z3) {
        switch (this.f2922a) {
            case 8:
                AudioListItemAdapter.d dVar = (AudioListItemAdapter.d) this.f2923b;
                dVar.f723a.f2807d = z3;
                dVar.f728f.setImageResource(z3 ? R$drawable.item_delete_selected : R$drawable.item_delete_unselect);
                break;
            default:
                SwitchTimeListAdapter.d dVar2 = (SwitchTimeListAdapter.d) this.f2923b;
                if (dVar2.f789k.f771b) {
                    dVar2.f780b.f2833n = z3;
                } else {
                    dVar2.f779a.f2836c = z3;
                }
                dVar2.f788j.setImageResource(z3 ? R$drawable.item_delete_selected : R$drawable.item_delete_unselect);
                break;
        }
    }

    public void e(boolean z3, String str) {
        switch (this.f2922a) {
            case 11:
                WirelessNetworkSetActivity wirelessNetworkSetActivity = (WirelessNetworkSetActivity) this.f2923b;
                Objects.requireNonNull(wirelessNetworkSetActivity);
                Message messageObtain = Message.obtain();
                if (z3) {
                    messageObtain.what = 2;
                } else {
                    messageObtain.what = 3;
                }
                messageObtain.obj = str;
                wirelessNetworkSetActivity.f895l.sendMessage(messageObtain);
                break;
            case 12:
                InputInfoJoinWifiActivity inputInfoJoinWifiActivity = (InputInfoJoinWifiActivity) this.f2923b;
                Objects.requireNonNull(inputInfoJoinWifiActivity);
                Message messageObtain2 = Message.obtain();
                if (z3) {
                    messageObtain2.what = 1;
                } else {
                    messageObtain2.what = 0;
                }
                messageObtain2.obj = str;
                inputInfoJoinWifiActivity.f960t.sendMessage(messageObtain2);
                break;
            default:
                InputWifiPwdActivity inputWifiPwdActivity = (InputWifiPwdActivity) this.f2923b;
                Objects.requireNonNull(inputWifiPwdActivity);
                Message messageObtain3 = Message.obtain();
                if (z3) {
                    messageObtain3.what = 1;
                } else {
                    messageObtain3.what = 0;
                }
                messageObtain3.obj = str;
                inputWifiPwdActivity.f967k.sendMessage(messageObtain3);
                break;
        }
    }
}
