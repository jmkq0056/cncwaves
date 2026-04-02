package com.google.zxing.datamatrix.encoder;

import com.sun.jna.platform.win32.WinError;

/* JADX INFO: loaded from: classes3.dex */
final class DataMatrixSymbolInfo144 extends SymbolInfo {
    @Override // com.google.zxing.datamatrix.encoder.SymbolInfo
    public int getDataLengthForInterleavedBlock(int i) {
        if (i <= 8) {
            return WinError.ERROR_SIGNAL_REFUSED;
        }
        return 155;
    }

    @Override // com.google.zxing.datamatrix.encoder.SymbolInfo
    public int getInterleavedBlockCount() {
        return 10;
    }

    DataMatrixSymbolInfo144() {
        super(false, 1558, WinError.ERROR_INVALID_PLUGPLAY_DEVICE_PATH, 22, 22, 36, -1, 62);
    }
}
