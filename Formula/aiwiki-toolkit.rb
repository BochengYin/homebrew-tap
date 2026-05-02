class AiwikiToolkit < Formula
  desc "Local-first scaffold for repo-local and home-level AI wiki prompts"
  homepage "https://github.com/BochengYin/ai-wiki-toolkit"
  version "0.1.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.28/ai-wiki-toolkit-v0.1.28-macos-arm64.tar.gz"
      sha256 "8d7b78e36fcb04e995f620d5f01b81351215fe8d0021dcfaa60c82834202f885"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.28/ai-wiki-toolkit-v0.1.28-macos-x64.tar.gz"
      sha256 "46e0aeaef7ad89f344c1a46f0e5eaf1ba8431374414e12198309774260355ce7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.28/ai-wiki-toolkit-v0.1.28-linux-arm64.tar.gz"
      sha256 "69722d120ac04154aa811e62df0756f4c003c2b43a61c1ae7415bf1079122d7f"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.28/ai-wiki-toolkit-v0.1.28-linux-x64.tar.gz"
      sha256 "59f4dc65b709300cd7816d5e90431f1bb5b4b189c14f08cdc1f598741628d13a"
    end
  end

  def install
    bin.install "aiwiki-toolkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiwiki-toolkit --version")
  end
end
