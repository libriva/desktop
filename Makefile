.PHONY: icons upgrade clean

icons:
	echo "Generating launcher icons..."
	@fvm dart run flutter_launcher_icons

upgrade:
	@echo "Upgrading dependencies..."
	@fvm flutter clean
	@fvm flutter pub get
	@fvm flutter pub upgrade
	@fvm flutter pub upgrade --major-versions

clean:
	@echo "Cleaning..."
	@fvm flutter clean
	@fvm flutter pub get
