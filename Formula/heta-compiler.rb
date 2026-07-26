class HetaCompiler < Formula
    desc "CLI for Heta Compiler"
    homepage "https://hetalang.github.io/hetacompiler/"
    license "Apache-2.0"
    version "v0.12.1"
    url "https://github.com/hetalang/heta-compiler/releases/download/v0.12.1/heta-compiler-macos-arm64.tar.gz"
    sha256 "1f3b418a49768954600b039d1115172a367c48a80f5c2e539e151ce8cd2988e4"

    depends_on :macos
    depends_on arch: :arm64
  
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
