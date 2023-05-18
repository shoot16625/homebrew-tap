# frozen_string_literal: true

class S3Search < Formula
  desc 'Fuzzy search interactively for AWS S3. named s3s'
  homepage 'https://github.com/shoot16625/s3_search'
  version 'v1-20230518-130500'
  license 'MIT'

  if OS.mac?
    url "https://github.com/shoot16625/s3_search/releases/download/#{version}/s3_search-macos.tar.gz"
    sha256 'f63a2aa4f11c140172a0e067c1832f4f8db55cc10ac0850865448486435f066e'
  elsif OS.linux?
    url "https://github.com/shoot16625/s3_search/releases/download/#{version}/s3_search-linux.tar.gz"
    sha256 'a0f5a939069890705869c04661269458d3228745025e53d8f933dbc05d078df2'
  end

  def install
    bin.install 's3s'
  end

  test do
    system "#{bin}/s3s", '--help'
  end
end
