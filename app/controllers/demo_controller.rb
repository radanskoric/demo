class DemoController < ApplicationController
  def index
    @demos = [
      {
        title: "Morphing Problems",
        description: "Examples of common problems with Turbo Morphing and examples of how to solve them.",
        link: "/morphing"
      }
    ]
  end
end
