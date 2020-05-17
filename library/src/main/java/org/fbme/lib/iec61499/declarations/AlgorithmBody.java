package org.fbme.lib.iec61499.declarations;

import org.fbme.lib.common.ContainedElement;
import org.fbme.lib.st.statements.Statement;
import org.jetbrains.annotations.NotNull;

import java.util.List;

public interface AlgorithmBody extends ContainedElement {

    AlgorithmLanguage<?> getLanguage();

    AlgorithmDeclaration getContainer();

    interface ST extends AlgorithmBody {

        @Override
        default AlgorithmLanguage<ST> getLanguage() {
            return AlgorithmLanguage.ST;
        }

        List<Statement> getStatements();
    }

    interface Unknown extends AlgorithmBody {

        @NotNull String getText();

        void setText(@NotNull String text);
    }
}
