class AiwikiToolkit < Formula
  desc "Local-first scaffold for repo-local and home-level AI wiki prompts"
  homepage "https://github.com/BochengYin/ai-wiki-toolkit"
  version "0.1.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.19/ai-wiki-toolkit-v0.1.19-macos-arm64.tar.gz"
      sha256 "0c3fef8044d4012203438010427b8ad39aadd0415411c1f9a017118caf75c2d6"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.19/ai-wiki-toolkit-v0.1.19-macos-x64.tar.gz"
      sha256 "9e3565a41b28a89d8e2dc00c98b8734365acf02eb194ae3a601bcde66c3a5e8a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.19/ai-wiki-toolkit-v0.1.19-linux-arm64.tar.gz"
      sha256 "64eaf74760b047482fd6126fe3d501039052edf1b0b132c40ffce37731fb85f2"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.19/ai-wiki-toolkit-v0.1.19-linux-x64.tar.gz"
      sha256 "9f0a5446e251a5385c663e51bf72416d0590a84d0cf915fdf0e994b9b8d84fa1"
    end
  end

  def install
    bin.install "aiwiki-toolkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiwiki-toolkit --version")
  end
end
