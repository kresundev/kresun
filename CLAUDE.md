# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Common Commands

```bash
# Get dependencies
flutter pub get

# Run the app (Supabase credentials required)
flutter run --dart-define=SUPABASE_URL=<url> --dart-define=SUPABASE_ANON_KEY=<key>

# Analyze
flutter analyze

# Run tests
flutter test

# Run a single test file
flutter test test/path/to/file_test.dart

# Code generation (freezed, riverpod, json_serializable)
flutter pub run build_runner build --delete-conflicting-outputs

# Watch mode for code generation
flutter pub run build_runner watch --delete-conflicting-outputs
```

## Architecture

MVVM + Clean Architecture with three layers:

**Domain** (`lib/domain/`) — pure Dart, no Flutter/framework deps
- `entities/` — immutable Freezed value objects
- `repositories/` — abstract interfaces only
- `usecases/` — one class per use case, depends on domain repository interfaces

**Data** (`lib/data/`) — implements domain contracts
- `repositories/` — concrete implementations of domain repository interfaces; each exposes a `@riverpod` provider
- `datasources/remote/` — plain concrete classes (no abstraction, no provider); one file per Supabase service area
- `datasources/local/` — local storage/cache
- `models/` — Freezed + JSON models; use `abstract class` with `@freezed`

**Presentation** (`lib/presentation/`) — Flutter UI + Riverpod state
- `pages/<feature>/` — each feature folder contains: `<feature>_page.dart`, `<feature>_page_state.dart`, `<feature>_page_view_model.dart`
- `providers/` — shared Riverpod providers not tied to a single page
- `widgets/` — shared UI components

**Core** (`lib/core/`)
- `router/app_router.dart` — GoRouter config; add all routes here
- `theme/app_theme.dart` — Material 3 theme; primary color `#6E71F3`
- `constants/app_colors.dart` — all color constants
- `errors/failures.dart` — sealed `Failure` hierarchy
- `errors/exceptions.dart` — exception types thrown by data sources

## Coding Conventions

### Freezed Models
- Always declare as `abstract class` (required by freezed 3.x): `abstract class Foo with _$Foo`
- Always include both `part 'file.freezed.dart'` and `part 'file.g.dart'` for JSON models
- Run build_runner after any model or provider changes

### Data Sources
- No abstraction layer on data sources — use a single concrete class named after the service (e.g. `SupabaseAuthDataSource`)
- No `@riverpod` provider on data sources — instantiate them directly inside the repository provider
- Supabase related table joins use PostgREST foreign key syntax: `.select('*, alias:table!foreign_key_column(*)')`

### Repository
- Domain `repositories/` = abstract interface only
- Data `repositories/` = concrete implementation + a `@riverpod` function provider
- The repository provider instantiates the data source directly: `SupabaseAuthDataSource(Supabase.instance.client)`

### Riverpod
- Use `@riverpod` annotation everywhere; never declare providers manually
- ViewModels extend `_$ClassName` from `riverpod_annotation` as a `Notifier`
- Use `Ref` (from `flutter_riverpod`) not the deprecated generated `XxxRef` aliases
- Page-level providers live inside the feature's page folder alongside the page

### Page State
- Use Freezed for page state with a private constructor `const ClassName._()` to allow custom getters
- Track dirty fields (e.g. `isEmailDirty`) to gate validation error visibility
- Expose computed getters for validation (`isFormValid`, `emailError`, `passwordError`, etc.) directly on the state class
- Use a `LoginStatus`-style enum (initial / loading / success / failure) for async operation state

### UI
- Validation errors appear below the field via a shared `_FieldError` widget with `AnimatedSize`
- Field borders and icon colors turn `AppColors.error` when `errorText != null`
- Primary action buttons are disabled (via `AnimatedOpacity`) when the form is invalid
- `withOpacity` is deprecated — use `.withValues(alpha: x)` instead

### Initialization
- All startup dependencies go in `lib/main_initializer.dart` as private `_setupX()` functions
- `main.dart` uses `part 'main_initializer.dart'` and calls `_mainInitializer()` before `runApp`
- Supabase credentials injected via `--dart-define`, never hardcoded
