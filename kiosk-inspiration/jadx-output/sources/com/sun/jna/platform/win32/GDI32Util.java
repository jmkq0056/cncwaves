package com.sun.jna.platform.win32;

import java.awt.image.DirectColorModel;

/* JADX INFO: loaded from: classes4.dex */
public class GDI32Util {
    private static final int[] SCREENSHOT_BAND_MASKS;
    private static final DirectColorModel SCREENSHOT_COLOR_MODEL;

    static {
        DirectColorModel directColorModel = new DirectColorModel(24, Winspool.PRINTER_ENUM_ICONMASK, 65280, 255);
        SCREENSHOT_COLOR_MODEL = directColorModel;
        SCREENSHOT_BAND_MASKS = new int[]{directColorModel.getRedMask(), directColorModel.getGreenMask(), directColorModel.getBlueMask()};
    }

    /* JADX WARN: Removed duplicated region for block: B:125:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0218  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x024e  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0278 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0279  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.awt.image.BufferedImage getScreenshot(com.sun.jna.platform.win32.WinDef.HWND r17) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 662
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.jna.platform.win32.GDI32Util.getScreenshot(com.sun.jna.platform.win32.WinDef$HWND):java.awt.image.BufferedImage");
    }
}
