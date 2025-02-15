# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cld < Formula
  desc "An unofficial CLI for Cloudinary"
  homepage "https://github.com/martinsirbe/go-cloudinary"
  version "0.0.5"

  on_macos do
    url "https://github.com/martinsirbe/go-cloudinary/releases/download/v0.0.5/cld_0.0.5_darwin_all.tar.gz"
    sha256 "17714c25498ee1d1102ee3ecde585078e538ccffcc73d74e3c5f0b674cdd6f0e"

    def install
      bin.install "cld"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/martinsirbe/go-cloudinary/releases/download/v0.0.5/cld_0.0.5_linux_amd64.tar.gz"
        sha256 "01a831c0e347015a53aa3a62567cfd61f7a4c8207fbb1a14c3ca1d33ad500733"

        def install
          bin.install "cld"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/martinsirbe/go-cloudinary/releases/download/v0.0.5/cld_0.0.5_linux_arm64.tar.gz"
        sha256 "ad4edc1b2f008817ad8b83db7d79ee156fc78a69e19606ebf1093d1ce9eb29bd"

        def install
          bin.install "cld"
        end
      end
    end
  end

  def caveats
    <<~EOS
      Thank you for installing the Cloudinary CLI (cld)!

      The `CLOUDINARY_URL` environment variable is mandatory. Set it before using cld:
      `export CLOUDINARY_URL=cloudinary://api_key:api_secret@my_cloud_name`
    EOS
  end

  test do
    system "#{bin}/cld", "--help"
  end
end
