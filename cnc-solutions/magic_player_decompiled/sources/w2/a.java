package w2;

import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.Objects;
import org.eclipse.paho.android.service.MqttService;

/* JADX INFO: loaded from: classes2.dex */
public class a implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public SQLiteDatabase f3917a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public C0053a f3918b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public e f3919c;

    /* JADX INFO: renamed from: w2.a$a, reason: collision with other inner class name */
    public static class C0053a extends SQLiteOpenHelper {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public e f3920a;

        public C0053a(e eVar, Context context) {
            super(context, "mqttAndroidService.db", (SQLiteDatabase.CursorFactory) null, 1);
            this.f3920a = null;
            this.f3920a = eVar;
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            Objects.requireNonNull(this.f3920a);
            try {
                sQLiteDatabase.execSQL("CREATE TABLE MqttArrivedMessageTable(messageId TEXT PRIMARY KEY, clientHandle TEXT, destinationName TEXT, payload BLOB, qos INTEGER, retained TEXT, duplicate TEXT, mtimestamp INTEGER);");
                Objects.requireNonNull(this.f3920a);
            } catch (SQLException e4) {
                Objects.requireNonNull(this.f3920a);
                throw e4;
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i4, int i5) {
            Objects.requireNonNull(this.f3920a);
            try {
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS MqttArrivedMessageTable");
                onCreate(sQLiteDatabase);
                Objects.requireNonNull(this.f3920a);
            } catch (SQLException e4) {
                Objects.requireNonNull(this.f3920a);
                throw e4;
            }
        }
    }

    public a(MqttService mqttService, Context context) {
        this.f3918b = null;
        this.f3919c = null;
        this.f3919c = mqttService;
        this.f3918b = new C0053a(this.f3919c, context);
        Objects.requireNonNull(this.f3919c);
    }

    public final int a(String str) {
        Cursor cursorQuery = this.f3917a.query("MqttArrivedMessageTable", new String[]{"messageId"}, "clientHandle=?", new String[]{str}, null, null, null);
        int i4 = cursorQuery.moveToFirst() ? cursorQuery.getInt(0) : 0;
        cursorQuery.close();
        return i4;
    }
}
