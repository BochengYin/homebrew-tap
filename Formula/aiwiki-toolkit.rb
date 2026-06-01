class AiwikiToolkit < Formula
  desc "Local-first scaffold for repo-local and home-level AI wiki prompts"
  homepage "https://github.com/BochengYin/ai-wiki-toolkit"
  version "0.1.39"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.39/ai-wiki-toolkit-v0.1.39-macos-arm64.tar.gz"
      sha256 "2f714c35f7a8082372eb105645b0bbe1d118a116abba2617db207a92f1f13c83"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.39/ai-wiki-toolkit-v0.1.39-macos-x64.tar.gz"
      sha256 "d6c8cafb94262fe767d44f623122b49054a1c77f6d44838bd7c3fbdf5af6f834"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.39/ai-wiki-toolkit-v0.1.39-linux-arm64.tar.gz"
      sha256 "7198189e7bfd6980bdc51f2f58f72fdaf238c5de9f0bca0445b3773ab497c164"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.39/ai-wiki-toolkit-v0.1.39-linux-x64.tar.gz"
      sha256 "f70cccbd9e9ac2ec8322f46a7df1cbc6337775c9f795d21aff7c887c5860e2ce"
    end
  end

  def install
    bin.install "aiwiki-toolkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiwiki-toolkit --version")
  end
end
