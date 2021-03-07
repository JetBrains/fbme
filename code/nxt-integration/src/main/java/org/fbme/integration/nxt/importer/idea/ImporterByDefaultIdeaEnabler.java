package org.fbme.integration.nxt.importer.idea;

import org.fbme.ide.platform.converter.PlatformConverter;
import org.fbme.integration.nxt.importer.NxtImporterConfiguration;

public final class ImporterByDefaultIdeaEnabler {

    private static final String KEY = "org.fbme.integration.nxt.importer.use";
    private static final boolean ENABLED = Boolean.getBoolean(KEY);

    private ImporterByDefaultIdeaEnabler() {
    }

    public static void install() {
        enable(ENABLED);
    }

    public static void uninstall() {
        enable(false);
    }

    private static void enable(boolean value) {
        if (value) {
            PlatformConverter.installConfigFactory(NxtImporterConfiguration.FACTORY);
        } else {
            PlatformConverter.installConfigFactory(PlatformConverter.STANDARD_CONFIG_FACTORY);
        }
    }
}
