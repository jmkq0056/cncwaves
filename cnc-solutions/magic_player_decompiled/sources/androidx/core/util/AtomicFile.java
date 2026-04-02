package androidx.core.util;

import android.support.v4.media.f;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class AtomicFile {
    private final File mBackupName;
    private final File mBaseName;

    public AtomicFile(@NonNull File file) {
        this.mBaseName = file;
        this.mBackupName = new File(file.getPath() + ".bak");
    }

    private static boolean sync(@NonNull FileOutputStream fileOutputStream) {
        try {
            fileOutputStream.getFD().sync();
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public void delete() {
        this.mBaseName.delete();
        this.mBackupName.delete();
    }

    public void failWrite(@Nullable FileOutputStream fileOutputStream) {
        if (fileOutputStream != null) {
            sync(fileOutputStream);
            try {
                fileOutputStream.close();
                this.mBaseName.delete();
                this.mBackupName.renameTo(this.mBaseName);
            } catch (IOException e4) {
                Log.w("AtomicFile", "failWrite: Got exception:", e4);
            }
        }
    }

    public void finishWrite(@Nullable FileOutputStream fileOutputStream) {
        if (fileOutputStream != null) {
            sync(fileOutputStream);
            try {
                fileOutputStream.close();
                this.mBackupName.delete();
            } catch (IOException e4) {
                Log.w("AtomicFile", "finishWrite: Got exception:", e4);
            }
        }
    }

    @NonNull
    public File getBaseFile() {
        return this.mBaseName;
    }

    @NonNull
    public FileInputStream openRead() {
        if (this.mBackupName.exists()) {
            this.mBaseName.delete();
            this.mBackupName.renameTo(this.mBaseName);
        }
        return new FileInputStream(this.mBaseName);
    }

    @NonNull
    public byte[] readFully() throws IOException {
        FileInputStream fileInputStreamOpenRead = openRead();
        try {
            byte[] bArr = new byte[fileInputStreamOpenRead.available()];
            int i4 = 0;
            while (true) {
                int i5 = fileInputStreamOpenRead.read(bArr, i4, bArr.length - i4);
                if (i5 <= 0) {
                    return bArr;
                }
                i4 += i5;
                int iAvailable = fileInputStreamOpenRead.available();
                if (iAvailable > bArr.length - i4) {
                    byte[] bArr2 = new byte[iAvailable + i4];
                    System.arraycopy(bArr, 0, bArr2, 0, i4);
                    bArr = bArr2;
                }
            }
        } finally {
            fileInputStreamOpenRead.close();
        }
    }

    @NonNull
    public FileOutputStream startWrite() throws IOException {
        if (this.mBaseName.exists()) {
            if (this.mBackupName.exists()) {
                this.mBaseName.delete();
            } else if (!this.mBaseName.renameTo(this.mBackupName)) {
                StringBuilder sbA = f.a("Couldn't rename file ");
                sbA.append(this.mBaseName);
                sbA.append(" to backup file ");
                sbA.append(this.mBackupName);
                Log.w("AtomicFile", sbA.toString());
            }
        }
        try {
            return new FileOutputStream(this.mBaseName);
        } catch (FileNotFoundException unused) {
            if (!this.mBaseName.getParentFile().mkdirs()) {
                StringBuilder sbA2 = f.a("Couldn't create directory ");
                sbA2.append(this.mBaseName);
                throw new IOException(sbA2.toString());
            }
            try {
                return new FileOutputStream(this.mBaseName);
            } catch (FileNotFoundException unused2) {
                StringBuilder sbA3 = f.a("Couldn't create ");
                sbA3.append(this.mBaseName);
                throw new IOException(sbA3.toString());
            }
        }
    }
}
