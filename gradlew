#!/usr/bin/env sh
set -e
if command -v gradle >/dev/null 2>&1; then
    exec gradle "$@" --no-daemon
fi
GRADLE_VER="8.5"
GRADLE_DIR="$HOME/.gradle/wrapper/dists/gradle-${GRADLE_VER}"
if [ ! -x "${GRADLE_DIR}/gradle-${GRADLE_VER}/bin/gradle" ]; then
    echo "Downloading Gradle ${GRADLE_VER}..."
    mkdir -p "${GRADLE_DIR}"
    curl -sL "https://services.gradle.org/distributions/gradle-${GRADLE_VER}-bin.zip" -o "${GRADLE_DIR}/gradle.zip"
    unzip -q -o "${GRADLE_DIR}/gradle.zip" -d "${GRADLE_DIR}"
fi
exec "${GRADLE_DIR}/gradle-${GRADLE_VER}/bin/gradle" "$@" --no-daemon
