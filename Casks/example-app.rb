# cask "example-app" do
#   version "0.1.0"
#   sha256 "CHECKSUM_HERE"

#   url "https://github.com/raphaelmitas/ExampleApp/releases/download/v#{version}/ExampleApp-#{version}.zip"
#   name "Example App"
#   desc "Description of your macOS app"
#   homepage "https://github.com/raphaelmitas/ExampleApp"

#   depends_on macos: ">= :sonoma"
#   depends_on arch: :arm64

#   app "ExampleApp.app"

#   zap trash: [
#     "~/Library/Application Support/ExampleApp",
#     "~/Library/Caches/com.raphaelmitas.exampleapp",
#     "~/Library/Preferences/com.raphaelmitas.exampleapp.plist",
#   ]
# end
