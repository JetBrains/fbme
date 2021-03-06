package org.fbme.smvDebugger.integration;

import java.nio.file.Path;
import java.util.Optional;
import java.nio.file.Files;
import java.nio.file.StandardOpenOption;
import java.io.IOException;

public class NuSmvService extends AbstractIntegrationService {
  private static final String NUSMV_FAIL = "is false";

  public NuSmvService(final Path nuSmvBinaryPath) {
    super(nuSmvBinaryPath);
  }

  public Optional<Path> getRawCounterexample(final Path smvPath, final String specification) {
    addSpecification(smvPath, specification);
    final String output = runProcess(smvPath);

    if (!(output.contains(NUSMV_FAIL))) {
      return Optional.<Path>empty();
    }

    final Path rawCounterexamplePath = createRawCounterexampleFile(smvPath, output);
    return Optional.of(rawCounterexamplePath);
  }

  @Override
  protected String getCommand(final Path smvPath) {
    return binaryPath + " " + smvPath;
  }

  private void addSpecification(final Path smvPath, final String specification) {
    try {
      Files.write(smvPath, ("\n\n" + specification).getBytes(), StandardOpenOption.APPEND);
    } catch (final IOException e) {
      throw new RuntimeException(e);
    }
  }

  private Path createRawCounterexampleFile(final Path smvPath, final String counterexample) {
    final Path rawCounterexamplePath = newPathOf(smvPath, NutracService.NUTRAC_FILE_EXTENSION);
    try {
      return Files.write(rawCounterexamplePath, counterexample.getBytes());
    } catch (final IOException e) {
      throw new RuntimeException(e);
    }
  }
}
