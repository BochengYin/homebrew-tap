class AiwikiToolkit < Formula
  desc "Local-first scaffold for repo-local and home-level AI wiki prompts"
  homepage "https://github.com/BochengYin/ai-wiki-toolkit"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.0/ai-wiki-toolkit-v0.1.0-macos-arm64.tar.gz"
      sha256 "016aed41dfaa974fc372abedea51af165fa5c065058c29256b9974a033dca582"
    end

    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.0/ai-wiki-toolkit-v0.1.0-macos-x64.tar.gz"
      sha256 "14869a6c5e29e66b6e94133975f21214fc41d42fa6e2fa97429b4cb45d1b1b84"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BochengYin/ai-wiki-toolkit/releases/download/v0.1.0/ai-wiki-toolkit-v0.1.0-linux-x64.tar.gz"
      sha256 "5a0f2eebe4ca069080daf8f381c54c7eb57f752e6515a1b2475f62e03d618535"
    end
  end

  def install
    bin.install "aiwiki-toolkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiwiki-toolkit --version")
  end
end
