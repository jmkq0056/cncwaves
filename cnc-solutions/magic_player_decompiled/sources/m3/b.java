package m3;

import android.content.ContentResolver;
import android.database.CharArrayBuffer;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.CursorWindow;
import android.database.DataSetObserver;
import android.net.Uri;
import android.os.Bundle;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements Cursor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CursorWindow f2583a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2584b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2585c;

    public b(CursorWindow cursorWindow) {
        this.f2583a = cursorWindow;
        this.f2585c = cursorWindow.getNumRows();
    }

    @Override // android.database.Cursor, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new UnsupportedOperationException();
    }

    @Override // android.database.Cursor
    public void copyStringToBuffer(int i4, CharArrayBuffer charArrayBuffer) {
        throw new UnsupportedOperationException();
    }

    @Override // android.database.Cursor
    public void deactivate() {
        throw new UnsupportedOperationException();
    }

    @Override // android.database.Cursor
    public byte[] getBlob(int i4) {
        return this.f2583a.getBlob(this.f2584b, i4);
    }

    @Override // android.database.Cursor
    public int getColumnCount() {
        throw new UnsupportedOperationException();
    }

    @Override // android.database.Cursor
    public int getColumnIndex(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // android.database.Cursor
    public int getColumnIndexOrThrow(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // android.database.Cursor
    public String getColumnName(int i4) {
        throw new UnsupportedOperationException();
    }

    @Override // android.database.Cursor
    public String[] getColumnNames() {
        throw new UnsupportedOperationException();
    }

    @Override // android.database.Cursor
    public int getCount() {
        return this.f2583a.getNumRows();
    }

    @Override // android.database.Cursor
    public double getDouble(int i4) {
        return this.f2583a.getDouble(this.f2584b, i4);
    }

    @Override // android.database.Cursor
    public Bundle getExtras() {
        throw new UnsupportedOperationException();
    }

    @Override // android.database.Cursor
    public float getFloat(int i4) {
        return this.f2583a.getFloat(this.f2584b, i4);
    }

    @Override // android.database.Cursor
    public int getInt(int i4) {
        return this.f2583a.getInt(this.f2584b, i4);
    }

    @Override // android.database.Cursor
    public long getLong(int i4) {
        return this.f2583a.getLong(this.f2584b, i4);
    }

    @Override // android.database.Cursor
    public Uri getNotificationUri() {
        return null;
    }

    @Override // android.database.Cursor
    public int getPosition() {
        return this.f2584b;
    }

    @Override // android.database.Cursor
    public short getShort(int i4) {
        return this.f2583a.getShort(this.f2584b, i4);
    }

    @Override // android.database.Cursor
    public String getString(int i4) {
        return this.f2583a.getString(this.f2584b, i4);
    }

    @Override // android.database.Cursor
    public int getType(int i4) {
        throw new UnsupportedOperationException();
    }

    @Override // android.database.Cursor
    public boolean getWantsAllOnMoveCalls() {
        throw new UnsupportedOperationException();
    }

    @Override // android.database.Cursor
    public boolean isAfterLast() {
        throw new UnsupportedOperationException();
    }

    @Override // android.database.Cursor
    public boolean isBeforeFirst() {
        throw new UnsupportedOperationException();
    }

    @Override // android.database.Cursor
    public boolean isClosed() {
        throw new UnsupportedOperationException();
    }

    @Override // android.database.Cursor
    public boolean isFirst() {
        return this.f2584b == 0;
    }

    @Override // android.database.Cursor
    public boolean isLast() {
        return this.f2584b == this.f2585c - 1;
    }

    @Override // android.database.Cursor
    public boolean isNull(int i4) {
        return this.f2583a.isNull(this.f2584b, i4);
    }

    @Override // android.database.Cursor
    public boolean move(int i4) {
        return moveToPosition(this.f2584b + i4);
    }

    @Override // android.database.Cursor
    public boolean moveToFirst() {
        this.f2584b = 0;
        return this.f2585c > 0;
    }

    @Override // android.database.Cursor
    public boolean moveToLast() {
        int i4 = this.f2585c;
        if (i4 <= 0) {
            return false;
        }
        this.f2584b = i4 - 1;
        return true;
    }

    @Override // android.database.Cursor
    public boolean moveToNext() {
        int i4 = this.f2584b;
        if (i4 >= this.f2585c - 1) {
            return false;
        }
        this.f2584b = i4 + 1;
        return true;
    }

    @Override // android.database.Cursor
    public boolean moveToPosition(int i4) {
        if (i4 < 0 || i4 >= this.f2585c) {
            return false;
        }
        this.f2584b = i4;
        return true;
    }

    @Override // android.database.Cursor
    public boolean moveToPrevious() {
        int i4 = this.f2584b;
        if (i4 <= 0) {
            return false;
        }
        this.f2584b = i4 - 1;
        return true;
    }

    @Override // android.database.Cursor
    public void registerContentObserver(ContentObserver contentObserver) {
        throw new UnsupportedOperationException();
    }

    @Override // android.database.Cursor
    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        throw new UnsupportedOperationException();
    }

    @Override // android.database.Cursor
    public boolean requery() {
        throw new UnsupportedOperationException();
    }

    @Override // android.database.Cursor
    public Bundle respond(Bundle bundle) {
        throw new UnsupportedOperationException();
    }

    @Override // android.database.Cursor
    public void setNotificationUri(ContentResolver contentResolver, Uri uri) {
        throw new UnsupportedOperationException();
    }

    @Override // android.database.Cursor
    public void unregisterContentObserver(ContentObserver contentObserver) {
        throw new UnsupportedOperationException();
    }

    @Override // android.database.Cursor
    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        throw new UnsupportedOperationException();
    }
}
