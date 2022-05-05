package org.fbme.lib.iec61499.parser;

import org.fbme.lib.iec61499.IEC61499Factory;
import org.fbme.lib.st.STFactory;
import org.jetbrains.annotations.NotNull;

public class StandardIec61499ConverterConfiguration implements Iec61499ConverterConfiguration {

    private final @NotNull IEC61499Factory myEntryFactory;
    private final @NotNull STFactory myStEntryFactory;

    public StandardIec61499ConverterConfiguration(@NotNull IEC61499Factory entryFactory, @NotNull STFactory stEntryFactory) {
        myEntryFactory = entryFactory;
        myStEntryFactory = stEntryFactory;
    }

    @Override
    public @NotNull IEC61499Factory getEntryFactory() {
        return myEntryFactory;
    }

    @Override
    public @NotNull STFactory getStEntryFactory() {
        return myStEntryFactory;
    }

    @Override
    public @NotNull BasicFBTypeConverter createBasicFbTypeConverter(@NotNull ConverterArguments arguments) {
        return new BasicFBTypeConverter(arguments);
    }

    @Override
    public @NotNull CompositeFBTypeConverter createCompositeFbTypeConverter(@NotNull ConverterArguments arguments) {
        return new CompositeFBTypeConverter(arguments);
    }
}
