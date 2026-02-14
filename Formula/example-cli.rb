# class ExampleCli < Formula
#   desc "Description of your CLI tool"
#   homepage "https://github.com/raphaelmitas/example-cli"
#   version "0.1.0"
#   license "MIT"

#   on_macos do
#     on_arm do
#       url "https://github.com/raphaelmitas/example-cli/releases/download/v#{version}/example-cli-#{version}-arm64.tar.gz"
#       sha256 "CHECKSUM_HERE"
#     end
#   end

#   def install
#     bin.install "example-cli"
#   end

#   test do
#     assert_match version.to_s, shell_output("#{bin}/example-cli --version")
#   end
# end
