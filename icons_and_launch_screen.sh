cd app
set -a
source .env
set +a
flutter pub run flutter_launcher_icons:main -f flutter_launcher_icons-dev.yaml
flutter pub run flutter_launcher_icons:main -f flutter_launcher_icons-local.yaml
flutter pub run flutter_launcher_icons:main -f flutter_launcher_icons-prod.yaml
flutter pub run flutter_native_splash:create --flavor local
flutter pub run flutter_native_splash:create --flavor dev
flutter pub run flutter_native_splash:create --flavor prod
