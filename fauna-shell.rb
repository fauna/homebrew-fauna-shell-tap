require "language/node"

class FaunaShell < Formula
  desc "Interactive shell for FaunaDB"
  homepage "https://fauna.com/"
  url "https://registry.npmjs.org/fauna-shell/-/fauna-shell-0.2.2.tgz"
  sha256 "c8e5f48b9dc1675d0c3a8db58426defd005f2de27de7b3c0aa8cc397fce54bd9"
  version "0.2.2"
  
  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
  
  test do
    system bin/"fauna", "-O", "/dev/null", "--help"
  end
end