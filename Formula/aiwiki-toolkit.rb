class AiwikiToolkit < Formula
  desc "Local-first scaffold for repo-local and home-level AI wiki prompts"
  homepage "https://github.com/BochengYin/ai-wiki-toolkit"
  version "0.1.40"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.40/ai-wiki-toolkit-v0.1.40-macos-arm64.tar.gz"
      sha256 "a81e963f783d3eead9bb1ee5f513d2a465b5f20eab31bc12fcb5eda89e0b0945"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.40/ai-wiki-toolkit-v0.1.40-macos-x64.tar.gz"
      sha256 "528f5f517fe986959dd1bf8a22ad49676143dcb3a88c80009c9487b22c0c86f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.40/ai-wiki-toolkit-v0.1.40-linux-arm64.tar.gz"
      sha256 "7de1a5c8e20fb819a825c79624678d9c19d3d5701344441ddd0f9678df2a35dd"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.40/ai-wiki-toolkit-v0.1.40-linux-x64.tar.gz"
      sha256 "2ea3f281be6a2c5d485de533e4df31e49d0dacd6eafc120f5f9ae83f87c2d7b9"
    end
  end

  def install
    bin.install "aiwiki-toolkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiwiki-toolkit --version")
  end
end
