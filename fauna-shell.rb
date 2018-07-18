require "language/node"

class FaunaShell < Formula
  desc "Interactive shell for FaunaDB"
  homepage "https://fauna.com/"
  url "https://registry.npmjs.org/fauna-shell/-/fauna-shell-0.2.1.tgz"
  sha256 "3c78538d7a6bbbe509e75119001e76cb5dc50a5b2fa7337ea287c8cd42857742"
  version "0.2.1"
  
  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
  
  test do
    system bin/"fauna", "-O", "/dev/null", "--help"
  end
end