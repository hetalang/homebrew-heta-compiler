class HetaCompiler < Formula
    desc "CLI for Heta Compiler"
    homepage "https://hetalang.github.io/#/heta-compiler/"
    url "https://github.com/hetalang/heta-compiler/releases/download/v0.9.8/heta-compiler-macos-arm64.tar.gz"
    sha256 "a2fe5313ffcdde63d5e990bb2094b20cb4528aafcf99b7ea932380abbdab9df3"
    license "Apache-2.0"
  
    def install
      # Rename the file from `heta-compiler` to `heta` and install it
      mv "heta-compiler", "heta"
      bin.install "heta"
    end

    def caveats
        if Hardware::CPU.arm?
          <<~EOS
            This formula installs an x64 binary. If you are using an Apple Silicon Mac (M1/M2),
            make sure Rosetta 2 is installed to run this software. You can install Rosetta 2 with:
              softwareupdate --install-rosetta --agree-to-license
          EOS
        end
    end
  
    test do
      system "#{bin}/heta", "-v"
    end
end
