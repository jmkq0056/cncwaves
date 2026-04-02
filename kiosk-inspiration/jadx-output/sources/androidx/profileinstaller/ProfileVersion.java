package androidx.profileinstaller;

import java.util.Arrays;
import org.kamranzafar.jtar.TarHeader;

/* JADX INFO: loaded from: classes.dex */
public class ProfileVersion {
    public static final int MIN_SUPPORTED_SDK = 24;
    static final byte[] V015_S = {TarHeader.LF_NORMAL, TarHeader.LF_LINK, TarHeader.LF_DIR, 0};
    static final byte[] V010_P = {TarHeader.LF_NORMAL, TarHeader.LF_LINK, TarHeader.LF_NORMAL, 0};
    static final byte[] V009_O_MR1 = {TarHeader.LF_NORMAL, TarHeader.LF_NORMAL, 57, 0};
    static final byte[] V005_O = {TarHeader.LF_NORMAL, TarHeader.LF_NORMAL, TarHeader.LF_DIR, 0};
    static final byte[] V001_N = {TarHeader.LF_NORMAL, TarHeader.LF_NORMAL, TarHeader.LF_LINK, 0};
    static final byte[] METADATA_V001_N = {TarHeader.LF_NORMAL, TarHeader.LF_NORMAL, TarHeader.LF_LINK, 0};
    static final byte[] METADATA_V002 = {TarHeader.LF_NORMAL, TarHeader.LF_NORMAL, TarHeader.LF_SYMLINK, 0};

    private ProfileVersion() {
    }

    static String dexKeySeparator(byte[] bArr) {
        return (Arrays.equals(bArr, V001_N) || Arrays.equals(bArr, V005_O)) ? ":" : "!";
    }
}
