class BingWallpaper < Formula
  desc "Bing.com wallpaper for OS X and Unix-like desktop (eg Ubuntu)"
  homepage "https://github.com/thejandroman/bing-wallpaper"
  url "https://github.com/thejandroman/bing-wallpaper/archive/0.1.1.tar.gz"
  sha256 "8c2853f2e8965606d20b79c5412bb91e72830cea1fec2c56390579633a639693"

  depends_on "curl"

  def install
    bin.install "bing-wallpaper.sh"
    bin.install Dir["Tools/*"]
  end

  test do
    system "#{bin}/bing-wallpaper.sh --version"
  end
end
