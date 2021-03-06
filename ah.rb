require "formula"

# From https://gist.github.com/9seconds/78e68afefb2528d9b9e3
class Ah < Formula
  homepage "https://github.com/9seconds/ah"
  url "https://github.com/9seconds/ah.git", :tag => "0.9.1"
  version "0.9.1"
  sha1 ""
 
  bottle do
    sha1 "7563b28df830baa880731b9448e88b99dcb68420" => :mavericks
    sha1 "4ecba686ae851cb091bec58aebab1c092a5edfbf" => :mountain_lion
    sha1 "697f44626b6dd3152fb23d6da8272cb2359a6845" => :lion
  end
 
  depends_on "go" => :build
 
  def install
    system "make"
    bin.install "ah"
  end
 
  test do
    system "#{bin}/ah", "--version"
  end
end
