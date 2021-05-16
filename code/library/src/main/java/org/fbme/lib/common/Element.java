package org.fbme.lib.common;

import org.fbme.lib.common.attributes.WithExternalXmlContent;
import org.jetbrains.annotations.Nullable;

public interface Element extends WithExternalXmlContent {

    @Nullable Element getContainer();
}
