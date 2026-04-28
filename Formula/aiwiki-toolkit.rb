class AiwikiToolkit < Formula
  desc "Local-first scaffold for repo-local and home-level AI wiki prompts"
  homepage "https://github.com/BochengYin/ai-wiki-toolkit"
  version "0.1.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.24/ai-wiki-toolkit-v0.1.24-macos-arm64.tar.gz"
      sha256 "100af6674e470e09bec2b7415ca2a11c2ee434d8f8243c9f2e9725ecd5fae46f"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.24/ai-wiki-toolkit-v0.1.24-macos-x64.tar.gz"
      sha256 "16c20f7282d372885cfc19191999875b7b9f1a5ec775d1a2cdade5e290768d9d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.24/ai-wiki-toolkit-v0.1.24-linux-arm64.tar.gz"
      sha256 "0a6080e24e5ca38e40788bb95ab84df9ed6f08212897f8e9e8ca98dc09a651fb"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.24/ai-wiki-toolkit-v0.1.24-linux-x64.tar.gz"
      sha256 "fed93f9dee99e5e4b9a2161088adeca222266770d83c75689a6ced618cd6f175"
    end
  end

  def install
    bin.install "aiwiki-toolkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiwiki-toolkit --version")
  end
end
