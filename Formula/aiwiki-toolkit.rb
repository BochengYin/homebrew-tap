class AiwikiToolkit < Formula
  desc "Local-first scaffold for repo-local and home-level AI wiki prompts"
  homepage "https://github.com/BochengYin/ai-wiki-toolkit"
  version "0.1.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.21/ai-wiki-toolkit-v0.1.21-macos-arm64.tar.gz"
      sha256 "c1a48fb4504f4778d3cd2afbb8582969f34c0b7be0fe918e546f1def95296aed"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.21/ai-wiki-toolkit-v0.1.21-macos-x64.tar.gz"
      sha256 "27fcdd2f35463b5eb74bcf9ff140d7538acfbff8b3f49f48e1497650d5146fc0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.21/ai-wiki-toolkit-v0.1.21-linux-arm64.tar.gz"
      sha256 "93627cfc4855df273b6d2b57f8a34aab9e60636183d39cd12b659ad0be528a68"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.21/ai-wiki-toolkit-v0.1.21-linux-x64.tar.gz"
      sha256 "4c02828851ba51950324747babfe25099731cfab5d858e61ad9b112736d33542"
    end
  end

  def install
    bin.install "aiwiki-toolkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiwiki-toolkit --version")
  end
end
