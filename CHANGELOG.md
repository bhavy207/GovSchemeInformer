# Changelog

All notable changes to this project should be documented in this file.

## Unreleased
- Repo-local build fixes:
  - Force Gradle to use JDK 17 for local/CI builds (safe, reversible).
  - Commented legacy `app_plugin_loader` imperative apply; rely on declarative plugin application.
  - Added a Gradle `init.d` resolution script to align Kotlin artifacts for included builds (temporary mitigation).
  - Added CI job `android-ci.yml` to run `assembleDebug` on PRs (catches Kotlin/Gradle regressions early).

### Migration notes
- Current blocker: Flutter Gradle tooling requires Kotlin APIs present in Kotlin 1.8+/1.9.x; some transitive artifacts still pull older Kotlin.
- Next recommended step: create a dedicated upgrade branch to bump Gradle wrapper + Android Gradle Plugin + Kotlin to supported, tested versions.
