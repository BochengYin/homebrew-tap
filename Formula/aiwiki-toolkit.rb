class AiwikiToolkit < Formula
  desc "Local-first scaffold for repo-local and home-level AI wiki prompts"
  homepage "https://github.com/BochengYin/ai-wiki-toolkit"
  version "0.1.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.20/ai-wiki-toolkit-v0.1.20-macos-arm64.tar.gz"
      sha256 "746b520e6605ebf6166e8e52e97e9c25a19023fa4d98fef9f2aaf0cf44387b4d"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.20/ai-wiki-toolkit-v0.1.20-macos-x64.tar.gz"
      sha256 "1a6468778eff4db33addefeb2fd2f7043fb796ded78a6f4c5e1125546bb31d49"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.20/ai-wiki-toolkit-v0.1.20-linux-arm64.tar.gz"
      sha256 "bbc65184757b038756e3c40e2afc0823ac43ec81f3c0fe49f3013d02f35e159e"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.20/ai-wiki-toolkit-v0.1.20-linux-x64.tar.gz"
      sha256 "9ebc8ec779805a78f1cc55973ac5cc8a2879ba634abb41034dee9befc4a81bb3"
    end
  end

  def install
    bin.install "aiwiki-toolkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiwiki-toolkit --version")
  end
end
