package org.kamranzafar.jtar;

import com.sun.jna.platform.win32.WinError;
import java.io.File;
import java.io.IOException;
import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.attribute.PosixFilePermission;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public class PermissionUtils {
    private static final boolean isPosix;
    private static Map<PosixFilePermission, Integer> posixPermissionToInteger;

    private enum StandardFilePermission {
        EXECUTE(72),
        WRITE(WinError.ERROR_DIR_NOT_ROOT),
        READ(WinError.ERROR_NOT_OWNER);

        private int mode;

        StandardFilePermission(int i) {
            this.mode = i;
        }
    }

    static {
        HashMap map = new HashMap();
        posixPermissionToInteger = map;
        map.put(PosixFilePermission.OWNER_EXECUTE, 64);
        posixPermissionToInteger.put(PosixFilePermission.OWNER_WRITE, 128);
        posixPermissionToInteger.put(PosixFilePermission.OWNER_READ, 256);
        posixPermissionToInteger.put(PosixFilePermission.GROUP_EXECUTE, 8);
        posixPermissionToInteger.put(PosixFilePermission.GROUP_WRITE, 16);
        posixPermissionToInteger.put(PosixFilePermission.GROUP_READ, 32);
        posixPermissionToInteger.put(PosixFilePermission.OTHERS_EXECUTE, 1);
        posixPermissionToInteger.put(PosixFilePermission.OTHERS_WRITE, 2);
        posixPermissionToInteger.put(PosixFilePermission.OTHERS_READ, 4);
        isPosix = FileSystems.getDefault().supportedFileAttributeViews().contains("posix");
    }

    public static int permissions(File file) {
        if (file == null) {
            throw new NullPointerException("File is null.");
        }
        if (file.exists()) {
            return isPosix ? posixPermissions(file) : standardPermissions(file).intValue();
        }
        throw new IllegalArgumentException("File " + file + " does not exist.");
    }

    private static int posixPermissions(File file) {
        try {
            int iIntValue = 0;
            Set<PosixFilePermission> posixFilePermissions = Files.getPosixFilePermissions(file.toPath(), new LinkOption[0]);
            for (Map.Entry<PosixFilePermission, Integer> entry : posixPermissionToInteger.entrySet()) {
                if (posixFilePermissions.contains(entry.getKey())) {
                    iIntValue += entry.getValue().intValue();
                }
            }
            return iIntValue;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private static Set<StandardFilePermission> readStandardPermissions(File file) {
        HashSet hashSet = new HashSet();
        if (file.canExecute()) {
            hashSet.add(StandardFilePermission.EXECUTE);
        }
        if (file.canWrite()) {
            hashSet.add(StandardFilePermission.WRITE);
        }
        if (file.canRead()) {
            hashSet.add(StandardFilePermission.READ);
        }
        return hashSet;
    }

    private static Integer standardPermissions(File file) {
        Iterator<StandardFilePermission> it = readStandardPermissions(file).iterator();
        int i = 0;
        while (it.hasNext()) {
            i += it.next().mode;
        }
        return Integer.valueOf(i);
    }
}
