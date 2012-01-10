# Running the cucumber project

Start off by installing with bundler:

``` bash
bundle install --local
```

In its own command prompt, start the Sinatra server that will host our test app:

``` bash
bundle exec ruby server.rb
```


To run the "done" regression features:

``` bash
bundle exec cucumber
```

To run the work-in-progress scenarios & features tagged with `@wip`:

``` bash
bundle exec cucumber --tags @wip --wip
```