# Radan's Demos application

An application that houses my demos.

## Usage

It comes with a devcontainer. Please, use it. It works.

### Creating new demo skeletons

Each demo is a separate Rails engine. The reason is to make it easy to browse
the code will all aspects of a demo being separated from the rest of the app.

There's a script to create new demo skeletons which takes care of creating a new
engine and performing some house keeping tasks:
```shell
bin/new_demo demo_name
```

## Contributing

Unless you really really want to, probably best not to.
It's just for me to have a place to put some demos.

## Using the demo code in your own applications

All the code here is MIT licensed on purpose. Demos are usually paired with a
blog post on [my blog](https://radan.dev). The blog has a less permissive license
but I don't want to restrict usage of the accompanying code, it would just make
my work on it less useful.

If you do end up using it in your own application, please let me know, I would
love to hear about it!
