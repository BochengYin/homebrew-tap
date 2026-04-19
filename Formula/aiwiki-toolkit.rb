class AiwikiToolkit < Formula
  desc "Local-first scaffold for repo-local and home-level AI wiki prompts"
  homepage "https://github.com/BochengYin/ai-wiki-toolkit"
  version "0.1.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.9/ai-wiki-toolkit-v0.1.9-macos-arm64.tar.gz"
      sha256 "bdde0fea7e017139f20689b6158f62247c712dca143d975490556ff492cbd7c8"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.9/ai-wiki-toolkit-v0.1.9-macos-x64.tar.gz"
      sha256 "438bb3743b9030edac0dab012abc6f4a2157395e08f107ec1b705a63ca4faecc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.9/ai-wiki-toolkit-v0.1.9-linux-x64.tar.gz"
      sha256 "8e629e9470b04461bfd801f59e37952bd5e869f85ce9325d0dcf68a145f61122"
    end
  end

  def install
    bin.install "aiwiki-toolkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiwiki-toolkit --version")
  end
end
