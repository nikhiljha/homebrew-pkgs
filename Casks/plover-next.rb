cask "plover-next" do
  version "4.0.0.dev9 67.g4ad9c30"
  sha256 "a522671fc0f5d16027e9762376cceae098884326b6ebb7a04c627398cbff6210"

  url "https://github.com/openstenoproject/plover/releases/download/continuous/plover-4.0.0.dev9+67.g4ad9c30-macosx_10_13_x86_64.dmg", verified: "github.com/openstenoproject/plover/"
  name "plover-next"
  desc "stenotype engine"
  homepage "https://www.openstenoproject.org/plover/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Plover.app"
  
  zap trash: "~/Library/Application Support/plover/"
end
