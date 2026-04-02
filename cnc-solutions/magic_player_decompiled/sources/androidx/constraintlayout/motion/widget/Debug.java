package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.Resources;
import android.support.v4.media.d;
import android.support.v4.media.f;
import android.support.v4.media.g;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.a;
import androidx.appcompat.view.b;
import com.arcsoft.face.BuildConfig;
import java.io.PrintStream;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;

/* JADX INFO: loaded from: classes.dex */
public class Debug {
    public static void dumpLayoutParams(ViewGroup viewGroup, String str) {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        StringBuilder sbA = f.a(".(");
        sbA.append(stackTraceElement.getFileName());
        sbA.append(":");
        sbA.append(stackTraceElement.getLineNumber());
        sbA.append(") ");
        sbA.append(str);
        sbA.append("  ");
        String string = sbA.toString();
        int childCount = viewGroup.getChildCount();
        System.out.println(str + " children " + childCount);
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = viewGroup.getChildAt(i4);
            PrintStream printStream = System.out;
            StringBuilder sbA2 = g.a(string, "     ");
            sbA2.append(getName(childAt));
            printStream.println(sbA2.toString());
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            for (Field field : layoutParams.getClass().getFields()) {
                try {
                    Object obj = field.get(layoutParams);
                    if (field.getName().contains("To") && !obj.toString().equals("-1")) {
                        System.out.println(string + "       " + field.getName() + " " + obj);
                    }
                } catch (IllegalAccessException unused) {
                }
            }
        }
    }

    public static void dumpPoc(Object obj) {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        StringBuilder sbA = f.a(".(");
        sbA.append(stackTraceElement.getFileName());
        sbA.append(":");
        sbA.append(stackTraceElement.getLineNumber());
        sbA.append(")");
        String string = sbA.toString();
        Class<?> cls = obj.getClass();
        PrintStream printStream = System.out;
        StringBuilder sbA2 = g.a(string, "------------- ");
        sbA2.append(cls.getName());
        sbA2.append(" --------------------");
        printStream.println(sbA2.toString());
        for (Field field : cls.getFields()) {
            try {
                Object obj2 = field.get(obj);
                if (field.getName().startsWith("layout_constraint") && ((!(obj2 instanceof Integer) || !obj2.toString().equals("-1")) && ((!(obj2 instanceof Integer) || !obj2.toString().equals("0")) && ((!(obj2 instanceof Float) || !obj2.toString().equals(BuildConfig.VERSION_NAME)) && (!(obj2 instanceof Float) || !obj2.toString().equals("0.5")))))) {
                    System.out.println(string + "    " + field.getName() + " " + obj2);
                }
            } catch (IllegalAccessException unused) {
            }
        }
        PrintStream printStream2 = System.out;
        StringBuilder sbA3 = g.a(string, "------------- ");
        sbA3.append(cls.getSimpleName());
        sbA3.append(" --------------------");
        printStream2.println(sbA3.toString());
    }

    public static String getActionType(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        for (Field field : MotionEvent.class.getFields()) {
            try {
                if (Modifier.isStatic(field.getModifiers()) && field.getType().equals(Integer.TYPE) && field.getInt(null) == action) {
                    return field.getName();
                }
            } catch (IllegalAccessException unused) {
            }
        }
        return "---";
    }

    public static String getCallFrom(int i4) {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[i4 + 2];
        StringBuilder sbA = f.a(".(");
        sbA.append(stackTraceElement.getFileName());
        sbA.append(":");
        sbA.append(stackTraceElement.getLineNumber());
        sbA.append(")");
        return sbA.toString();
    }

    public static String getLoc() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        StringBuilder sbA = f.a(".(");
        sbA.append(stackTraceElement.getFileName());
        sbA.append(":");
        sbA.append(stackTraceElement.getLineNumber());
        sbA.append(") ");
        sbA.append(stackTraceElement.getMethodName());
        sbA.append("()");
        return sbA.toString();
    }

    public static String getLocation() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        StringBuilder sbA = f.a(".(");
        sbA.append(stackTraceElement.getFileName());
        sbA.append(":");
        sbA.append(stackTraceElement.getLineNumber());
        sbA.append(")");
        return sbA.toString();
    }

    public static String getLocation2() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[2];
        StringBuilder sbA = f.a(".(");
        sbA.append(stackTraceElement.getFileName());
        sbA.append(":");
        sbA.append(stackTraceElement.getLineNumber());
        sbA.append(")");
        return sbA.toString();
    }

    public static String getName(View view) {
        try {
            return view.getContext().getResources().getResourceEntryName(view.getId());
        } catch (Exception unused) {
            return "UNKNOWN";
        }
    }

    public static String getState(MotionLayout motionLayout, int i4) {
        return i4 == -1 ? "UNDEFINED" : motionLayout.getContext().getResources().getResourceEntryName(i4);
    }

    public static void logStack(String str, String str2, int i4) {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        int iMin = Math.min(i4, stackTrace.length - 1);
        String strA = " ";
        for (int i5 = 1; i5 <= iMin; i5++) {
            StackTraceElement stackTraceElement = stackTrace[i5];
            StringBuilder sbA = f.a(".(");
            sbA.append(stackTrace[i5].getFileName());
            sbA.append(":");
            sbA.append(stackTrace[i5].getLineNumber());
            sbA.append(") ");
            sbA.append(stackTrace[i5].getMethodName());
            String string = sbA.toString();
            strA = a.a(strA, " ");
            Log.v(str, str2 + strA + string + strA);
        }
    }

    public static void printStack(String str, int i4) {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        int iMin = Math.min(i4, stackTrace.length - 1);
        String strA = " ";
        for (int i5 = 1; i5 <= iMin; i5++) {
            StackTraceElement stackTraceElement = stackTrace[i5];
            StringBuilder sbA = f.a(".(");
            sbA.append(stackTrace[i5].getFileName());
            sbA.append(":");
            sbA.append(stackTrace[i5].getLineNumber());
            sbA.append(") ");
            String string = sbA.toString();
            strA = a.a(strA, " ");
            System.out.println(str + strA + string + strA);
        }
    }

    public static String getName(Context context, int i4) {
        if (i4 == -1) {
            return "UNKNOWN";
        }
        try {
            return context.getResources().getResourceEntryName(i4);
        } catch (Exception unused) {
            return d.a("?", i4);
        }
    }

    public static String getName(Context context, int[] iArr) {
        String resourceEntryName;
        try {
            String str = iArr.length + "[";
            int i4 = 0;
            while (i4 < iArr.length) {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append(i4 == 0 ? "" : " ");
                String string = sb.toString();
                try {
                    resourceEntryName = context.getResources().getResourceEntryName(iArr[i4]);
                } catch (Resources.NotFoundException unused) {
                    resourceEntryName = "? " + iArr[i4] + " ";
                }
                str = string + resourceEntryName;
                i4++;
            }
            return str + "]";
        } catch (Exception e4) {
            Log.v("DEBUG", e4.toString());
            return "UNKNOWN";
        }
    }

    public static void dumpLayoutParams(ViewGroup.LayoutParams layoutParams, String str) {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        StringBuilder sbA = f.a(".(");
        sbA.append(stackTraceElement.getFileName());
        sbA.append(":");
        sbA.append(stackTraceElement.getLineNumber());
        sbA.append(") ");
        sbA.append(str);
        sbA.append("  ");
        String string = sbA.toString();
        PrintStream printStream = System.out;
        StringBuilder sbA2 = b.a(" >>>>>>>>>>>>>>>>>>. dump ", string, "  ");
        sbA2.append(layoutParams.getClass().getName());
        printStream.println(sbA2.toString());
        for (Field field : layoutParams.getClass().getFields()) {
            try {
                Object obj = field.get(layoutParams);
                String name = field.getName();
                if (name.contains("To") && !obj.toString().equals("-1")) {
                    System.out.println(string + "       " + name + " " + obj);
                }
            } catch (IllegalAccessException unused) {
            }
        }
        System.out.println(" <<<<<<<<<<<<<<<<< dump " + string);
    }
}
