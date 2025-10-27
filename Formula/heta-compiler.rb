class HetaCompiler < Formula
    desc "CLI for Heta Compiler"
    homepage "https://hetalang.github.io/hetacompiler/"
    license "Apache-2.0"
    version "v0.10.0"

    on_macos do
      on_arm do
        url "https://github.com/hetalang/heta-compiler/releases/download/v0.10.0/heta-compiler-macos-arm64.tar.gz"
        sha256 "e611e9afc46c7ad7820386c6f4a2ddb70efbea039a93d7fde582998f81bd30c3"
      end

      on_intel do
        url "https://github.com/hetalang/heta-compiler/releases/download/v0.10.0/heta-compiler-macos-x64.tar.gz"
        sha256 "822aa5de6f438ae7f1bf7b64243275e942e396e7cc95e6a2111401224ce2af03"
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
