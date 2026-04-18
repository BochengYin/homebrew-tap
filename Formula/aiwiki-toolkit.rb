class AiwikiToolkit < Formula
  desc "Local-first scaffold for repo-local and home-level AI wiki prompts"
  homepage "https://github.com/BochengYin/ai-wiki-toolkit"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.2/ai-wiki-toolkit-v0.1.2-macos-arm64.tar.gz"
      sha256 "80e5cf4d937ea53a04cb726cb15896effc4553c716f4326d7e89be13a6b991ec"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.2/ai-wiki-toolkit-v0.1.2-macos-x64.tar.gz"
      sha256 "054c8bc477f1c8628f89a281641149c9841fa8fc29e4cc97654bac56e326be2b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.2/ai-wiki-toolkit-v0.1.2-linux-x64.tar.gz"
      sha256 "7854033ac2c2b2fc5361efc99e588e3f0f7b689c3f40f8e86a1f8eda9f0880a8"
    end
  end

  def install
    bin.install "aiwiki-toolkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiwiki-toolkit --version")
  end
end
