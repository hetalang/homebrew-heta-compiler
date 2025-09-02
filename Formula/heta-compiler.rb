class HetaCompiler < Formula
    desc "CLI for Heta Compiler"
    homepage "https://hetalang.github.io/heta-compiler/"
    license "Apache-2.0"
    version "0.9.8"

    on_macos do
      on_arm do
        url "https://github.com/hetalang/heta-compiler/releases/download/v0.9.8/heta-compiler-macos-arm64.tar.gz"
        sha256 "a2fe5313ffcdde63d5e990bb2094b20cb4528aafcf99b7ea932380abbdab9df3"
      end

      on_intel do
        url "https://github.com/hetalang/heta-compiler/releases/download/v0.9.8/heta-compiler-macos-x64.tar.gz"
        sha256 "8d36ecccaa822e758a3e075eee4068d8733c46d89b24ce98ac10eb62f8b8d4e2"
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
