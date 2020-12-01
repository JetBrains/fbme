package org.fbme.ide.richediting.adapters.fb;

import jetbrains.mps.nodeEditor.MPSColors;
import org.fbme.lib.iec61499.fbnetwork.EntryKind;
import org.jetbrains.annotations.NotNull;

import java.awt.*;
import java.awt.geom.Rectangle2D;

public final class DiagramColors {
    private DiagramColors() {
    }

    public static final Color EVENT = new Color(0x66BBEE);
    public static final Color DATA = MPSColors.GRAY;
    public static final Color ADAPTER = new Color(0xEE8822);

    public static final Color EVENT_RO = new Color(0x88AACC);
    public static final Color DATA_RO = MPSColors.LIGHT_GRAY;
    public static final Color ADAPTER_RO = new Color(0xCCAA88);


    @NotNull
    public static Color getColorFor(@NotNull EntryKind kind) {
        return getColorFor(kind, true);
    }

    @NotNull
    public static Color getColorFor(@NotNull EntryKind kind, boolean editable) {
        switch (kind) {
            case ADAPTER:
                return editable ? ADAPTER : ADAPTER_RO;
            case EVENT:
                return editable ? EVENT : EVENT_RO;
            case DATA:
                return editable ? DATA : DATA_RO;
        }
        return null;
    }

    private static final float VARIANCE = 0.25f;

    public static Paint createGradientPaint(Color color, Rectangle2D bounds) {
        float centerBrightness = getBrightness(color);
        centerBrightness = Math.min(Math.max(centerBrightness, VARIANCE), 1.0f - VARIANCE);

        Color color1 = setBrightness(color, centerBrightness + VARIANCE);
        Color color2 = setBrightness(color, centerBrightness - VARIANCE);
        return new GradientPaint((float) bounds.getMinX(), (float) bounds.getMinY(), color1, (float) bounds.getMaxX(), (float) bounds.getMaxY(), color2, false);
    }

    private static float getBrightness(Color c) {
        float[] hsb = new float[3];
        Color.RGBtoHSB(c.getRed(), c.getGreen(), c.getBlue(), hsb);
        return hsb[2];
    }

    private static Color setBrightness(Color c, float brightness) {
        float[] hsb = new float[3];
        Color.RGBtoHSB(c.getRed(), c.getGreen(), c.getBlue(), hsb);
        if (brightness < 0.0f) {
            brightness = 0.0f;
        }
        if (brightness > 1.0f) {
            brightness = 1.0f;
        }
        return new Color(Color.HSBtoRGB(hsb[0], hsb[1], brightness));
    }

}
