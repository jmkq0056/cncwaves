package org.seamless.util;

import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.image.BufferedImage;
import java.awt.image.ImageObserver;
import java.io.ByteArrayOutputStream;
import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import org.fourthline.cling.support.model.dlna.DLNAProfiles;

/* JADX INFO: loaded from: classes2.dex */
public class Gfx {
    /* JADX WARN: Removed duplicated region for block: B:11:0x001a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0023 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0046 A[ADDED_TO_REGION] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0044 -> B:8:0x0013). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0046 -> B:8:0x0013). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.awt.image.BufferedImage getScaledInstance(java.awt.image.BufferedImage r11, int r12, int r13, java.lang.Object r14, boolean r15) {
        /*
            int r0 = r11.getTransparency()
            r1 = 1
            if (r0 != r1) goto L8
            goto L9
        L8:
            r1 = 2
        L9:
            if (r15 == 0) goto L15
            int r0 = r11.getWidth()
            int r2 = r11.getHeight()
        L13:
            r4 = r11
            goto L18
        L15:
            r4 = r11
            r0 = r12
            r2 = r13
        L18:
            if (r15 == 0) goto L21
            if (r0 <= r12) goto L21
            int r0 = r0 / 2
            if (r0 >= r12) goto L21
            r0 = r12
        L21:
            if (r15 == 0) goto L2a
            if (r2 <= r13) goto L2a
            int r2 = r2 / 2
            if (r2 >= r13) goto L2a
            r2 = r13
        L2a:
            java.awt.image.BufferedImage r11 = new java.awt.image.BufferedImage
            r11.<init>(r0, r2, r1)
            java.awt.Graphics2D r10 = r11.createGraphics()
            java.awt.RenderingHints$Key r3 = java.awt.RenderingHints.KEY_INTERPOLATION
            r10.setRenderingHint(r3, r14)
            r5 = 0
            r6 = 0
            r9 = 0
            r3 = r10
            r7 = r0
            r8 = r2
            r3.drawImage(r4, r5, r6, r7, r8, r9)
            r10.dispose()
            if (r0 != r12) goto L13
            if (r2 != r13) goto L13
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: org.seamless.util.Gfx.getScaledInstance(java.awt.image.BufferedImage, int, int, java.lang.Object, boolean):java.awt.image.BufferedImage");
    }

    public static byte[] resizeProportionally(ImageIcon imageIcon, String str, int i4, int i5) {
        double d4;
        double d5 = 1.0d;
        if (i4 != imageIcon.getIconWidth()) {
            double d6 = i4;
            double iconWidth = imageIcon.getIconWidth();
            Double.isNaN(d6);
            Double.isNaN(iconWidth);
            d4 = d6 / iconWidth;
        } else {
            d4 = 1.0d;
        }
        if (i5 != imageIcon.getIconHeight()) {
            double d7 = i5;
            double iconHeight = imageIcon.getIconHeight();
            Double.isNaN(d7);
            Double.isNaN(iconHeight);
            d5 = d7 / iconHeight;
        }
        if (d4 < d5) {
            double iconHeight2 = imageIcon.getIconHeight();
            Double.isNaN(iconHeight2);
            i5 = (int) (iconHeight2 * d4);
        } else {
            double iconWidth2 = imageIcon.getIconWidth();
            Double.isNaN(iconWidth2);
            i4 = (int) (iconWidth2 * d5);
        }
        BufferedImage bufferedImage = new BufferedImage(imageIcon.getIconWidth(), imageIcon.getIconHeight(), DLNAProfiles.DLNAMimeTypes.MIME_IMAGE_PNG.equals(str) ? 2 : 1);
        Graphics2D graphics2DCreateGraphics = bufferedImage.createGraphics();
        graphics2DCreateGraphics.drawImage(imageIcon.getImage(), 0, 0, imageIcon.getIconWidth(), imageIcon.getIconHeight(), (ImageObserver) null);
        graphics2DCreateGraphics.dispose();
        BufferedImage scaledInstance = getScaledInstance(bufferedImage, i4, i5, RenderingHints.VALUE_INTERPOLATION_NEAREST_NEIGHBOR, false);
        String str2 = DLNAProfiles.DLNAMimeTypes.MIME_IMAGE_PNG.equals(str) ? "png" : (DLNAProfiles.DLNAMimeTypes.MIME_IMAGE_JPEG.equals(str) || "image/jpg".equals(str)) ? "jpeg" : "";
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(1024);
        ImageIO.write(scaledInstance, str2, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }
}
