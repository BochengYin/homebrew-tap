class AiwikiToolkit < Formula
  desc "Local-first scaffold for repo-local and home-level AI wiki prompts"
  homepage "https://github.com/BochengYin/ai-wiki-toolkit"
  version "0.1.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.25/ai-wiki-toolkit-v0.1.25-macos-arm64.tar.gz"
      sha256 "bd4b0340a46b60cc69cfeed5371c9b5f0d786b6214d4896b4d5a7267939420ff"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.25/ai-wiki-toolkit-v0.1.25-macos-x64.tar.gz"
      sha256 "ddffcb1d5ecd11d51763f309f895abfaeeb7314de2a89b10d2a1ebb824e5da64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.25/ai-wiki-toolkit-v0.1.25-linux-arm64.tar.gz"
      sha256 "f98d40670754a4fed4381bd88ccd9a0dbe2d2ee63b98f86a917b12574c1f4ae6"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.25/ai-wiki-toolkit-v0.1.25-linux-x64.tar.gz"
      sha256 "0a1b3545a9021117a9163a3186f1ab027a6e48f1aac63f830b6743b6a8fe0b1c"
    end
  end

  def install
    bin.install "aiwiki-toolkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiwiki-toolkit --version")
  end
end
