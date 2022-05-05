package org.fbme.lib.iec61499.parser;

import org.fbme.lib.iec61499.IEC61499Factory;
import org.fbme.lib.st.STFactory;
import org.jetbrains.annotations.NotNull;

public interface Iec61499ConverterConfiguration {

    @NotNull IEC61499Factory getEntryFactory();

    @NotNull STFactory getStEntryFactory();

    @NotNull BasicFBTypeConverter createBasicFbTypeConverter(@NotNull ConverterArguments arguments);

    @NotNull CompositeFBTypeConverter createCompositeFbTypeConverter(@NotNull ConverterArguments arguments);
}
