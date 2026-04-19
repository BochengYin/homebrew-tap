class AiwikiToolkit < Formula
  desc "Local-first scaffold for repo-local and home-level AI wiki prompts"
  homepage "https://github.com/BochengYin/ai-wiki-toolkit"
  version "0.1.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.10/ai-wiki-toolkit-v0.1.10-macos-arm64.tar.gz"
      sha256 "c515cd3347df62ce462b79a3c964a32e0ff490ce4cf5dc7e2a6c573ed89218cf"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.10/ai-wiki-toolkit-v0.1.10-macos-x64.tar.gz"
      sha256 "32c63c50fd9a26c79d6148d19030b36d9851db724abe9825b632383cfffa2272"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.10/ai-wiki-toolkit-v0.1.10-linux-x64.tar.gz"
      sha256 "0c26905a1bca7f6fd4c05f8665116705499545d9a5dbf54c3e9e1fa27989a988"
    end
  end

  def install
    bin.install "aiwiki-toolkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiwiki-toolkit --version")
  end
end
