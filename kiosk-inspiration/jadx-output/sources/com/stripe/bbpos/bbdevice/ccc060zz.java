package com.stripe.bbpos.bbdevice;

import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.stripe.bbpos.bbdevice.BBDeviceController;
import java.util.Hashtable;
import kotlin.io.encoding.Base64;
import okio.Utf8;
import org.kamranzafar.jtar.TarHeader;

/* JADX INFO: loaded from: classes3.dex */
final class ccc060zz {
    static final Hashtable<BBDeviceController.CurrencyCharacter, byte[]> aaa000;

    static {
        Hashtable<BBDeviceController.CurrencyCharacter, byte[]> hashtable = new Hashtable<>();
        aaa000 = hashtable;
        hashtable.put(BBDeviceController.CurrencyCharacter.A, new byte[]{0, 0, -32, Utf8.REPLACEMENT_BYTE, 16, 2, 8, 2, 4, 2, 4, 2, -4, Utf8.REPLACEMENT_BYTE, 0, 0});
        hashtable.put(BBDeviceController.CurrencyCharacter.B, new byte[]{0, 0, -4, Utf8.REPLACEMENT_BYTE, -124, 32, -124, 32, -124, 32, -124, 32, 120, 31, 0, 0});
        hashtable.put(BBDeviceController.CurrencyCharacter.C, new byte[]{0, 0, -16, 15, 8, 16, 4, 32, 4, 32, 4, 32, 8, 16, 0, 0});
        hashtable.put(BBDeviceController.CurrencyCharacter.D, new byte[]{0, 0, -4, Utf8.REPLACEMENT_BYTE, 4, 32, 4, 32, 4, 32, 4, 32, -8, 31, 0, 0});
        hashtable.put(BBDeviceController.CurrencyCharacter.E, new byte[]{0, 0, -4, Utf8.REPLACEMENT_BYTE, -124, 32, -124, 32, -124, 32, -124, 32, 4, 32, 0, 0});
        hashtable.put(BBDeviceController.CurrencyCharacter.F, new byte[]{0, 0, -4, Utf8.REPLACEMENT_BYTE, -124, 0, -124, 0, -124, 0, -124, 0, 4, 0, 0, 0});
        hashtable.put(BBDeviceController.CurrencyCharacter.G, new byte[]{0, 0, -8, 31, 4, 32, 4, 32, 4, 34, 4, 34, 8, Ascii.RS, 0, 0});
        hashtable.put(BBDeviceController.CurrencyCharacter.H, new byte[]{0, 0, -4, Utf8.REPLACEMENT_BYTE, -128, 0, -128, 0, -128, 0, -128, 0, -4, Utf8.REPLACEMENT_BYTE, 0, 0});
        hashtable.put(BBDeviceController.CurrencyCharacter.I, new byte[]{0, 0, 4, 32, 4, 32, 4, 32, -4, Utf8.REPLACEMENT_BYTE, 4, 32, 4, 32, 0, 0});
        hashtable.put(BBDeviceController.CurrencyCharacter.J, new byte[]{0, 0, 0, Ascii.CAN, 4, 32, 4, 32, 4, 32, 4, 32, -4, 31, 0, 0});
        hashtable.put(BBDeviceController.CurrencyCharacter.K, new byte[]{0, 0, -4, Utf8.REPLACEMENT_BYTE, -128, 1, 96, 1, 16, 2, 8, 4, 4, 56, 0, 0});
        hashtable.put(BBDeviceController.CurrencyCharacter.L, new byte[]{0, 0, -4, Utf8.REPLACEMENT_BYTE, 0, 32, 0, 32, 0, 32, 0, 32, 0, 32, 0, 0});
        hashtable.put(BBDeviceController.CurrencyCharacter.M, new byte[]{0, 0, -4, Utf8.REPLACEMENT_BYTE, 8, 0, 16, 0, 16, 0, 8, 0, -4, Utf8.REPLACEMENT_BYTE, 0, 0});
        hashtable.put(BBDeviceController.CurrencyCharacter.N, new byte[]{0, 0, -4, Utf8.REPLACEMENT_BYTE, 32, 0, SignedBytes.MAX_POWER_OF_TWO, 0, -128, 0, 0, 1, -4, Utf8.REPLACEMENT_BYTE, 0, 0});
        hashtable.put(BBDeviceController.CurrencyCharacter.O, new byte[]{0, 0, -8, 31, 4, 32, 4, 32, 4, 32, 4, 32, -8, 31, 0, 0});
        hashtable.put(BBDeviceController.CurrencyCharacter.P, new byte[]{0, 0, -4, Utf8.REPLACEMENT_BYTE, -124, 0, -124, 0, -124, 0, -124, 0, 120, 0, 0, 0});
        hashtable.put(BBDeviceController.CurrencyCharacter.Q, new byte[]{0, 0, -8, 31, 4, 16, 4, 16, 4, 16, 4, 16, -8, 47, 0, 0});
        hashtable.put(BBDeviceController.CurrencyCharacter.R, new byte[]{0, 0, -4, Utf8.REPLACEMENT_BYTE, 4, 1, 4, 1, 4, 3, 4, 5, -8, 56, 0, 0});
        hashtable.put(BBDeviceController.CurrencyCharacter.S, new byte[]{0, 0, 120, 16, -124, 32, -124, 32, -124, 32, -124, 32, 8, 31, 0, 0});
        hashtable.put(BBDeviceController.CurrencyCharacter.T, new byte[]{0, 0, 4, 0, 4, 0, 4, 0, -4, Utf8.REPLACEMENT_BYTE, 4, 0, 4, 0, 0, 0});
        hashtable.put(BBDeviceController.CurrencyCharacter.U, new byte[]{0, 0, -4, Utf8.REPLACEMENT_BYTE, 0, 32, 0, 32, 0, 32, 0, 32, -4, Utf8.REPLACEMENT_BYTE, 0, 0});
        hashtable.put(BBDeviceController.CurrencyCharacter.V, new byte[]{0, 0, -4, 15, 0, 16, 0, 32, 0, 32, 0, 16, -4, 15, 0, 0});
        hashtable.put(BBDeviceController.CurrencyCharacter.W, new byte[]{0, 0, -4, Utf8.REPLACEMENT_BYTE, 0, 32, 0, 60, 0, 32, 0, 32, -4, 31, 0, 0});
        hashtable.put(BBDeviceController.CurrencyCharacter.X, new byte[]{0, 0, 60, 60, SignedBytes.MAX_POWER_OF_TWO, 2, -128, 0, 0, 1, SignedBytes.MAX_POWER_OF_TWO, 2, 60, 60, 0, 0});
        hashtable.put(BBDeviceController.CurrencyCharacter.Y, new byte[]{0, 0, 60, 0, SignedBytes.MAX_POWER_OF_TWO, 0, -128, 0, -128, Utf8.REPLACEMENT_BYTE, SignedBytes.MAX_POWER_OF_TWO, 0, 60, 0, 0, 0});
        hashtable.put(BBDeviceController.CurrencyCharacter.Z, new byte[]{0, 0, 4, 60, 4, 34, 4, 33, -124, 32, 68, 32, 60, 32, 0, 0});
        hashtable.put(BBDeviceController.CurrencyCharacter.RUPEE, new byte[]{0, 0, TarHeader.LF_FIFO, 3, TarHeader.LF_FIFO, 15, -66, Base64.padSymbol, -2, -15, -10, -64, TarHeader.LF_FIFO, 0, 0, 0});
        hashtable.put(BBDeviceController.CurrencyCharacter.YEN, new byte[]{0, 0, Ascii.FS, 5, 96, 5, -128, Utf8.REPLACEMENT_BYTE, -128, Utf8.REPLACEMENT_BYTE, 96, 5, Ascii.FS, 5, 0, 0});
        hashtable.put(BBDeviceController.CurrencyCharacter.POUND, new byte[]{0, 0, 0, 97, -8, 127, -4, 95, 12, 65, 12, 65, Ascii.CAN, SignedBytes.MAX_POWER_OF_TWO, 0, 0});
        hashtable.put(BBDeviceController.CurrencyCharacter.EURO, new byte[]{0, 0, SignedBytes.MAX_POWER_OF_TWO, 1, -8, 31, -4, Utf8.REPLACEMENT_BYTE, 68, 33, 68, 33, 76, TarHeader.LF_NORMAL, Ascii.CAN, Ascii.CAN});
        hashtable.put(BBDeviceController.CurrencyCharacter.WON, new byte[]{-128, 2, -8, 15, -128, Ascii.DC2, -8, 15, -128, Ascii.DC2, -8, 15, -128, 2, 0, 0});
        hashtable.put(BBDeviceController.CurrencyCharacter.DIRHAM, new byte[]{-2, 103, 0, 0, 0, 16, 0, 0, TarHeader.LF_NORMAL, 8, 96, 8, -64, 8, -128, 7});
        hashtable.put(BBDeviceController.CurrencyCharacter.RIYAL, new byte[]{0, 0, 0, 14, 0, Ascii.CAN, 0, 16, 0, 16, 0, Ascii.CAN, -4, 15, 0, 0});
        hashtable.put(BBDeviceController.CurrencyCharacter.RIYAL_2, new byte[]{-4, 79, 0, Ascii.CAN, 0, 80, 0, Ascii.CAN, 0, 78, 0, 96, 0, 60, 0, 0});
        hashtable.put(BBDeviceController.CurrencyCharacter.DOLLAR, new byte[]{0, 0, 112, 8, -120, 16, -4, Utf8.REPLACEMENT_BYTE, -120, 16, 16, 15, 0, 0, 0, 0});
        hashtable.put(BBDeviceController.CurrencyCharacter.SPACE, new byte[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0});
        hashtable.put(BBDeviceController.CurrencyCharacter.SLASH_AND_DOT, new byte[]{0, 0, 0, TarHeader.LF_NORMAL, 0, 12, 0, 3, -64, 0, TarHeader.LF_NORMAL, TarHeader.LF_NORMAL, 12, TarHeader.LF_NORMAL, 0, 0});
        hashtable.put(BBDeviceController.CurrencyCharacter.DOT, new byte[]{0, 0, 0, TarHeader.LF_NORMAL, 0, TarHeader.LF_NORMAL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0});
        hashtable.put(BBDeviceController.CurrencyCharacter.YUAN, new byte[]{0, 0, Ascii.FS, 5, 96, 5, -128, Utf8.REPLACEMENT_BYTE, -128, Utf8.REPLACEMENT_BYTE, 96, 5, Ascii.FS, 5, 0, 0});
        hashtable.put(BBDeviceController.CurrencyCharacter.NEW_SHEKEL, new byte[]{0, 0, -8, 31, 8, 0, -24, 31, 8, 16, -8, Ascii.ETB, 0, 16, -8, 31});
    }
}
