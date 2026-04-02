package cn.huidu.lcd.setting.ui.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import cn.huidu.lcd.setting.R$color;
import cn.huidu.lcd.setting.R$drawable;
import cn.huidu.lcd.setting.R$id;
import cn.huidu.lcd.setting.R$layout;
import cn.huidu.lcd.setting.ui.SwitchMachineSetMainActivity;
import cn.huidu.lcd.setting.ui.SwitchScreenSetMainActivity;
import cn.huidu.lcd.setting.ui.adapter.SwitchTimeListAdapter;
import cn.huidu.lcd.setting.ui.base.BaseLinearLayoutManager;
import cn.huidu.lcd.setting.ui.view.AudioItemUpdateCell;
import java.util.ArrayList;
import java.util.List;
import o.e;

/* JADX INFO: loaded from: classes.dex */
public class SwitchTimeListAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f770a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f771b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public b f772c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public a f773d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public List<e> f774e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public List<o.d> f775f = new ArrayList();

    public interface a {
    }

    public interface b {
    }

    public class c extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public TextView f776a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public LinearLayout f777b;

        public c(@NonNull View view) {
            super(view);
            this.f776a = (TextView) view.findViewById(R$id.add_item_text);
            LinearLayout linearLayout = (LinearLayout) view.findViewById(R$id.item_add_view);
            this.f777b = linearLayout;
            linearLayout.setOnClickListener(new w.a(this));
            this.f777b.setOnFocusChangeListener(new i0.b(this));
        }
    }

    public class d extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public e f779a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public o.d f780b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public SwitchMachineWeekAdapter f781c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public AudioItemUpdateCell f782d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public LinearLayout f783e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public TextView f784f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public RecyclerView f785g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public TextView f786h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public TextView f787i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public ImageView f788j;

        public d(@NonNull View view) {
            super(view);
            if (view instanceof AudioItemUpdateCell) {
                this.f782d = (AudioItemUpdateCell) view;
            }
            this.f783e = (LinearLayout) view.findViewById(R$id.audio_item_main);
            this.f784f = (TextView) view.findViewById(R$id.item_name_text);
            this.f785g = (RecyclerView) view.findViewById(R$id.rv_machine_week);
            this.f786h = (TextView) view.findViewById(R$id.item_date_text);
            this.f787i = (TextView) view.findViewById(R$id.audio_value_text);
            this.f788j = (ImageView) view.findViewById(R$id.delete_img);
            final int i4 = 0;
            this.f782d.setOnClickListener(new View.OnClickListener(this) { // from class: k0.f

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ SwitchTimeListAdapter.d f2046b;

                {
                    this.f2046b = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    switch (i4) {
                        case 0:
                            SwitchTimeListAdapter.d dVar = this.f2046b;
                            SwitchTimeListAdapter switchTimeListAdapter = SwitchTimeListAdapter.this;
                            if (!switchTimeListAdapter.f771b) {
                                SwitchTimeListAdapter.b bVar = switchTimeListAdapter.f772c;
                                if (bVar != null) {
                                    o.e eVar = dVar.f779a;
                                    SwitchScreenSetMainActivity switchScreenSetMainActivity = (SwitchScreenSetMainActivity) bVar;
                                    if (!eVar.f2836c) {
                                        switchScreenSetMainActivity.f661p = eVar;
                                        switchScreenSetMainActivity.B(eVar.f2834a, eVar.f2835b, 2);
                                    } else {
                                        switchScreenSetMainActivity.f658m.remove(eVar);
                                        switchScreenSetMainActivity.z();
                                        switchScreenSetMainActivity.f660o.b(switchScreenSetMainActivity.f657l);
                                        switchScreenSetMainActivity.f660o.notifyDataSetChanged();
                                    }
                                }
                            } else {
                                SwitchTimeListAdapter.a aVar = switchTimeListAdapter.f773d;
                                if (aVar != null) {
                                    o.d dVar2 = dVar.f780b;
                                    SwitchMachineSetMainActivity switchMachineSetMainActivity = (SwitchMachineSetMainActivity) aVar;
                                    if (!dVar2.f2833n) {
                                        switchMachineSetMainActivity.f653p = dVar2;
                                        switchMachineSetMainActivity.B(dVar2.f2820a, dVar2.f2821b, dVar2.f2822c, dVar2.f2823d, dVar2.f2824e, dVar2.f2825f, dVar2.f2826g, dVar2.f2827h, dVar2.f2828i, dVar2.f2829j, dVar2.f2830k, dVar2.f2831l, dVar2.f2832m, 2);
                                    } else {
                                        switchMachineSetMainActivity.f650m.remove(dVar2);
                                        switchMachineSetMainActivity.z();
                                        switchMachineSetMainActivity.f652o.a(switchMachineSetMainActivity.f649l);
                                        switchMachineSetMainActivity.f652o.notifyDataSetChanged();
                                    }
                                }
                            }
                            break;
                        default:
                            SwitchTimeListAdapter.d dVar3 = this.f2046b;
                            if (dVar3.f782d.isFocused()) {
                                boolean z3 = SwitchTimeListAdapter.this.f771b;
                                boolean z4 = !(z3 ? dVar3.f780b.f2833n : dVar3.f779a.f2836c);
                                if (z3) {
                                    dVar3.f780b.f2833n = z4;
                                } else {
                                    dVar3.f779a.f2836c = z4;
                                }
                                dVar3.f782d.setDelete(z4);
                                dVar3.f788j.setImageResource(z4 ? R$drawable.item_delete_selected : R$drawable.item_delete_unselect);
                                break;
                            }
                            break;
                    }
                }
            });
            final int i5 = 1;
            this.f788j.setOnClickListener(new View.OnClickListener(this) { // from class: k0.f

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ SwitchTimeListAdapter.d f2046b;

                {
                    this.f2046b = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    switch (i5) {
                        case 0:
                            SwitchTimeListAdapter.d dVar = this.f2046b;
                            SwitchTimeListAdapter switchTimeListAdapter = SwitchTimeListAdapter.this;
                            if (!switchTimeListAdapter.f771b) {
                                SwitchTimeListAdapter.b bVar = switchTimeListAdapter.f772c;
                                if (bVar != null) {
                                    o.e eVar = dVar.f779a;
                                    SwitchScreenSetMainActivity switchScreenSetMainActivity = (SwitchScreenSetMainActivity) bVar;
                                    if (!eVar.f2836c) {
                                        switchScreenSetMainActivity.f661p = eVar;
                                        switchScreenSetMainActivity.B(eVar.f2834a, eVar.f2835b, 2);
                                    } else {
                                        switchScreenSetMainActivity.f658m.remove(eVar);
                                        switchScreenSetMainActivity.z();
                                        switchScreenSetMainActivity.f660o.b(switchScreenSetMainActivity.f657l);
                                        switchScreenSetMainActivity.f660o.notifyDataSetChanged();
                                    }
                                }
                            } else {
                                SwitchTimeListAdapter.a aVar = switchTimeListAdapter.f773d;
                                if (aVar != null) {
                                    o.d dVar2 = dVar.f780b;
                                    SwitchMachineSetMainActivity switchMachineSetMainActivity = (SwitchMachineSetMainActivity) aVar;
                                    if (!dVar2.f2833n) {
                                        switchMachineSetMainActivity.f653p = dVar2;
                                        switchMachineSetMainActivity.B(dVar2.f2820a, dVar2.f2821b, dVar2.f2822c, dVar2.f2823d, dVar2.f2824e, dVar2.f2825f, dVar2.f2826g, dVar2.f2827h, dVar2.f2828i, dVar2.f2829j, dVar2.f2830k, dVar2.f2831l, dVar2.f2832m, 2);
                                    } else {
                                        switchMachineSetMainActivity.f650m.remove(dVar2);
                                        switchMachineSetMainActivity.z();
                                        switchMachineSetMainActivity.f652o.a(switchMachineSetMainActivity.f649l);
                                        switchMachineSetMainActivity.f652o.notifyDataSetChanged();
                                    }
                                }
                            }
                            break;
                        default:
                            SwitchTimeListAdapter.d dVar3 = this.f2046b;
                            if (dVar3.f782d.isFocused()) {
                                boolean z3 = SwitchTimeListAdapter.this.f771b;
                                boolean z4 = !(z3 ? dVar3.f780b.f2833n : dVar3.f779a.f2836c);
                                if (z3) {
                                    dVar3.f780b.f2833n = z4;
                                } else {
                                    dVar3.f779a.f2836c = z4;
                                }
                                dVar3.f782d.setDelete(z4);
                                dVar3.f788j.setImageResource(z4 ? R$drawable.item_delete_selected : R$drawable.item_delete_unselect);
                                break;
                            }
                            break;
                    }
                }
            });
            this.f782d.setOnFocusChangeListener(new i0.b(this));
            this.f782d.setDeleteItemListener(new p.b(this));
        }
    }

    public SwitchTimeListAdapter(Context context, boolean z3) {
        this.f770a = context;
        this.f771b = z3;
    }

    public void a(List<o.d> list) {
        this.f775f.clear();
        if (list != null) {
            this.f775f.addAll(list);
        }
    }

    public void b(List<e> list) {
        this.f774e.clear();
        if (list != null) {
            this.f774e.addAll(list);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f771b ? this.f775f.size() : this.f774e.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i4) {
        return i4;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i4) {
        int size = this.f774e.size();
        int size2 = this.f775f.size();
        return this.f771b ? (size2 <= 1 || i4 == size2 - 1) ? 2 : 1 : (size <= 1 || i4 == size - 1) ? 2 : 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i4) {
        if (!(viewHolder instanceof d)) {
            if (viewHolder instanceof c) {
                c cVar = (c) viewHolder;
                if (cVar.f777b.isFocused()) {
                    return;
                }
                cVar.f777b.setScaleX(0.98f);
                if (getItemCount() == 1) {
                    cVar.f777b.setBackgroundResource(R$drawable.bg_radius_434343);
                    return;
                } else {
                    cVar.f777b.setBackgroundResource(R$drawable.bg_stroke_radius_bottom_434343);
                    return;
                }
            }
            return;
        }
        d dVar = (d) viewHolder;
        if (this.f771b) {
            o.d dVar2 = this.f775f.get(i4);
            dVar.f780b = dVar2;
            dVar.f784f.setText(dVar.f780b.f2820a + "~" + dVar.f780b.f2821b);
            dVar.f787i.setVisibility(4);
            BaseLinearLayoutManager baseLinearLayoutManager = new BaseLinearLayoutManager(SwitchTimeListAdapter.this.f770a);
            baseLinearLayoutManager.setOrientation(0);
            dVar.f785g.setLayoutManager(baseLinearLayoutManager);
            SwitchMachineWeekAdapter switchMachineWeekAdapter = new SwitchMachineWeekAdapter(SwitchTimeListAdapter.this.f770a);
            dVar.f781c = switchMachineWeekAdapter;
            if (dVar2.f2822c) {
                if (dVar2.f2823d) {
                    switchMachineWeekAdapter.f768b.add("一");
                }
                if (dVar2.f2824e) {
                    switchMachineWeekAdapter.f768b.add("二");
                }
                if (dVar2.f2825f) {
                    switchMachineWeekAdapter.f768b.add("三");
                }
                if (dVar2.f2826g) {
                    switchMachineWeekAdapter.f768b.add("四");
                }
                if (dVar2.f2827h) {
                    switchMachineWeekAdapter.f768b.add("五");
                }
                if (dVar2.f2828i) {
                    switchMachineWeekAdapter.f768b.add("六");
                }
                if (dVar2.f2829j) {
                    switchMachineWeekAdapter.f768b.add("日");
                }
            }
            dVar.f785g.setAdapter(dVar.f781c);
            if (dVar2.f2830k) {
                dVar.f786h.setVisibility(0);
                dVar.f786h.setText(dVar.f780b.f2831l + "~" + dVar.f780b.f2832m);
            } else {
                dVar.f786h.setVisibility(8);
            }
            if (dVar2.f2822c) {
                dVar.f785g.setVisibility(0);
            } else {
                dVar.f785g.setVisibility(8);
            }
            dVar.f782d.setDelete(dVar.f780b.f2833n);
            dVar.f788j.setImageResource(dVar.f780b.f2833n ? R$drawable.item_delete_selected : R$drawable.item_delete_unselect);
        } else {
            dVar.f779a = this.f774e.get(i4);
            dVar.f784f.setText(dVar.f779a.f2834a + "~" + dVar.f779a.f2835b);
            dVar.f787i.setVisibility(4);
            dVar.f786h.setVisibility(8);
            dVar.f782d.setDelete(dVar.f779a.f2836c);
            dVar.f788j.setImageResource(dVar.f779a.f2836c ? R$drawable.item_delete_selected : R$drawable.item_delete_unselect);
        }
        if (dVar.f782d.isFocused()) {
            return;
        }
        dVar.f783e.setScaleX(0.98f);
        TextView textView = dVar.f784f;
        Resources resources = this.f770a.getResources();
        int i5 = R$color.no_focus_left_text_color;
        textView.setTextColor(resources.getColor(i5));
        dVar.f786h.setTextColor(this.f770a.getResources().getColor(i5));
        if (i4 == 0) {
            dVar.f783e.setBackgroundResource(R$drawable.bg_stroke_radius_top_434343);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i4) {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f770a);
        Point pointB = w0.a.b(this.f770a);
        if (i4 == 1) {
            if (w0.a.d(this.f770a)) {
                int i5 = pointB.y;
                return (i5 < 360 || i5 >= 800) ? new d(layoutInflaterFrom.inflate(R$layout.audio_item_update_cell_layout, viewGroup, false)) : new d(layoutInflaterFrom.inflate(R$layout.audio_item_update_cell_layout_barscreen, viewGroup, false));
            }
            int i6 = pointB.x;
            return (i6 < 360 || i6 >= 800) ? new d(layoutInflaterFrom.inflate(R$layout.audio_item_update_cell_layout, viewGroup, false)) : new d(layoutInflaterFrom.inflate(R$layout.audio_item_update_cell_layout_barscreen, viewGroup, false));
        }
        if (w0.a.d(this.f770a)) {
            int i7 = pointB.y;
            return (i7 < 360 || i7 >= 800) ? new c(layoutInflaterFrom.inflate(R$layout.audio_item_add_cell_layout, viewGroup, false)) : new c(layoutInflaterFrom.inflate(R$layout.audio_item_add_cell_layout_barscreen, viewGroup, false));
        }
        int i8 = pointB.x;
        return (i8 < 360 || i8 >= 800) ? new c(layoutInflaterFrom.inflate(R$layout.audio_item_add_cell_layout, viewGroup, false)) : new c(layoutInflaterFrom.inflate(R$layout.audio_item_add_cell_layout_barscreen, viewGroup, false));
    }
}
