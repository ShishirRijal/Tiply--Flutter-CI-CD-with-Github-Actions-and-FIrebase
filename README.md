# Tiply — A Flutter Tip Calculator App with CI/CD using GitHub Actions & Firebase Hosting

**Tiply** is a sleek and simple **tip calculator app** built with Flutter. This repository not only showcases a clean and functional UI/UX for calculating tips — it demonstrates a complete **CI/CD pipeline** setup for **Android** and **Web** platforms using **GitHub Actions** and **Firebase Hosting**.

The app is automatically tested, built, and deployed to Firebase Hosting (for Web) and creates GitHub Releases (for Android APKs), making this a great starting point for developers learning CI/CD in Flutter.

---

## 🛠️ Features

- ✅ Build and deploy Flutter **Android** APKs to Firebase App Distribution
- ✅ Build and deploy Flutter **Web** apps to Firebase Hosting Preview Channels
- ✅ Structured GitHub Actions using:
  - `ci.yml` – General CI checks
  - `android-cd.yml` – Android CD to Firebase
  - `web-cd.yml` – Web deployment to Firebase Hosting

---

## App Snaps
<p align="center">
  <img src="https://github.com/user-attachments/assets/58d90512-ef18-47cd-8130-43d426e868a4" alt="Screenshot 1" width="200"/>
  &nbsp;&nbsp;
  <img src="https://github.com/user-attachments/assets/53457e03-2f80-4b03-b331-d52d733a4495" alt="Screenshot 2" width="200"/>
</p>



---

## Workflows Overview

This repository implements CI/CD pipeline using GitHub Actions and Firebase:

### Continuous Integration (`ci.yml`)

-   Runs on every push to main branch
-   Installs dependencies
-   Performs Flutter code analysis and linting
-   Runs unit and widget tests
-   Validates build process for all platforms

### Android Continuous Deployment (`android-cd.yml`)

-   Triggered on successful merges to main branch
-   Builds Android release APK and App Bundle
-   Creates GitHub release with APK
-   Deploys to Firebase App Distribution for beta testing

### Web Continuous Deployment (`web-cd.yml`)

-   Triggered on successful merges to main branch
-   Builds optimized web application bundle
-   Deploys to Firebase Hosting for immediate availability
-   URL valid for 7 days by default


## 🚀 Getting Started

### Prerequisites

-   Flutter SDK (latest stable version)
-   Android Studio / Xcode
-   Firebase project
-   GitHub account with Actions enabled

### Setup Instructions

1.  Clone the repository:

    ```bash
    git clone https://github.com/ShishirRijal/Tiply--Flutter-CI-CD-with-Github-Actions-and-FIrebase.git
    cd Tiply--Flutter-CI-CD-with-Github-Actions-and-FIrebase
    ```

2.  Install dependencies:

    ```bash
    flutter pub get
    ```

3.  Setup Firebase:

    -   Create a Firebase project at [Firebase Console](https://console.firebase.google.com/)
    -   Add Android, iOS, and Web apps to your project
    -   Download configuration files (see Configuration Files section below)
    -   Install Firebase CLI: `npm install -g firebase-tools`
4.  Configure GitHub repository secrets (see Repository Secrets section below)

5.  Run locally:

    ```bash
    flutter run
    ```


## 📁 Directory Structure

```bash
├── .github/workflows/
│   ├── ci.yml                # General lint/test CI
│   ├── android-cd.yml        # Android Firebase CD
│   ├── web-cd.yml            # Web Firebase Hosting CD
│
├── android/app/google-services.json         # (ignored)
├── ios/Runner/GoogleService-Info.plist      # (ignored)
├── lib/firebase_options.dart                # (ignored)
```

---


## 📝 Configuration Files

The following configuration files are required but excluded from version control for security reasons. They all are generated with a simple 
```
flutterfire configure
```
command. But follow following approach to download them manually otherwise.

| File | Purpose | How to Generate |
| --- | --- | --- |
| `android/app/google-services.json` | Firebase Android configuration | Download from Firebase Console → Project Settings → Android app |
| `ios/Runner/GoogleService-Info.plist` | Firebase iOS configuration | Download from Firebase Console → Project Settings → iOS app |
| `lib/firebase_options.dart` | Flutter Firebase configuration | Generated using FlutterFire CLI: `flutterfire configure` |

After obtaining these files, place them in their respective locations before building the app.

---

## 🔒 Repository Secrets

Configure the following secrets in your GitHub repository (Settings → Secrets and variables → Actions → New repository secret):

| Secret Name | Description | How to Obtain |
| --- | --- | --- |
| `FIREBASE_APP_ID` | Android Firebase App ID | Firebase Console → Project Settings → Android app → App ID |
| `FIREBASE_IOS_APP_ID` | iOS Firebase App ID | Firebase Console → Project Settings → iOS app → App ID |
| `FIREBASE_OPTIONS` | Firebase options for Flutter | Content of your `lib/firebase_options.dart` file |
| `FIREBASE_PROJECT_ID` | Firebase Project ID | Firebase Console → Project Settings → Project ID |
| `FIREBASE_SERVICE_ACCOUNT` | Firebase Service Account JSON | Firebase Console → Project Settings → Service accounts → Generate new private key |
| `GOOGLE_SERVICES_JSON` | Content of google-services.json | Base64 encoded content of your `google-services.json` file |
| `GOOGLE_SERVICE_INFO_PLIST` | Content of GoogleService-Info.plist | Base64 encoded content of your `GoogleService-Info.plist` file |
| `PERSONAL_ACCESS_TOKEN` | GitHub Personal Access Token | GitHub Settings → Developer settings → Personal access tokens → Generate new token (needs `repo` scope) |

### Encoding Configuration Files to Base64

For configuration files, encode them to Base64 before adding to secrets:

**macOS/Linux:**

```bash
base64 -i android/app/google-services.json | pbcopy
base64 -i ios/Runner/GoogleService-Info.plist | pbcopy
```

**Windows (PowerShell):**

```powershell
[Convert]::ToBase64String([IO.File]::ReadAllBytes("android/app/google-services.json")) | Set-Clipboard
[Convert]::ToBase64String([IO.File]::ReadAllBytes("ios/Runner/GoogleService-Info.plist")) | Set-Clipboard
```


---

## 🪄 Personal Access Token (PAT)

To create `PERSONAL_ACCESS_TOKEN`:
1. Go to GitHub > Settings > Developer Settings > Personal Access Tokens
2. Generate a new token with:
   - `repo` scope
   - `workflow` (optional for triggering)

Add it to the repo secrets as `PERSONAL_ACCESS_TOKEN`.

---

## 🔍 Firebase Project Setup

Ensure your Firebase project is ready with:

- ✅ Android & iOS apps added (get App IDs)
- ✅ Firebase Hosting enabled
- ✅ Firebase App Distribution enabled
- ✅ Create a Firebase Service Account with `Editor` or `Firebase Admin` role and generate a JSON key

---

## 📦 Output Examples

- 📱 Android: `app-release.apk` built and uploaded to Firebase testers group and GitHub Releases
- 🌐 Web: deployed to URL like `https://<project>--preview-xyz.web.app`

---

## 🤝 Contributing

Got ideas to improve Tiply? Found a bug or want to add a feature?  
Feel free to **open a pull request** — contributions are always welcome!

If you find this project useful, don't forget to **star ⭐️ the repo, fork it**, or even just share it with others!


---

## 📄 License
This project is licensed under the [MIT License](LICENSE).



> Made with ❤️ by [Shishir Rijal](https://github.com/ShishirRijal)

---
