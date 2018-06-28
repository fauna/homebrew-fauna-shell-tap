require "language/node"

class FaunaShell < Formula
  desc "Interactive shell for FaunaDB"
  homepage "https://fauna.com/"
  url "https://registry.npmjs.org/fauna-shell/-/fauna-shell-0.1.3.tgz"
  sha256 "26a27fc61c56828c944d24c3f878ed6c833bc35087f494c6cbefe16ed548fb22"
  version "0.1.13"
  
  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
  
  test do
    system bin/"fauna", "-O", "/dev/null", "--help"
  end
end