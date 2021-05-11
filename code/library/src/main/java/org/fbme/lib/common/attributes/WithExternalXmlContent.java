package org.fbme.lib.common.attributes;

import org.jdom.Content;
import org.jetbrains.annotations.NotNull;

import java.util.List;

public interface WithExternalXmlContent {

    /*immutable*/ @NotNull List<Content> getExternalContent();

    void setExternalContent(@NotNull List<Content> content);
}
