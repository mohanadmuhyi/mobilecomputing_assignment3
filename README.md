
# Assignment 3 - Mohannad Mohie - 23011570
## Flutter Posts & Favorites

A Flutter application that fetches posts from JSONPlaceholder and stores them locally using Hive. Users can add posts to favorites and access cached posts offline.

## Features

- Fetch posts from API.
- Cache posts locally using Hive.
- View posts offline.
- Add and remove favorites.
- View favorites in a separate screen.
- Pull to refresh.
## Project Structure

```
lib/
├── main.dart
├── models/
├── screens/
│   ├── posts_screen.dart
│   └── favorites_screen.dart
└── services/
    ├── post_service.dart
    └── favorites_service.dart
```

## Screenshots

### Posts Screen

![[Pasted image 20261120144052.png]]
### Favorites Screen

![[Pasted image 20261120144134.png]]
### Empty Favorites

![[Pasted image 20261120144109.png]]
## Run the Project

```
flutter pub get
flutter run
```