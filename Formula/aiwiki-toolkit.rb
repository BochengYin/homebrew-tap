class AiwikiToolkit < Formula
  desc "Local-first scaffold for repo-local and home-level AI wiki prompts"
  homepage "https://github.com/BochengYin/ai-wiki-toolkit"
  version "0.1.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.11/ai-wiki-toolkit-v0.1.11-macos-arm64.tar.gz"
      sha256 "2a111ae64a2d221f5b2344590aecf86c7bd69b08edb170292273813ff4ceb182"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.11/ai-wiki-toolkit-v0.1.11-macos-x64.tar.gz"
      sha256 "31d8c12805e60cdd351b7b1c4a551f1895aa290086c4099eff091e5ec0cb4bbf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.11/ai-wiki-toolkit-v0.1.11-linux-x64.tar.gz"
      sha256 "9cd729ca1df5409de17c5f3efbe7a6759a289132cea7b25244a7a3d4384af77b"
    end
  end

  def install
    bin.install "aiwiki-toolkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiwiki-toolkit --version")
  end
end
