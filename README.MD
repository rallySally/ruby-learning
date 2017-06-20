Rubylearning
================================

This is a stub for a project to learn the ruby language using MiniTest unit tests.
The idea is, that for each idiom you learn, you write a test case (or two) to
demonstrate how it works. It's also a great way to tinker with new idioms/apis -
by adding assertions you make sure that it actually does what you think it does.

If you structure the files neatly, you get a concise summary of the language
features you've learned for later reference.

As long as the tests run without a failure, you can be sure that what you
see in your notes is actually correct.

Running the examples
-----------------
You can run a single file by calling

    ruby about/classes.rb -p

The -p option stands for "pride" and adds coloring to your test output.

if you want to run all tests, call

    ruby all.rb -p

Topics to Cover
--------------------

    classes.rb
    method_definitions.rb
    method_parameters.rb - methods with varargs, hashes and named parameters
    control_structures.rb
    loops.rb
    strings.rb
    arrays.rb
    hashes.rb
    symbols.rb
    iteration_idioms.rb # each, to
    enumerator.rb # esp. map & inject in http://ruby-doc.org/core-2.4.1/Enumerable.html
    regular_expressions.rb
    equality.rb
    reading_and_writing_files.rb
    blocks_and_yield.rb # maybe just adapt https://github.com/neo/ruby_koans/blob/master/src/about_blocks.rb
    reflection.rb # get method names, find out if an object responds to a method, send a message to an object where you have the method name in a string


Links
-------------
- MiniTest: [http://docs.seattlerb.org/minitest/](http://docs.seattlerb.org/minitest/)
- Intro to Testing and Minitest: [https://launchschool.com/blog/assert-yourself-an-introduction-to-minitest](https://launchschool.com/blog/assert-yourself-an-introduction-to-minitest)
- Inspired by the [Ruby Koans](http://rubykoans.com)
