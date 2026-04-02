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
import cn.huidu.lcd.setting.ui.adapter.AudioListItemAdapter;
import cn.huidu.lcd.setting.ui.view.AudioItemUpdateCell;
import cn.huidu.lcd.setting.ui.view.AudioModelCellLayout;
import cn.huidu.lcd.setting.ui.view.AudioRegularVoiceCell;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AudioListItemAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f696a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public e f698c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f699d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f700e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f701f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f702g = 100;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List<o.a> f697b = new ArrayList();

    public class a extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final /* synthetic */ int f703i = 0;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public o.a f704a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public AudioRegularVoiceCell f705b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public LinearLayout f706c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f707d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f708e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ImageView f709f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public ImageView f710g;

        public a(@NonNull View view) {
            super(view);
            if (view instanceof AudioRegularVoiceCell) {
                this.f705b = (AudioRegularVoiceCell) view;
            }
            this.f706c = (LinearLayout) view.findViewById(R$id.regular_main_view);
            this.f707d = (TextView) view.findViewById(R$id.value_type_title);
            this.f708e = (TextView) view.findViewById(R$id.value_text_item);
            this.f709f = (ImageView) view.findViewById(R$id.left_control_img);
            this.f710g = (ImageView) view.findViewById(R$id.right_control_img);
            this.f705b.setOnClickListener(new View.OnClickListener() { // from class: k0.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    int i4 = AudioListItemAdapter.a.f703i;
                }
            });
            final int i4 = 0;
            this.f709f.setOnClickListener(new View.OnClickListener(this) { // from class: k0.a

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ AudioListItemAdapter.a f2036b;

                {
                    this.f2036b = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    switch (i4) {
                        case 0:
                            AudioListItemAdapter.a aVar = this.f2036b;
                            int i5 = Integer.parseInt(aVar.f708e.getText().toString());
                            int iV0 = i5 - h.a.v0(i5, AudioListItemAdapter.this.f700e);
                            int i6 = AudioListItemAdapter.this.f701f;
                            if (iV0 <= i6) {
                                iV0 = i6;
                            }
                            if (i5 != iV0) {
                                aVar.a(iV0);
                            }
                            break;
                        default:
                            AudioListItemAdapter.a aVar2 = this.f2036b;
                            int i7 = Integer.parseInt(aVar2.f708e.getText().toString());
                            int iU0 = h.a.u0(i7, AudioListItemAdapter.this.f700e) + i7;
                            int i8 = AudioListItemAdapter.this.f702g;
                            if (iU0 >= i8) {
                                iU0 = i8;
                            }
                            if (i7 != iU0) {
                                aVar2.a(iU0);
                            }
                            break;
                    }
                }
            });
            final int i5 = 1;
            this.f710g.setOnClickListener(new View.OnClickListener(this) { // from class: k0.a

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ AudioListItemAdapter.a f2036b;

                {
                    this.f2036b = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    switch (i5) {
                        case 0:
                            AudioListItemAdapter.a aVar = this.f2036b;
                            int i52 = Integer.parseInt(aVar.f708e.getText().toString());
                            int iV0 = i52 - h.a.v0(i52, AudioListItemAdapter.this.f700e);
                            int i6 = AudioListItemAdapter.this.f701f;
                            if (iV0 <= i6) {
                                iV0 = i6;
                            }
                            if (i52 != iV0) {
                                aVar.a(iV0);
                            }
                            break;
                        default:
                            AudioListItemAdapter.a aVar2 = this.f2036b;
                            int i7 = Integer.parseInt(aVar2.f708e.getText().toString());
                            int iU0 = h.a.u0(i7, AudioListItemAdapter.this.f700e) + i7;
                            int i8 = AudioListItemAdapter.this.f702g;
                            if (iU0 >= i8) {
                                iU0 = i8;
                            }
                            if (i7 != iU0) {
                                aVar2.a(iU0);
                            }
                            break;
                    }
                }
            });
            this.f705b.setOnFocusChangeListener(new i0.b(this));
            this.f705b.setDefaultValueChangeListener(new cn.huidu.lcd.setting.ui.adapter.a(this));
        }

        public final void a(int i4) {
            this.f708e.setText(String.valueOf(i4));
            this.f705b.setDefaultValue(i4);
            e eVar = AudioListItemAdapter.this.f698c;
            if (eVar != null) {
                eVar.b(i4);
            }
        }
    }

    public class b extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public TextView f712a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public LinearLayout f713b;

        public b(@NonNull View view) {
            super(view);
            this.f712a = (TextView) view.findViewById(R$id.add_item_text);
            LinearLayout linearLayout = (LinearLayout) view.findViewById(R$id.item_add_view);
            this.f713b = linearLayout;
            linearLayout.setOnClickListener(new w.a(this));
            this.f713b.setOnFocusChangeListener(new i0.b(this));
        }
    }

    public class c extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public o.a f715a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public AudioModelCellLayout f716b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public LinearLayout f717c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f718d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f719e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ImageView f720f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public ImageView f721g;

        public c(@NonNull View view) {
            super(view);
            if (view instanceof AudioModelCellLayout) {
                this.f716b = (AudioModelCellLayout) view;
            }
            this.f717c = (LinearLayout) view.findViewById(R$id.mode_main_view);
            this.f718d = (TextView) view.findViewById(R$id.mode_type_title);
            this.f719e = (TextView) view.findViewById(R$id.mode_text_item);
            this.f720f = (ImageView) view.findViewById(R$id.left_arrow_img);
            this.f721g = (ImageView) view.findViewById(R$id.right_arrow_img);
            this.f716b.setOnClickListener(new w.a(this));
            this.f716b.setOnFocusChangeListener(new i0.b(this));
            this.f716b.setModeKeyEventListener(new cn.huidu.lcd.setting.ui.adapter.b(this));
        }
    }

    public class d extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public o.a f723a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public AudioItemUpdateCell f724b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public LinearLayout f725c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f726d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f727e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ImageView f728f;

        public d(@NonNull View view) {
            super(view);
            if (view instanceof AudioItemUpdateCell) {
                this.f724b = (AudioItemUpdateCell) view;
            }
            this.f725c = (LinearLayout) view.findViewById(R$id.audio_item_main);
            this.f726d = (TextView) view.findViewById(R$id.item_name_text);
            this.f727e = (TextView) view.findViewById(R$id.audio_value_text);
            this.f728f = (ImageView) view.findViewById(R$id.delete_img);
            final int i4 = 0;
            this.f724b.setOnClickListener(new View.OnClickListener(this) { // from class: k0.c

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ AudioListItemAdapter.d f2039b;

                {
                    this.f2039b = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    switch (i4) {
                        case 0:
                            AudioListItemAdapter.d dVar = this.f2039b;
                            AudioListItemAdapter.e eVar = AudioListItemAdapter.this.f698c;
                            if (eVar != null) {
                                o.a aVar = dVar.f723a;
                                eVar.h(aVar, aVar.f2807d);
                            }
                            break;
                        default:
                            AudioListItemAdapter.d dVar2 = this.f2039b;
                            if (dVar2.f724b.isFocused()) {
                                o.a aVar2 = dVar2.f723a;
                                boolean z3 = !aVar2.f2807d;
                                aVar2.f2807d = z3;
                                dVar2.f724b.setDelete(z3);
                                dVar2.f728f.setImageResource(z3 ? R$drawable.item_delete_selected : R$drawable.item_delete_unselect);
                                break;
                            }
                            break;
                    }
                }
            });
            final int i5 = 1;
            this.f728f.setOnClickListener(new View.OnClickListener(this) { // from class: k0.c

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ AudioListItemAdapter.d f2039b;

                {
                    this.f2039b = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    switch (i5) {
                        case 0:
                            AudioListItemAdapter.d dVar = this.f2039b;
                            AudioListItemAdapter.e eVar = AudioListItemAdapter.this.f698c;
                            if (eVar != null) {
                                o.a aVar = dVar.f723a;
                                eVar.h(aVar, aVar.f2807d);
                            }
                            break;
                        default:
                            AudioListItemAdapter.d dVar2 = this.f2039b;
                            if (dVar2.f724b.isFocused()) {
                                o.a aVar2 = dVar2.f723a;
                                boolean z3 = !aVar2.f2807d;
                                aVar2.f2807d = z3;
                                dVar2.f724b.setDelete(z3);
                                dVar2.f728f.setImageResource(z3 ? R$drawable.item_delete_selected : R$drawable.item_delete_unselect);
                                break;
                            }
                            break;
                    }
                }
            });
            this.f724b.setOnFocusChangeListener(new i0.b(this));
            this.f724b.setDeleteItemListener(new p.b(this));
        }
    }

    public interface e {
        void a();

        void b(int i4);

        void d();

        void g(boolean z3);

        void h(o.a aVar, boolean z3);
    }

    public AudioListItemAdapter(Context context) {
        this.f696a = context;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f697b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i4) {
        return i4;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i4) {
        if (i4 == 0) {
            return 1;
        }
        if (this.f699d) {
            return 2;
        }
        int size = this.f697b.size();
        return (size <= 2 || i4 == size - 1) ? 4 : 3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i4) {
        if (viewHolder instanceof c) {
            c cVar = (c) viewHolder;
            o.a aVar = this.f697b.get(i4);
            cVar.f715a = aVar;
            cVar.f718d.setText(aVar.f2804a);
            cVar.f719e.setText(cVar.f715a.f2806c);
            cVar.f716b.setCurrentMode(cVar.f715a.f2805b);
            if (cVar.f716b.isFocused()) {
                return;
            }
            cVar.f717c.setBackgroundResource(R$drawable.bg_stroke_radius_top_434343);
            cVar.f718d.setTextColor(AudioListItemAdapter.this.f696a.getResources().getColor(R$color.no_focus_left_text_color));
            cVar.f719e.setTextColor(AudioListItemAdapter.this.f696a.getResources().getColor(R$color.no_focus_right_text_color));
            return;
        }
        if (viewHolder instanceof a) {
            a aVar2 = (a) viewHolder;
            o.a aVar3 = this.f697b.get(i4);
            aVar2.f704a = aVar3;
            aVar2.f707d.setText(aVar3.f2804a);
            aVar2.f708e.setText(aVar2.f704a.f2806c);
            TextView textView = aVar2.f707d;
            Resources resources = AudioListItemAdapter.this.f696a.getResources();
            int i5 = R$color.no_focus_left_text_color;
            textView.setTextColor(resources.getColor(i5));
            TextView textView2 = aVar2.f708e;
            Resources resources2 = AudioListItemAdapter.this.f696a.getResources();
            int i6 = R$color.no_focus_right_text_color;
            textView2.setTextColor(resources2.getColor(i6));
            aVar2.f705b.setDefaultValue(Integer.parseInt(aVar2.f708e.getText().toString()));
            aVar2.f705b.setStepping(AudioListItemAdapter.this.f700e);
            aVar2.f706c.setScaleX(0.98f);
            aVar2.f706c.setBackgroundResource(R$drawable.bg_radius_434343);
            if (aVar2.f705b.isFocused()) {
                return;
            }
            aVar2.f706c.setBackgroundResource(R$drawable.bg_stroke_radius_bottom_434343);
            aVar2.f707d.setTextColor(AudioListItemAdapter.this.f696a.getResources().getColor(i5));
            aVar2.f708e.setTextColor(AudioListItemAdapter.this.f696a.getResources().getColor(i6));
            return;
        }
        if (!(viewHolder instanceof d)) {
            if (viewHolder instanceof b) {
                b bVar = (b) viewHolder;
                if (bVar.f713b.isFocused()) {
                    return;
                }
                bVar.f713b.setScaleX(0.98f);
                bVar.f713b.setBackgroundResource(R$drawable.bg_stroke_radius_bottom_434343);
                bVar.f712a.setTextColor(this.f696a.getResources().getColor(R$color.no_focus_left_text_color));
                return;
            }
            return;
        }
        d dVar = (d) viewHolder;
        o.a aVar4 = this.f697b.get(i4);
        dVar.f723a = aVar4;
        dVar.f726d.setText(aVar4.f2804a);
        dVar.f727e.setText(dVar.f723a.f2806c + "%");
        dVar.f724b.setDelete(dVar.f723a.f2807d);
        dVar.f728f.setImageResource(dVar.f723a.f2807d ? R$drawable.item_delete_selected : R$drawable.item_delete_unselect);
        if (dVar.f724b.isFocused()) {
            return;
        }
        dVar.f725c.setScaleX(0.98f);
        dVar.f725c.setBackgroundColor(AudioListItemAdapter.this.f696a.getResources().getColor(R$color.no_focus_bg_color));
        dVar.f726d.setTextColor(AudioListItemAdapter.this.f696a.getResources().getColor(R$color.no_focus_left_text_color));
        dVar.f727e.setTextColor(AudioListItemAdapter.this.f696a.getResources().getColor(R$color.no_focus_right_text_color));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i4) {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f696a);
        Point pointB = w0.a.b(this.f696a);
        if (i4 == 1) {
            if (w0.a.d(this.f696a)) {
                int i5 = pointB.y;
                return (i5 < 360 || i5 >= 800) ? new c(layoutInflaterFrom.inflate(R$layout.audio_mode_cell_layout, viewGroup, false)) : new c(layoutInflaterFrom.inflate(R$layout.audio_mode_cell_layout_barscreen, viewGroup, false));
            }
            int i6 = pointB.x;
            return (i6 < 360 || i6 >= 800) ? new c(layoutInflaterFrom.inflate(R$layout.audio_mode_cell_layout, viewGroup, false)) : new c(layoutInflaterFrom.inflate(R$layout.audio_mode_cell_layout_barscreen, viewGroup, false));
        }
        if (i4 == 2) {
            if (w0.a.d(this.f696a)) {
                int i7 = pointB.y;
                return (i7 < 360 || i7 >= 800) ? new a(layoutInflaterFrom.inflate(R$layout.audio_regular_voice_cell_layout, viewGroup, false)) : new a(layoutInflaterFrom.inflate(R$layout.audio_regular_voice_cell_layout_barscreen, viewGroup, false));
            }
            int i8 = pointB.x;
            return (i8 < 360 || i8 >= 800) ? new a(layoutInflaterFrom.inflate(R$layout.audio_regular_voice_cell_layout, viewGroup, false)) : new a(layoutInflaterFrom.inflate(R$layout.audio_regular_voice_cell_layout_barscreen, viewGroup, false));
        }
        if (i4 == 3) {
            if (w0.a.d(this.f696a)) {
                int i9 = pointB.y;
                return (i9 < 360 || i9 >= 800) ? new d(layoutInflaterFrom.inflate(R$layout.audio_item_update_cell_layout, viewGroup, false)) : new d(layoutInflaterFrom.inflate(R$layout.audio_item_update_cell_layout_barscreen, viewGroup, false));
            }
            int i10 = pointB.x;
            return (i10 < 360 || i10 >= 800) ? new d(layoutInflaterFrom.inflate(R$layout.audio_item_update_cell_layout, viewGroup, false)) : new d(layoutInflaterFrom.inflate(R$layout.audio_item_update_cell_layout_barscreen, viewGroup, false));
        }
        if (w0.a.d(this.f696a)) {
            int i11 = pointB.y;
            return (i11 < 360 || i11 >= 800) ? new b(layoutInflaterFrom.inflate(R$layout.audio_item_add_cell_layout, viewGroup, false)) : new b(layoutInflaterFrom.inflate(R$layout.audio_item_add_cell_layout_barscreen, viewGroup, false));
        }
        int i12 = pointB.x;
        return (i12 < 360 || i12 >= 800) ? new b(layoutInflaterFrom.inflate(R$layout.audio_item_add_cell_layout, viewGroup, false)) : new b(layoutInflaterFrom.inflate(R$layout.audio_item_add_cell_layout_barscreen, viewGroup, false));
    }
}
