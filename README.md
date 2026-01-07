# E-book with Flutter and Bloc with clean architecture 

A Flutter-based digital eBook platform for Jain literature.

## Features

- Browse and search Jain eBooks
- Read eBooks with a customizable reader
- Bookmark pages and highlight text
- Download eBooks for offline reading
- User authentication and profile management

## Technology Stack

- **Flutter**: Cross-platform mobile app development
- **Dart**: Programming language for Flutter
- **Firebase**: Authentication, Firestore database, and cloud storage
- **Bloc**: State management# E-book with Flutter and Bloc with clean architecture 
# Jain eBook Platform

A Flutter-based digital eBook platform for Jain literature, built with Bloc and clean architecture principles.

## Features

- Browse and search Jain eBooks
- Read eBooks with a customizable reader
- Bookmark pages and highlight text
- Download eBooks for offline reading
- User authentication and profile management

## Technology Stack

- **Flutter**: Cross-platform mobile app development
- **Dart**: Programming language for Flutter
- **Firebase**: Authentication, Firestore database, and cloud storage
- **Bloc**: State management
- **Google Fonts**: Custom typography
- **Freezed**: Immutable data classes & union types
- **Json Serializable**: JSON serialization for models

## Project Structure

```
.
├── android/
├── ios/
├── lib/
│   ├── core/
│   │   ├── service_locator.dart
│   │   └── widget/
│   ├── data/
│   │   ├── model/
│   │   └── repository/
│   ├── domain/
│   │   ├── repository/
│   │   └── usecase/
│   ├── presentation/
│   │   ├── forget_password/
│   │   ├── login/
│   │   ├── registration/
│   │   └── splash/
│   ├── router/
│   ├── firebase_options.dart
│   └── main.dart
├── linux/
├── macos/
├── test/
├── web/
├── windows/
├── pubspec.yaml
├── README.md
└── ...
```

## Getting Started

1. **Clone the repository:**
   ```sh
   git clone https://github.com/yourusername/jainebook.git
   cd jainebook
   ```
2. **Install dependencies:**
   ```sh
   flutter pub get
   ```
3. **Set up Firebase for your platform (Android/iOS):**
   - Follow the [Firebase setup guide](https://firebase.google.com/docs/flutter/setup).
   - Add your `google-services.json` (Android) or `GoogleService-Info.plist` (iOS) to the respective directories.
4. **Generate code for Freezed and JSON serialization:**
   ```sh
   flutter pub run build_runner build --delete-conflicting-outputs
   ```
5. **Run the app:**
   ```sh
   flutter run
   ```

For more information, refer to the [Flutter documentation](https://docs.flutter.dev/).
