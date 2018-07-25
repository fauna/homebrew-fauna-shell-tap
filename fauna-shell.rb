require "language/node"

class FaunaShell < Formula
  desc "Interactive shell for FaunaDB"
  homepage "https://fauna.com/"
  url "https://registry.npmjs.org/fauna-shell/-/fauna-shell-0.2.3.tgz"
  sha256 "97614c71116ca8aa5fc2494a3176df44d301ea85437ad4974e8a65ffde2517ef"
  version "0.2.3"
  
  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
  
  test do
    system bin/"fauna", "-O", "/dev/null", "--help"
  end
end