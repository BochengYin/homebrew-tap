class AiwikiToolkit < Formula
  desc "Local-first scaffold for repo-local and home-level AI wiki prompts"
  homepage "https://github.com/BochengYin/ai-wiki-toolkit"
  version "0.1.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.16/ai-wiki-toolkit-v0.1.16-macos-arm64.tar.gz"
      sha256 "e12a3e201b05939ba8bce2e21878fce0cd9cbee9f15cd601b328e58d38a1734d"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.16/ai-wiki-toolkit-v0.1.16-macos-x64.tar.gz"
      sha256 "24cb1b3eb5c192d5224fd1d4845c4104870f2ed52bb93460f2d030f90957792c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.16/ai-wiki-toolkit-v0.1.16-linux-arm64.tar.gz"
      sha256 "8db6a06f02d44221a65049d2503bb39646c027e85216a17dacd1331cd66ae5fd"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.16/ai-wiki-toolkit-v0.1.16-linux-x64.tar.gz"
      sha256 "917f1b4a0392992c993a4d6e6cfbbc0e497b7180024ab652ebd5a586f9c9f458"
    end
  end

  def install
    bin.install "aiwiki-toolkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiwiki-toolkit --version")
  end
end
