class AiwikiToolkit < Formula
  desc "Local-first scaffold for repo-local and home-level AI wiki prompts"
  homepage "https://github.com/BochengYin/ai-wiki-toolkit"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.3/ai-wiki-toolkit-v0.1.3-macos-arm64.tar.gz"
      sha256 "b2423abc1f78679153681bd3a0c99cb9c64a3efa8b2af2e3afc15067b66b63cb"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.3/ai-wiki-toolkit-v0.1.3-macos-x64.tar.gz"
      sha256 "0adae3d92433ea506f1d24ce6ea992650cf5b8d64fdbe13bad6d4e4e1cf93063"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.3/ai-wiki-toolkit-v0.1.3-linux-x64.tar.gz"
      sha256 "4b66efddc8eefa7cd42d4887fcfbd74c57740a6d81da0ad2d1253d94ab243680"
    end
  end

  def install
    bin.install "aiwiki-toolkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiwiki-toolkit --version")
  end
end
