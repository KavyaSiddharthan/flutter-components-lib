<div align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=1E1E1E&height=250&section=header&text=Flutter%20Components&fontSize=70&fontColor=E2F163&animation=fadeIn" alt="Header" />
</div>

<div align="center">
  <h3 align="center"><i>Advanced User Interface Architecture for Flutter</i></h3>
  <p align="center">A carefully curated open source collection of highly modular and performant Flutter components demonstrating proficiency over the Flutter rendering engine and custom animations.</p>
</div>

<br />

<div align="center">
  <a href="https://github.com/KavyaSiddharthan/flutter-components-lib/actions/workflows/build.yml">
    <img src="https://github.com/KavyaSiddharthan/flutter-components-lib/actions/workflows/build.yml/badge.svg" alt="Flutter CI" />
  </a>
  <img src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white" alt="Flutter" />
  <img src="https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white" alt="Dart" />
  <img src="https://img.shields.io/badge/UI_UX-E2F163?style=for-the-badge&logo=figma&logoColor=black" alt="UI UX" />
</div>

<br />

## Architectural Philosophy

This repository is strictly structured as a modular Component Library rather than a standard application. It is engineered to showcase how to build bespoke user interfaces from scratch using core Flutter principles. 

By leveraging raw AnimationController physics, BackdropFilter engines, and Matrix4 transformations, these components achieve excellent visual effects while maintaining a strict performance target.

## The Components

### 1. The Glassmorphism Engine (lib/src/glassmorphism)
A highly optimized frosted glass implementation designed for modern interfaces.
* Architecture: Utilizes ClipRRect paired with hardware accelerated BackdropFilter.
* Lighting Effects: Integrates subtle linear gradients and low opacity drop shadows to simulate environmental lighting.
* Use Case: Excellent for modern fintech dashboards and premium portfolio displays.

```dart
// Example Usage
GlassCard(
  blurX: 20.0,
  blurY: 20.0,
  child: Text('Premium Glass Widget', style: TextStyle(color: Colors.white)),
)
```

<br />

### 2. Neobrutalism Interactive System (lib/src/neobrutalism)
A bold and high contrast user interface paradigm utilizing distinct borders and deep shadows.
* Physics Engine: Uses SingleTickerProviderStateMixin with a custom ease curve to simulate tactile button depression.
* Transformation: Utilizes raw Matrix4 translation values to shift the widget accurately during the interaction.
* Use Case: Ideal for modern landing pages and creative developer portfolios.

```dart
// Example Usage
NeoButton(
  backgroundColor: const Color(0xFFE2F163),
  onPressed: () => print('Button pressed'),
  child: const Text('ENGAGE SYSTEM'),
)
```

## Engineering Standards

* Zero Dependency Core: These components are built entirely using the core Flutter SDK. No massive third party animation libraries are utilized, demonstrating a fundamental understanding of the framework.
* Immutability First: All component parameters are strictly final and constructed const where possible, drastically reducing the widget rebuild footprint during layout rendering.
* Lifecycle Mastery: Interactive components properly handle gesture cancellations and accurately dispose of ticker providers to prevent memory leaks in production environments.

## Contribution
This library is continuously evolving. As new design trends emerge, new modules will be meticulously engineered and added to the source directory.

<div align="center">
  <p><i>Engineered with precision for the modern mobile ecosystem.</i></p>
</div>
