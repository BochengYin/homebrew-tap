class AiwikiToolkit < Formula
  desc "Local-first scaffold for repo-local and home-level AI wiki prompts"
  homepage "https://github.com/BochengYin/ai-wiki-toolkit"
  version "0.1.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.26/ai-wiki-toolkit-v0.1.26-macos-arm64.tar.gz"
      sha256 "0c7cad3eadc447d428da16b336ed6b432fd7a026f2c4fe38b579e3308b2deeed"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.26/ai-wiki-toolkit-v0.1.26-macos-x64.tar.gz"
      sha256 "be8898ab34d54c7c8dac6111b8f34175e10dae7d16d7f4a1f5a9c9d70ce2d018"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.26/ai-wiki-toolkit-v0.1.26-linux-arm64.tar.gz"
      sha256 "9c5becded859fd22331fc890e4cdbd0803f4201316e576324efd4f6a0be29a0c"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.26/ai-wiki-toolkit-v0.1.26-linux-x64.tar.gz"
      sha256 "aaee89e917192e4c952ffaf74e6bef283c36ede9a772bd9d111494e5a8fa79e7"
    end
  end

  def install
    bin.install "aiwiki-toolkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiwiki-toolkit --version")
  end
end
