package cn.huidu.lcd.setting.ui.view;

import android.graphics.Point;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.huidu.lcd.setting.R$id;
import cn.huidu.lcd.setting.R$layout;
import cn.huidu.lcd.setting.ui.adapter.ItemsListAdapter;
import cn.huidu.lcd.setting.ui.base.BaseActivity;
import java.util.List;
import w0.a;

/* JADX INFO: loaded from: classes.dex */
public class ItemsListSelectActivity extends BaseActivity implements ItemsListAdapter.b {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public LinearLayoutManager f980k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public RecyclerView f981l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public TextView f982m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ItemsListAdapter f983n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f984o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public List<String> f985p;

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Point pointB = a.b(this);
        if (a.d(this)) {
            int i4 = pointB.y;
            if (i4 < 360) {
                setContentView(R$layout.activity_items_list_select_barscreen);
            } else if (i4 < 360 || i4 >= 800) {
                setContentView(R$layout.activity_items_list_select);
            } else {
                setContentView(R$layout.activity_items_list_select_barscreen);
            }
        } else {
            int i5 = pointB.x;
            if (i5 < 360) {
                setContentView(R$layout.activity_items_list_select_barscreen);
            } else if (i5 < 360 || i5 >= 800) {
                setContentView(R$layout.activity_items_list_select);
            } else {
                setContentView(R$layout.activity_items_list_select_barscreen);
            }
        }
        this.f982m = (TextView) findViewById(R$id.item_title);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        this.f980k = linearLayoutManager;
        linearLayoutManager.setOrientation(1);
        RecyclerView recyclerView = (RecyclerView) findViewById(R$id.item_list_view);
        this.f981l = recyclerView;
        recyclerView.setLayoutManager(this.f980k);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.f982m.setText(extras.getString("title"));
            this.f985p = extras.getStringArrayList("List");
            this.f984o = extras.getInt(NotificationCompat.MessagingStyle.Message.KEY_DATA_MIME_TYPE);
        }
        ItemsListAdapter itemsListAdapter = new ItemsListAdapter(this, this.f985p);
        this.f983n = itemsListAdapter;
        itemsListAdapter.f751e = this;
        int i6 = this.f984o;
        itemsListAdapter.f749c = i6;
        itemsListAdapter.f750d = i6;
        this.f981l.setAdapter(itemsListAdapter);
    }

    @Override // cn.huidu.lcd.setting.ui.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i4, KeyEvent keyEvent) {
        int i5 = this.f983n.f750d;
        this.f984o = i5;
        if (i4 == 19) {
            y(i5 - 1);
            return true;
        }
        if (i4 == 20) {
            y(i5 + 1);
            return true;
        }
        if (i4 != 66) {
            return super.onKeyDown(i4, keyEvent);
        }
        x(i5);
        return true;
    }

    public final void x(int i4) {
        Bundle bundle = new Bundle();
        bundle.putInt("switch", i4);
        setResult(-1, getIntent().putExtras(bundle));
        finish();
    }

    public final void y(int i4) {
        if (i4 < 0 || i4 >= this.f985p.size()) {
            return;
        }
        this.f983n.f750d = i4;
        this.f980k.findViewByPosition(i4).requestFocus();
    }
}
