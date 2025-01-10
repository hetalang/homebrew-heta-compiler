class HetaCompiler < Formula
    desc "CLI for Heta Compiler"
    homepage "https://hetalang.github.io/#/heta-compiler/"
    url "https://github.com/hetalang/heta-compiler/releases/download/test1/heta-compiler-macos.tar.gz"
    sha256 "1d44b313a2b646eecd9769e8d711804c37dddb43ab4afcafbd06455f056e6749"
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
