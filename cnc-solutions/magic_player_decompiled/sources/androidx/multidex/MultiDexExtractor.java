package androidx.multidex;

import android.content.Context;
import android.content.SharedPreferences;
import android.support.v4.media.b;
import android.support.v4.media.f;
import android.util.Log;
import androidx.appcompat.view.a;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileFilter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;

/* JADX INFO: loaded from: classes.dex */
final class MultiDexExtractor implements Closeable {
    private static final int BUFFER_SIZE = 16384;
    private static final String DEX_PREFIX = "classes";
    public static final String DEX_SUFFIX = ".dex";
    private static final String EXTRACTED_NAME_EXT = ".classes";
    public static final String EXTRACTED_SUFFIX = ".zip";
    private static final String KEY_CRC = "crc";
    private static final String KEY_DEX_CRC = "dex.crc.";
    private static final String KEY_DEX_NUMBER = "dex.number";
    private static final String KEY_DEX_TIME = "dex.time.";
    private static final String KEY_TIME_STAMP = "timestamp";
    private static final String LOCK_FILENAME = "MultiDex.lock";
    private static final int MAX_EXTRACT_ATTEMPTS = 3;
    private static final long NO_VALUE = -1;
    private static final String PREFS_FILE = "multidex.version";
    private static final String TAG = "MultiDex";
    private final FileLock cacheLock;
    private final File dexDir;
    private final FileChannel lockChannel;
    private final RandomAccessFile lockRaf;
    private final File sourceApk;
    private final long sourceCrc;

    public static class ExtractedDex extends File {
        public long crc;

        public ExtractedDex(File file, String str) {
            super(file, str);
            this.crc = -1L;
        }
    }

    public MultiDexExtractor(File file, File file2) {
        StringBuilder sbA = f.a("MultiDexExtractor(");
        sbA.append(file.getPath());
        sbA.append(", ");
        sbA.append(file2.getPath());
        sbA.append(")");
        Log.i("MultiDex", sbA.toString());
        this.sourceApk = file;
        this.dexDir = file2;
        this.sourceCrc = getZipCrc(file);
        File file3 = new File(file2, LOCK_FILENAME);
        RandomAccessFile randomAccessFile = new RandomAccessFile(file3, "rw");
        this.lockRaf = randomAccessFile;
        try {
            FileChannel channel = randomAccessFile.getChannel();
            this.lockChannel = channel;
            try {
                Log.i("MultiDex", "Blocking on lock " + file3.getPath());
                this.cacheLock = channel.lock();
                Log.i("MultiDex", file3.getPath() + " locked");
            } catch (IOException e4) {
                e = e4;
                closeQuietly(this.lockChannel);
                throw e;
            } catch (Error e5) {
                e = e5;
                closeQuietly(this.lockChannel);
                throw e;
            } catch (RuntimeException e6) {
                e = e6;
                closeQuietly(this.lockChannel);
                throw e;
            }
        } catch (IOException | Error | RuntimeException e7) {
            closeQuietly(this.lockRaf);
            throw e7;
        }
    }

    private void clearDexDir() {
        File[] fileArrListFiles = this.dexDir.listFiles(new FileFilter() { // from class: androidx.multidex.MultiDexExtractor.1
            @Override // java.io.FileFilter
            public boolean accept(File file) {
                return !file.getName().equals(MultiDexExtractor.LOCK_FILENAME);
            }
        });
        if (fileArrListFiles == null) {
            StringBuilder sbA = f.a("Failed to list secondary dex dir content (");
            sbA.append(this.dexDir.getPath());
            sbA.append(").");
            Log.w("MultiDex", sbA.toString());
            return;
        }
        for (File file : fileArrListFiles) {
            StringBuilder sbA2 = f.a("Trying to delete old file ");
            sbA2.append(file.getPath());
            sbA2.append(" of size ");
            sbA2.append(file.length());
            Log.i("MultiDex", sbA2.toString());
            if (file.delete()) {
                StringBuilder sbA3 = f.a("Deleted old file ");
                sbA3.append(file.getPath());
                Log.i("MultiDex", sbA3.toString());
            } else {
                StringBuilder sbA4 = f.a("Failed to delete old file ");
                sbA4.append(file.getPath());
                Log.w("MultiDex", sbA4.toString());
            }
        }
    }

    private static void closeQuietly(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException e4) {
            Log.w("MultiDex", "Failed to close resource", e4);
        }
    }

    private static void extract(ZipFile zipFile, ZipEntry zipEntry, File file, String str) throws IOException {
        InputStream inputStream = zipFile.getInputStream(zipEntry);
        File fileCreateTempFile = File.createTempFile(a.a("tmp-", str), EXTRACTED_SUFFIX, file.getParentFile());
        StringBuilder sbA = f.a("Extracting ");
        sbA.append(fileCreateTempFile.getPath());
        Log.i("MultiDex", sbA.toString());
        try {
            ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(fileCreateTempFile)));
            try {
                ZipEntry zipEntry2 = new ZipEntry("classes.dex");
                zipEntry2.setTime(zipEntry.getTime());
                zipOutputStream.putNextEntry(zipEntry2);
                byte[] bArr = new byte[16384];
                for (int i4 = inputStream.read(bArr); i4 != -1; i4 = inputStream.read(bArr)) {
                    zipOutputStream.write(bArr, 0, i4);
                }
                zipOutputStream.closeEntry();
                zipOutputStream.close();
                if (!fileCreateTempFile.setReadOnly()) {
                    throw new IOException("Failed to mark readonly \"" + fileCreateTempFile.getAbsolutePath() + "\" (tmp of \"" + file.getAbsolutePath() + "\")");
                }
                Log.i("MultiDex", "Renaming to " + file.getPath());
                if (fileCreateTempFile.renameTo(file)) {
                    return;
                }
                throw new IOException("Failed to rename \"" + fileCreateTempFile.getAbsolutePath() + "\" to \"" + file.getAbsolutePath() + "\"");
            } catch (Throwable th) {
                zipOutputStream.close();
                throw th;
            }
        } finally {
            closeQuietly(inputStream);
            fileCreateTempFile.delete();
        }
    }

    private static SharedPreferences getMultiDexPreferences(Context context) {
        return context.getSharedPreferences(PREFS_FILE, 4);
    }

    private static long getTimeStamp(File file) {
        long jLastModified = file.lastModified();
        return jLastModified == -1 ? jLastModified - 1 : jLastModified;
    }

    private static long getZipCrc(File file) throws IOException {
        long zipCrc = ZipUtil.getZipCrc(file);
        return zipCrc == -1 ? zipCrc - 1 : zipCrc;
    }

    private static boolean isModified(Context context, File file, long j4, String str) {
        SharedPreferences multiDexPreferences = getMultiDexPreferences(context);
        if (multiDexPreferences.getLong(str + KEY_TIME_STAMP, -1L) == getTimeStamp(file)) {
            if (multiDexPreferences.getLong(str + KEY_CRC, -1L) == j4) {
                return false;
            }
        }
        return true;
    }

    private List<ExtractedDex> loadExistingExtractions(Context context, String str) throws IOException {
        Log.i("MultiDex", "loading existing secondary dex files");
        String str2 = this.sourceApk.getName() + EXTRACTED_NAME_EXT;
        SharedPreferences multiDexPreferences = getMultiDexPreferences(context);
        int i4 = multiDexPreferences.getInt(str + KEY_DEX_NUMBER, 1);
        ArrayList arrayList = new ArrayList(i4 + (-1));
        int i5 = 2;
        while (i5 <= i4) {
            ExtractedDex extractedDex = new ExtractedDex(this.dexDir, androidx.constraintlayout.solver.a.a(str2, i5, EXTRACTED_SUFFIX));
            if (!extractedDex.isFile()) {
                StringBuilder sbA = f.a("Missing extracted secondary dex file '");
                sbA.append(extractedDex.getPath());
                sbA.append("'");
                throw new IOException(sbA.toString());
            }
            extractedDex.crc = getZipCrc(extractedDex);
            long j4 = multiDexPreferences.getLong(str + KEY_DEX_CRC + i5, -1L);
            long j5 = multiDexPreferences.getLong(str + KEY_DEX_TIME + i5, -1L);
            long jLastModified = extractedDex.lastModified();
            if (j5 == jLastModified) {
                String str3 = str2;
                SharedPreferences sharedPreferences = multiDexPreferences;
                if (j4 == extractedDex.crc) {
                    arrayList.add(extractedDex);
                    i5++;
                    multiDexPreferences = sharedPreferences;
                    str2 = str3;
                }
            }
            throw new IOException("Invalid extracted dex: " + extractedDex + " (key \"" + str + "\"), expected modification time: " + j5 + ", modification time: " + jLastModified + ", expected crc: " + j4 + ", file crc: " + extractedDex.crc);
        }
        return arrayList;
    }

    private List<ExtractedDex> performExtractions() {
        String str = this.sourceApk.getName() + EXTRACTED_NAME_EXT;
        clearDexDir();
        ArrayList arrayList = new ArrayList();
        ZipFile zipFile = new ZipFile(this.sourceApk);
        int i4 = 2;
        try {
            ZipEntry entry = zipFile.getEntry("classes2.dex");
            while (entry != null) {
                ExtractedDex extractedDex = new ExtractedDex(this.dexDir, str + i4 + EXTRACTED_SUFFIX);
                arrayList.add(extractedDex);
                Log.i("MultiDex", "Extraction is needed for file " + extractedDex);
                int i5 = 0;
                boolean z3 = false;
                while (i5 < 3 && !z3) {
                    i5++;
                    extract(zipFile, entry, extractedDex, str);
                    try {
                        extractedDex.crc = getZipCrc(extractedDex);
                        z3 = true;
                    } catch (IOException e4) {
                        Log.w("MultiDex", "Failed to read crc from " + extractedDex.getAbsolutePath(), e4);
                        z3 = false;
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append("Extraction ");
                    sb.append(z3 ? "succeeded" : "failed");
                    sb.append(" '");
                    sb.append(extractedDex.getAbsolutePath());
                    sb.append("': length ");
                    sb.append(extractedDex.length());
                    sb.append(" - crc: ");
                    sb.append(extractedDex.crc);
                    Log.i("MultiDex", sb.toString());
                    if (!z3) {
                        extractedDex.delete();
                        if (extractedDex.exists()) {
                            Log.w("MultiDex", "Failed to delete corrupted secondary dex '" + extractedDex.getPath() + "'");
                        }
                    }
                }
                if (!z3) {
                    throw new IOException("Could not create zip file " + extractedDex.getAbsolutePath() + " for secondary dex (" + i4 + ")");
                }
                i4++;
                entry = zipFile.getEntry(DEX_PREFIX + i4 + DEX_SUFFIX);
            }
            return arrayList;
        } finally {
            try {
                zipFile.close();
            } catch (IOException e5) {
                Log.w("MultiDex", "Failed to close resource", e5);
            }
        }
    }

    private static void putStoredApkInfo(Context context, String str, long j4, long j5, List<ExtractedDex> list) {
        SharedPreferences.Editor editorEdit = getMultiDexPreferences(context).edit();
        editorEdit.putLong(str + KEY_TIME_STAMP, j4);
        editorEdit.putLong(b.a(new StringBuilder(), str, KEY_CRC), j5);
        editorEdit.putInt(str + KEY_DEX_NUMBER, list.size() + 1);
        int i4 = 2;
        for (ExtractedDex extractedDex : list) {
            editorEdit.putLong(str + KEY_DEX_CRC + i4, extractedDex.crc);
            editorEdit.putLong(str + KEY_DEX_TIME + i4, extractedDex.lastModified());
            i4++;
        }
        editorEdit.commit();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.cacheLock.release();
        this.lockChannel.close();
        this.lockRaf.close();
    }

    public List<? extends File> load(Context context, String str, boolean z3) {
        List<ExtractedDex> listPerformExtractions;
        List<ExtractedDex> listLoadExistingExtractions;
        StringBuilder sbA = f.a("MultiDexExtractor.load(");
        sbA.append(this.sourceApk.getPath());
        sbA.append(", ");
        sbA.append(z3);
        sbA.append(", ");
        sbA.append(str);
        sbA.append(")");
        Log.i("MultiDex", sbA.toString());
        if (!this.cacheLock.isValid()) {
            throw new IllegalStateException("MultiDexExtractor was closed");
        }
        if (!z3 && !isModified(context, this.sourceApk, this.sourceCrc, str)) {
            try {
                listLoadExistingExtractions = loadExistingExtractions(context, str);
            } catch (IOException e4) {
                Log.w("MultiDex", "Failed to reload existing extracted secondary dex files, falling back to fresh extraction", e4);
                listPerformExtractions = performExtractions();
                putStoredApkInfo(context, str, getTimeStamp(this.sourceApk), this.sourceCrc, listPerformExtractions);
                listLoadExistingExtractions = listPerformExtractions;
            }
            StringBuilder sbA2 = f.a("load found ");
            sbA2.append(listLoadExistingExtractions.size());
            sbA2.append(" secondary dex files");
            Log.i("MultiDex", sbA2.toString());
            return listLoadExistingExtractions;
        }
        if (z3) {
            Log.i("MultiDex", "Forced extraction must be performed.");
        } else {
            Log.i("MultiDex", "Detected that extraction must be performed.");
        }
        listPerformExtractions = performExtractions();
        putStoredApkInfo(context, str, getTimeStamp(this.sourceApk), this.sourceCrc, listPerformExtractions);
        listLoadExistingExtractions = listPerformExtractions;
        StringBuilder sbA22 = f.a("load found ");
        sbA22.append(listLoadExistingExtractions.size());
        sbA22.append(" secondary dex files");
        Log.i("MultiDex", sbA22.toString());
        return listLoadExistingExtractions;
    }
}
