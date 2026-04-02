package com.sun.jna.platform;

import com.sun.jna.platform.mac.MacFileUtils;
import com.sun.jna.platform.win32.W32FileUtils;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public abstract class FileUtils {
    public boolean hasTrash() {
        return false;
    }

    public abstract void moveToTrash(File[] fileArr) throws IOException;

    private static class Holder {
        public static final FileUtils INSTANCE;

        private Holder() {
        }

        static {
            String property = System.getProperty("os.name");
            if (property.startsWith("Windows")) {
                INSTANCE = new W32FileUtils();
            } else if (property.startsWith("Mac")) {
                INSTANCE = new MacFileUtils();
            } else {
                INSTANCE = new DefaultFileUtils();
            }
        }
    }

    public static FileUtils getInstance() {
        return Holder.INSTANCE;
    }

    private static class DefaultFileUtils extends FileUtils {
        private DefaultFileUtils() {
        }

        private File getTrashDirectory() {
            File file = new File(System.getProperty("user.home"));
            File file2 = new File(file, ".Trash");
            if (!file2.exists()) {
                file2 = new File(file, "Trash");
                if (!file2.exists()) {
                    File file3 = new File(file, "Desktop");
                    if (file3.exists()) {
                        File file4 = new File(file3, ".Trash");
                        if (file4.exists()) {
                            return file4;
                        }
                        File file5 = new File(file3, "Trash");
                        return !file5.exists() ? new File(System.getProperty("fileutils.trash", "Trash")) : file5;
                    }
                }
            }
            return file2;
        }

        @Override // com.sun.jna.platform.FileUtils
        public boolean hasTrash() {
            return getTrashDirectory().exists();
        }

        @Override // com.sun.jna.platform.FileUtils
        public void moveToTrash(File[] fileArr) throws IOException {
            File trashDirectory = getTrashDirectory();
            if (!trashDirectory.exists()) {
                throw new IOException("No trash location found (define fileutils.trash to be the path to the trash)");
            }
            ArrayList arrayList = new ArrayList();
            for (File file : fileArr) {
                if (!file.renameTo(new File(trashDirectory, file.getName()))) {
                    arrayList.add(file);
                }
            }
            if (arrayList.size() > 0) {
                throw new IOException("The following files could not be trashed: " + arrayList);
            }
        }
    }
}
