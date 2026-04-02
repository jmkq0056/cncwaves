package com.example.digitalkiosk.adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.example.digitalkiosk.OptionActivity;
import com.example.digitalkiosk.R;
import com.example.digitalkiosk.adapters.ConfigItemAdapter;
import com.example.digitalkiosk.models.Item;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* JADX INFO: compiled from: ConfigAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001dB'\u0012\u0016\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\u0018\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000eH\u0016J\b\u0010\u0015\u001a\u00020\u000eH\u0016J\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u000eH\u0016J\u000e\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u000eR\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/example/digitalkiosk/adapters/ConfigAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/example/digitalkiosk/adapters/ConfigAdapter$ViewHolder;", FirebaseAnalytics.Param.ITEMS, "Ljava/util/ArrayList;", "Lcom/example/digitalkiosk/models/Item;", "Lkotlin/collections/ArrayList;", "context", "Landroid/content/Context;", "<init>", "(Ljava/util/ArrayList;Landroid/content/Context;)V", "onClickListener", "Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;", "sidePosition", "", "Ljava/lang/Integer;", "totalItems", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "getItemCount", "onBindViewHolder", "", "holder", "position", "setOnClickListener", "setSidePosition", "pos", "ViewHolder", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ConfigAdapter extends RecyclerView.Adapter<ViewHolder> {
    private final Context context;
    private final ArrayList<Item> items;
    private ConfigItemAdapter.OnClickListener onClickListener;
    private Integer sidePosition;
    private int totalItems;

    public ConfigAdapter(ArrayList<Item> items, Context context) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(context, "context");
        this.items = items;
        this.context = context;
        this.totalItems = 16;
    }

    /* JADX INFO: compiled from: ConfigAdapter.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tJ#\u0010\n\u001a\u00020\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\u0002\u0010\u0011R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/example/digitalkiosk/adapters/ConfigAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "itemView", "Landroid/view/View;", "context", "Landroid/content/Context;", "onClickListener", "Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;", "<init>", "(Landroid/view/View;Landroid/content/Context;Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;)V", "bind", "", FirebaseAnalytics.Param.ITEMS, "", "Lcom/example/digitalkiosk/models/Item;", "sidePosition", "", "(Ljava/util/List;Ljava/lang/Integer;)V", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ViewHolder extends RecyclerView.ViewHolder {
        private final Context context;
        private final ConfigItemAdapter.OnClickListener onClickListener;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(View itemView, Context context, ConfigItemAdapter.OnClickListener onClickListener) {
            super(itemView);
            Intrinsics.checkNotNullParameter(itemView, "itemView");
            Intrinsics.checkNotNullParameter(context, "context");
            this.context = context;
            this.onClickListener = onClickListener;
        }

        public final void bind(List<Item> items, Integer sidePosition) {
            Intrinsics.checkNotNullParameter(items, "items");
            RecyclerView recyclerView = (RecyclerView) this.itemView.findViewById(R.id.items);
            recyclerView.setAdapter(new ConfigItemAdapter(new ArrayList(items), this.context, this.onClickListener, sidePosition));
            recyclerView.setLayoutManager(new GridLayoutManager(this.context, 4));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.dialog_items_screen, parent, false);
        Intrinsics.checkNotNullExpressionValue(viewInflate, "inflate(...)");
        return new ViewHolder(viewInflate, this.context, this.onClickListener);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (OptionActivity.INSTANCE.getHandicap_on()) {
            this.totalItems = 4;
        }
        return (int) Math.ceil(((double) this.items.size()) / ((double) this.totalItems));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder holder, int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (OptionActivity.INSTANCE.getHandicap_on()) {
            this.totalItems = 4;
        }
        int i = this.totalItems;
        int i2 = position * i;
        int size = (i - 1) + (position * i);
        if (size >= this.items.size()) {
            size = this.items.size() - 1;
        }
        holder.bind(CollectionsKt.slice((List) this.items, new IntRange(i2, size)), this.sidePosition);
    }

    public final void setOnClickListener(ConfigItemAdapter.OnClickListener onClickListener) {
        Intrinsics.checkNotNullParameter(onClickListener, "onClickListener");
        this.onClickListener = onClickListener;
    }

    public final void setSidePosition(int pos) {
        this.sidePosition = Integer.valueOf(pos);
    }
}
