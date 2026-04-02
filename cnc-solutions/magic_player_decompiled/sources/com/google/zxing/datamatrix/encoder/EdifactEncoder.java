package com.google.zxing.datamatrix.encoder;

/* JADX INFO: loaded from: classes2.dex */
final class EdifactEncoder implements Encoder {
    private static void encodeChar(char c4, StringBuilder sb) {
        if (c4 >= ' ' && c4 <= '?') {
            sb.append(c4);
        } else if (c4 < '@' || c4 > '^') {
            HighLevelEncoder.illegalCharacter(c4);
        } else {
            sb.append((char) (c4 - '@'));
        }
    }

    private static String encodeToCodewords(CharSequence charSequence) {
        int length = charSequence.length();
        if (length == 0) {
            throw new IllegalStateException("StringBuilder must not be empty");
        }
        int iCharAt = (charSequence.charAt(0) << 18) + ((length >= 2 ? charSequence.charAt(1) : (char) 0) << '\f') + ((length >= 3 ? charSequence.charAt(2) : (char) 0) << 6) + (length >= 4 ? charSequence.charAt(3) : (char) 0);
        char c4 = (char) ((iCharAt >> 16) & 255);
        char c5 = (char) ((iCharAt >> 8) & 255);
        char c6 = (char) (iCharAt & 255);
        StringBuilder sb = new StringBuilder(3);
        sb.append(c4);
        if (length >= 2) {
            sb.append(c5);
        }
        if (length >= 3) {
            sb.append(c6);
        }
        return sb.toString();
    }

    private static void handleEOD(EncoderContext encoderContext, CharSequence charSequence) {
        try {
            int length = charSequence.length();
            if (length == 0) {
                return;
            }
            boolean z3 = true;
            if (length == 1) {
                encoderContext.updateSymbolInfo();
                int dataCapacity = encoderContext.getSymbolInfo().getDataCapacity() - encoderContext.getCodewordCount();
                int remainingCharacters = encoderContext.getRemainingCharacters();
                if (remainingCharacters > dataCapacity) {
                    encoderContext.updateSymbolInfo(encoderContext.getCodewordCount() + 1);
                    dataCapacity = encoderContext.getSymbolInfo().getDataCapacity() - encoderContext.getCodewordCount();
                }
                if (remainingCharacters <= dataCapacity && dataCapacity <= 2) {
                    return;
                }
            }
            if (length > 4) {
                throw new IllegalStateException("Count must not exceed 4");
            }
            int i4 = length - 1;
            String strEncodeToCodewords = encodeToCodewords(charSequence);
            if (!(!encoderContext.hasMoreCharacters()) || i4 > 2) {
                z3 = false;
            }
            if (i4 <= 2) {
                encoderContext.updateSymbolInfo(encoderContext.getCodewordCount() + i4);
                if (encoderContext.getSymbolInfo().getDataCapacity() - encoderContext.getCodewordCount() >= 3) {
                    encoderContext.updateSymbolInfo(encoderContext.getCodewordCount() + strEncodeToCodewords.length());
                    z3 = false;
                }
            }
            if (z3) {
                encoderContext.resetSymbolInfo();
                encoderContext.pos -= i4;
            } else {
                encoderContext.writeCodewords(strEncodeToCodewords);
            }
        } finally {
            encoderContext.signalEncoderChange(0);
        }
    }

    @Override // com.google.zxing.datamatrix.encoder.Encoder
    public void encode(EncoderContext encoderContext) {
        StringBuilder sb = new StringBuilder();
        while (true) {
            if (!encoderContext.hasMoreCharacters()) {
                break;
            }
            encodeChar(encoderContext.getCurrentChar(), sb);
            encoderContext.pos++;
            if (sb.length() >= 4) {
                encoderContext.writeCodewords(encodeToCodewords(sb));
                sb.delete(0, 4);
                if (HighLevelEncoder.lookAheadTest(encoderContext.getMessage(), encoderContext.pos, getEncodingMode()) != getEncodingMode()) {
                    encoderContext.signalEncoderChange(0);
                    break;
                }
            }
        }
        sb.append((char) 31);
        handleEOD(encoderContext, sb);
    }

    @Override // com.google.zxing.datamatrix.encoder.Encoder
    public int getEncodingMode() {
        return 4;
    }
}
