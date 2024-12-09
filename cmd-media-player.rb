class CmdMediaPlayer < Formula
  desc "CMD-Media-Player for home-brew"
  homepage "https://github.com/HNRobert/homebrew-cmd-media-player"
  
  url "https://github.com/HNRobert/homebrew-cmd-media-player/releases/download/v1.0.0/cmd-media-player.tar.gz"
  sha256 "933504d6aa0296f97f8a7f37c74940edd6584c5dbd510404765033e6d585fe6e"
  
  resource "dependencies" do
    url "https://github.com/HNRobert/homebrew-cmd-media-player/releases/download/v1.0.0.1/dependencies.tar.gz"
    sha256 "aa702f28aee96a3b3e676c644c4cde41ea6d6840de9f5a490fd9046ddde4b6ef"
  end

  license "MIT"

  def install
    bin.install "cmd-media-player"

    resource("dependencies").stage do
      cp_r "opencv", prefix/"opencv"
      cp_r "ffmpeg", prefix/"ffmpeg"
      cp_r "sdl2", prefix/"sdl2"
    end

  end

  test do
    assert_predicate bin/"cmd-media-player", :exist?
    assert_match "cmd-media-player", shell_output("#{bin}/cmd-media-player --version")
    
    assert_predicate prefix/"opencv", :exist?
    assert_predicate prefix/"ffmpeg", :exist?
    assert_predicate prefix/"sdl2", :exist?
  end
end