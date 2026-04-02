package p;

import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import cn.huidu.lcd.render.model.ProgramNode;
import com.google.android.exoplayer2.ui.b;
import java.util.Comparator;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a implements Comparator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ a f2913b = new a(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ a f2914c = new a(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ a f2915d = new a(2);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ a f2916e = new a(3);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ a f2917f = new a(4);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ a f2918g = new a(5);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ a f2919h = new a(6);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ a f2920i = new a(7);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2921a;

    public /* synthetic */ a(int i4) {
        this.f2921a = i4;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int tagHitCount;
        int tagHitCount2;
        switch (this.f2921a) {
            case 0:
                int i4 = d.f2924j;
                tagHitCount = ((WifiConfiguration) obj2).networkId;
                tagHitCount2 = ((WifiConfiguration) obj).networkId;
                break;
            case 1:
                int i5 = f.f2938g;
                return Integer.compare(((ScanResult) obj2).level, ((ScanResult) obj).level);
            case 2:
                tagHitCount = ((ProgramNode) obj2).getTagHitCount();
                tagHitCount2 = ((ProgramNode) obj).getTagHitCount();
                break;
            case 3:
                Integer num = (Integer) obj;
                Integer num2 = (Integer) obj2;
                int i6 = l1.a.f2377b;
                if (num.intValue() == -1) {
                    return num2.intValue() == -1 ? 0 : -1;
                }
                if (num2.intValue() == -1) {
                    return 1;
                }
                return num.intValue() - num2.intValue();
            case 4:
                int i7 = l1.a.f2377b;
                return 0;
            case 5:
                b.c cVar = (b.c) obj;
                b.c cVar2 = (b.c) obj2;
                int iCompare = Integer.compare(cVar2.f1334b, cVar.f1334b);
                if (iCompare != 0) {
                    return iCompare;
                }
                int iCompareTo = cVar.f1335c.compareTo(cVar2.f1335c);
                return iCompareTo != 0 ? iCompareTo : cVar.f1336d.compareTo(cVar2.f1336d);
            case 6:
                b.c cVar3 = (b.c) obj;
                b.c cVar4 = (b.c) obj2;
                int iCompare2 = Integer.compare(cVar4.f1333a, cVar3.f1333a);
                if (iCompare2 != 0) {
                    return iCompare2;
                }
                int iCompareTo2 = cVar4.f1335c.compareTo(cVar3.f1335c);
                return iCompareTo2 != 0 ? iCompareTo2 : cVar4.f1336d.compareTo(cVar3.f1336d);
            default:
                return ((WifiConfiguration) obj).priority - ((WifiConfiguration) obj2).priority;
        }
        return tagHitCount - tagHitCount2;
    }
}
