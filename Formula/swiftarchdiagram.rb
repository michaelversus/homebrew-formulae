class Swiftarchdiagram < Formula
  desc "Swift Architecture diagram generation using mermaid"
  homepage "https://github.com/michaelversus/SwiftArchDiagram"
  url "https://github.com/michaelversus/SwiftArchDiagram.git", tag: "0.1.4"
  version "0.1.4"
  sha256 "20d5f328cc67ef1eb3ed7651fc25ed01633107db6a6325a898ce93d38ee462c1"

  depends_on "xcode": [:build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}SwiftArchDiagram", "list"
  end
end
