package com.example.digitalkiosk.msprintsdk;

import com.sun.jna.Library;
import com.sun.jna.Native;

/* JADX INFO: loaded from: classes.dex */
public interface JNAData1 extends Library {
    public static final JNAData1 INSTANCE = (JNAData1) Native.load("msprintdata1", JNAData1.class);

    String Data1GetPrintDataA();

    int Data1PrintDataMatrix(String str, int i);

    int Data1PrintDiskbmpfile(String str);

    int Data1PrintQrcode(String str, int i, int i2, int i3);

    int Data1Release();

    int Data1SetNvbmp(int i, String str);
}
