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
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import coil.Coil;
import coil.request.ImageRequest;
import com.example.digitalkiosk.MainActivity;
import com.example.digitalkiosk.OptionActivity;
import com.example.digitalkiosk.ShopActivity;
import com.example.digitalkiosk.adapters.TableAdapter;
import com.example.digitalkiosk.adapters.TablePagesAdapter;
import com.example.digitalkiosk.models.KioskSetting;
import com.example.digitalkiosk.models.Table;
import com.example.digitalkiosk.models.Translation;
import com.example.digitalkiosk.network.ApiClient;
import com.sun.jna.platform.win32.WinError;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import me.relex.circleindicator.CircleIndicator3;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: compiled from: TableSelectionFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0012\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J&\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0011X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/example/digitalkiosk/fragments/TableSelectionFragment;", "Landroidx/fragment/app/DialogFragment;", "kioskSetting", "Lcom/example/digitalkiosk/models/KioskSetting;", "optionsTimer", "Landroid/os/CountDownTimer;", "<init>", "(Lcom/example/digitalkiosk/models/KioskSetting;Landroid/os/CountDownTimer;)V", "tables", "Ljava/util/ArrayList;", "Lcom/example/digitalkiosk/models/Table;", "Lkotlin/collections/ArrayList;", "tableIndicators", "Lme/relex/circleindicator/CircleIndicator3;", "tableIndicatorsWrap", "Landroid/widget/LinearLayout;", "tablesNext", "Landroid/widget/RelativeLayout;", "tablesPrev", "tablesview", "Landroidx/viewpager2/widget/ViewPager2;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TableSelectionFragment extends DialogFragment {
    private final KioskSetting kioskSetting;
    private final CountDownTimer optionsTimer;
    private CircleIndicator3 tableIndicators;
    private LinearLayout tableIndicatorsWrap;
    private final ArrayList<Table> tables;
    private RelativeLayout tablesNext;
    private RelativeLayout tablesPrev;
    private ViewPager2 tablesview;

    public /* synthetic */ TableSelectionFragment(KioskSetting kioskSetting, CountDownTimer countDownTimer, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(kioskSetting, (i & 2) != 0 ? null : countDownTimer);
    }

    public TableSelectionFragment(KioskSetting kioskSetting, CountDownTimer countDownTimer) {
        this.kioskSetting = kioskSetting;
        this.optionsTimer = countDownTimer;
        this.tables = new ArrayList<>();
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
        View viewInflate = inflater.inflate(com.example.digitalkiosk.R.layout.table_selection, container);
        ImageView imageView = (ImageView) viewInflate.findViewById(com.example.digitalkiosk.R.id.logo);
        Intrinsics.checkNotNull(imageView);
        KioskSetting kioskSetting = this.kioskSetting;
        ViewPager2 viewPager2 = null;
        Coil.imageLoader(imageView.getContext()).enqueue(new ImageRequest.Builder(imageView.getContext()).data(kioskSetting != null ? kioskSetting.getApp_logo() : null).target(imageView).build());
        final TablePagesAdapter tablePagesAdapter = new TablePagesAdapter(this.tables);
        this.tablesview = (ViewPager2) viewInflate.findViewById(com.example.digitalkiosk.R.id.tables);
        this.tableIndicators = (CircleIndicator3) viewInflate.findViewById(com.example.digitalkiosk.R.id.tables_indicators);
        this.tableIndicatorsWrap = (LinearLayout) viewInflate.findViewById(com.example.digitalkiosk.R.id.tables_indicators_wrap);
        this.tablesNext = (RelativeLayout) viewInflate.findViewById(com.example.digitalkiosk.R.id.table_next);
        this.tablesPrev = (RelativeLayout) viewInflate.findViewById(com.example.digitalkiosk.R.id.table_previous);
        ViewPager2 viewPager22 = this.tablesview;
        if (viewPager22 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tablesview");
            viewPager22 = null;
        }
        viewPager22.setAdapter(tablePagesAdapter);
        ApiClient.INSTANCE.get_tables$app_release(OptionActivity.INSTANCE.getSelected_table(), new Callback<ArrayList<Table>>() { // from class: com.example.digitalkiosk.fragments.TableSelectionFragment.onCreateView.2
            @Override // retrofit2.Callback
            public void onFailure(Call<ArrayList<Table>> call, Throwable t) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(t, "t");
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<ArrayList<Table>> call, Response<ArrayList<Table>> response) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                TableSelectionFragment.this.tables.clear();
                ArrayList arrayList = TableSelectionFragment.this.tables;
                ArrayList<Table> arrayListBody = response.body();
                Intrinsics.checkNotNull(arrayListBody);
                arrayList.addAll(arrayListBody);
                tablePagesAdapter.notifyDataSetChanged();
                CircleIndicator3 circleIndicator3 = TableSelectionFragment.this.tableIndicators;
                LinearLayout linearLayout = null;
                if (circleIndicator3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("tableIndicators");
                    circleIndicator3 = null;
                }
                ViewPager2 viewPager23 = TableSelectionFragment.this.tablesview;
                if (viewPager23 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("tablesview");
                    viewPager23 = null;
                }
                circleIndicator3.setViewPager(viewPager23);
                if (TableSelectionFragment.this.tables.size() > 12) {
                    LinearLayout linearLayout2 = TableSelectionFragment.this.tableIndicatorsWrap;
                    if (linearLayout2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("tableIndicatorsWrap");
                    } else {
                        linearLayout = linearLayout2;
                    }
                    linearLayout.setVisibility(0);
                } else {
                    LinearLayout linearLayout3 = TableSelectionFragment.this.tableIndicatorsWrap;
                    if (linearLayout3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("tableIndicatorsWrap");
                    } else {
                        linearLayout = linearLayout3;
                    }
                    linearLayout.setVisibility(8);
                }
                TablePagesAdapter tablePagesAdapter2 = tablePagesAdapter;
                final TableSelectionFragment tableSelectionFragment = TableSelectionFragment.this;
                final TablePagesAdapter tablePagesAdapter3 = tablePagesAdapter;
                tablePagesAdapter2.setOnClickListener(new TableAdapter.OnClickListener() { // from class: com.example.digitalkiosk.fragments.TableSelectionFragment$onCreateView$2$onResponse$1
                    @Override // com.example.digitalkiosk.adapters.TableAdapter.OnClickListener
                    public void onClick(final Table table) {
                        Intrinsics.checkNotNullParameter(table, "table");
                        CountDownTimer countDownTimer = tableSelectionFragment.optionsTimer;
                        if (countDownTimer != null) {
                            countDownTimer.cancel();
                        }
                        CountDownTimer countDownTimer2 = tableSelectionFragment.optionsTimer;
                        if (countDownTimer2 != null) {
                            countDownTimer2.start();
                        }
                        ApiClient apiClient = ApiClient.INSTANCE;
                        int id = table.getId();
                        Integer selected_table = OptionActivity.INSTANCE.getSelected_table();
                        final TablePagesAdapter tablePagesAdapter4 = tablePagesAdapter3;
                        apiClient.update_table$app_release(id, "reserved", selected_table, new Callback<Table>() { // from class: com.example.digitalkiosk.fragments.TableSelectionFragment$onCreateView$2$onResponse$1$onClick$1
                            @Override // retrofit2.Callback
                            public void onFailure(Call<Table> call2, Throwable t) {
                                Intrinsics.checkNotNullParameter(call2, "call");
                                Intrinsics.checkNotNullParameter(t, "t");
                            }

                            @Override // retrofit2.Callback
                            public void onResponse(Call<Table> call2, Response<Table> response2) {
                                Intrinsics.checkNotNullParameter(call2, "call");
                                Intrinsics.checkNotNullParameter(response2, "response");
                                OptionActivity.INSTANCE.setSelected_table(Integer.valueOf(table.getId()));
                                tablePagesAdapter4.notifyDataSetChanged();
                            }
                        });
                    }
                });
            }
        });
        View viewFindViewById = viewInflate.findViewById(com.example.digitalkiosk.R.id.back_button);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById, "findViewById(...)");
        Button button = (Button) viewFindViewById;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.TableSelectionFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TableSelectionFragment.onCreateView$lambda$1(this.f$0, view);
            }
        });
        View viewFindViewById2 = viewInflate.findViewById(com.example.digitalkiosk.R.id.confirm_button);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById2, "findViewById(...)");
        Button button2 = (Button) viewFindViewById2;
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.TableSelectionFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TableSelectionFragment.onCreateView$lambda$2(this.f$0, view);
            }
        });
        Translation translation = MainActivity.INSTANCE.get_term_translation("choose_your_table");
        if (translation != null) {
            ((TextView) viewInflate.findViewById(com.example.digitalkiosk.R.id.title_text)).setText(translation.getTranslation());
        }
        Translation translation2 = MainActivity.INSTANCE.get_term_translation("back_takeaway");
        if (translation2 != null) {
            button.setText(translation2.getTranslation());
        }
        Translation translation3 = MainActivity.INSTANCE.get_term_translation("confirm_takeaway");
        if (translation3 != null) {
            button2.setText(translation3.getTranslation());
        }
        RelativeLayout relativeLayout = this.tablesNext;
        if (relativeLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tablesNext");
            relativeLayout = null;
        }
        relativeLayout.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.TableSelectionFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TableSelectionFragment.onCreateView$lambda$3(this.f$0, view);
            }
        });
        RelativeLayout relativeLayout2 = this.tablesPrev;
        if (relativeLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tablesPrev");
            relativeLayout2 = null;
        }
        relativeLayout2.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.TableSelectionFragment$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TableSelectionFragment.onCreateView$lambda$4(this.f$0, view);
            }
        });
        ViewPager2 viewPager23 = this.tablesview;
        if (viewPager23 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tablesview");
        } else {
            viewPager2 = viewPager23;
        }
        viewPager2.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.example.digitalkiosk.fragments.TableSelectionFragment.onCreateView.7
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int position) {
                CountDownTimer countDownTimer = TableSelectionFragment.this.optionsTimer;
                if (countDownTimer != null) {
                    countDownTimer.cancel();
                }
                CountDownTimer countDownTimer2 = TableSelectionFragment.this.optionsTimer;
                if (countDownTimer2 != null) {
                    countDownTimer2.start();
                }
                super.onPageSelected(position);
                ViewPager2 viewPager24 = TableSelectionFragment.this.tablesview;
                RelativeLayout relativeLayout3 = null;
                if (viewPager24 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("tablesview");
                    viewPager24 = null;
                }
                RecyclerView.Adapter adapter = viewPager24.getAdapter();
                if (adapter == null || position + 1 != adapter.getItemCount()) {
                    RelativeLayout relativeLayout4 = TableSelectionFragment.this.tablesNext;
                    if (relativeLayout4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("tablesNext");
                        relativeLayout4 = null;
                    }
                    relativeLayout4.setAlpha(1.0f);
                } else {
                    RelativeLayout relativeLayout5 = TableSelectionFragment.this.tablesNext;
                    if (relativeLayout5 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("tablesNext");
                        relativeLayout5 = null;
                    }
                    relativeLayout5.setAlpha(0.2f);
                }
                if (position == 0) {
                    RelativeLayout relativeLayout6 = TableSelectionFragment.this.tablesPrev;
                    if (relativeLayout6 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("tablesPrev");
                    } else {
                        relativeLayout3 = relativeLayout6;
                    }
                    relativeLayout3.setAlpha(0.2f);
                    return;
                }
                RelativeLayout relativeLayout7 = TableSelectionFragment.this.tablesPrev;
                if (relativeLayout7 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("tablesPrev");
                } else {
                    relativeLayout3 = relativeLayout7;
                }
                relativeLayout3.setAlpha(1.0f);
            }
        });
        return viewInflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$1(final TableSelectionFragment tableSelectionFragment, View view) {
        CountDownTimer countDownTimer = tableSelectionFragment.optionsTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = tableSelectionFragment.optionsTimer;
        if (countDownTimer2 != null) {
            countDownTimer2.start();
        }
        if (OptionActivity.INSTANCE.getSelected_table() == null) {
            tableSelectionFragment.dismiss();
            return;
        }
        ApiClient apiClient = ApiClient.INSTANCE;
        Integer selected_table = OptionActivity.INSTANCE.getSelected_table();
        Intrinsics.checkNotNull(selected_table);
        apiClient.update_table$app_release(selected_table.intValue(), "available", null, new Callback<Table>() { // from class: com.example.digitalkiosk.fragments.TableSelectionFragment$onCreateView$3$1
            @Override // retrofit2.Callback
            public void onFailure(Call<Table> call, Throwable t) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(t, "t");
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<Table> call, Response<Table> response) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                OptionActivity.INSTANCE.setSelected_table(null);
                this.this$0.dismiss();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$2(TableSelectionFragment tableSelectionFragment, View view) {
        CountDownTimer countDownTimer = tableSelectionFragment.optionsTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        if (OptionActivity.INSTANCE.getSelected_table() != null) {
            OptionActivity.INSTANCE.setOrder_type("dine-in");
            tableSelectionFragment.startActivity(new Intent(tableSelectionFragment.getContext(), (Class<?>) ShopActivity.class));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$3(TableSelectionFragment tableSelectionFragment, View view) {
        ViewPager2 viewPager2 = tableSelectionFragment.tablesview;
        ViewPager2 viewPager22 = null;
        if (viewPager2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tablesview");
            viewPager2 = null;
        }
        ViewPager2 viewPager23 = tableSelectionFragment.tablesview;
        if (viewPager23 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tablesview");
        } else {
            viewPager22 = viewPager23;
        }
        viewPager2.setCurrentItem(viewPager22.getCurrentItem() + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$4(TableSelectionFragment tableSelectionFragment, View view) {
        ViewPager2 viewPager2 = tableSelectionFragment.tablesview;
        ViewPager2 viewPager22 = null;
        if (viewPager2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tablesview");
            viewPager2 = null;
        }
        ViewPager2 viewPager23 = tableSelectionFragment.tablesview;
        if (viewPager23 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tablesview");
        } else {
            viewPager22 = viewPager23;
        }
        viewPager2.setCurrentItem(viewPager22.getCurrentItem() - 1);
    }
}
