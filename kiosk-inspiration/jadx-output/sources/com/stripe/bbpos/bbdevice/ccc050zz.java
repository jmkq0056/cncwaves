package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.ccc066zz;
import java.io.ByteArrayOutputStream;
import java.util.Hashtable;

/* JADX INFO: loaded from: classes3.dex */
class ccc050zz {
    private final BBDeviceController aaa000;
    ByteArrayOutputStream aaa001 = new ByteArrayOutputStream();

    ccc050zz(BBDeviceController bBDeviceController) {
        this.aaa000 = bBDeviceController;
    }

    private static String aaa000(String str, String str2) {
        String str3 = str + str2;
        String str4 = ccc071zz.aaa001((str3.length() / 2) + 3) + str3;
        String str5 = str4 + ccc071zz.aaa000(aaa007zz.aaa000(ccc071zz.aaa005(str4)));
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArrAaa005 = ccc071zz.aaa005(str5);
        for (int i = 0; i < bArrAaa005.length; i++) {
            byte b = bArrAaa005[i];
            if (b == 2) {
                byteArrayOutputStream.write(-91);
            } else if (b == 3) {
                byteArrayOutputStream.write(-91);
            } else if (b == -91) {
                byteArrayOutputStream.write(-91);
            }
            byteArrayOutputStream.write(bArrAaa005[i]);
        }
        return "02" + ccc071zz.aaa000(byteArrayOutputStream.toByteArray()) + "03";
    }

    static String aaa001(String str, String str2) {
        return aaa000(str, str2);
    }

    static String aaa000() {
        return aaa000("0003", "");
    }

    void aaa000(byte[] bArr) {
        this.aaa001.write(bArr, 0, bArr.length);
        byte[] byteArray = this.aaa001.toByteArray();
        if (byteArray.length < 5) {
            return;
        }
        if (byteArray[0] == 2) {
            int i = 1;
            while (true) {
                if (i >= byteArray.length) {
                    i = -1;
                    break;
                }
                byte b = byteArray[i];
                if (b == -91) {
                    i++;
                } else if (b == 3) {
                    break;
                }
                i++;
            }
            if (i == -1) {
                return;
            }
            this.aaa001.reset();
            int i2 = i + 1;
            this.aaa001.write(byteArray, i2, byteArray.length - i2);
            int i3 = i - 1;
            byte[] bArr2 = new byte[i3];
            System.arraycopy(byteArray, 1, bArr2, 0, i3);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            int i4 = 0;
            while (i4 < i3) {
                if (bArr2[i4] == -91) {
                    i4++;
                }
                if (i4 < i3) {
                    byteArrayOutputStream.write(bArr2[i4]);
                }
                i4++;
            }
            byte[] byteArray2 = byteArrayOutputStream.toByteArray();
            String strAaa000 = ccc071zz.aaa000(byteArray2);
            String strSubstring = strAaa000.substring(strAaa000.length() - 2);
            int length = byteArray2.length - 1;
            byte[] bArr3 = new byte[length];
            System.arraycopy(byteArray2, 0, bArr3, 0, length);
            if (ccc071zz.aaa000(aaa007zz.aaa000(bArr3)).equalsIgnoreCase(strSubstring)) {
                strAaa000.substring(0, 4);
                String strSubstring2 = strAaa000.substring(4, 8);
                String strSubstring3 = strAaa000.substring(8, strAaa000.length() - 2);
                if (!strSubstring2.equalsIgnoreCase("0002") && !strSubstring2.equalsIgnoreCase("0006") && !strSubstring2.equalsIgnoreCase("0008") && !strSubstring2.equalsIgnoreCase("000A")) {
                    if (strSubstring2.equalsIgnoreCase("0004")) {
                        this.aaa000.aaa019().aaa000(ccc066zz.aaa002zz.NO);
                        this.aaa000.aaa001(BBDeviceController.NfcDetectCardResult.CARD_REMOVED, new Hashtable<>());
                    }
                } else {
                    this.aaa000.aaa025(strSubstring3);
                }
            }
        } else {
            this.aaa001.reset();
            this.aaa001.write(byteArray, 1, byteArray.length - 1);
        }
        if (this.aaa001.size() > 0) {
            aaa000(new byte[0]);
        }
    }
}
