class AiwikiToolkit < Formula
  desc "Local-first scaffold for repo-local and home-level AI wiki prompts"
  homepage "https://github.com/BochengYin/ai-wiki-toolkit"
  version "0.1.31"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.31/ai-wiki-toolkit-v0.1.31-macos-arm64.tar.gz"
      sha256 "c4e624e43dce5a399b9fd1501f8b864c59b53bf7a7ec7de904cc6a9afdcc3711"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.31/ai-wiki-toolkit-v0.1.31-macos-x64.tar.gz"
      sha256 "5ae34eee3ef3dda7e80944e132f0142bdc3aeb41949092f971c4e7bc03ba08b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.31/ai-wiki-toolkit-v0.1.31-linux-arm64.tar.gz"
      sha256 "e7f4be6da53cc93058c97bac1d0a8baa2f81116e119cbac9fbb351dfdcecf563"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.31/ai-wiki-toolkit-v0.1.31-linux-x64.tar.gz"
      sha256 "c1bca15699ea379294126db850eb9902ad00065c3ca452c639a15dc3cbd3c89e"
    end
  end

  def install
    bin.install "aiwiki-toolkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiwiki-toolkit --version")
  end
end
