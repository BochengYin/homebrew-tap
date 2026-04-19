class AiwikiToolkit < Formula
  desc "Local-first scaffold for repo-local and home-level AI wiki prompts"
  homepage "https://github.com/BochengYin/ai-wiki-toolkit"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.7/ai-wiki-toolkit-v0.1.7-macos-arm64.tar.gz"
      sha256 "f598b597d04f4e984b5b3f505aa2293f870f22d6ad8f19d5e744ca19aa6f1aec"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.7/ai-wiki-toolkit-v0.1.7-macos-x64.tar.gz"
      sha256 "e42c647e8ba09ac64b62790b4f93771374811bf380e4da2e3d74ead4a1441279"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.7/ai-wiki-toolkit-v0.1.7-linux-x64.tar.gz"
      sha256 "5f07653b729f30807fe96548be8ddde96fbb8199cf4e508fd3f4ee835941f9dc"
    end
  end

  def install
    bin.install "aiwiki-toolkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiwiki-toolkit --version")
  end
end
