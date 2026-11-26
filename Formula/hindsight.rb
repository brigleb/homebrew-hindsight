# The CLI, installed from the prebuilt universal binary on the tap's own release (the app's
# release page offers only the dmg). Rendered into the brigleb/homebrew-hindsight tap by
# packaging/build.sh, which fills in the version and hash.
class Hindsight < Formula
  desc "Identify the tracks in a DJ set and embed chapter markers"
  homepage "https://github.com/brigleb/setlist-maker"
  url "https://github.com/brigleb/homebrew-hindsight/releases/download/v0.1.2/hindsight-0.1.2-macos-universal.tar.gz"
  sha256 "39dce5297981d0232ba986d50d3ab95051d7fc212e5ba135f1ac20c69020711b"
  license "GPL-3.0-or-later"

  depends_on :macos

  def install
    bin.install "hindsight"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hindsight --version")
  end
end
