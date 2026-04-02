package com.sun.jna.platform.unix;

/* JADX INFO: loaded from: classes4.dex */
public interface LibCAPI extends Reboot, Resource {
    public static final int HOST_NAME_MAX = 255;

    int getdomainname(byte[] bArr, int i);

    int getegid();

    String getenv(String str);

    int geteuid();

    int getgid();

    int gethostname(byte[] bArr, int i);

    int getloadavg(double[] dArr, int i);

    int getuid();

    int setdomainname(String str, int i);

    int setegid(int i);

    int setenv(String str, String str2, int i);

    int seteuid(int i);

    int setgid(int i);

    int sethostname(String str, int i);

    int setuid(int i);

    int unsetenv(String str);
}
