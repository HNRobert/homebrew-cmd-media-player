class CmdMediaPlayer < Formula
  desc "CMD-Media-Player for home-brew"
  homepage "https://github.com/HNRobert/homebrew-cmd-media-player"
  url "https://github.com/HNRobert/homebrew-cmd-meida-player/releases/download/v1.0.0/cmd-video-player.tar.gz"
  sha256 "91c70d20e2950d978373135f29ebd8f601f319c8d7169b0d440de41fda671691"
  license "MIT"
  
  depends_on "ffmpeg" => "7.1"
  depends_on "opencv" => "4.10.0_11"
  depends_on "sdl2" => "2.30.8"

  def install
    bin.install "cmd-media-player"
  end

  test do
    system "false"
  end
end
