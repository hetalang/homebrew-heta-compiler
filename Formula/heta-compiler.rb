class HetaCompiler < Formula
    desc "CLI for Heta Compiler"
    homepage "https://hetalang.github.io/hetacompiler/"
    license "Apache-2.0"
    version "v0.11.1"

    on_macos do
      on_arm do
        url "https://github.com/hetalang/heta-compiler/releases/download/v0.11.1/heta-compiler-macos-arm64.tar.gz"
        sha256 "f4fe499a8e318753339f0f5e0bc3c2489a4b9e27d2bb2d12f6635d2d18644842"
      end

      on_intel do
        url "https://github.com/hetalang/heta-compiler/releases/download/v0.11.1/heta-compiler-macos-x64.tar.gz"
        sha256 "11b47ade5365da58ca3088698e3cbbf4b26760000597437bfba7eddcce5dca91"
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
