# The CLI, installed from the prebuilt universal binary on the tap's own release (the app's
# release page offers only the dmg). Rendered into the brigleb/homebrew-hindsight tap by
# packaging/build.sh, which fills in the version and hash.
class Hindsight < Formula
  desc "Identify the tracks in a DJ set and embed chapter markers"
  homepage "https://github.com/brigleb/setlist-maker"
  url "https://github.com/brigleb/homebrew-hindsight/releases/download/v0.1.1/hindsight-0.1.1-macos-universal.tar.gz"
  sha256 "b59850b168a574f9481e72f291a929715b2d7c7c6d21f0ca5691045c882d391a"
  license "GPL-3.0-or-later"

  depends_on :macos

  def install
    bin.install "hindsight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hindsight --version")
  end
end
