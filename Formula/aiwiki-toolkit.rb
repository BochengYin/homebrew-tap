class AiwikiToolkit < Formula
  desc "Local-first scaffold for repo-local and home-level AI wiki prompts"
  homepage "https://github.com/BochengYin/ai-wiki-toolkit"
  version "0.1.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.17/ai-wiki-toolkit-v0.1.17-macos-arm64.tar.gz"
      sha256 "2a240d59503a07617f17b2ace6855aa2c256cc0da2a08f360dea3698b714acd3"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.17/ai-wiki-toolkit-v0.1.17-macos-x64.tar.gz"
      sha256 "28fac98281806a5c13fe6a7b2587d2fe8953f4da4e53d5adc87eeb73cf0311d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.17/ai-wiki-toolkit-v0.1.17-linux-arm64.tar.gz"
      sha256 "26501f2a8dc2e497614d5f36b2a0c9bc76ce6167a1a0a35ec51213f6a2136bf3"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.17/ai-wiki-toolkit-v0.1.17-linux-x64.tar.gz"
      sha256 "0436784f9f8ab03cb586522e360a2341b69e6042f3edb2b757218ccabd3e3167"
    end
  end

  def install
    bin.install "aiwiki-toolkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiwiki-toolkit --version")
  end
end
