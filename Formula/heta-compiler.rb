class HetaCompiler < Formula
    desc "CLI for Heta Compiler"
    homepage "https://hetalang.github.io/hetacompiler/"
    license "Apache-2.0"
    version "v0.12.0"

    on_macos do
      on_arm do
        url "https://github.com/hetalang/heta-compiler/releases/download/v0.12.0/heta-compiler-macos-arm64.tar.gz"
        sha256 "25836da5185337a329a6764454f392566a77a3e5f2c1e8728d3df4f764af3d73"
      end

      on_intel do
        url "https://github.com/hetalang/heta-compiler/releases/download/v0.12.0/heta-compiler-macos-x64.tar.gz"
        sha256 "8ea4bab6bc953e030798a400c9ce9a89f43f69f8a47b0bc6830183a38b6bc248"
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
