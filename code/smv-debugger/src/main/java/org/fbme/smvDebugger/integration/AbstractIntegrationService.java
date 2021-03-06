package org.fbme.smvDebugger.integration;

import java.nio.file.Path;
import java.io.BufferedReader;
import java.io.InputStreamReader;

public abstract class AbstractIntegrationService {
  protected static final String MAC_MONO_FRAMEWORK = "mono";

  protected final Path binaryPath;

  public AbstractIntegrationService(final Path binaryPath) {
    this.binaryPath = binaryPath;
  }

  protected String runProcess(final Path path) {
    final String command = getCommand(path);
    final ProcessBuilder builder = new ProcessBuilder();
    builder.command(command);

    try {
      final Process process = builder.start();
      process.waitFor();

      final BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
      final StringBuilder sb = new StringBuilder();
      String line = "";
      while ((line = reader.readLine()) != null) {
        sb.append(line).append("\n");
      }

      return sb.toString();
    } catch (final Exception e) {
      throw new RuntimeException(e);
    }
  }

  protected Path newPathOf(final Path basePath, final String fileExtension) {
    final String fullFileName = basePath.getFileName().toString();
    final int dotIndex = fullFileName.lastIndexOf(".");
    final String fileNameWithoutExtension = fullFileName.substring(0, dotIndex);
    return basePath.getParent().resolve(fileNameWithoutExtension + "." + fileExtension);
  }

  protected abstract String getCommand(final Path path);
}
