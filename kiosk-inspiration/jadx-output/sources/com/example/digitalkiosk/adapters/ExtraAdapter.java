package com.example.digitalkiosk.adapters;

import android.content.Context;
import android.os.CountDownTimer;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.example.digitalkiosk.MainActivity;
import com.example.digitalkiosk.ShopActivity;
import com.example.digitalkiosk.adapters.ExtraAdapter;
import com.example.digitalkiosk.databinding.ItemExtraBinding;
import com.example.digitalkiosk.models.Extra;
import com.sun.jna.platform.win32.COM.tlb.imp.TlbConst;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ExtraAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0019B3\u0012\u0016\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u000b\u0010\fJ\u0018\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0013H\u0016J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0013H\u0016R\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/example/digitalkiosk/adapters/ExtraAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder;", "extras", "Ljava/util/ArrayList;", "Lcom/example/digitalkiosk/models/Extra;", "Lkotlin/collections/ArrayList;", "context", "Landroid/content/Context;", "shoptimer", "Landroid/os/CountDownTimer;", "<init>", "(Ljava/util/ArrayList;Landroid/content/Context;Landroid/os/CountDownTimer;)V", "binding", "Lcom/example/digitalkiosk/databinding/ItemExtraBinding;", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "", "getItemCount", "onBindViewHolder", "", "holder", "position", "ViewHolder", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ExtraAdapter extends RecyclerView.Adapter<ViewHolder> {
    private ItemExtraBinding binding;
    private final Context context;
    private final ArrayList<Extra> extras;
    private final CountDownTimer shoptimer;

    public /* synthetic */ ExtraAdapter(ArrayList arrayList, Context context, CountDownTimer countDownTimer, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(arrayList, context, (i & 4) != 0 ? null : countDownTimer);
    }

    public ExtraAdapter(ArrayList<Extra> extras, Context context, CountDownTimer countDownTimer) {
        Intrinsics.checkNotNullParameter(extras, "extras");
        Intrinsics.checkNotNullParameter(context, "context");
        this.extras = extras;
        this.context = context;
        this.shoptimer = countDownTimer;
    }

    /* JADX INFO: compiled from: ExtraAdapter.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tJ\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "mybinding", "Lcom/example/digitalkiosk/databinding/ItemExtraBinding;", "context", "Landroid/content/Context;", "shoptimer", "Landroid/os/CountDownTimer;", "<init>", "(Lcom/example/digitalkiosk/databinding/ItemExtraBinding;Landroid/content/Context;Landroid/os/CountDownTimer;)V", "bind", "", "extra", "Lcom/example/digitalkiosk/models/Extra;", "position", "", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ViewHolder extends RecyclerView.ViewHolder {
        private final Context context;
        private final ItemExtraBinding mybinding;
        private final CountDownTimer shoptimer;

        public /* synthetic */ ViewHolder(ItemExtraBinding itemExtraBinding, Context context, CountDownTimer countDownTimer, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(itemExtraBinding, context, (i & 4) != 0 ? null : countDownTimer);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(ItemExtraBinding mybinding, Context context, CountDownTimer countDownTimer) {
            super(mybinding.getRoot());
            Intrinsics.checkNotNullParameter(mybinding, "mybinding");
            Intrinsics.checkNotNullParameter(context, "context");
            this.mybinding = mybinding;
            this.context = context;
            this.shoptimer = countDownTimer;
        }

        public final void bind(final Extra extra, int position) {
            Intrinsics.checkNotNullParameter(extra, "extra");
            Context context = this.context;
            Intrinsics.checkNotNull(context, "null cannot be cast to non-null type com.example.digitalkiosk.ShopActivity");
            this.mybinding.setExtra(extra);
            this.mybinding.setExtraTerm(MainActivity.INSTANCE.get_term_translation("extra"));
            this.mybinding.setAmount(((ShopActivity) context).convertAmountToFormat(extra.getPrice()));
            this.mybinding.setSoldOutTranslation(MainActivity.INSTANCE.get_term_translation("sold_out"));
            this.mybinding.setQuantity(TlbConst.TYPELIB_MINOR_VERSION_SHELL);
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.example.digitalkiosk.adapters.ExtraAdapter$ViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ExtraAdapter.ViewHolder.bind$lambda$3(this.f$0, extra, view);
                }
            };
            this.mybinding.fullExtraButton.setOnClickListener(onClickListener);
            this.mybinding.addExtra.setOnClickListener(onClickListener);
            this.mybinding.subtractExtra.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.adapters.ExtraAdapter$ViewHolder$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ExtraAdapter.ViewHolder.bind$lambda$9(this.f$0, extra, view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:36:0x007d  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x0080  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x00a4  */
        /* JADX WARN: Removed duplicated region for block: B:51:0x00ba  */
        /* JADX WARN: Removed duplicated region for block: B:65:0x00b6 A[EDGE_INSN: B:65:0x00b6->B:49:0x00b6 BREAK  A[LOOP:2: B:44:0x009e->B:67:?], SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final void bind$lambda$3(com.example.digitalkiosk.adapters.ExtraAdapter.ViewHolder r6, com.example.digitalkiosk.models.Extra r7, android.view.View r8) {
            /*
                Method dump skipped, instruction units count: 249
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.example.digitalkiosk.adapters.ExtraAdapter.ViewHolder.bind$lambda$3(com.example.digitalkiosk.adapters.ExtraAdapter$ViewHolder, com.example.digitalkiosk.models.Extra, android.view.View):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:36:0x007d  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x0090  */
        /* JADX WARN: Removed duplicated region for block: B:57:0x00d8  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final void bind$lambda$9(com.example.digitalkiosk.adapters.ExtraAdapter.ViewHolder r6, com.example.digitalkiosk.models.Extra r7, android.view.View r8) {
            /*
                Method dump skipped, instruction units count: 306
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.example.digitalkiosk.adapters.ExtraAdapter.ViewHolder.bind$lambda$9(com.example.digitalkiosk.adapters.ExtraAdapter$ViewHolder, com.example.digitalkiosk.models.Extra, android.view.View):void");
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        this.binding = ItemExtraBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
        ItemExtraBinding itemExtraBinding = this.binding;
        if (itemExtraBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            itemExtraBinding = null;
        }
        return new ViewHolder(itemExtraBinding, this.context, this.shoptimer);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.extras.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder holder, int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Extra extra = this.extras.get(position);
        Intrinsics.checkNotNullExpressionValue(extra, "get(...)");
        holder.bind(extra, position);
    }
}
