class AiwikiToolkit < Formula
  desc "Local-first scaffold for repo-local and home-level AI wiki prompts"
  homepage "https://github.com/BochengYin/ai-wiki-toolkit"
  version "0.1.30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.30/ai-wiki-toolkit-v0.1.30-macos-arm64.tar.gz"
      sha256 "a984ec6a71d6bf1acbf03127e1ebf6465d9d22574cb8303a7255161561a28bfd"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.30/ai-wiki-toolkit-v0.1.30-macos-x64.tar.gz"
      sha256 "0a5ff6d859ba8e73954a7bfe35ce2c67a6a311a9b8d1f8a12eb8502b27de3fe6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.30/ai-wiki-toolkit-v0.1.30-linux-arm64.tar.gz"
      sha256 "d8f6c139fde5f8e45c35840f616827344df774840aa6449ecd52b9ce485cdc54"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.30/ai-wiki-toolkit-v0.1.30-linux-x64.tar.gz"
      sha256 "4ce88de77840ab002b209393f4cb0fb579d1b44a20b074fb26b758c240ff5171"
    end
  end

  def install
    bin.install "aiwiki-toolkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiwiki-toolkit --version")
  end
end
