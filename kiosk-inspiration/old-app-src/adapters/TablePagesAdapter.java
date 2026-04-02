package com.example.digitalkiosk.adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.example.digitalkiosk.R;
import com.example.digitalkiosk.adapters.TableAdapter;
import com.example.digitalkiosk.models.Table;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* JADX INFO: compiled from: TablePagesAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0016B\u001f\u0012\u0016\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0018\u0010\u000b\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u000fH\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u000fH\u0016J\u000e\u0010\u0015\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\nR\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/example/digitalkiosk/adapters/TablePagesAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/example/digitalkiosk/adapters/TablePagesAdapter$ViewHolder;", "tables", "Ljava/util/ArrayList;", "Lcom/example/digitalkiosk/models/Table;", "Lkotlin/collections/ArrayList;", "<init>", "(Ljava/util/ArrayList;)V", "onClickListener", "Lcom/example/digitalkiosk/adapters/TableAdapter$OnClickListener;", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "", "getItemCount", "onBindViewHolder", "", "holder", "position", "setOnClickListener", "ViewHolder", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TablePagesAdapter extends RecyclerView.Adapter<ViewHolder> {
    private TableAdapter.OnClickListener onClickListener;
    private final ArrayList<Table> tables;

    public TablePagesAdapter(ArrayList<Table> tables) {
        Intrinsics.checkNotNullParameter(tables, "tables");
        this.tables = tables;
    }

    /* JADX INFO: compiled from: TablePagesAdapter.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tJ\u0014\u0010\n\u001a\u00020\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/example/digitalkiosk/adapters/TablePagesAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "itemView", "Landroid/view/View;", "context", "Landroid/content/Context;", "onClickListener", "Lcom/example/digitalkiosk/adapters/TableAdapter$OnClickListener;", "<init>", "(Landroid/view/View;Landroid/content/Context;Lcom/example/digitalkiosk/adapters/TableAdapter$OnClickListener;)V", "bind", "", "tables", "", "Lcom/example/digitalkiosk/models/Table;", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ViewHolder extends RecyclerView.ViewHolder {
        private final Context context;
        private final TableAdapter.OnClickListener onClickListener;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(View itemView, Context context, TableAdapter.OnClickListener onClickListener) {
            super(itemView);
            Intrinsics.checkNotNullParameter(itemView, "itemView");
            Intrinsics.checkNotNullParameter(context, "context");
            this.context = context;
            this.onClickListener = onClickListener;
        }

        public final void bind(List<Table> tables) {
            Intrinsics.checkNotNullParameter(tables, "tables");
            RecyclerView recyclerView = (RecyclerView) this.itemView.findViewById(R.id.tables);
            recyclerView.setAdapter(new TableAdapter(new ArrayList(tables), this.onClickListener));
            recyclerView.setLayoutManager(new GridLayoutManager(this.context, 3));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.tables_screen, parent, false);
        Intrinsics.checkNotNullExpressionValue(viewInflate, "inflate(...)");
        Context context = parent.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        return new ViewHolder(viewInflate, context, this.onClickListener);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return (int) Math.ceil(((double) this.tables.size()) / ((double) 12));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder holder, int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        int i = position * 12;
        int size = i + 11;
        if (size >= this.tables.size()) {
            size = this.tables.size() - 1;
        }
        holder.bind(CollectionsKt.slice((List) this.tables, new IntRange(i, size)));
    }

    public final void setOnClickListener(TableAdapter.OnClickListener onClickListener) {
        Intrinsics.checkNotNullParameter(onClickListener, "onClickListener");
        this.onClickListener = onClickListener;
    }
}
