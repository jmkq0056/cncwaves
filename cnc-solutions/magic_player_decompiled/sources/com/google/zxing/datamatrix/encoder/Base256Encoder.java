package com.google.zxing.datamatrix.encoder;

import androidx.core.view.InputDeviceCompat;
import org.xbill.DNS.Type;

/* JADX INFO: loaded from: classes2.dex */
final class Base256Encoder implements Encoder {
    private static char randomize255State(char c4, int i4) {
        int i5 = ((i4 * 149) % 255) + 1 + c4;
        return i5 <= 255 ? (char) i5 : (char) (i5 + InputDeviceCompat.SOURCE_ANY);
    }

    @Override // com.google.zxing.datamatrix.encoder.Encoder
    public void encode(EncoderContext encoderContext) {
        StringBuilder sb = new StringBuilder();
        sb.append((char) 0);
        while (true) {
            if (!encoderContext.hasMoreCharacters()) {
                break;
            }
            sb.append(encoderContext.getCurrentChar());
            encoderContext.pos++;
            if (HighLevelEncoder.lookAheadTest(encoderContext.getMessage(), encoderContext.pos, getEncodingMode()) != getEncodingMode()) {
                encoderContext.signalEncoderChange(0);
                break;
            }
        }
        int length = sb.length() - 1;
        int codewordCount = encoderContext.getCodewordCount() + length + 1;
        encoderContext.updateSymbolInfo(codewordCount);
        boolean z3 = encoderContext.getSymbolInfo().getDataCapacity() - codewordCount > 0;
        if (encoderContext.hasMoreCharacters() || z3) {
            if (length <= 249) {
                sb.setCharAt(0, (char) length);
            } else {
                if (length > 1555) {
                    throw new IllegalStateException("Message length not in valid ranges: ".concat(String.valueOf(length)));
                }
                sb.setCharAt(0, (char) ((length / 250) + Type.TKEY));
                sb.insert(1, (char) (length % 250));
            }
        }
        int length2 = sb.length();
        for (int i4 = 0; i4 < length2; i4++) {
            encoderContext.writeCodeword(randomize255State(sb.charAt(i4), encoderContext.getCodewordCount() + 1));
        }
    }

    @Override // com.google.zxing.datamatrix.encoder.Encoder
    public int getEncodingMode() {
        return 5;
    }
}
