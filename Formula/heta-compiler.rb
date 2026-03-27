class HetaCompiler < Formula
    desc "CLI for Heta Compiler"
    homepage "https://hetalang.github.io/hetacompiler/"
    license "Apache-2.0"
    version "v0.11.0"

    on_macos do
      on_arm do
        url "https://github.com/hetalang/heta-compiler/releases/download/v0.11.0/heta-compiler-macos-arm64.tar.gz"
        sha256 "0a88a8485f79a20542dfda169daae335042414750749c5377d6c17df28438d7f"
      end

      on_intel do
        url "https://github.com/hetalang/heta-compiler/releases/download/v0.11.0/heta-compiler-macos-x64.tar.gz"
        sha256 "28c8e24a8e4b99ad4f8469154d77a43ca35b7d53970588586c6b3c68beda65fe"
      end
    end
  
    def install
      # mv "heta-compiler", "heta" # Rename the file
      bin.install "heta-compiler" => "heta"
    end
  
    test do
      system "#{bin}/heta", "-v"
    end

    livecheck do
      url :stable
      strategy :github_latest
    end
end
