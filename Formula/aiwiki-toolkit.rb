class AiwikiToolkit < Formula
  desc "Local-first scaffold for repo-local and home-level AI wiki prompts"
  homepage "https://github.com/BochengYin/ai-wiki-toolkit"
  version "0.1.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.23/ai-wiki-toolkit-v0.1.23-macos-arm64.tar.gz"
      sha256 "7121fa7caeb786c91c4825c89da43ec1ccad30a13e4a85ec804e988463c009e9"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.23/ai-wiki-toolkit-v0.1.23-macos-x64.tar.gz"
      sha256 "95ecee7348d1f1140831e21bc4b5c042f892a276e171356d86f9066c1210720a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.23/ai-wiki-toolkit-v0.1.23-linux-arm64.tar.gz"
      sha256 "6143d49467db73be6ced07fda3e2c672cd512e2b56161ac4c17e8b546a9d0b5c"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.23/ai-wiki-toolkit-v0.1.23-linux-x64.tar.gz"
      sha256 "2b89aa2c7ddf2bb1b9f11e662521f0bfc82ca6581a14300618ede0d82c48654c"
    end
  end

  def install
    bin.install "aiwiki-toolkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiwiki-toolkit --version")
  end
end
