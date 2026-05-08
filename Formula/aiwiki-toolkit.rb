class AiwikiToolkit < Formula
  desc "Local-first scaffold for repo-local and home-level AI wiki prompts"
  homepage "https://github.com/BochengYin/ai-wiki-toolkit"
  version "0.1.29"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.29/ai-wiki-toolkit-v0.1.29-macos-arm64.tar.gz"
      sha256 "7241ae224a593f9aab40a148267487885d129a38b0644870122f76f82a991ce3"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.29/ai-wiki-toolkit-v0.1.29-macos-x64.tar.gz"
      sha256 "408dfc8fab6ec13a31deb95c400bcadc7f013adfaec388e619a098856569fa1b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.29/ai-wiki-toolkit-v0.1.29-linux-arm64.tar.gz"
      sha256 "3912846f9bbf2c82609d707765d34bade4436cc6976b700506b2adb20ebc66e4"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.29/ai-wiki-toolkit-v0.1.29-linux-x64.tar.gz"
      sha256 "9640043057b4b15647ec5197345d4f048225a3fa44f97bad56ff375d83fe9e0b"
    end
  end

  def install
    bin.install "aiwiki-toolkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiwiki-toolkit --version")
  end
end
