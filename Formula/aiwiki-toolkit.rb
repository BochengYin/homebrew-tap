class AiwikiToolkit < Formula
  desc "Local-first scaffold for repo-local and home-level AI wiki prompts"
  homepage "https://github.com/BochengYin/ai-wiki-toolkit"
  version "0.1.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.22/ai-wiki-toolkit-v0.1.22-macos-arm64.tar.gz"
      sha256 "1de7a9a83f1292119a686e189beca0dcc28faf037b98f8fa45fcff0071c32be7"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.22/ai-wiki-toolkit-v0.1.22-macos-x64.tar.gz"
      sha256 "214866ff673aa8130a8aac4fa3fcfea29c0224a610a59d1ba12248c22639830b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.22/ai-wiki-toolkit-v0.1.22-linux-arm64.tar.gz"
      sha256 "00b217fd75c4526571c11ef8ee80c39a58cc3b464f90a857e92cef8c2166c144"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.22/ai-wiki-toolkit-v0.1.22-linux-x64.tar.gz"
      sha256 "3d5a7b0ee405b7994144f954a6285770dcf11f9ac34ee28317bc10dfbdfcb395"
    end
  end

  def install
    bin.install "aiwiki-toolkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiwiki-toolkit --version")
  end
end
