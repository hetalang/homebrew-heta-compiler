class HetaCompiler < Formula
    desc "CLI for Heta Compiler"
    homepage "https://hetalang.github.io/#/heta-compiler/"
    url "https://github.com/hetalang/heta-compiler/releases/download/v0.9.6/heta-compiler-macos.tar.gz"
    sha256 "1f94d5d32577bc977319ff019b5972b5ae0f23b09cab124b98a83867a00d75d1"
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
