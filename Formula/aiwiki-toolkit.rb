class AiwikiToolkit < Formula
  desc "Local-first scaffold for repo-local and home-level AI wiki prompts"
  homepage "https://github.com/BochengYin/ai-wiki-toolkit"
  version "0.1.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.27/ai-wiki-toolkit-v0.1.27-macos-arm64.tar.gz"
      sha256 "a12d9dcb138e68637fb923d56f263c58fd524cf55e334841201ac5f45d8b2262"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.27/ai-wiki-toolkit-v0.1.27-macos-x64.tar.gz"
      sha256 "9f9062920586d64beaa76f2a96f9b13c7d290d24f896e696554aedf0a4075a67"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.27/ai-wiki-toolkit-v0.1.27-linux-arm64.tar.gz"
      sha256 "d39627ffd61f368b45a35c978c64c5a2669d64e5f2b1b2d300ed1f2f37c9c615"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.27/ai-wiki-toolkit-v0.1.27-linux-x64.tar.gz"
      sha256 "83863f6cea5a6008b34a3d80e2606ec2e3bdd36f28e60aa18c2fd0e80e86de82"
    end
  end

  def install
    bin.install "aiwiki-toolkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiwiki-toolkit --version")
  end
end
