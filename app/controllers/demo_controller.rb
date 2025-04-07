class DemoController < ApplicationController
  def index
    @demos = [
      {
        title: "Morphing Problems",
        description: "Examples of common problems with Turbo Morphing and examples of how to solve them.",
        link: "/morphing"
      },
      {
        title: "Bundling & plain Propshaft+importmaps",
        description: "An example of using npm packages with the default Rails 8 asset pipeline.",
        link: "/bundling"
      }
    ]
  end
end
