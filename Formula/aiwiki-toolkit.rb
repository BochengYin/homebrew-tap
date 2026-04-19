class AiwikiToolkit < Formula
  desc "Local-first scaffold for repo-local and home-level AI wiki prompts"
  homepage "https://github.com/BochengYin/ai-wiki-toolkit"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.8/ai-wiki-toolkit-v0.1.8-macos-arm64.tar.gz"
      sha256 "2bbbaea92e92778fbb341aeadea6e8346809046a1116015f615bb098490dfe4c"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.8/ai-wiki-toolkit-v0.1.8-macos-x64.tar.gz"
      sha256 "9c1c95a6f3f3a96e6b4f25007a0f17e3502d92929f47f19fa1439600c58a27ec"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.8/ai-wiki-toolkit-v0.1.8-linux-x64.tar.gz"
      sha256 "ba7d28fb00970e606b5699949c9a46eca9177364bf6a87594ce98340513a398d"
    end
  end

  def install
    bin.install "aiwiki-toolkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiwiki-toolkit --version")
  end
end
