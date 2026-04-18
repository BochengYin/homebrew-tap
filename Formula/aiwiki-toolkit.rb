class AiwikiToolkit < Formula
  desc "Local-first scaffold for repo-local and home-level AI wiki prompts"
  homepage "https://github.com/BochengYin/ai-wiki-toolkit"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.6/ai-wiki-toolkit-v0.1.6-macos-arm64.tar.gz"
      sha256 "55a849052c49f3d5b2febf1b1a91b3e0ca32ea80f1e30b7aed15454c66ca4b24"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.6/ai-wiki-toolkit-v0.1.6-macos-x64.tar.gz"
      sha256 "012f6ec685d62f0c90acb8076ef85f9ea3d0b38cf492303774c9fd644ceff2be"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.6/ai-wiki-toolkit-v0.1.6-linux-x64.tar.gz"
      sha256 "1789d6d362b97e96882c6c5888074bf41f658bd4c43bcf75f28462d110b7515c"
    end
  end

  def install
    bin.install "aiwiki-toolkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiwiki-toolkit --version")
  end
end
