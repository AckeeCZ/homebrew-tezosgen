class Tezosgen < Formula
    desc "Generate swift code from smart contract specification"
    homepage "https://github.com/AckeeCZ/tezosgen"
    url "https://github.com/AckeeCZ/tezosgen/releases/download/1.1.1/tezosgen-1.1.1.zip"
    sha256 "58924fece1771736aeb8fbf5e6df0389a01e1a323b6fe5a2c3a077a31623eb9a"
    head "https://github.com/AckeeCZ/tezosgen.git"

    depends_on :xcode => ["8.0", :build]
  
    def install
        bin.install "tezosgen"
    end

    test do
        system "#{bin}/tezosgen", "--version"
    end
end
