class AiwikiToolkit < Formula
  desc "Local-first scaffold for repo-local and home-level AI wiki prompts"
  homepage "https://github.com/BochengYin/ai-wiki-toolkit"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.1/ai-wiki-toolkit-v0.1.1-macos-arm64.tar.gz"
      sha256 "92f014894582d839e8a8613f327e3aaaf4b3b646046ec03df68ef76abcd4cefb"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.1/ai-wiki-toolkit-v0.1.1-macos-x64.tar.gz"
      sha256 "01c67c195d24a97872c429380627699fdddbc36ba71fc0dcaec82241d6f852ac"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.1/ai-wiki-toolkit-v0.1.1-linux-x64.tar.gz"
      sha256 "5a59f223a2fd0f60e55150f0e8706fa4ded40dcc9f76cbc43c66078b83f62a1e"
    end
  end

  def install
    bin.install "aiwiki-toolkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiwiki-toolkit --version")
  end
end
