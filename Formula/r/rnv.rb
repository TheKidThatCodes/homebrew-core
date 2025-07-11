class Rnv < Formula
  desc "Implementation of Relax NG Compact Syntax validator"
  homepage "https://sourceforge.net/projects/rnv/"
  url "https://downloads.sourceforge.net/project/rnv/Sources/1.7.11/rnv-1.7.11.tar.bz2"
  sha256 "b2a1578773edd29ef7a828b3a392bbea61b4ca8013ce4efc3b5fbc18662c162e"
  license "BSD-3-Clause"

  no_autobump! because: :requires_manual_review

  bottle do
    sha256 cellar: :any,                 arm64_sequoia:  "c2d6586422e5ac938d5f27b00ba89881fb64e07b84250b44ac5905bd7189bd92"
    sha256 cellar: :any,                 arm64_sonoma:   "150d0eecdd925b7dd54064578d8e204e0cfbb1575ea100ba13168e2b4e22f4eb"
    sha256 cellar: :any,                 arm64_ventura:  "86e6bfd85e0678347eaace39bb3ad203e08f8006c84939fa9a41e693ee6c1326"
    sha256 cellar: :any,                 arm64_monterey: "bf6a467df397afc6d6ffe8e54dabb5f41eb47f71b75fba32e19e6b6d0e297029"
    sha256 cellar: :any,                 arm64_big_sur:  "8901e5d1b3915babeec29f4485afa741d41b2b48946515c1d871f525512ae1b6"
    sha256 cellar: :any,                 sonoma:         "3ccd0c89d06e4b941388b087171a7fda820d4bab2243a173ff4854bf161eebb8"
    sha256 cellar: :any,                 ventura:        "6648abdfb9856bb6aadfe9f24e54ba9dd64ee636bbf817b19e5386014c1336a6"
    sha256 cellar: :any,                 monterey:       "6e53766114e84c2d465873f78f4d8e9989186297140dae5966927b966d821d8e"
    sha256 cellar: :any,                 big_sur:        "c262efcf45b880c131f5e466d1b672ce5120dff6302b9b7504f6c1e1ee87cb22"
    sha256 cellar: :any,                 catalina:       "9a780a7b9ed3b264a7d0471aba7aac503b60640af76156028ecf118a0c35665e"
    sha256 cellar: :any,                 mojave:         "06a2cb705d679da7de638434f45e28764dcd448863d31f6b39ab090dfde4c04f"
    sha256 cellar: :any,                 high_sierra:    "9bf4571824c6d8e837cfcad7ac5e16c6bfc120d4638f0428cdfb8f14203b8c41"
    sha256 cellar: :any,                 sierra:         "8dd3263bb656dcca22605b12faf4c6f54d65e5040e58a7a464c85b69ca19dc99"
    sha256 cellar: :any,                 el_capitan:     "1c1aa519b786f842b39720e33900e92a2f2f8deef403755e79e2d3b518897ff1"
    sha256 cellar: :any_skip_relocation, arm64_linux:    "607237d06383c7a8da2bfa731d52f960d9a9a35ccd465dfee6fcddc485e42d92"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "3368e22e32650a6594df96320a449717d447a25d69a8485c907f1e0d10a1c49d"
  end

  depends_on "expat"

  conflicts_with "arx-libertatis", because: "both install `arx` binaries"

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
